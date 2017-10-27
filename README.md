# VipAdministration
## By Spring+SpringMVC+Mybatis+Mysql For My First Java Project

# 前端是个简单的界面、主要是练习使用框架

## 主要是JSP

# 后端采用Spring+SpringMVC+Mybatis+Mysql

--------------------------------

# 直接撸代码...

## 基本目录

![基本目录](http://upload-images.jianshu.io/upload_images/2783497-99120580554fa14f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
---------------------------
## 设置项目和模块语言级别是1.8的
```
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>2.3.2</version>
        <configuration>
          <source>1.8</source>
          <target>1.8</target>
        </configuration>
      </plugin>
    </plugins>
```
## 首先配置`pom.xml`
```
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.zs</groupId>
  <artifactId>vip</artifactId>
  <packaging>war</packaging>
  <version>1.0-SNAPSHOT</version>
  <name>vip Maven Webapp</name>
  <url>http://maven.apache.org</url>
  <properties>
      <spring.version>4.3.12.RELEASE</spring.version>
    <mybatis.version>3.4.1</mybatis.version>
  </properties>
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
    <!-- https://mvnrepository.com/artifact/org.springframework/spring-webmvc -->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-webmvc</artifactId>
      <version>${spring.version}</version>
    </dependency>
    <!-- https://mvnrepository.com/artifact/javax.servlet/javax.servlet-api -->
    <dependency>
      <groupId>javax.servlet</groupId>
      <artifactId>javax.servlet-api</artifactId>
      <version>3.1.0</version>
      <scope>provided</scope>
    </dependency>
    <!-- https://mvnrepository.com/artifact/javax.servlet/jstl -->
    <dependency>
      <groupId>javax.servlet</groupId>
      <artifactId>jstl</artifactId>
      <version>1.1.2</version>
    </dependency>
    <!-- https://mvnrepository.com/artifact/com.mchange/c3p0 -->
    <dependency>
      <groupId>com.mchange</groupId>
      <artifactId>c3p0</artifactId>
      <version>0.9.5.2</version>
    </dependency>
    <!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
    <dependency>
      <groupId>mysql</groupId>
      <artifactId>mysql-connector-java</artifactId>
      <version>5.1.38</version>
    </dependency>
    <!-- https://mvnrepository.com/artifact/org.springframework/spring-tx -->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-tx</artifactId>
      <version>${spring.version}</version>
    </dependency>

    <!-- https://mvnrepository.com/artifact/org.springframework/spring-jdbc -->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-jdbc</artifactId>
      <version>${spring.version}</version>
    </dependency>

    <!-- https://mvnrepository.com/artifact/org.mybatis/mybatis -->
    <dependency>
      <groupId>org.mybatis</groupId>
      <artifactId>mybatis</artifactId>
      <version>${mybatis.version}</version>
    </dependency>
    <!-- https://mvnrepository.com/artifact/org.mybatis/mybatis-spring -->
    <dependency>
      <groupId>org.mybatis</groupId>
      <artifactId>mybatis-spring</artifactId>
      <version>1.3.0</version>
    </dependency>

    <!-- https://mvnrepository.com/artifact/com.github.pagehelper/pagehelper -->
    <dependency>
      <groupId>com.github.pagehelper</groupId>
      <artifactId>pagehelper</artifactId>
      <version>4.1.6</version>
    </dependency>
    <!-- https://mvnrepository.com/artifact/cglib/cglib -->
    <dependency>
      <groupId>cglib</groupId>
      <artifactId>cglib</artifactId>
      <version>3.2.2</version>
    </dependency>

  </dependencies>
  <build>
    <finalName>vip</finalName>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>2.3.2</version>
        <configuration>
          <source>1.8</source>
          <target>1.8</target>
        </configuration>
      </plugin>
    </plugins>
  </build>

</project>
```
## 配置前端控制器和过滤器
```
<?xml version="1.0" encoding="ISO-8859-1"?>

<web-app xmlns="http://java.sun.com/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
                      http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
         version="3.0">
  <display-name>Archetype Created Web Application</display-name>

  <!--请求和应答编码过滤器-->
<filter>
  <filter-name>encoding-filter</filter-name>
  <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
</filter>
  <filter-mapping>
    <filter-name>encoding-filter</filter-name>
    <servlet-name>spring-mvc</servlet-name>
  </filter-mapping>

<listener>
  <description>启动spring容器</description>
  <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>

</listener>

  <context-param>
    <param-name>contextConfigLocation</param-name>
    <param-value>classpath:spring-context.xml</param-value>
  </context-param>

  <!--springmvc  前端控制器的加载-->
  <servlet>
    <servlet-name>spring-mvc</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <param-value>classpath:spring-mvc.xml</param-value>
    </init-param>
    <load-on-startup>1</load-on-startup>
  </servlet>
  
  <servlet-mapping>
    <servlet-name>spring-mvc</servlet-name>
    <url-pattern>*.do</url-pattern>
  </servlet-mapping>
</web-app>
```
## 配置 控制器解析器、控制器适配器和视图解析器
```
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:mvc="http://www.springframework.org/schema/mvc"
       xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc.xsd http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd">
//通过注解的方式来配置
    <mvc:annotation-driven></mvc:annotation-driven>
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <!--重定向时是否添加上下文-->
        <property name="redirectContextRelative" value="true"></property>
        <property name="prefix" value="/WEB-INF/views/"></property>
        <property name="suffix" value=".jsp"></property>
    </bean>

    <!--扫描控制器-->
    <context:component-scan base-package="com.zs.vip.web.hander"></context:component-scan>
</beans>
```
### `spring`配置
```
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context" xmlns:tx="http://www.springframework.org/schema/tx"
       xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx.xsd">
    <!--扫描业务层 组件-->
    <context:component-scan base-package="com.zs.vip.function"></context:component-scan>
<!--c3p0数据源-->
    <bean id="dataSource" class="com.mchange.v2.c3p0.ComboPooledDataSource">
        <property name="driverClass" value="com.mysql.jdbc.Driver"></property>
        <property name="jdbcUrl" value="jdbc:mysql://127.0.0.1:3306/vip"></property>
        <property name="user" value="root"></property>
        <property name="password" value=""></property>
        <property name="minPoolSize" value="1"></property>
        <property name="maxPoolSize" value="5"></property>
        <property name="initialPoolSize" value="1"></property>
        <property name="acquireIncrement" value="1"></property>
    </bean>

    <!--配置事务管理-->
    <bean id="transactionManager" class="org.springframework.jdbc.datasource.DataSourceTransactionManager">
        <property name="dataSource" ref="dataSource"></property>

    </bean>
    <tx:annotation-driven transaction-manager="transactionManager"></tx:annotation-driven>

    <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
        <property name="dataSource" ref="dataSource"></property>
        <property name="configLocation" value="mybatis-config.xml"></property>
        <property name="mapperLocations" >
            <list>
                <value>classpath:mapper/*.xml</value>
            </list>

        </property>
    </bean>
    <bean class="org.mybatis.spring.mapper.MapperScannerConfigurer">
        <property name="basePackage" value="com.zs.vip.dao"></property>
        <property name="sqlSessionTemplateBeanName" value="sqlSessionFactory"></property>
    </bean>
</beans>
```
### 配置`mybatis`
```
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">
<configuration>
    <settings>
        <setting name="cacheEnabled" value="true"/>
        <setting name="defaultStatementTimeout" value="3000"/>
        <setting name="mapUnderscoreToCamelCase" value="true"/>
        <setting name="lazyLoadingEnabled" value="true"/>
        <setting name="proxyFactory" value="CGLIB"/>
    </settings>

    <plugins>
        <!-- PageHelper4.1.1分页的配置 -->
        <plugin interceptor="com.github.pagehelper.PageHelper">
            <property name="dialect" value="mysql"/>
            <property name="offsetAsPageNum" value="true"/>
            <property name="rowBoundsWithCount" value="true"/>
            <property name="pageSizeZero" value="true"/>

        </plugin>
    </plugins>
</configuration>
```
### `PageHelper`配置知识总结
```

使用方法：
1、根据Mybatis的版本下载对应版本的PageHelper ( Mybatis最低版本不能低于3.3 )
2、在Mybatis的配置文件 Mybatis-Configu.xml中配置PageHelper插件，配置示例：
   plugins插件的配置在 settings之后 在environments之前
   settings中设置Mybatis的一些额外的运行参数 如是否开启延迟加载，动态代理使用CG-LIB,或JAVALIB等
    <plugins>
         <!-- PageHelper4.1.1 --> 
        <plugin interceptor="com.github.pagehelper.PageHelper">
            <property name="dialect" value="oracle"/>
            <property name="offsetAsPageNum" value="false"/>
            <property name="rowBoundsWithCount" value="false"/>
            <property name="pageSizeZero" value="true"/>
            <property name="reasonable" value="false"/>
            <property name="supportMethodsArguments" value="false"/>
            <property name="returnPageInfo" value="none"/>
        </plugin>
    </plugins>  
3、使用方法
pageHelper会使用ThreadLocal获取到同一线程中的变量信息，各个线程之间的Threadlocal不会相互干扰，也就是Thread1中的ThreadLocal1之后获取到Tread1中的变量的信息，不会获取到Thread2中的信息
所以在多线程环境下，各个Threadlocal之间相互隔离，可以实现，不同thread使用不同的数据源或不同的Thread中执行不同的SQL语句
所以，PageHelper利用这一点通过拦截器获取到同一线程中的预编译好的SQL语句之后将SQL语句包装成具有分页功能的SQL语句，并将其再次赋值给下一步操作，所以实际执行的SQL语句就是有了分页功能的SQL语句
PageHelper只对紧跟着的第一个SQL语句起作用
如上：所以若一个方法中涉及到多个查询，需要小心，避免为不需要分页的添加了分页，而真正需要分页的却没有被分页
1)、统计总数，（将SQL语句变为 select count(0) from xxx,只对简单SQL语句其效果，复杂SQL语句需要自己写）
    Page<?> page = PageHelper.startPage(1,-1);
    long count = page.getTotal();
2)、分页，pageNum - 第N页， pageSize - 每页M条数
    A、只分页不统计(每次只执行分页语句)
    PageHelper.startPage([pageNum],[pageSize]);
    List<?> pagelist = queryForList( xxx.class, "queryAll" , param);
    //pagelist就是分页之后的结果
    B、分页并统计（每次执行2条语句，一条select count语句，一条分页语句）适用于查询分页时数据发生变动，需要将实时的变动信息反映到分页结果上
    Page<?> page = PageHelper.startPage([pageNum],[pageSize],[iscount]);
    List<?> pagelist = queryForList( xxx.class , "queryAll" , param);
    long count = page.getTotal();
    //也可以 List<?> pagelist = page.getList();  获取分页后的结果集
3)、使用PageHelper查全部（不分页）
    PageHelper.startPage(1,0);
    List<?> alllist = queryForList( xxx.class , "queryAll" , param);
4)、PageHelper的其他API
    String orderBy = PageHelper.getOrderBy();    //获取orderBy语句
    Page<?> page = PageHelper.startPage(Object params);
    Page<?> page = PageHelper.startPage(int pageNum, int pageSize);
    Page<?> page = PageHelper.startPage(int pageNum, int pageSize, boolean isCount);
    Page<?> page = PageHelper.startPage(pageNum, pageSize, orderBy);
    Page<?> page = PageHelper.startPage(pageNum, pageSize, isCount, isReasonable);    //isReasonable分页合理化,null时用默认配置
    Page<?> page = PageHelper.startPage(pageNum, pageSize, isCount, isReasonable, isPageSizeZero);    //isPageSizeZero是否支持PageSize为0，true且pageSize=0时返回全部结果，false时分页,null时用默认配置
5)、默认值
    //RowBounds参数offset作为PageNum使用 - 默认不使用
    private boolean offsetAsPageNum = false;
    //RowBounds是否进行count查询 - 默认不查询
    private boolean rowBoundsWithCount = false;
    //当设置为true的时候，如果pagesize设置为0（或RowBounds的limit=0），就不执行分页，返回全部结果
    private boolean pageSizeZero = false;
    //分页合理化
    private boolean reasonable = false;
    //是否支持接口参数来传递分页参数，默认false
    private boolean supportMethodsArguments = false;  
```
###数据地址
[数据下载地址(密码:HRS3)](https://share.weiyun.com/0928cc8edd48d5c851aba07f5acac2f6)
######一步、一步、很艰难、
