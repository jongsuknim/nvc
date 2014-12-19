# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FeelingCard.destroy_all
NeedCard.destroy_all

# feeling_card
super_category = '욕구 충족'
category = '감동받은'
titles = ['감동받은', '뭉클한','감격스런','벅찬','환희에 찬', '황홀한', '충만한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '고마운'
titles = ['고마운', '감사한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '즐거운'
titles = ['즐거운', '유쾌한', '통쾌한', '흔쾌한', '기쁜', '행복한', '반가운']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '따뜻한'
titles = ['따뜻한', '감미로운', '포근한', '푸근한', '사랑하는', '정을 느끼는', '친근한', '훈훈한', '정겨운']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '뿌듯한'
titles = ['뿌듯한', '산뜻한', '만족스런', '상쾌한', '흡족한', '개운한', '후련한', '든든한', '흐뭇한', '홀가분한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '편안한'
titles = ['편안한', '느긋한', '담담한', '친밀한', '친근한', '긴장이 풀리는', '안심이 되는', '차분한', '가벼운']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '평화로운'
titles = ['평화로운', '누그러지는', '고요한', '여유로운', '진정되는', '잠잠해진', '평온한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '흥미로운'
titles = ['흥미로운', '매혹된', '재미있는', '끌리는']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '활기찬'
titles = ['활기찬', '짜릿한', '신나는', '용기 나는', '기력이 넘치는', '기운이 나는', '당당한', '살아있는', '생기가 도는', '원기가 왕성한', '자신감 있는', '힘이 솟는']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '흥분된'
titles = ['흥분된', '두근거리는', '기대에 부푼', '들뜬', '희망에 찬']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end


super_category = '욕구 불만'
category = '걱정되는'
titles = ['걱정되는', '까마득한', '암담한', '염려되는', '근심하는', '신경 쓰이는', '뒤숭숭한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '무서운'
titles = ['무서운', '섬뜩한', '오싹한', '주눅든', '겁나는', '두려운', '간담이 서늘해지는', '진땀 나는']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '불안한'
titles = ['불안한', '조바심 나는', '긴장한', '떨리는', '안절부절못한', '조마조마한', '초조한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '불편한'
titles = ['불편한', '거북한', '겸연쩍은', '곤혹스러운', '떨떠름한', '언짢은', '괴로운', '난처한', '멋쩍은', '쑥스러운', '답답한', '갑갑한', '서먹한', '숨막히는', '어색한', '찝찝한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '슬픈'
titles = ['슬픈', '가슴이 찢어지는', '구슬픈', '그리운', '눈물겨운', '목이 메는', '서글픈', '서러운', '쓰라린', '애끓는', '울적한', '참담한', '처참한', '안타까운', '한스러운', '마음이 아픈', '비참한', '처연한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '서운한'
titles = ['서운한', '김빠진', '애석한', '냉담한', '섭섭한', '야속한', '낙담한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '외로운'
titles = ['외로운', '고독한', '공허한', '적적한', '허전한', '허탈한', '막막한', '쓸쓸한', '허한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '우울한'
titles = ['우울한', '무력한', '무기력한', '침울한', '꿀꿀한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '피곤한'
titles = ['피곤한', '고단한', '노곤한', '따분한', '맥 빠진', '맥 풀린', '지긋지긋한', '귀찮은', '무감각한', '지겨운', '지루한', '지친', '절망스러운', '좌절한', '힘든', '무료한', '성가신', '심심한']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '혐오스런'
titles = ['혐오스런', '밥맛 떨어지는', '질린', '정떨어지는']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '혼란스러운'
titles = ['혼란스러운', '멍한', '창피한', '놀란', '민망한', '당혹스런', '무안한', '부끄러운']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

category = '화가 나는'
titles = ['화가 나는', '끓어오르는', '속상한', '약 오르는', '분한', '울화가 치미는', '핏대서는', '격노한', '분개한', '억울한', '치밀어 오르는']
titles.each do |x|
  FeelingCard.create({super_category: super_category, category: category, title: x})
end

# need_card
category = '자율성'
titles = ['자신의 꿈, 목표, 가치를 선택할 수 있는 자유', '자신의 꿈, 목표, 가치를 이루기 위한 방법을 선택할 자유']
titles.each do |x|
  NeedCard.create({category: category, title: x})
end

category = '신체적/생존'
titles = ['공기', '음식', '물', '주거', '휴식', '수면', '안전', '따뜻함', '신체적 접촉(스킨쉽)', '성적 표현', '부드러움', '편안함', '돌봄을 받음', '보호받음', '애착형성', '의존(생존과 안전)', '자유로운 움직임 (이동)', '운동']
titles.each do |x|
  NeedCard.create({category: category, title: x})
end

category = '사회적/정서적/상호의존'
titles = ['주는 것', '봉사', '친밀한 관계', '유대', '소통', '연결', '배려', '존중', '상호성', '공감', '이해', '수용', '지지', '협력','도움', '감사', '인정', '승인', '사랑', '애정', '관심', '호감', '우정', '가까움', '나눔', '소속감', '공동체', '안도', '위안', '신뢰', '확신', '정서적 안전', '자기 보호', '일관성', '안정성', '정직', '진실', '예측가능성']
titles.each do |x|
  NeedCard.create({category: category, title: x})
end

category = '놀이/재미'
titles = ['쾌락', '흥분', '즐거움', '재미', '유머']
titles.each do |x|
  NeedCard.create({category: category, title: x})
end

category = '삶의 의미'
titles = ['기여', '능력', '도전', '명료함', '발견', '회복', '깨달음', '자극', '효능감', '인생예찬(축하, 애도)', '기념', '중요성', '참여', '희망', '주관을 가짐 (자신만의 견해나 사상)']
titles.each do |x|
  NeedCard.create({category: category, title: x})
end

category = '진실성'
titles = ['진실', '성실성', '존재감', '일치', '개성', '자기존중', '비전', '꿈']
titles.each do |x|
  NeedCard.create({category: category, title: x})
end

category = '아름다움/평화'
titles = ['아름다움', '평탄함', '홀가분함', '여유', '평등', '조화', '질서', '평화', '영적 교감', '영성']
titles.each do |x|
  NeedCard.create({category: category, title: x})
end

category = '자기구현'
titles = ['성취', '배움', '생산', '성장', '창조성', '치유', '숙달', '전문성', '목표', '가르침', '자각', '자기표현']
titles.each do |x|
  NeedCard.create({category: category, title: x})
end

