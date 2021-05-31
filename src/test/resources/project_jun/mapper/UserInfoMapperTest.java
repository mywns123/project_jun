package project_jun.mapper;

import static org.junit.Assert.fail;

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
	@After
	public void tearDown() throws Exception {
		System.out.println();
	}

	@Test
	public void test07SelectUserAll() {
		log.debug(Thread.currentThread().getStackTrace()[1].getMethodName() + "()");

		List<UserInfo> list = mapper.selectUserAll();
		Assert.assertNotNull(list);
		list.stream().forEach(s -> log.debug(s.toString()));
	}

	@Test
	public void test01SelectUserbyNo() {
		log.debug(Thread.currentThread().getStackTrace()[1].getMethodName() + "()");

		int userNo = 1;		
		UserInfo userInfo = mapper.selectUserbyNo(userNo);
		log.debug(userInfo.toString());		
		Assert.assertNotNull(userInfo);
	}

	@Test
	public void test02SelectUserbyId() {
		String userId = "test";		
		UserInfo userInfo = mapper.selectUserbyId(userId);
		log.debug(userInfo.toString());		
		Assert.assertNotNull(userInfo);
	}

	@Test
	public void test03SelectUserbyEmail() {
		log.debug(Thread.currentThread().getStackTrace()[1].getMethodName() + "()");

		String email = "test@test.com";		
		UserInfo userInfo = mapper.selectUserbyEmail(email);
		log.debug(userInfo.toString());		
		Assert.assertNotNull(userInfo);
	}

	@Test
	public void test04InsertMember() {
		log.debug(Thread.currentThread().getStackTrace()[1].getMethodName() + "()");

		UserInfo userInfo = new UserInfo("test02", "1111", "1111", "test01", "대구", "", "", 33, "농협");
		int res = mapper.insertMember(userInfo);
		Assert.assertEquals(1, res);
		log.debug("res id >> " + res);		
	}

	@Test
	public void test05UpdateMember() {
		UserInfo userInfo = new UserInfo("test02", "1111", "1111", "test11", "대구", "", "", 33, "농협");
		int res = mapper.updateMember(userInfo);
		Assert.assertEquals(1, res);
		log.debug("res id >> " + res);	
	}

	@Test
	public void test06DeleteMember() {
		int userNo = 3;	
		int res = mapper.deleteMember(userNo);
		Assert.assertEquals(1, res);
		log.debug("res id >> " + res);
	}

}
