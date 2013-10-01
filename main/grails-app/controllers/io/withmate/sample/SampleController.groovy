package io.withmate.sample

import org.springframework.dao.DataIntegrityViolationException

class SampleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [sampleInstanceList: Sample.list(params), sampleInstanceTotal: Sample.count()]
    }

    def create() {
        [sampleInstance: new Sample(params)]
    }

    def save() {
        def sampleInstance = new Sample(params)
        if (!sampleInstance.save(flush: true)) {
            render(view: "create", model: [sampleInstance: sampleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'sample.label', default: 'Sample'), sampleInstance.id])
        redirect(action: "show", id: sampleInstance.id)
    }

    def show(Long id) {
        def sampleInstance = Sample.get(id)
        if (!sampleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sample.label', default: 'Sample'), id])
            redirect(action: "list")
            return
        }

        [sampleInstance: sampleInstance]
    }

    def edit(Long id) {
        def sampleInstance = Sample.get(id)
        if (!sampleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sample.label', default: 'Sample'), id])
            redirect(action: "list")
            return
        }

        [sampleInstance: sampleInstance]
    }

    def update(Long id, Long version) {
        def sampleInstance = Sample.get(id)
        if (!sampleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sample.label', default: 'Sample'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (sampleInstance.version > version) {
                sampleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sample.label', default: 'Sample')] as Object[],
                          "Another user has updated this Sample while you were editing")
                render(view: "edit", model: [sampleInstance: sampleInstance])
                return
            }
        }

        sampleInstance.properties = params

        if (!sampleInstance.save(flush: true)) {
            render(view: "edit", model: [sampleInstance: sampleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sample.label', default: 'Sample'), sampleInstance.id])
        redirect(action: "show", id: sampleInstance.id)
    }

    def delete(Long id) {
        def sampleInstance = Sample.get(id)
        if (!sampleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sample.label', default: 'Sample'), id])
            redirect(action: "list")
            return
        }

        try {
            sampleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sample.label', default: 'Sample'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sample.label', default: 'Sample'), id])
            redirect(action: "show", id: id)
        }
    }
}
