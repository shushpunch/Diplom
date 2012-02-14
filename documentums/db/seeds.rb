# -*- coding: utf-8 -*-

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#создание типов приказа
Type.create(:name=>"Приказ о зачислении в аспирантуру")
Type.create(:name=>"Приказ о переводе на другую форму обучения")
Type.create(:name=>"Приказ о смене специальности, факультета, кафедры")
Type.create(:name=>"Приказ об отчислении из аспирантуры")
Type.create(:name=>"Свободная форма")

#создание оснований приказа
Reason.create(:name=>"в связи с нарушением условий об оплате")
Reason.create(:name=>"в связи с невыполнением индивидуального плана")
Reason.create(:name=>"в связи с окончанием срока обучения")
Reason.create(:name=>"по собственному желанию")

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
