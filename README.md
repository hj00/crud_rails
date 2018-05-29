## RESTful CRUD

1. route
   - resources :posts
2. controller
   - rails g controller posts index new create show edit update destroy
   - routes 파일에 찌꺼기 지우기
3. model
   - rails g model post image_url, story
4. 조건
   1. 모든 form -> form_tag
   2. 모든 link -> link_to (url은 전부 prefix를 사용) - rake routes활용



## params[] : 배열, 해쉬 모두 담을 수 있음.

- 데이터를 주고 받을 떄(HTTP는 Stateless)
  1. URL
  2. form
- params hash
  - symbol과 string 둘 다 사용이 가능.

1. 배열담기

   ```html
   <input type="text" name="list[]">
   <input type="text" name="list[]">
   <input type="text" name="list[]">
   params:list[0]
   ```

2. 해시담기

   ```html
   <input type="text" name="list[title]">
   <input type="text" name="list[content]">
   <input type="text" name="list[name]">
   params:list[0]
   ```

### 참고자료 퍼펙트 루비 온 레일즈

p354 : params hash

p 436 : RESTful 정의 & 라우팅

p116 : form_tag & form_for

## Installation / Version

1. vagrant 1.9.5
2. Virtual Box 5.1.30
   1. window에서 폴더하나를 만든다
   2. 폴더를 들어가서 vagrant init ubuntu/xenial64
      - Vagrantfile 생성
      - hsot : 3000 guest : 3000수정
   3. vagrant up : 머신 가동 (머신 스탑 : vagrant halt)
   4. vagrant ssh : 머신 접속(머신 나가기 : exit)
   5. 가상머신 접속 상태에서 cd /vagrant : 공유폴더로 접속가능
   6. 기본 프로그램 설치 : gorails.com -> guides -> setup ruby on rails
   7. ruby 2.3.5
   8. rails 4.2.9
   9. cd /vagrant
   10. rails new board : 새로운 프로젝트 생성
   11. rails g controller home index
   12. rails s -b 0.0.0.0 -> localhost:3000으로 chrome에서 접속




## CRUD - Post

1. controller : posts
   - index new create show edit update destroy
2. model : post
   - string, title
   - string, content
3. routing : resources :posts

