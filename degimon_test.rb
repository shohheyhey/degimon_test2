require "pry"
class Character
    attr_accessor :name, :hp, :mp
    def initialize(name:, hp:, mp:)
        @name = name
        @hp = hp
        @mp = mp
    end

    def attack(enemy, damage)
        puts "#{enemy}を攻撃！"
        puts "#{enemy}に#{damage}のダメージを与えた！"
    end
end

agmon = Character.new(name: "アグモン", hp: 200, mp: 500)
debimon = Character.new(name: "デビモン", hp: 500, mp: 1000)

damage_point = rand(10)*100
agmon.attack(debimon.name, damage_point)
debimon.hp -= damage_point
if debimon.hp <= 0
    puts "#{debimon.name}は倒れた。"
    puts "世界の平和は保たれた。"
    puts "ゲームクリア"
else
    puts "#{debimon.name}のhpは残り#{debimon.hp}です"
end
