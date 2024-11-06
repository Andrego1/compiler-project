{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,269) ([0,8192,0,0,0,32,0,0,16384,0,0,0,0,0,0,4,0,0,2048,0,0,0,16,0,0,16768,385,15424,0,32,0,0,16768,385,15424,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,34814,1,0,0,56,0,0,0,2,0,0,0,0,4,0,0,1024,0,0,32768,0,0,0,128,0,0,32768,1,16384,12,0,0,0,0,0,0,0,1024,0,0,0,4,0,0,896,0,3136,0,8,0,0,0,65024,391,0,0,0,0,0,0,0,0,0,0,66,0,0,16896,32768,1,16384,12,384,0,3136,32768,1,16384,12,384,0,3136,32768,1,16384,12,384,0,3136,32768,1,0,0,384,0,0,32768,1,0,0,384,0,0,32768,1,0,0,384,0,0,32768,1,0,0,384,0,0,32768,1,0,0,384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32830,1,0,0,0,0,0,32830,1,0,15872,384,0,0,32830,1,0,15872,384,0,0,0,0,0,0,0,0,0,0,0,0,14336,0,0,0,56,0,0,0,16,0,0,0,0,0,0,0,0,0,34814,1,0,0,56,0,8,14336,0,2048,0,56,32768,1,16384,12,0,30,0,32768,1,16384,12,0,30,0,0,0,0,0,2048,65024,391,0,8,14336,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,34814,1,0,0,56,0,0,0,2,0,65024,391,0,0,14336,0,4096,0,0,0,16,0,0,16768,385,15424,32768,33089,16385,60,384,0,3136,32768,1,16384,12,0,65024,391,0,0,14336,0,0,65024,391,0,0,14336,0,8192,0,0,0,32,0,0,32768,0,0,0,0,0,0,4096,0,0,32768,33089,16385,60,8192,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Fun","Commands","Command","Readln","Print","If","While","Type","Decl","Assign","Aexp","Bexp","id","num","str","'('","')'","'{'","'}'","if","else","while","int","float","boolean","string","fun","main","val","var","'+'","'-'","'*'","'/'","'%'","'>'","\">=\"","'<'","\"<=\"","\"==\"","\"!=\"","\"&&\"","\"||\"","'!'","\"++\"","\"--\"","'='","true","false","readln","print","':'","%eof"]
        bit_start = st * 56
        bit_end = (st + 1) * 56
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..55]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (30) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyReduce_2

action_1 (30) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (31) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (56) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (19) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (20) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (21) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (16) = happyShift action_18
action_7 (17) = happyShift action_19
action_7 (23) = happyShift action_20
action_7 (25) = happyShift action_21
action_7 (32) = happyShift action_22
action_7 (33) = happyShift action_23
action_7 (47) = happyShift action_24
action_7 (51) = happyShift action_25
action_7 (52) = happyShift action_26
action_7 (53) = happyShift action_27
action_7 (54) = happyShift action_28
action_7 (5) = happyGoto action_8
action_7 (6) = happyGoto action_9
action_7 (7) = happyGoto action_10
action_7 (8) = happyGoto action_11
action_7 (9) = happyGoto action_12
action_7 (10) = happyGoto action_13
action_7 (12) = happyGoto action_14
action_7 (13) = happyGoto action_15
action_7 (14) = happyGoto action_16
action_7 (15) = happyGoto action_17
action_7 _ = happyReduce_4

action_8 (22) = happyShift action_55
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (16) = happyShift action_18
action_9 (17) = happyShift action_19
action_9 (23) = happyShift action_20
action_9 (25) = happyShift action_21
action_9 (32) = happyShift action_22
action_9 (33) = happyShift action_23
action_9 (47) = happyShift action_24
action_9 (51) = happyShift action_25
action_9 (52) = happyShift action_26
action_9 (53) = happyShift action_27
action_9 (54) = happyShift action_28
action_9 (5) = happyGoto action_54
action_9 (6) = happyGoto action_9
action_9 (7) = happyGoto action_10
action_9 (8) = happyGoto action_11
action_9 (9) = happyGoto action_12
action_9 (10) = happyGoto action_13
action_9 (12) = happyGoto action_14
action_9 (13) = happyGoto action_15
action_9 (14) = happyGoto action_16
action_9 (15) = happyGoto action_17
action_9 _ = happyReduce_4

action_10 _ = happyReduce_12

action_11 _ = happyReduce_11

action_12 _ = happyReduce_9

action_13 _ = happyReduce_10

action_14 _ = happyReduce_5

action_15 _ = happyReduce_6

action_16 (34) = happyShift action_42
action_16 (35) = happyShift action_43
action_16 (36) = happyShift action_44
action_16 (37) = happyShift action_45
action_16 (38) = happyShift action_46
action_16 (39) = happyShift action_47
action_16 (40) = happyShift action_48
action_16 (41) = happyShift action_49
action_16 (42) = happyShift action_50
action_16 (43) = happyShift action_51
action_16 (48) = happyShift action_52
action_16 (49) = happyShift action_53
action_16 _ = happyReduce_7

action_17 (44) = happyShift action_39
action_17 (45) = happyShift action_40
action_17 (46) = happyShift action_41
action_17 _ = happyReduce_8

action_18 (16) = happyReduce_45
action_18 (17) = happyReduce_45
action_18 (22) = happyReduce_45
action_18 (23) = happyReduce_45
action_18 (25) = happyReduce_45
action_18 (32) = happyReduce_45
action_18 (33) = happyReduce_45
action_18 (44) = happyReduce_45
action_18 (45) = happyReduce_45
action_18 (46) = happyReduce_45
action_18 (47) = happyReduce_45
action_18 (50) = happyShift action_38
action_18 (51) = happyReduce_45
action_18 (52) = happyReduce_45
action_18 (53) = happyReduce_45
action_18 (54) = happyReduce_45
action_18 _ = happyReduce_35

action_19 _ = happyReduce_34

action_20 (19) = happyShift action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (19) = happyShift action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (16) = happyShift action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (16) = happyShift action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (16) = happyShift action_33
action_24 (17) = happyShift action_19
action_24 (47) = happyShift action_24
action_24 (51) = happyShift action_25
action_24 (52) = happyShift action_26
action_24 (14) = happyGoto action_31
action_24 (15) = happyGoto action_32
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_43

action_26 _ = happyReduce_44

action_27 (19) = happyShift action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (19) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (16) = happyShift action_33
action_29 (17) = happyShift action_19
action_29 (18) = happyShift action_81
action_29 (47) = happyShift action_24
action_29 (51) = happyShift action_25
action_29 (52) = happyShift action_26
action_29 (14) = happyGoto action_79
action_29 (15) = happyGoto action_80
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (20) = happyShift action_78
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (34) = happyShift action_42
action_31 (35) = happyShift action_43
action_31 (36) = happyShift action_44
action_31 (37) = happyShift action_45
action_31 (38) = happyShift action_46
action_31 (39) = happyShift action_47
action_31 (40) = happyShift action_48
action_31 (41) = happyShift action_49
action_31 (42) = happyShift action_50
action_31 (43) = happyShift action_51
action_31 (48) = happyShift action_52
action_31 (49) = happyShift action_53
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (44) = happyShift action_39
action_32 (45) = happyShift action_40
action_32 (46) = happyShift action_41
action_32 _ = happyReduce_54

action_33 (16) = happyReduce_45
action_33 (17) = happyReduce_45
action_33 (20) = happyReduce_45
action_33 (22) = happyReduce_45
action_33 (23) = happyReduce_45
action_33 (25) = happyReduce_45
action_33 (32) = happyReduce_45
action_33 (33) = happyReduce_45
action_33 (44) = happyReduce_45
action_33 (45) = happyReduce_45
action_33 (46) = happyReduce_45
action_33 (47) = happyReduce_45
action_33 (51) = happyReduce_45
action_33 (52) = happyReduce_45
action_33 (53) = happyReduce_45
action_33 (54) = happyReduce_45
action_33 _ = happyReduce_35

action_34 (50) = happyShift action_76
action_34 (55) = happyShift action_77
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (50) = happyShift action_74
action_35 (55) = happyShift action_75
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (16) = happyShift action_33
action_36 (17) = happyShift action_19
action_36 (47) = happyShift action_24
action_36 (51) = happyShift action_25
action_36 (52) = happyShift action_26
action_36 (14) = happyGoto action_31
action_36 (15) = happyGoto action_73
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (16) = happyShift action_33
action_37 (17) = happyShift action_19
action_37 (47) = happyShift action_24
action_37 (51) = happyShift action_25
action_37 (52) = happyShift action_26
action_37 (14) = happyGoto action_31
action_37 (15) = happyGoto action_72
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (16) = happyShift action_33
action_38 (17) = happyShift action_19
action_38 (47) = happyShift action_24
action_38 (51) = happyShift action_25
action_38 (52) = happyShift action_26
action_38 (14) = happyGoto action_70
action_38 (15) = happyGoto action_71
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (16) = happyShift action_33
action_39 (17) = happyShift action_19
action_39 (47) = happyShift action_24
action_39 (51) = happyShift action_25
action_39 (52) = happyShift action_26
action_39 (14) = happyGoto action_31
action_39 (15) = happyGoto action_69
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (16) = happyShift action_33
action_40 (17) = happyShift action_19
action_40 (47) = happyShift action_24
action_40 (51) = happyShift action_25
action_40 (52) = happyShift action_26
action_40 (14) = happyGoto action_31
action_40 (15) = happyGoto action_68
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (16) = happyShift action_33
action_41 (17) = happyShift action_19
action_41 (47) = happyShift action_24
action_41 (51) = happyShift action_25
action_41 (52) = happyShift action_26
action_41 (14) = happyGoto action_31
action_41 (15) = happyGoto action_67
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (16) = happyShift action_57
action_42 (17) = happyShift action_19
action_42 (14) = happyGoto action_66
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (16) = happyShift action_57
action_43 (17) = happyShift action_19
action_43 (14) = happyGoto action_65
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (16) = happyShift action_57
action_44 (17) = happyShift action_19
action_44 (14) = happyGoto action_64
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (16) = happyShift action_57
action_45 (17) = happyShift action_19
action_45 (14) = happyGoto action_63
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (16) = happyShift action_57
action_46 (17) = happyShift action_19
action_46 (14) = happyGoto action_62
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (16) = happyShift action_57
action_47 (17) = happyShift action_19
action_47 (14) = happyGoto action_61
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (16) = happyShift action_57
action_48 (17) = happyShift action_19
action_48 (14) = happyGoto action_60
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (16) = happyShift action_57
action_49 (17) = happyShift action_19
action_49 (14) = happyGoto action_59
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (16) = happyShift action_57
action_50 (17) = happyShift action_19
action_50 (14) = happyGoto action_58
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (16) = happyShift action_57
action_51 (17) = happyShift action_19
action_51 (14) = happyGoto action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_41

action_53 _ = happyReduce_42

action_54 _ = happyReduce_3

action_55 _ = happyReduce_1

action_56 (34) = happyShift action_42
action_56 (35) = happyShift action_43
action_56 (36) = happyShift action_44
action_56 (37) = happyShift action_45
action_56 (38) = happyShift action_46
action_56 (48) = happyShift action_52
action_56 (49) = happyShift action_53
action_56 _ = happyReduce_52

action_57 _ = happyReduce_35

action_58 (34) = happyShift action_42
action_58 (35) = happyShift action_43
action_58 (36) = happyShift action_44
action_58 (37) = happyShift action_45
action_58 (38) = happyShift action_46
action_58 (48) = happyShift action_52
action_58 (49) = happyShift action_53
action_58 _ = happyReduce_51

action_59 (34) = happyShift action_42
action_59 (35) = happyShift action_43
action_59 (36) = happyShift action_44
action_59 (37) = happyShift action_45
action_59 (38) = happyShift action_46
action_59 (48) = happyShift action_52
action_59 (49) = happyShift action_53
action_59 _ = happyReduce_50

action_60 (34) = happyShift action_42
action_60 (35) = happyShift action_43
action_60 (36) = happyShift action_44
action_60 (37) = happyShift action_45
action_60 (38) = happyShift action_46
action_60 (48) = happyShift action_52
action_60 (49) = happyShift action_53
action_60 _ = happyReduce_49

action_61 (34) = happyShift action_42
action_61 (35) = happyShift action_43
action_61 (36) = happyShift action_44
action_61 (37) = happyShift action_45
action_61 (38) = happyShift action_46
action_61 (48) = happyShift action_52
action_61 (49) = happyShift action_53
action_61 _ = happyReduce_48

action_62 (48) = happyShift action_52
action_62 (49) = happyShift action_53
action_62 _ = happyReduce_40

action_63 (48) = happyShift action_52
action_63 (49) = happyShift action_53
action_63 _ = happyReduce_39

action_64 (48) = happyShift action_52
action_64 (49) = happyShift action_53
action_64 _ = happyReduce_38

action_65 (36) = happyShift action_44
action_65 (37) = happyShift action_45
action_65 (38) = happyShift action_46
action_65 (48) = happyShift action_52
action_65 (49) = happyShift action_53
action_65 _ = happyReduce_37

action_66 (36) = happyShift action_44
action_66 (37) = happyShift action_45
action_66 (38) = happyShift action_46
action_66 (48) = happyShift action_52
action_66 (49) = happyShift action_53
action_66 _ = happyReduce_36

action_67 (44) = happyShift action_39
action_67 (45) = happyShift action_40
action_67 _ = happyReduce_47

action_68 (44) = happyShift action_39
action_68 _ = happyReduce_46

action_69 (44) = happyShift action_39
action_69 (45) = happyShift action_40
action_69 (46) = happyShift action_41
action_69 _ = happyReduce_53

action_70 (34) = happyShift action_42
action_70 (35) = happyShift action_43
action_70 (36) = happyShift action_44
action_70 (37) = happyShift action_45
action_70 (38) = happyShift action_46
action_70 (39) = happyShift action_47
action_70 (40) = happyShift action_48
action_70 (41) = happyShift action_49
action_70 (42) = happyShift action_50
action_70 (43) = happyShift action_51
action_70 (48) = happyShift action_52
action_70 (49) = happyShift action_53
action_70 _ = happyReduce_32

action_71 (44) = happyShift action_39
action_71 (45) = happyShift action_40
action_71 (46) = happyShift action_41
action_71 _ = happyReduce_33

action_72 (20) = happyShift action_96
action_72 (44) = happyShift action_39
action_72 (45) = happyShift action_40
action_72 (46) = happyShift action_41
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (20) = happyShift action_95
action_73 (44) = happyShift action_39
action_73 (45) = happyShift action_40
action_73 (46) = happyShift action_41
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (16) = happyShift action_33
action_74 (17) = happyShift action_19
action_74 (47) = happyShift action_24
action_74 (51) = happyShift action_25
action_74 (52) = happyShift action_26
action_74 (14) = happyGoto action_93
action_74 (15) = happyGoto action_94
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (26) = happyShift action_86
action_75 (27) = happyShift action_87
action_75 (28) = happyShift action_88
action_75 (29) = happyShift action_89
action_75 (11) = happyGoto action_92
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (16) = happyShift action_33
action_76 (17) = happyShift action_19
action_76 (47) = happyShift action_24
action_76 (51) = happyShift action_25
action_76 (52) = happyShift action_26
action_76 (14) = happyGoto action_90
action_76 (15) = happyGoto action_91
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (26) = happyShift action_86
action_77 (27) = happyShift action_87
action_77 (28) = happyShift action_88
action_77 (29) = happyShift action_89
action_77 (11) = happyGoto action_85
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_13

action_79 (20) = happyShift action_84
action_79 (34) = happyShift action_42
action_79 (35) = happyShift action_43
action_79 (36) = happyShift action_44
action_79 (37) = happyShift action_45
action_79 (38) = happyShift action_46
action_79 (39) = happyShift action_47
action_79 (40) = happyShift action_48
action_79 (41) = happyShift action_49
action_79 (42) = happyShift action_50
action_79 (43) = happyShift action_51
action_79 (48) = happyShift action_52
action_79 (49) = happyShift action_53
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (20) = happyShift action_83
action_80 (44) = happyShift action_39
action_80 (45) = happyShift action_40
action_80 (46) = happyShift action_41
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (20) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_16

action_83 _ = happyReduce_15

action_84 _ = happyReduce_14

action_85 (50) = happyShift action_100
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_20

action_87 _ = happyReduce_21

action_88 _ = happyReduce_22

action_89 _ = happyReduce_23

action_90 (34) = happyShift action_42
action_90 (35) = happyShift action_43
action_90 (36) = happyShift action_44
action_90 (37) = happyShift action_45
action_90 (38) = happyShift action_46
action_90 (39) = happyShift action_47
action_90 (40) = happyShift action_48
action_90 (41) = happyShift action_49
action_90 (42) = happyShift action_50
action_90 (43) = happyShift action_51
action_90 (48) = happyShift action_52
action_90 (49) = happyShift action_53
action_90 _ = happyReduce_24

action_91 (44) = happyShift action_39
action_91 (45) = happyShift action_40
action_91 (46) = happyShift action_41
action_91 _ = happyReduce_25

action_92 (50) = happyShift action_99
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (34) = happyShift action_42
action_93 (35) = happyShift action_43
action_93 (36) = happyShift action_44
action_93 (37) = happyShift action_45
action_93 (38) = happyShift action_46
action_93 (39) = happyShift action_47
action_93 (40) = happyShift action_48
action_93 (41) = happyShift action_49
action_93 (42) = happyShift action_50
action_93 (43) = happyShift action_51
action_93 (48) = happyShift action_52
action_93 (49) = happyShift action_53
action_93 _ = happyReduce_28

action_94 (44) = happyShift action_39
action_94 (45) = happyShift action_40
action_94 (46) = happyShift action_41
action_94 _ = happyReduce_29

action_95 (21) = happyShift action_98
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (21) = happyShift action_97
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (16) = happyShift action_18
action_97 (17) = happyShift action_19
action_97 (23) = happyShift action_20
action_97 (25) = happyShift action_21
action_97 (32) = happyShift action_22
action_97 (33) = happyShift action_23
action_97 (47) = happyShift action_24
action_97 (51) = happyShift action_25
action_97 (52) = happyShift action_26
action_97 (53) = happyShift action_27
action_97 (54) = happyShift action_28
action_97 (5) = happyGoto action_106
action_97 (6) = happyGoto action_9
action_97 (7) = happyGoto action_10
action_97 (8) = happyGoto action_11
action_97 (9) = happyGoto action_12
action_97 (10) = happyGoto action_13
action_97 (12) = happyGoto action_14
action_97 (13) = happyGoto action_15
action_97 (14) = happyGoto action_16
action_97 (15) = happyGoto action_17
action_97 _ = happyReduce_4

action_98 (16) = happyShift action_18
action_98 (17) = happyShift action_19
action_98 (23) = happyShift action_20
action_98 (25) = happyShift action_21
action_98 (32) = happyShift action_22
action_98 (33) = happyShift action_23
action_98 (47) = happyShift action_24
action_98 (51) = happyShift action_25
action_98 (52) = happyShift action_26
action_98 (53) = happyShift action_27
action_98 (54) = happyShift action_28
action_98 (5) = happyGoto action_105
action_98 (6) = happyGoto action_9
action_98 (7) = happyGoto action_10
action_98 (8) = happyGoto action_11
action_98 (9) = happyGoto action_12
action_98 (10) = happyGoto action_13
action_98 (12) = happyGoto action_14
action_98 (13) = happyGoto action_15
action_98 (14) = happyGoto action_16
action_98 (15) = happyGoto action_17
action_98 _ = happyReduce_4

action_99 (16) = happyShift action_33
action_99 (17) = happyShift action_19
action_99 (47) = happyShift action_24
action_99 (51) = happyShift action_25
action_99 (52) = happyShift action_26
action_99 (14) = happyGoto action_103
action_99 (15) = happyGoto action_104
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (16) = happyShift action_33
action_100 (17) = happyShift action_19
action_100 (47) = happyShift action_24
action_100 (51) = happyShift action_25
action_100 (52) = happyShift action_26
action_100 (14) = happyGoto action_101
action_100 (15) = happyGoto action_102
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (34) = happyShift action_42
action_101 (35) = happyShift action_43
action_101 (36) = happyShift action_44
action_101 (37) = happyShift action_45
action_101 (38) = happyShift action_46
action_101 (39) = happyShift action_47
action_101 (40) = happyShift action_48
action_101 (41) = happyShift action_49
action_101 (42) = happyShift action_50
action_101 (43) = happyShift action_51
action_101 (48) = happyShift action_52
action_101 (49) = happyShift action_53
action_101 _ = happyReduce_26

action_102 (44) = happyShift action_39
action_102 (45) = happyShift action_40
action_102 (46) = happyShift action_41
action_102 _ = happyReduce_27

action_103 (34) = happyShift action_42
action_103 (35) = happyShift action_43
action_103 (36) = happyShift action_44
action_103 (37) = happyShift action_45
action_103 (38) = happyShift action_46
action_103 (39) = happyShift action_47
action_103 (40) = happyShift action_48
action_103 (41) = happyShift action_49
action_103 (42) = happyShift action_50
action_103 (43) = happyShift action_51
action_103 (48) = happyShift action_52
action_103 (49) = happyShift action_53
action_103 _ = happyReduce_30

action_104 (44) = happyShift action_39
action_104 (45) = happyShift action_40
action_104 (46) = happyShift action_41
action_104 _ = happyReduce_31

action_105 (22) = happyShift action_108
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (22) = happyShift action_107
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (24) = happyShift action_109
action_107 _ = happyReduce_17

action_108 _ = happyReduce_19

action_109 (21) = happyShift action_110
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (16) = happyShift action_18
action_110 (17) = happyShift action_19
action_110 (23) = happyShift action_20
action_110 (25) = happyShift action_21
action_110 (32) = happyShift action_22
action_110 (33) = happyShift action_23
action_110 (47) = happyShift action_24
action_110 (51) = happyShift action_25
action_110 (52) = happyShift action_26
action_110 (53) = happyShift action_27
action_110 (54) = happyShift action_28
action_110 (5) = happyGoto action_111
action_110 (6) = happyGoto action_9
action_110 (7) = happyGoto action_10
action_110 (8) = happyGoto action_11
action_110 (9) = happyGoto action_12
action_110 (10) = happyGoto action_13
action_110 (12) = happyGoto action_14
action_110 (13) = happyGoto action_15
action_110 (14) = happyGoto action_16
action_110 (15) = happyGoto action_17
action_110 _ = happyReduce_4

action_111 (22) = happyShift action_112
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_18

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_0  4 happyReduction_2
happyReduction_2  =  HappyAbsSyn4
		 ([]
	)

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_0  5 happyReduction_4
happyReduction_4  =  HappyAbsSyn5
		 ([]
	)

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 _
	_
	_
	 =  HappyAbsSyn7
		 (ReadlnNode
	)

happyReduce_14 = happyReduce 4 8 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PrintNode happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 8 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PrintNode happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 4 8 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyTerminal (STR happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PrintNode (StringNode happy_var_3)
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 7 9 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfNode happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 11 9 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfElseNode happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 7 10 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WhileNode happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  11 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn11
		 (IntType
	)

happyReduce_21 = happySpecReduce_1  11 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn11
		 (FloatType
	)

happyReduce_22 = happySpecReduce_1  11 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn11
		 (BoolType
	)

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn11
		 (StringType
	)

happyReduce_24 = happyReduce 4 12 happyReduction_24
happyReduction_24 ((HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (VarDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 12 happyReduction_25
happyReduction_25 ((HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (VarDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 6 12 happyReduction_26
happyReduction_26 ((HappyAbsSyn14  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (VarDeclTyped happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 6 12 happyReduction_27
happyReduction_27 ((HappyAbsSyn15  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (VarDeclTyped happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 4 12 happyReduction_28
happyReduction_28 ((HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (ValDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 4 12 happyReduction_29
happyReduction_29 ((HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (ValDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 6 12 happyReduction_30
happyReduction_30 ((HappyAbsSyn14  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (ValDeclTyped happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 6 12 happyReduction_31
happyReduction_31 ((HappyAbsSyn15  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (ValDeclTyped happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_3  13 happyReduction_32
happyReduction_32 (HappyAbsSyn14  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn13
		 (AssignNode happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  13 happyReduction_33
happyReduction_33 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn13
		 (AssignNode happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  14 happyReduction_34
happyReduction_34 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn14
		 (NumNode  happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  14 happyReduction_35
happyReduction_35 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (IdNode happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  14 happyReduction_36
happyReduction_36 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (AddNode happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  14 happyReduction_37
happyReduction_37 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (SubNode happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  14 happyReduction_38
happyReduction_38 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (MultNode happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  14 happyReduction_39
happyReduction_39 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (DivNode happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  14 happyReduction_40
happyReduction_40 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (ModNode happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  14 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (IncrNode happy_var_1
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  14 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (DecrNode happy_var_1
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  15 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn15
		 (BoolNode True
	)

happyReduce_44 = happySpecReduce_1  15 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn15
		 (BoolNode False
	)

happyReduce_45 = happySpecReduce_1  15 happyReduction_45
happyReduction_45 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (IdNode happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  15 happyReduction_46
happyReduction_46 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AndNode happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  15 happyReduction_47
happyReduction_47 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (OrNode happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  15 happyReduction_48
happyReduction_48 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (GtNode happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  15 happyReduction_49
happyReduction_49 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (GeNode happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  15 happyReduction_50
happyReduction_50 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (LtNode happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  15 happyReduction_51
happyReduction_51 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (LeNode happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  15 happyReduction_52
happyReduction_52 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (EqNode happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  15 happyReduction_53
happyReduction_53 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (NeNode happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_2  15 happyReduction_54
happyReduction_54 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (NotNode happy_var_2
	)
happyReduction_54 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 56 56 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ID happy_dollar_dollar -> cont 16;
	NUM happy_dollar_dollar -> cont 17;
	STR happy_dollar_dollar -> cont 18;
	LPAREN -> cont 19;
	RPAREN -> cont 20;
	LBRACE -> cont 21;
	RBRACE -> cont 22;
	IF -> cont 23;
	ELSE -> cont 24;
	WHILE -> cont 25;
	INT -> cont 26;
	FLOAT -> cont 27;
	BOOLEAN -> cont 28;
	STRING -> cont 29;
	FUN -> cont 30;
	MAIN -> cont 31;
	VAL -> cont 32;
	VAR -> cont 33;
	PLUS -> cont 34;
	MINUS -> cont 35;
	MULT -> cont 36;
	DIV -> cont 37;
	MOD -> cont 38;
	G -> cont 39;
	GEQ -> cont 40;
	L -> cont 41;
	LEQ -> cont 42;
	EQUAL -> cont 43;
	NEQUAL -> cont 44;
	AND -> cont 45;
	OR -> cont 46;
	NOT -> cont 47;
	ICR -> cont 48;
	DCR -> cont 49;
	ATRIB -> cont 50;
	TRUE -> cont 51;
	FALSE -> cont 52;
	READLN -> cont 53;
	PRINT -> cont 54;
	COLON -> cont 55;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 56 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- AST Nodes
data Exp = NumNode Int
         -- | RealNode Float
         | StringNode String
         | IdNode String
         | AddNode Exp Exp
         | SubNode Exp Exp
         | MultNode Exp Exp
         | DivNode Exp Exp
         | ModNode Exp Exp
         | IncrNode Exp 
         | DecrNode Exp 
         | BoolNode Bool
         | AndNode Exp Exp
         | OrNode Exp Exp
         | GtNode Exp Exp
         | GeNode Exp Exp
         | LtNode Exp Exp
         | LeNode Exp Exp
         | EqNode Exp Exp
         | NeNode Exp Exp
         | NotNode Exp
         | IfNode Exp [Exp]
         | IfElseNode Exp [Exp] [Exp]
         | WhileNode Exp [Exp]
         | PrintNode Exp
         | ReadlnNode
         | VarDecl String Exp
         | VarDeclTyped String Type Exp
         | ValDecl String Exp
         | ValDeclTyped String Type Exp
         | AssignNode String Exp
         deriving (Show, Eq)

data Type = IntType | FloatType | BoolType | StringType deriving (Show, Eq)

parseError :: [Token] -> a
parseError toks = error $ "Erro de parsing" ++ show toks
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
