# jpa-basic

### EntityManagerFactory
- annotation
> @Entity : 엔티티 클래스에 설정 (필수) <br/>
@Table : 매핑할 테이블 지정<br/>
@Id : 식별자 속성에 설정 (필수)<br/>
@Column : 매핑할 칼러명 지정 //지정하지 않으면 필드명, 프로퍼티명 사용<br/>
@Enumerated : enum 타입 매핑할 때 설정<br/>

![image](https://github.com/sssun19/jpa-basic/assets/125242481/fb4e5a65-4c4e-462f-bcc1-d889ab1f7418)
<br/>
> 🙌 persistence.xml 파일 <br/>
<class> 태그에 mapping 할 클래스 이름들을 계속 추가해주면 등록 완료<br/>
하지만 따로 매핑해주지 않아도 JPA 가 알아서 검색하게 하려면 `<exlude-unlisted-classes>` 태그를 false 로 처리해주면 됨.<br/>
