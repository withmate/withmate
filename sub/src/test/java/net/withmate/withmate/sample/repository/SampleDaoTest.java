package net.withmate.withmate.sample.repository;

import junit.framework.Assert;
import net.withmate.withmate.sample.domain.Sample;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test-context.xml")
public class SampleDaoTest {

    @Autowired
    private SampleDao sampleDao;


    @Test
    public void save(){
        Sample sample = new Sample();
        sample.setPw("test");

        sampleDao.save(sample);

        List<Sample> samples = (List<Sample>) sampleDao.findAll();

        Assert.assertEquals(1, samples.size());

    }
}
