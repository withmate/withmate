package io.withmate.sample.repository;

import io.withmate.sample.domain.Sample;
import org.springframework.data.repository.CrudRepository;

public interface SampleDao extends CrudRepository<Sample, Long> {
}
