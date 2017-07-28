# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[User, Product].map(&:destroy_all)

user1 = User.create(username: "john123", password: "123456", image_url: "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500508764/pexels-photo-513516_n4tcxi.jpg")
user2 = User.create(username: "elvispresley", password: "theking", image_url: "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_97/v1500508597/pexels-photo-270968_bq0jbe.jpg")
user3 = User.create(username: "genghiskhan", password: "mongol", image_url: "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500509289/list-genghis-khan-2-E_t6x4cr.jpg")
user4 = User.create(username: "abelincoln", password: "emancipate", image_url: "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500509040/last_drxfvh.jpg")
user5 = User.create(username: "inkymaze", password: "cheeseburger", image_url: "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500508849/220px-Vladimir_Nabokov_1960s_ql67rv.jpg")
user6 = User.create(username: "alexander", password: "thegreat", image_url: "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500508899/alexander_athens2_v2n7hg.jpg")
demo = User.create(username: "maggie", password: "secretpw", image_url: "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500508952/o-MAGGIE-GYLLENHAAL-facebook_kzxhgg.jpg")


prod1 = Product.create!(name:"Blockstack Browser" ,description:"A gateway to a new, decentralized internet", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500517873/blockstack_lhi31t.jpg",product_URL:"https://blockstack.org", hunter_id: user1.id)
prod2 = Product.create!(name:"21 Lists" ,description:"Send and receive targeted, paid microtasks", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500517968/21co_naxxjg.jpg",product_URL:"https://21.co", hunter_id: user2.id)
prod3 = Product.create!(name:"Glow" ,description:"A destination for all things fertility", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500510214/9YTnIdYCpi_jQyjfwAY4N-lmDTnkv7w447nCc86M9ydNl_fthCcKvFbG1TbEtWZUrYc_w300_nhvz88.png",product_URL:"https://glowing.com/", hunter_id: user2.id)
prod4 = Product.create!(name:"Simple Habit" ,description:"Modern mindfulness for your busy life", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500510317/175x175bb_qbmjld.jpg",product_URL:"www.simplehabit.com/", hunter_id: user3.id)
prod5 = Product.create!(name:"Assembly" ,description:"All your influencer marketing campaigns under one roof", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500512041/bc729c9b-6d5b-4cce-a4cd-b2ba18bbc07d_2_vlowt0.gif",product_URL:"https://useassembly.com", hunter_id: user4.id)
prod6 = Product.create!(name:"Wordmark.it" ,description:"Helps you choose fonts", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500512159/wordmap_jsoffs.jpg",product_URL:"https://wordmark.it", hunter_id: user1.id)
prod7 = Product.create!(name:"Actively" ,description:"All of your favorite fitness studios in one app", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500512311/actively_cd7420.jpg",product_URL:"https://actively.ai", hunter_id: user2.id)
prod8 = Product.create!(name:"Token Data" ,description:"Database with 300 ICO's and token returns", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500517666/tokendata_rqmmej.gif",product_URL:"https://www.tokendata.io", hunter_id: user5.id)
prod9 = Product.create!(name: "Set The Set" ,description:"Request songs for your upcoming concerts", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1500509814/A_-C5RyJ_400x400_kae6v0.jpg",product_URL:"https://settheset.com/", hunter_id: user1.id)
prod10 = Product.create!(name: "Karmabot 2.0" ,description:"Streamline your business on Slack", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1501281351/c3394f7a-614e-4713-8996-eea3358dfbbf_zsnvki.png",product_URL:"http://karmabot.chat/", hunter_id: user5.id, image_two_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501281345/a079dbcd-387a-4f5d-94fd-496d6a84075e_jlqsxn.png", image_three_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501281339/be73e447-be6d-4adb-9c44-2173ac2c3c6a_eswsag.png",image_four_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501281333/5f3f03e4-72ea-49fc-88a2-6705dbf22825_bumwdw.png",image_five_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501281326/f0761d9a-7189-4185-b4cc-7a7706896f5b_rwgggj.png" )
prod11 = Product.create!(name: "Roadmap 2.0" ,description:"Product management tools for innovative teams", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1501281600/7ba4a441-a57f-44d7-8bd0-3b9e2cf556ea_pw1sb4.gif",product_URL:"https://roadmap.space",image_two_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501281605/49b2c513-bb92-446c-87f8-5b97ee3304d7_qihsbr.png",image_three_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501281610/9bb35054-03f9-4abc-8c66-37eeedf9befe_buawxm.png",image_four_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501281615/b28f61e7-e4fe-498e-a8ef-387ee5632b01_pnuspu.png",image_five_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501281624/1aa3a737-bea1-42e3-b372-6468528f828c_w13w7r.png")
prod12 = Product.create!(name: "Civic Token" ,description:"Access to identity verification via the blockchain", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1501282008/bbce0aec-6a10-4f8e-bfb4-65c559ccb562_ychr2v.jpg",product_URL:"https://www.civic.com/",image_two_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501282014/c389f313-6506-4000-bbd6-f55171f6978e_zfg1ef.png",image_three_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501282022/047e90d0-6263-4579-8b20-d2d227d9b223_xarvcg.jpg")
prod13 = Product.create!(name: "Keybase for Chrome" ,description:"A secure chat button for every profile", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_111/v1501282149/3d7074d0-90a3-43fd-a1ef-5f21d7fd3eca_mw3tln.png",product_URL:"https://keybase.io",image_two_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501282155/ad0b7c36-ccb2-4078-969a-37108d64a32b_wrlbtq.png",image_three_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501282160/407aee57-6b7b-4344-8863-9796ebe11eb0_hfllcg.png",image_four_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501282165/2c5b6e21-8cca-4665-922b-b0951a2f5cb4_zn52kn.png",image_five_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111,w_111/v1501282168/28feabc6-895f-4f33-bacf-56bd52863fd1_q1ojr4.png")
prod14 = Product.create!(name: "Breaker" ,description:"The best app for listening to podcasts, with your friends 🎧", image_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111/v1501282348/5de38845-9c59-485a-be99-40cab79665d5_m7ch0t.jpg",product_URL:"https://breaker.audio",image_two_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111/v1501282352/f6b8a80c-3694-4b51-975b-4c72317a742c_cplz7w.jpg",image_three_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111/v1501282357/a0f52074-0f74-4d1e-a054-17d2e4008d95_kirw3r.jpg",image_four_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111/v1501282362/50fae972-3ea0-4a96-aea6-f67cedcd4a83_y6zd8t.jpg",image_five_url:"http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_111/v1501282367/0aef2b31-f78a-494a-b3ee-0aab73ff2383_cpnf0n.jpg")
