class MovieRepository {
  List<String> searchPreview = const [
    '가슴 달린 남자',
    '가위',
    '가을로',
    '가을비 우산속에',
    '가장 보통의 연애',
    '가족의 탄생',
    '각설탕',
    '간기남',
    '간신',
    '간첩',
    '간첩 리철진',
    '감기',
    '감시자들',
    '강남1970',
    '강변부인',
    '강원도의 힘',
    '강철대오: 구국의 철가방',
    '강철비',
    '개그맨',
    '개들의 전쟁',
    '개를 훔치는 완벽한 방법',
    '거룩한 계보',
    '거북이 달린다',
    '거울 속으로',
    '거짓말',
    '건축무한육면각체의 비밀',
    '건축학개론',
    '걷기왕',
    '걸프렌즈',
    '검사외전',
    '검은 사제들',
    '검은 집',
    '게임의 법칙',
    '겨울여자',
    '결정적 한방',
    '결혼은, 미친 짓이다',
    '결혼전야',
    '경계',
    '경성학교: 사라진 소녀들',
    '고고70',
    '고교얄개',
    '고래사냥',
    '날아라 허동구',
    '나는 77번 아가씨',
    '나는 고양이로소이다',
    '나는 왕이로소이다',
    '나를 잊지 말아요',
    '나비(2001)',
    '나비(2003)',
    '나의 독재자',
    '나의 사랑 나의 신부(1990)',
    '나의 사랑 나의 신부(2014)',
    '나의 절친 악당들',
    '나의 PS 파트너',
    '나쁜남자',
    '나쁜 녀석들: 더 무비',
    '나쁜놈은 죽는다 (한중합작)',
    '나쁜 영화',
    '나쁜 피',
    '나탈리',
    '나랏말싸미',
    '낙동강은 흐르는가',
    '남과 여',
    '남극일기',
    '남매의 여름밤',
    '남부군',
    '남영동1985',
    '더 킹',
    '더 테러 라이브',
    '더 폰',
    '덕혜옹주',
    '도가니',
    '도리화가',
    '도마 안중근',
    '도둑들',
    '도레미파솔라시도',
    '도마뱀',
    '도희야',
    '독전',
    '돈',
    '돈을 갖고 튀어라',
    '돈 크라이 마미',
    '돈을 갖고 튀어라',
    '돈의 맛',
    '돌아와요 부산항애',
    '돌려차기',
    '돌멩이의 꿈',
    '돌아이',
    '돌아오지 않는 해병',
    '돌연변이',
    '동감',
    '동갑내기 과외하기',
    '라디오 스타',
    '라라',
    '라스트 갓파더',
    '라이터를 켜라',
    '럭키',
    '런닝맨',
    '레나',
    '레드슈즈',
    '레드 아이',
    '레슬러',
    '로니를 찾아서',
    '로마서 8:37',
    '로봇, 소리',
    '롤러코스터',
    '루시드 드림',
    '마음이...',
    '마이웨이',
    '마이 파더',
    '마파도',
    '만남의 광장',
    '만추',
    '만추(1982)',
    '만추(2011)',
    '말미잘',
    '말아톤',
    '말죽거리 잔혹사',
    '망원동 인공위성',
    '멋진 하루',
    '명량',
    '맨데이트: 신이 주신 임무',
    '맨발의 기봉이',
    '맨홀',
    '메소드',
    '모노폴리',
    '모럴센스',
    '목숨 건 연애',
    '목포는 항구다',
    '번지점프를 하다',
    '범죄도시',
    '범죄와의 전쟁: 나쁜놈들 전성시대',
    '범죄의 여왕',
    '범죄의 재구성',
    '베를린',
    '베스트셀러',
    '베테랑',
    '변호인',
    '보안관',
    '보통사람',
    '복면달호',
    '복수는 나의 것',
    '복수혈전',
    '봄날은 간다',
    '봄 여름 가을 겨울 그리고 봄',
    '봉오동 전투',
    '봉이 김선달',
    '봉자',
    '생과부 위자료 청구소송',
    '생활의 발견',
    '서부전선',
    '서양골동양과자점 앤티크',
    '서편제',
    '석조저택 살인사건',
    '썬데이 서울',
    '선생 김봉두',
    '설국열차',
    '섬. 사라진 사람들',
    '성난 변호사',
    '성냥팔이 소녀의 재림',
    '성실한 나라의 앨리스',
    '세기말',
    '세븐 데이즈',
    '소공녀',
    '소름',
    '소셜포비아',
    '소수의견',
    '소은이의 무릎',
    '손님',
    '소원',
    '쇼킹 넘버1',
    '수',
    '수상한 그녀',
    '수색역',
    '아들',
    '아라한 장풍대작전',
    '아래층 여자와 위층 남자',
    '아리랑',
    '아벤고 공수군단',
    '아부의 왕',
    '아수라',
    '아이들…',
    '아이 캔 스피크',
    '아저씨',
    '아찌,아빠',
    '아프리카',
    '아홉살 인생',
    '악녀',
    '악마를 보았다',
    '악어',
    '악의 연대기',
    '안녕 형아',
    '안시성',
    '알바트로스',
    '알 포인트',
    '자백',
    '자카르타',
    '자칼이 온다',
    '작전',
    '잘 살아보세',
    '잘 알지도 못하면서',
    '잠복근무',
    '장군의 아들',
    '장화, 홍련',
    '재밌는 영화',
    '재심',
    '적도의 꽃',
    '전국 노래자랑',
    '전설의 고향',
    '전설의 주먹',
    '전우치',
    '접속',
    '젓가락',
    '정글쥬스',
    '제니, 주노',
    '창공으로',
    '챔피언',
    '챔피언 마빡이',
    '천국의 계단',
    '천국의 우편배달부',
    '천군',
    '천안함 프로젝트',
    '천하장사 마돈나',
    '철암계곡의 혈투',
    '청년경찰',
    '청담보살',
    '청연',
    '청춘의 십자로',
    '체인지',
    '체포왕',
    '초감각 커플',
    '초능력자',
    '초록물고기',
    '초인',
    '최강 로맨스',
    '최악의 하루',
    '최종병기 활',
    '최후의 증인',
    '태극기 휘날리며',
    '태백산맥',
    '태풍',
    '택시운전사',
    '톱스타',
    '퇴마록',
    '투 가이즈',
    '투명인간',
    '투캅스',
    '투혼',
    '튜브',
    '트럭',
    '트릭',
    '트윈스터즈',
    '특별수사: 사형수의 편지',
    '특별시민',
    '특종: 량첸살인기',
    '티끌모아 로맨스',
    '파이란',
    '파파로티',
    '파업전야',
    '파워 킹',
    '판도라',
    '팔도강산',
    '패션왕',
    '퍼펙트 게임',
    '페이스메이커',
    '편지',
    '평양성',
    '평화의 시대',
    '포화속으로',
    '폭력의 씨앗',
    '폭력써클',
    '폭풍전야',
    '표적',
    '푸른소금',
    '품행제로',
    '풍산개',
    '프리즌',
    '플란다스의 개',
    '행복은 성적순이 아니잖아요',
    '허삼관',
    '허풍',
    '헌트',
    '헤어질 결심',
    '헬로우 고스트',
    '헬머니',
    '현기증(한국 영화)',
    '혈의 누',
    '협녀, 칼의 기억',
    '협상',
    '형',
    '형사 DUELIST',
    '호로비츠를 위하여',
    '혼숨',
    '홀리데이',
    '화려한 휴가',
    '화산고',
    '화이: 괴물을 삼킨 아이',
    '화차',
    '환절기',
    '황산벌',
    '황제를 위하여',
    '황진이',
  ];

  Future<List<String>> search(String key) async {
    print('search: $key');
    await Future.delayed(const Duration(milliseconds: 1000));
    return searchPreview.where((movie) => movie.contains(key)).toList();
  }
}
