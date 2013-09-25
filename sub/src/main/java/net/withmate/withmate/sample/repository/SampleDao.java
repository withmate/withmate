package net.withmate.withmate.sample.repository;

import net.withmate.withmate.sample.domain.Sample;
import org.springframework.data.repository.CrudRepository;

public interface SampleDao extends CrudRepository<Sample, Long> {
}
