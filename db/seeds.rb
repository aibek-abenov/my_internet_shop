# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# До 1 года
Size.create!(
name: 'Детский 19',
transcript: {"Возраст":"до 1 года", "USA":"3.5", "EU":"19", "UK":"2.5", "cm":"10.8"}
)
Size.create!(
name: 'Детский 19.5',
transcript: {"Возраст":"до 1 года", "USA":"4", "EU":"19.5", "UK":"3", "cm":"11.4"}
)
Size.create!(
name: 'Детский 20',
transcript: {"Возраст":"до 1 года", "USA":"4.5", "EU":"20", "UK":"3.5", "cm":"11.7"}
)
Size.create!(
name: 'Детский 20.5',
transcript: {"Возраст":"до 1 года", "USA":"5", "EU":"20.5", "UK":"4", "cm":"12.1"}
)
Size.create!(
name: 'Детский 21',
transcript: {"Возраст":"до 1 года", "USA":"5.5", "EU":"21", "UK":"4.5", "cm":"12.7"}
)
Size.create!(
name: 'Детский 22',
transcript: {"Возраст":"до 1 года", "USA":"6", "EU":"22", "UK":"5", "cm":"13"}
)
# -------------------------------------------------------------------------------------------


# 1-1,5 года
Size.create!(
name: 'Детский 22.5',
transcript: {"Возраст":"1-1,5 года", "USA":"6.5", "EU":"22.5", "UK":"5.5", "cm":"13.3"}
)
Size.create!(
name: 'Детский 23',
transcript: {"Возраст":"1-1,5 года", "USA":"7", "EU":"23", "UK":"6", "cm":"14"}
)
Size.create!(
name: 'Детский 23.5',
transcript: {"Возраст":"1-1,5 года", "USA":"7.5", "EU":"23.5", "UK":"6.5", "cm":"14.3"}
)
# -------------------------------------------------------------------------------------------

# 2 года
Size.create!(
name: 'Детский 24',
transcript: {"Возраст":"2 года", "USA":"8", "EU":"24", "UK":"7", "cm":"14.6"}
)
Size.create!(
name: 'Детский 25',
transcript: {"Возраст":"2 года", "USA":"8.5", "EU":"25", "UK":"7.5", "cm":"15.2"}
)
Size.create!(
name: 'Детский 25.5',
transcript: {"Возраст":"2 года", "USA":"9", "EU":"25.5", "UK":"8", "cm":"15.6"}
)
# -------------------------------------------------------------------------------------------

# 3 года
Size.create!(
name: 'Детский 26',
transcript: {"Возраст":"3 года", "USA":"9.5", "EU":"26", "UK":"8.5", "cm":"15.9"}
)
Size.create!(
name: 'Детский 27',
transcript: {"Возраст":"3 года", "USA":"10", "EU":"27", "UK":"9", "cm":"16.5"}
)
Size.create!(
name: 'Детский 27.5',
transcript: {"Возраст":"3 года", "USA":"10.5", "EU":"27.5", "UK":"9.5", "cm":"16.8"}
)
# -------------------------------------------------------------------------------------------

# 4 года
Size.create!(
name: 'Детский 28',
transcript: {"Возраст":"4 года", "USA":"11", "EU":"28", "UK":"10", "cm":"17.1"}
)
Size.create!(
name: 'Детский 29',
transcript: {"Возраст":"4 года", "USA":"11.5", "EU":"29", "UK":"10.5", "cm":"17.8"}
)
# --------------------------------------------------------------------------------------------

# 5 лет
Size.create!(
name: 'Детский 30',
transcript: {"Возраст":"5 лет", "USA":"12", "EU":"30", "UK":"11", "cm":"18.1"}
)
Size.create!(
name: 'Детский 30.5',
transcript: {"Возраст":"5 лет", "USA":"12.5", "EU":"30.5", "UK":"11.5", "cm":"18.4"}
)
# ---------------------------------------------------------------------------------------------

# 6 лет
Size.create!(
name: 'Детский 31',
transcript: {"Возраст":"6 лет", "USA":"13", "EU":"31", "UK":"12", "cm":"19.1"}
)
Size.create!(
name: 'Детский 31.5',
transcript: {"Возраст":"6 лет", "USA":"13.5", "EU":"31.5", "UK":"12.5", "cm":"19.4"}
)
# --------------------------------------------------------------------------------------------

# 7 лет
Size.create!(
name: 'Детский 32',
transcript: {"Возраст":"7 лет", "USA":"1", "EU":"32", "UK":"13", "cm":"19.7"}
)
Size.create!(
name: 'Детский 33',
transcript: {"Возраст":"7 лет", "USA":"1.5", "EU":"33", "UK":"14", "cm":"20.3"}
)
Size.create!(
name: 'Детский 33.5',
transcript: {"Возраст":"7 лет", "USA":"2", "EU":"33.5", "UK":"1", "cm":"20.6"}
)
Size.create!(
name: 'Детский 34',
transcript: {"Возраст":"7 лет", "USA":"2.5", "EU":"34", "UK":"1.5", "cm":"21"}
)
Size.create!(
name: 'Детский 34.5',
transcript: {"Возраст":"7 лет", "USA":"3", "EU":"34.5", "UK":"2", "cm":"21.6"}
)
Size.create!(
name: 'Детский 35',
transcript: {"Возраст":"7 лет", "USA":"3.5", "EU":"35", "UK":"2.5", "cm":"21.9"}
)
Size.create!(
name: 'Детский 36',
transcript: {"Возраст":"7 лет", "USA":"4", "EU":"36", "UK":"3", "cm":"22.2"}
)
# ----------------------------------------------------------------------------------------

# 8 лет
Size.create!(
name: 'Детский 36.5',
transcript: {"Возраст":"8 лет", "USA":"4.5", "EU":"36.5", "UK":"3.5", "cm":"22.9"}
)
Size.create!(
name: 'Детский 37',
transcript: {"Возраст":"8 лет", "USA":"5", "EU":"37", "UK":"4", "cm":"23.2"}
)
# ---------------------------------------------------------------------------------------

# 9 лет
Size.create!(
name: 'Детский 37.5',
transcript: {"Возраст":"9 лет", "USA":"5.5", "EU":"37.5", "UK":"4.5", "cm":"23.5"}
)
Size.create!(
name: 'Детский 38',
transcript: {"Возраст":"9 лет", "USA":"6", "EU":"38", "UK":"5", "cm":"24.1"}
)
# -----------------------------------------------------------------------------------------

# 10 лет
Size.create!(
name: 'Детский 38.5',
transcript: {"Возраст":"10 лет", "USA":"6.5", "EU":"38.5", "UK":"5.5", "cm":"24.4"}
)
Size.create!(
name: 'Детский 39',
transcript: {"Возраст":"10 лет", "USA":"7", "EU":"39", "UK":"6", "cm":"24.8"}
)
# -----------------------------------------------------------------------------------------


Category.create!(
  name: 'Балетки',
  description: 'Балетки — классическая модель женских туфель с закрытым носком на плоской подошве или с маленьким устойчивым каблуком.
   Балетки получили своё название за сходство с профессиональной обувью в балете.'
)
Category.create!(
  name: 'Ботинки',
  description: 'Боти́нки — обувь, защищающая голеностопный сустав, в отличие от полусапожек имеет систему фиксации ноги в виде шнурков
  или ремней, чаще мужская, чем женская.'
)
Category.create!(
  name: 'Дутыши',
  description: 'Дутики – это сапоги на толстой полиуретановой подошве с голенищем, имеющим надутый воздухом вид.'
)
Category.create!(
  name: 'Кеды',
  description: 'Ке́ды — спортивная обувь, эпоним от торговой марки Keds[en], запущенной американской фирмой U.S. Rubber[en] в 1916 году.
   Изначально создавались для занятий спортом, впоследствии стали повседневной обувью.'
)
Category.create!(
  name: 'Кроссовки',
  description: 'Кроссовки – (туфли кроссовые, англ. cross - пересекать) - современная обувь для активного отдыха.'
)
Category.create!(
  name: 'Сандалии',
  description: 'Сандалии — открытая лёгкая обувь, подошва которой (часто без каблуков), закрепляется на ноге ремешками или верёвками.'
)
Category.create!(
  name: 'Угги',
  description: 'Угги — обувь, изготовленная из овчины ворсом внутрь и гладкой поверхностью наружу, с синтетической или резиновой подошвой.'
)
Category.create!(
  name: 'Слипоны',
  description: 'Слипоны — лёгкая обувь без шнуровки. Состоят из верхней части — парусины и резиновой подошвы.'
)
Category.create!(
  name: 'Тапочки',
  description: 'Тапочки — вид лёгкой и мягкой домашней обуви'
)
Category.create!(
  name: 'Эспадрильи',
  description: 'Эспадрильи — лёгкая летняя обувь, напоминающая тапочки с задником.
  Она снабжается плоской верёвочной подошвой из джута; для верха используются текстильные материалы и замша (гораздо реже — гладкая кожа).'
)
#----------------------------------------------------------------------------------------------------------------------------------------

Gender.create!(
  gender: 'Мужская'
)
Gender.create!(
  gender: 'Женская'
)
#----------------------------------------------------------------------------------------------------------------------------------------

User.create!(
  email: ENV['OWNER_EMAIL'],
  password: ENV['OWNER_PASSWORD'],
  password_confirmation: ENV['OWNER_PASSWORD']
)
