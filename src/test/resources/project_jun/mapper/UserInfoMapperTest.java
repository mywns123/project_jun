package project_jun.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.junit.After;
import org.junit.Assert;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import project_jun.config.ContextRoot;
import project_jun.dto.UserInfo;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ContextRoot.class })
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@WebAppConfiguration
public class UserInfoMapperTest {

	private static final Log log = LogFactory.getLog(UserInfoMapperTest.class);

	@Autowired
	private UserInfoMapper mapper;

	@Test
	public void testSelectUserAll() {
		log.debug(Thread.currentThread().getStackTrace()[1].getMethodName() + "()");

		List<UserInfo> list = mapper.selectUserAll();
		Assert.assertNotNull(list);
		list.stream().forEach(s -> log.debug(s.toString()));
	}

}
