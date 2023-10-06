# jpa-basic

### EntityManagerFactory
- annotation
> @Entity : 엔티티 클래스에 설정 (필수) <br/>
@Table : 매핑할 테이블 지정<br/>
@Id : 식별자 속성에 설정 (필수)<br/>
@Column : 매핑할 칼러명 지정 //지정하지 않으면 필드명, 프로퍼티명 사용<br/>
@Enumerated : enum 타입 매핑할 때 설정<br/>


- 🙌 persistence.xml 파일
> `<class>` 태그에 mapping 할 클래스 이름들을 계속 추가해주면 등록 완료<br/>
하지만 따로 매핑해주지 않아도 JPA 가 알아서 검색하게 하려면 `<exlude-unlisted-classes>` 태그를 false 로 처리해주면 됨.<br/>

```
 <persistence-unit name="jpabegin" transaction-type="RESOURCE_LOCAL">
  <class>jpabasic.reserve.domain.User</class>
    //생략

  <exclude-unlisted-classes>true</exclude-unlisted-classes>
```
<br/>

- 🙌 EMF 클래스 따로 생성<br/>
```
public class EMF {
  private static EntityManagerFactory emf;

  public static void init() {
      emf = Persistence.createEntityManagerFactory("jpabegin");
  }

  public static EntityManager createEntityManager() {
      return emf.createEntityManager();
  }

  public static void close() {
      emf.close();
  }
}
```

> EntityManagerFactory emf = Persistence.createEntityManagerFactory(”jpabegin”); //DB연동을 위한 기반을 만든다 <br/>
여기서 파라미터로 넘겨준 “jpabegin” 은 persistence.xml 에서 설정한 이름과 같음<br/>
DB와의 연동을 처리해주는 것이 EntityManager 클래스
