# class Grids
# 	attr_accessor :ships, :grid
#
#   def initialize
# 		@ship =ship
# 		@grid =grid
# 	end
#
# 	def base_grid
# 			Grids.newship =	[
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0],
# 		[0,0,0,0,0,0,0,0,0,0]
# 				]
# 		end
#
#   def ship_placement
# 		@grid = [
# 			[0,0,0,0,0,0,0,0,0,0],
# 			[0,0,1,0,0,0,0,0,0,0],
# 			[0,0,1,0,0,0,0,0,0,0],
# 			[0,0,1,0,0,0,0,0,0,0],
# 			[0,0,1,0,0,0,0,0,0,0],
# 			[0,0,1,0,0,0,0,0,0,0],
# 			[0,0,0,0,0,0,0,0,0,0],
# 			[0,0,0,0,0,0,0,0,0,0],
# 			[0,0,0,0,1,1,1,1,1,0],
# 			[0,0,0,0,0,0,0,0,0,0]
# 				]

# = [
# 			[0,0,0,0,0,0,0,0,0,0],
# 			[0,0,0,0,0,0,0,0,0,0],
# 			[0,0,0,0,0,0,0,0,0,0],
# 			[0,0,0,0,0,0,0,0,0,0],
# 			[0,0,0,0,0,0,0,0,1,0],
# 			[0,0,1,1,1,1,1,0,1,0],
# 			[0,0,0,0,0,0,0,0,1,0],
# 			[0,0,0,0,0,0,0,0,1,0],
# 			[0,0,0,0,0,0,0,0,1,0],
# 			[0,0,0,0,0,0,0,0,0,0]
# 				]
# end
# end
#




# puts "
# __________________________________________________
# |		 |    |    |    |    |    |    |    |    |    |
# |	a1 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
# |		 |    |    |    |    |    |    |    |    |    |
# |		 |    |    |    |    |    |    |    |    |    |
# |____|____|____|____|____|____|____|____|____|____|
#
#
#
#
# "
#
#
# puts "
# ________________________________________________________________________________
# |		    |       |       |       |       |       |       |       |       |       |
# | #{01} | #{02} | #{03} | #{04} | #{05} | #{06} | #{07} | #{08} | #{09} | #{10} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{11} | #{12} | #{13} | #{14} | #{15} | #{16} | #{17} | #{18} | #{19} | #{20} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{21} | #{22} | #{23} | #{24} | #{25} | #{26} | #{27} | #{28} | #{29} | #{30} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{31} | #{32} | #{33} | #{34} | #{35} | #{36} | #{37} | #{38} | #{39} | #{40} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{41} | #{42} | #{43} | #{44} | #{45} | #{46} | #{47} | #{48} | #{49} | #{50} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{51} | #{52} | #{53} | #{54} | #{55} | #{56} | #{57} | #{58} | #{59} | #{60} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{61} | #{62} | #{63} | #{64} | #{65} | #{66} | #{67} | #{68} | #{69} | #{70} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{71} | #{72} | #{73} | #{74} | #{75} | #{76} | #{77} | #{78} | #{79} | #{80} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{81} | #{82} | #{83} | #{84} | #{85} | #{86} | #{87} | #{88} | #{89} | #{90} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
# |		    |       |       |       |       |       |       |       |       |       |
# | #{91} | #{92} | #{93} | #{94} | #{95} | #{96} | #{97} | #{98} | #{99} | #{""} |
# |_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
#
# "
#
# # 1 =1
# # 2 =1
# # 3=1
# # 4=1
# # 5=1
# # 6=1
# # 7=1
# # 8=1
# # 9=1
# # 0=1
# # 12=1
# # 13=1
# # 14=1
# # 15=1
# # 16=1
# # 17=1
# # 18=1
# # 19=1
# # 20=1
# # 21=1
# # 22=1
# # 23
# # 24
# # 25
# # 26
# # 27
# # 28
# # 29
# # 30
# # 31
# # 33
# # 34
# # 35
# # 36
# # 37
# # 38
# # 39
# # 40
# # 41
# # 42
# # 43
# # 44
# # 45
# # 46
# # 47
# # 48
# # 50
# # 51
# # 52
# # 53
# # 54
# # 55
# # 56
# # 57
# # 58
# # 59
# # 60
# # 61
# # 62
# # 63
# # 64
# # 65
# # 66
# # 67
# # 68
# # 69
# # 70
# # 71
# # 72
# # 73
# # 74
# # 75
# # 76
# # 77
# # 78
# # 79
# # 80
# # 81
# # 82
# # 83
# # 84
# # 85
# # 86
# # 87
# # 88
# # 89
# # 90
# # 91
# # 92
# # 93
# # 94
# # 95
# # 96
# # 97
# # 98
# # 99
# # 100
