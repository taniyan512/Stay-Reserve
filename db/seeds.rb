# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rooms = [
    {room_name: '東京タワー', room_introduce: 'とても赤いです。', price: '2000', adress: '東京都', room_image: '/room01.jpeg'},
    {room_name: '大阪のホテル', room_introduce: '安いです。', price: '50000', adress: '大阪', room_image: '/room01.jpeg'},
    {room_name: '東京のホテル', room_introduce: 'とても高いです', price: '400', adress: '東京', room_image: '/room01.jpeg'},
    {room_name: '赤坂ホテル', room_introduce: 'いいお部屋です', price: '20000', adress: '東京', room_image: '/room01.jpeg'},
    {room_name: 'めっちゃいいホテル', room_introduce: '寛げます', price: '50000', adress: '東京', room_image: '/room01.jpeg'},
    {room_name: '愛媛のホテル', room_introduce: 'いいよ', price: '4000', adress: '愛媛', room_image: '/room01.jpeg'},
    {room_name: '東京のとってもいいホテル', room_introduce: '東京にある素敵な部屋です。', price: '3000', adress: '渋谷', room_image: '/room01.jpeg'}
]
Room.create(rooms)