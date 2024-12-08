{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18
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
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,371) ([0,16384,0,0,0,8192,0,0,0,8192,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,2048,1556,0,48,32768,0,0,0,33280,389,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,8,0,0,0,4,0,0,32768,0,0,0,16384,0,0,0,32768,0,0,0,0,0,0,0,14336,4096,256,14,0,0,1024,32,0,0,512,16,1792,512,49184,1,896,256,57360,0,0,0,0,0,0,0,0,0,112,32,7170,0,56,16,3585,0,28,32776,1792,0,14,16388,896,0,7,8194,448,32768,3,4097,224,0,0,0,0,8192,6224,0,192,0,0,0,0,0,0,0,0,0,0,0,0,0,65024,63,0,0,0,0,0,0,0,0,0,0,0,0,0,224,64,14340,0,112,32,7170,0,56,16,3585,0,0,0,0,0,0,0,0,0,4,0,0,0,32768,4095,0,0,49152,2047,0,0,57344,1023,0,0,61440,511,0,0,63488,255,0,8192,64512,127,0,4096,65024,63,0,1792,512,49184,1,0,6,0,0,448,128,28680,0,32768,1,0,0,128,0,0,0,0,65528,0,0,28,32776,1792,0,14,16388,896,0,7,8194,448,32768,3,4097,224,49152,32769,2048,112,57344,16384,1024,56,28672,8192,512,28,14336,4096,256,14,7168,2048,128,7,3584,1024,32832,3,1792,512,49184,1,896,256,57360,0,448,128,28680,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,16384,12452,0,384,8192,6226,0,192,32768,0,0,0,0,0,0,0,0,0,0,0,4096,65024,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10256,12,24576,0,0,0,0,0,2564,3,6144,0,14,16388,896,0,7,8194,448,0,32768,2047,0,0,49152,511,0,0,57344,63,0,0,61440,31,0,0,63488,0,0,0,31744,0,0,0,15872,0,0,0,7936,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,448,0,0,0,224,0,0,0,0,0,0,0,0,0,0,32,0,0,0,16,0,0,16384,12452,0,384,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Fun","Commands","Command","Print","Readln","If","Aux_if","While","Type","InitExp","Decl","Assign","Expr","PostIncDecExp","Atomic","id","num","'('","')'","'{'","'}'","';'","if","else","while","int","boolean","fun","main","val","var","'+'","'-'","'*'","'/'","'%'","'>'","\">=\"","'<'","\"<=\"","\"==\"","\"!=\"","\"&&\"","\"||\"","'!'","\"++\"","\"--\"","'='","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","true","false","readln","print","return","':'","%eof"]
        bit_start = st * 63
        bit_end = (st + 1) * 63
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..62]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (31) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (31) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (32) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (63) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (21) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (22) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (23) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (19) = happyShift action_16
action_7 (26) = happyShift action_17
action_7 (28) = happyShift action_18
action_7 (33) = happyShift action_19
action_7 (34) = happyShift action_20
action_7 (60) = happyShift action_21
action_7 (61) = happyShift action_22
action_7 (5) = happyGoto action_8
action_7 (6) = happyGoto action_9
action_7 (7) = happyGoto action_10
action_7 (9) = happyGoto action_11
action_7 (11) = happyGoto action_12
action_7 (14) = happyGoto action_13
action_7 (15) = happyGoto action_14
action_7 (17) = happyGoto action_15
action_7 _ = happyReduce_4

action_8 (24) = happyShift action_38
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (19) = happyShift action_16
action_9 (25) = happyShift action_37
action_9 (26) = happyShift action_17
action_9 (28) = happyShift action_18
action_9 (33) = happyShift action_19
action_9 (34) = happyShift action_20
action_9 (60) = happyShift action_21
action_9 (61) = happyShift action_22
action_9 (5) = happyGoto action_36
action_9 (6) = happyGoto action_9
action_9 (7) = happyGoto action_10
action_9 (9) = happyGoto action_11
action_9 (11) = happyGoto action_12
action_9 (14) = happyGoto action_13
action_9 (15) = happyGoto action_14
action_9 (17) = happyGoto action_15
action_9 _ = happyReduce_4

action_10 _ = happyReduce_9

action_11 _ = happyReduce_7

action_12 _ = happyReduce_8

action_13 _ = happyReduce_5

action_14 _ = happyReduce_6

action_15 _ = happyReduce_32

action_16 (49) = happyShift action_28
action_16 (50) = happyShift action_29
action_16 (51) = happyShift action_30
action_16 (52) = happyShift action_31
action_16 (53) = happyShift action_32
action_16 (54) = happyShift action_33
action_16 (55) = happyShift action_34
action_16 (56) = happyShift action_35
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (21) = happyShift action_27
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (21) = happyShift action_26
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (19) = happyShift action_25
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (19) = happyShift action_24
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (21) = happyShift action_23
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_10

action_23 (19) = happyShift action_43
action_23 (20) = happyShift action_44
action_23 (21) = happyShift action_45
action_23 (36) = happyShift action_46
action_23 (48) = happyShift action_47
action_23 (57) = happyShift action_48
action_23 (58) = happyShift action_49
action_23 (59) = happyShift action_50
action_23 (8) = happyGoto action_40
action_23 (13) = happyGoto action_62
action_23 (16) = happyGoto action_63
action_23 (18) = happyGoto action_42
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (51) = happyShift action_60
action_24 (62) = happyShift action_61
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (51) = happyShift action_58
action_25 (62) = happyShift action_59
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (19) = happyShift action_43
action_26 (20) = happyShift action_44
action_26 (21) = happyShift action_45
action_26 (36) = happyShift action_46
action_26 (48) = happyShift action_47
action_26 (57) = happyShift action_48
action_26 (58) = happyShift action_49
action_26 (59) = happyShift action_50
action_26 (8) = happyGoto action_40
action_26 (16) = happyGoto action_57
action_26 (18) = happyGoto action_42
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (19) = happyShift action_43
action_27 (20) = happyShift action_44
action_27 (21) = happyShift action_45
action_27 (36) = happyShift action_46
action_27 (48) = happyShift action_47
action_27 (57) = happyShift action_48
action_27 (58) = happyShift action_49
action_27 (59) = happyShift action_50
action_27 (8) = happyGoto action_40
action_27 (16) = happyGoto action_56
action_27 (18) = happyGoto action_42
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_50

action_29 _ = happyReduce_51

action_30 (19) = happyShift action_43
action_30 (20) = happyShift action_44
action_30 (21) = happyShift action_45
action_30 (36) = happyShift action_46
action_30 (48) = happyShift action_47
action_30 (57) = happyShift action_48
action_30 (58) = happyShift action_49
action_30 (59) = happyShift action_50
action_30 (8) = happyGoto action_40
action_30 (16) = happyGoto action_55
action_30 (18) = happyGoto action_42
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (19) = happyShift action_43
action_31 (20) = happyShift action_44
action_31 (21) = happyShift action_45
action_31 (36) = happyShift action_46
action_31 (48) = happyShift action_47
action_31 (57) = happyShift action_48
action_31 (58) = happyShift action_49
action_31 (59) = happyShift action_50
action_31 (8) = happyGoto action_40
action_31 (16) = happyGoto action_54
action_31 (18) = happyGoto action_42
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (19) = happyShift action_43
action_32 (20) = happyShift action_44
action_32 (21) = happyShift action_45
action_32 (36) = happyShift action_46
action_32 (48) = happyShift action_47
action_32 (57) = happyShift action_48
action_32 (58) = happyShift action_49
action_32 (59) = happyShift action_50
action_32 (8) = happyGoto action_40
action_32 (16) = happyGoto action_53
action_32 (18) = happyGoto action_42
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (19) = happyShift action_43
action_33 (20) = happyShift action_44
action_33 (21) = happyShift action_45
action_33 (36) = happyShift action_46
action_33 (48) = happyShift action_47
action_33 (57) = happyShift action_48
action_33 (58) = happyShift action_49
action_33 (59) = happyShift action_50
action_33 (8) = happyGoto action_40
action_33 (16) = happyGoto action_52
action_33 (18) = happyGoto action_42
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (19) = happyShift action_43
action_34 (20) = happyShift action_44
action_34 (21) = happyShift action_45
action_34 (36) = happyShift action_46
action_34 (48) = happyShift action_47
action_34 (57) = happyShift action_48
action_34 (58) = happyShift action_49
action_34 (59) = happyShift action_50
action_34 (8) = happyGoto action_40
action_34 (16) = happyGoto action_51
action_34 (18) = happyGoto action_42
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (19) = happyShift action_43
action_35 (20) = happyShift action_44
action_35 (21) = happyShift action_45
action_35 (36) = happyShift action_46
action_35 (48) = happyShift action_47
action_35 (57) = happyShift action_48
action_35 (58) = happyShift action_49
action_35 (59) = happyShift action_50
action_35 (8) = happyGoto action_40
action_35 (16) = happyGoto action_41
action_35 (18) = happyGoto action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_3

action_37 (19) = happyShift action_16
action_37 (26) = happyShift action_17
action_37 (28) = happyShift action_18
action_37 (33) = happyShift action_19
action_37 (34) = happyShift action_20
action_37 (60) = happyShift action_21
action_37 (61) = happyShift action_22
action_37 (5) = happyGoto action_39
action_37 (6) = happyGoto action_9
action_37 (7) = happyGoto action_10
action_37 (9) = happyGoto action_11
action_37 (11) = happyGoto action_12
action_37 (14) = happyGoto action_13
action_37 (15) = happyGoto action_14
action_37 (17) = happyGoto action_15
action_37 _ = happyReduce_4

action_38 _ = happyReduce_1

action_39 _ = happyReduce_2

action_40 _ = happyReduce_49

action_41 (35) = happyShift action_64
action_41 (36) = happyShift action_65
action_41 (37) = happyShift action_66
action_41 (38) = happyShift action_67
action_41 (39) = happyShift action_68
action_41 (40) = happyShift action_69
action_41 (41) = happyShift action_70
action_41 (42) = happyShift action_71
action_41 (43) = happyShift action_72
action_41 (44) = happyShift action_73
action_41 (45) = happyShift action_74
action_41 (46) = happyShift action_75
action_41 (47) = happyShift action_76
action_41 _ = happyReduce_31

action_42 _ = happyReduce_48

action_43 _ = happyReduce_52

action_44 _ = happyReduce_53

action_45 (19) = happyShift action_43
action_45 (20) = happyShift action_44
action_45 (21) = happyShift action_45
action_45 (36) = happyShift action_46
action_45 (48) = happyShift action_47
action_45 (57) = happyShift action_48
action_45 (58) = happyShift action_49
action_45 (59) = happyShift action_50
action_45 (8) = happyGoto action_40
action_45 (16) = happyGoto action_89
action_45 (18) = happyGoto action_42
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (19) = happyShift action_43
action_46 (20) = happyShift action_44
action_46 (21) = happyShift action_45
action_46 (36) = happyShift action_46
action_46 (48) = happyShift action_47
action_46 (57) = happyShift action_48
action_46 (58) = happyShift action_49
action_46 (59) = happyShift action_50
action_46 (8) = happyGoto action_40
action_46 (16) = happyGoto action_88
action_46 (18) = happyGoto action_42
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (19) = happyShift action_43
action_47 (20) = happyShift action_44
action_47 (21) = happyShift action_45
action_47 (36) = happyShift action_46
action_47 (48) = happyShift action_47
action_47 (57) = happyShift action_48
action_47 (58) = happyShift action_49
action_47 (59) = happyShift action_50
action_47 (8) = happyGoto action_40
action_47 (16) = happyGoto action_87
action_47 (18) = happyGoto action_42
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_54

action_49 _ = happyReduce_55

action_50 (21) = happyShift action_86
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (35) = happyShift action_64
action_51 (36) = happyShift action_65
action_51 (37) = happyShift action_66
action_51 (38) = happyShift action_67
action_51 (39) = happyShift action_68
action_51 (40) = happyShift action_69
action_51 (41) = happyShift action_70
action_51 (42) = happyShift action_71
action_51 (43) = happyShift action_72
action_51 (44) = happyShift action_73
action_51 (45) = happyShift action_74
action_51 (46) = happyShift action_75
action_51 (47) = happyShift action_76
action_51 _ = happyReduce_30

action_52 (35) = happyShift action_64
action_52 (36) = happyShift action_65
action_52 (37) = happyShift action_66
action_52 (38) = happyShift action_67
action_52 (39) = happyShift action_68
action_52 (40) = happyShift action_69
action_52 (41) = happyShift action_70
action_52 (42) = happyShift action_71
action_52 (43) = happyShift action_72
action_52 (44) = happyShift action_73
action_52 (45) = happyShift action_74
action_52 (46) = happyShift action_75
action_52 (47) = happyShift action_76
action_52 _ = happyReduce_29

action_53 (35) = happyShift action_64
action_53 (36) = happyShift action_65
action_53 (37) = happyShift action_66
action_53 (38) = happyShift action_67
action_53 (39) = happyShift action_68
action_53 (40) = happyShift action_69
action_53 (41) = happyShift action_70
action_53 (42) = happyShift action_71
action_53 (43) = happyShift action_72
action_53 (44) = happyShift action_73
action_53 (45) = happyShift action_74
action_53 (46) = happyShift action_75
action_53 (47) = happyShift action_76
action_53 _ = happyReduce_28

action_54 (35) = happyShift action_64
action_54 (36) = happyShift action_65
action_54 (37) = happyShift action_66
action_54 (38) = happyShift action_67
action_54 (39) = happyShift action_68
action_54 (40) = happyShift action_69
action_54 (41) = happyShift action_70
action_54 (42) = happyShift action_71
action_54 (43) = happyShift action_72
action_54 (44) = happyShift action_73
action_54 (45) = happyShift action_74
action_54 (46) = happyShift action_75
action_54 (47) = happyShift action_76
action_54 _ = happyReduce_27

action_55 (35) = happyShift action_64
action_55 (36) = happyShift action_65
action_55 (37) = happyShift action_66
action_55 (38) = happyShift action_67
action_55 (39) = happyShift action_68
action_55 (40) = happyShift action_69
action_55 (41) = happyShift action_70
action_55 (42) = happyShift action_71
action_55 (43) = happyShift action_72
action_55 (44) = happyShift action_73
action_55 (45) = happyShift action_74
action_55 (46) = happyShift action_75
action_55 (47) = happyShift action_76
action_55 _ = happyReduce_26

action_56 (22) = happyShift action_85
action_56 (35) = happyShift action_64
action_56 (36) = happyShift action_65
action_56 (37) = happyShift action_66
action_56 (38) = happyShift action_67
action_56 (39) = happyShift action_68
action_56 (40) = happyShift action_69
action_56 (41) = happyShift action_70
action_56 (42) = happyShift action_71
action_56 (43) = happyShift action_72
action_56 (44) = happyShift action_73
action_56 (45) = happyShift action_74
action_56 (46) = happyShift action_75
action_56 (47) = happyShift action_76
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (22) = happyShift action_84
action_57 (35) = happyShift action_64
action_57 (36) = happyShift action_65
action_57 (37) = happyShift action_66
action_57 (38) = happyShift action_67
action_57 (39) = happyShift action_68
action_57 (40) = happyShift action_69
action_57 (41) = happyShift action_70
action_57 (42) = happyShift action_71
action_57 (43) = happyShift action_72
action_57 (44) = happyShift action_73
action_57 (45) = happyShift action_74
action_57 (46) = happyShift action_75
action_57 (47) = happyShift action_76
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (19) = happyShift action_43
action_58 (20) = happyShift action_44
action_58 (21) = happyShift action_45
action_58 (36) = happyShift action_46
action_58 (48) = happyShift action_47
action_58 (57) = happyShift action_48
action_58 (58) = happyShift action_49
action_58 (59) = happyShift action_50
action_58 (8) = happyGoto action_40
action_58 (13) = happyGoto action_83
action_58 (16) = happyGoto action_63
action_58 (18) = happyGoto action_42
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (29) = happyShift action_79
action_59 (30) = happyShift action_80
action_59 (12) = happyGoto action_82
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (19) = happyShift action_43
action_60 (20) = happyShift action_44
action_60 (21) = happyShift action_45
action_60 (36) = happyShift action_46
action_60 (48) = happyShift action_47
action_60 (57) = happyShift action_48
action_60 (58) = happyShift action_49
action_60 (59) = happyShift action_50
action_60 (8) = happyGoto action_40
action_60 (13) = happyGoto action_81
action_60 (16) = happyGoto action_63
action_60 (18) = happyGoto action_42
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (29) = happyShift action_79
action_61 (30) = happyShift action_80
action_61 (12) = happyGoto action_78
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (22) = happyShift action_77
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (35) = happyShift action_64
action_63 (36) = happyShift action_65
action_63 (37) = happyShift action_66
action_63 (38) = happyShift action_67
action_63 (39) = happyShift action_68
action_63 (40) = happyShift action_69
action_63 (41) = happyShift action_70
action_63 (42) = happyShift action_71
action_63 (43) = happyShift action_72
action_63 (44) = happyShift action_73
action_63 (45) = happyShift action_74
action_63 (46) = happyShift action_75
action_63 (47) = happyShift action_76
action_63 _ = happyReduce_21

action_64 (19) = happyShift action_43
action_64 (20) = happyShift action_44
action_64 (21) = happyShift action_45
action_64 (36) = happyShift action_46
action_64 (48) = happyShift action_47
action_64 (57) = happyShift action_48
action_64 (58) = happyShift action_49
action_64 (59) = happyShift action_50
action_64 (8) = happyGoto action_40
action_64 (16) = happyGoto action_111
action_64 (18) = happyGoto action_42
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (19) = happyShift action_43
action_65 (20) = happyShift action_44
action_65 (21) = happyShift action_45
action_65 (36) = happyShift action_46
action_65 (48) = happyShift action_47
action_65 (57) = happyShift action_48
action_65 (58) = happyShift action_49
action_65 (59) = happyShift action_50
action_65 (8) = happyGoto action_40
action_65 (16) = happyGoto action_110
action_65 (18) = happyGoto action_42
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (19) = happyShift action_43
action_66 (20) = happyShift action_44
action_66 (21) = happyShift action_45
action_66 (36) = happyShift action_46
action_66 (48) = happyShift action_47
action_66 (57) = happyShift action_48
action_66 (58) = happyShift action_49
action_66 (59) = happyShift action_50
action_66 (8) = happyGoto action_40
action_66 (16) = happyGoto action_109
action_66 (18) = happyGoto action_42
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (19) = happyShift action_43
action_67 (20) = happyShift action_44
action_67 (21) = happyShift action_45
action_67 (36) = happyShift action_46
action_67 (48) = happyShift action_47
action_67 (57) = happyShift action_48
action_67 (58) = happyShift action_49
action_67 (59) = happyShift action_50
action_67 (8) = happyGoto action_40
action_67 (16) = happyGoto action_108
action_67 (18) = happyGoto action_42
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (19) = happyShift action_43
action_68 (20) = happyShift action_44
action_68 (21) = happyShift action_45
action_68 (36) = happyShift action_46
action_68 (48) = happyShift action_47
action_68 (57) = happyShift action_48
action_68 (58) = happyShift action_49
action_68 (59) = happyShift action_50
action_68 (8) = happyGoto action_40
action_68 (16) = happyGoto action_107
action_68 (18) = happyGoto action_42
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (19) = happyShift action_43
action_69 (20) = happyShift action_44
action_69 (21) = happyShift action_45
action_69 (36) = happyShift action_46
action_69 (48) = happyShift action_47
action_69 (57) = happyShift action_48
action_69 (58) = happyShift action_49
action_69 (59) = happyShift action_50
action_69 (8) = happyGoto action_40
action_69 (16) = happyGoto action_106
action_69 (18) = happyGoto action_42
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (19) = happyShift action_43
action_70 (20) = happyShift action_44
action_70 (21) = happyShift action_45
action_70 (36) = happyShift action_46
action_70 (48) = happyShift action_47
action_70 (57) = happyShift action_48
action_70 (58) = happyShift action_49
action_70 (59) = happyShift action_50
action_70 (8) = happyGoto action_40
action_70 (16) = happyGoto action_105
action_70 (18) = happyGoto action_42
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (19) = happyShift action_43
action_71 (20) = happyShift action_44
action_71 (21) = happyShift action_45
action_71 (36) = happyShift action_46
action_71 (48) = happyShift action_47
action_71 (57) = happyShift action_48
action_71 (58) = happyShift action_49
action_71 (59) = happyShift action_50
action_71 (8) = happyGoto action_40
action_71 (16) = happyGoto action_104
action_71 (18) = happyGoto action_42
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (19) = happyShift action_43
action_72 (20) = happyShift action_44
action_72 (21) = happyShift action_45
action_72 (36) = happyShift action_46
action_72 (48) = happyShift action_47
action_72 (57) = happyShift action_48
action_72 (58) = happyShift action_49
action_72 (59) = happyShift action_50
action_72 (8) = happyGoto action_40
action_72 (16) = happyGoto action_103
action_72 (18) = happyGoto action_42
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (19) = happyShift action_43
action_73 (20) = happyShift action_44
action_73 (21) = happyShift action_45
action_73 (36) = happyShift action_46
action_73 (48) = happyShift action_47
action_73 (57) = happyShift action_48
action_73 (58) = happyShift action_49
action_73 (59) = happyShift action_50
action_73 (8) = happyGoto action_40
action_73 (16) = happyGoto action_102
action_73 (18) = happyGoto action_42
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (19) = happyShift action_43
action_74 (20) = happyShift action_44
action_74 (21) = happyShift action_45
action_74 (36) = happyShift action_46
action_74 (48) = happyShift action_47
action_74 (57) = happyShift action_48
action_74 (58) = happyShift action_49
action_74 (59) = happyShift action_50
action_74 (8) = happyGoto action_40
action_74 (16) = happyGoto action_101
action_74 (18) = happyGoto action_42
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (19) = happyShift action_43
action_75 (20) = happyShift action_44
action_75 (21) = happyShift action_45
action_75 (36) = happyShift action_46
action_75 (48) = happyShift action_47
action_75 (57) = happyShift action_48
action_75 (58) = happyShift action_49
action_75 (59) = happyShift action_50
action_75 (8) = happyGoto action_40
action_75 (16) = happyGoto action_100
action_75 (18) = happyGoto action_42
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (19) = happyShift action_43
action_76 (20) = happyShift action_44
action_76 (21) = happyShift action_45
action_76 (36) = happyShift action_46
action_76 (48) = happyShift action_47
action_76 (57) = happyShift action_48
action_76 (58) = happyShift action_49
action_76 (59) = happyShift action_50
action_76 (8) = happyGoto action_40
action_76 (16) = happyGoto action_99
action_76 (18) = happyGoto action_42
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_11

action_78 (51) = happyShift action_98
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_19

action_80 _ = happyReduce_20

action_81 _ = happyReduce_22

action_82 (51) = happyShift action_97
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_23

action_84 (19) = happyShift action_16
action_84 (23) = happyShift action_96
action_84 (26) = happyShift action_17
action_84 (28) = happyShift action_18
action_84 (33) = happyShift action_19
action_84 (34) = happyShift action_20
action_84 (60) = happyShift action_21
action_84 (61) = happyShift action_22
action_84 (6) = happyGoto action_95
action_84 (7) = happyGoto action_10
action_84 (9) = happyGoto action_11
action_84 (11) = happyGoto action_12
action_84 (14) = happyGoto action_13
action_84 (15) = happyGoto action_14
action_84 (17) = happyGoto action_15
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (19) = happyShift action_16
action_85 (23) = happyShift action_94
action_85 (26) = happyShift action_17
action_85 (28) = happyShift action_18
action_85 (33) = happyShift action_19
action_85 (34) = happyShift action_20
action_85 (60) = happyShift action_21
action_85 (61) = happyShift action_22
action_85 (6) = happyGoto action_92
action_85 (7) = happyGoto action_10
action_85 (9) = happyGoto action_11
action_85 (10) = happyGoto action_93
action_85 (11) = happyGoto action_12
action_85 (14) = happyGoto action_13
action_85 (15) = happyGoto action_14
action_85 (17) = happyGoto action_15
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (22) = happyShift action_91
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_46

action_88 _ = happyReduce_47

action_89 (22) = happyShift action_90
action_89 (35) = happyShift action_64
action_89 (36) = happyShift action_65
action_89 (37) = happyShift action_66
action_89 (38) = happyShift action_67
action_89 (39) = happyShift action_68
action_89 (40) = happyShift action_69
action_89 (41) = happyShift action_70
action_89 (42) = happyShift action_71
action_89 (43) = happyShift action_72
action_89 (44) = happyShift action_73
action_89 (45) = happyShift action_74
action_89 (46) = happyShift action_75
action_89 (47) = happyShift action_76
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_56

action_91 _ = happyReduce_12

action_92 _ = happyReduce_15

action_93 (27) = happyShift action_116
action_93 _ = happyReduce_13

action_94 (19) = happyShift action_16
action_94 (26) = happyShift action_17
action_94 (28) = happyShift action_18
action_94 (33) = happyShift action_19
action_94 (34) = happyShift action_20
action_94 (60) = happyShift action_21
action_94 (61) = happyShift action_22
action_94 (5) = happyGoto action_115
action_94 (6) = happyGoto action_9
action_94 (7) = happyGoto action_10
action_94 (9) = happyGoto action_11
action_94 (11) = happyGoto action_12
action_94 (14) = happyGoto action_13
action_94 (15) = happyGoto action_14
action_94 (17) = happyGoto action_15
action_94 _ = happyReduce_4

action_95 _ = happyReduce_17

action_96 (19) = happyShift action_16
action_96 (26) = happyShift action_17
action_96 (28) = happyShift action_18
action_96 (33) = happyShift action_19
action_96 (34) = happyShift action_20
action_96 (60) = happyShift action_21
action_96 (61) = happyShift action_22
action_96 (5) = happyGoto action_114
action_96 (6) = happyGoto action_9
action_96 (7) = happyGoto action_10
action_96 (9) = happyGoto action_11
action_96 (11) = happyGoto action_12
action_96 (14) = happyGoto action_13
action_96 (15) = happyGoto action_14
action_96 (17) = happyGoto action_15
action_96 _ = happyReduce_4

action_97 (19) = happyShift action_43
action_97 (20) = happyShift action_44
action_97 (21) = happyShift action_45
action_97 (36) = happyShift action_46
action_97 (48) = happyShift action_47
action_97 (57) = happyShift action_48
action_97 (58) = happyShift action_49
action_97 (59) = happyShift action_50
action_97 (8) = happyGoto action_40
action_97 (13) = happyGoto action_113
action_97 (16) = happyGoto action_63
action_97 (18) = happyGoto action_42
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (19) = happyShift action_43
action_98 (20) = happyShift action_44
action_98 (21) = happyShift action_45
action_98 (36) = happyShift action_46
action_98 (48) = happyShift action_47
action_98 (57) = happyShift action_48
action_98 (58) = happyShift action_49
action_98 (59) = happyShift action_50
action_98 (8) = happyGoto action_40
action_98 (13) = happyGoto action_112
action_98 (16) = happyGoto action_63
action_98 (18) = happyGoto action_42
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (35) = happyShift action_64
action_99 (36) = happyShift action_65
action_99 (37) = happyShift action_66
action_99 (38) = happyShift action_67
action_99 (39) = happyShift action_68
action_99 (40) = happyShift action_69
action_99 (41) = happyShift action_70
action_99 (42) = happyShift action_71
action_99 (43) = happyShift action_72
action_99 (44) = happyShift action_73
action_99 (45) = happyShift action_74
action_99 (46) = happyShift action_75
action_99 _ = happyReduce_39

action_100 (35) = happyShift action_64
action_100 (36) = happyShift action_65
action_100 (37) = happyShift action_66
action_100 (38) = happyShift action_67
action_100 (39) = happyShift action_68
action_100 (40) = happyShift action_69
action_100 (41) = happyShift action_70
action_100 (42) = happyShift action_71
action_100 (43) = happyShift action_72
action_100 (44) = happyShift action_73
action_100 (45) = happyShift action_74
action_100 _ = happyReduce_38

action_101 (35) = happyShift action_64
action_101 (36) = happyShift action_65
action_101 (37) = happyShift action_66
action_101 (38) = happyShift action_67
action_101 (39) = happyShift action_68
action_101 (40) = happyShift action_69
action_101 (41) = happyShift action_70
action_101 (42) = happyShift action_71
action_101 (43) = happyShift action_72
action_101 (44) = happyFail []
action_101 (45) = happyFail []
action_101 _ = happyReduce_45

action_102 (35) = happyShift action_64
action_102 (36) = happyShift action_65
action_102 (37) = happyShift action_66
action_102 (38) = happyShift action_67
action_102 (39) = happyShift action_68
action_102 (40) = happyShift action_69
action_102 (41) = happyShift action_70
action_102 (42) = happyShift action_71
action_102 (43) = happyShift action_72
action_102 (44) = happyFail []
action_102 (45) = happyFail []
action_102 _ = happyReduce_44

action_103 (35) = happyShift action_64
action_103 (36) = happyShift action_65
action_103 (37) = happyShift action_66
action_103 (38) = happyShift action_67
action_103 (39) = happyShift action_68
action_103 (40) = happyFail []
action_103 (41) = happyFail []
action_103 (42) = happyFail []
action_103 (43) = happyFail []
action_103 _ = happyReduce_43

action_104 (35) = happyShift action_64
action_104 (36) = happyShift action_65
action_104 (37) = happyShift action_66
action_104 (38) = happyShift action_67
action_104 (39) = happyShift action_68
action_104 (40) = happyFail []
action_104 (41) = happyFail []
action_104 (42) = happyFail []
action_104 (43) = happyFail []
action_104 _ = happyReduce_42

action_105 (35) = happyShift action_64
action_105 (36) = happyShift action_65
action_105 (37) = happyShift action_66
action_105 (38) = happyShift action_67
action_105 (39) = happyShift action_68
action_105 (40) = happyFail []
action_105 (41) = happyFail []
action_105 (42) = happyFail []
action_105 (43) = happyFail []
action_105 _ = happyReduce_41

action_106 (35) = happyShift action_64
action_106 (36) = happyShift action_65
action_106 (37) = happyShift action_66
action_106 (38) = happyShift action_67
action_106 (39) = happyShift action_68
action_106 (40) = happyFail []
action_106 (41) = happyFail []
action_106 (42) = happyFail []
action_106 (43) = happyFail []
action_106 _ = happyReduce_40

action_107 _ = happyReduce_37

action_108 _ = happyReduce_36

action_109 _ = happyReduce_35

action_110 (37) = happyShift action_66
action_110 (38) = happyShift action_67
action_110 (39) = happyShift action_68
action_110 _ = happyReduce_34

action_111 (37) = happyShift action_66
action_111 (38) = happyShift action_67
action_111 (39) = happyShift action_68
action_111 _ = happyReduce_33

action_112 _ = happyReduce_24

action_113 _ = happyReduce_25

action_114 (24) = happyShift action_119
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (24) = happyShift action_118
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (19) = happyShift action_16
action_116 (23) = happyShift action_94
action_116 (26) = happyShift action_17
action_116 (28) = happyShift action_18
action_116 (33) = happyShift action_19
action_116 (34) = happyShift action_20
action_116 (60) = happyShift action_21
action_116 (61) = happyShift action_22
action_116 (6) = happyGoto action_92
action_116 (7) = happyGoto action_10
action_116 (9) = happyGoto action_11
action_116 (10) = happyGoto action_117
action_116 (11) = happyGoto action_12
action_116 (14) = happyGoto action_13
action_116 (15) = happyGoto action_14
action_116 (17) = happyGoto action_15
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_14

action_118 _ = happyReduce_16

action_119 _ = happyReduce_18

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
		 (ProgramNode happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  5 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

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
happyReduction_5 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn6
		 (ReturnNode
	)

happyReduce_11 = happyReduce 4 7 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (PrintNode happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 _
	_
	_
	 =  HappyAbsSyn8
		 (ReadlnNode
	)

happyReduce_13 = happyReduce 5 9 happyReduction_13
happyReduction_13 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfNode happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 7 9 happyReduction_14
happyReduction_14 ((HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfElseNode happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  10 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 5 11 happyReduction_17
happyReduction_17 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (WhileNode happy_var_3 [happy_var_5]
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 7 11 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (WhileNode happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn12
		 (IntType
	)

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn12
		 (BoolType
	)

happyReduce_21 = happySpecReduce_1  13 happyReduction_21
happyReduction_21 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 14 happyReduction_22
happyReduction_22 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (VarDecl (IdNode happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 4 14 happyReduction_23
happyReduction_23 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (ValDecl (IdNode happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 6 14 happyReduction_24
happyReduction_24 ((HappyAbsSyn13  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (VarDeclTyped (IdNode happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 6 14 happyReduction_25
happyReduction_25 ((HappyAbsSyn13  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (ValDeclTyped (IdNode happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_3  15 happyReduction_26
happyReduction_26 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (AssignNode happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  15 happyReduction_27
happyReduction_27 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (AddAssignNode happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  15 happyReduction_28
happyReduction_28 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (SubAssignNode happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  15 happyReduction_29
happyReduction_29 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (MultAssignNode happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  15 happyReduction_30
happyReduction_30 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (DivAssignNode happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (ModAssignNode happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  16 happyReduction_33
happyReduction_33 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (AddNode happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  16 happyReduction_34
happyReduction_34 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (SubNode happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (MultNode happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  16 happyReduction_36
happyReduction_36 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (DivNode happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (ModNode happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (AndNode happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (OrNode happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (GtNode happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (GeNode happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  16 happyReduction_42
happyReduction_42 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (LtNode happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  16 happyReduction_43
happyReduction_43 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (LeNode happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  16 happyReduction_44
happyReduction_44 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (EqNode happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  16 happyReduction_45
happyReduction_45 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (NeNode happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  16 happyReduction_46
happyReduction_46 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (NotNode happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  16 happyReduction_47
happyReduction_47 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  16 happyReduction_48
happyReduction_48 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  16 happyReduction_49
happyReduction_49 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  17 happyReduction_50
happyReduction_50 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn17
		 (IncrNode (IdNode happy_var_1)
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_2  17 happyReduction_51
happyReduction_51 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn17
		 (DecrNode (IdNode happy_var_1)
	)
happyReduction_51 _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  18 happyReduction_52
happyReduction_52 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn18
		 (IdNode happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  18 happyReduction_53
happyReduction_53 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn18
		 (NumNode happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  18 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn18
		 (BoolNode True
	)

happyReduce_55 = happySpecReduce_1  18 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn18
		 (BoolNode False
	)

happyReduce_56 = happySpecReduce_3  18 happyReduction_56
happyReduction_56 _
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 63 63 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ID happy_dollar_dollar -> cont 19;
	NUM happy_dollar_dollar -> cont 20;
	LPAREN -> cont 21;
	RPAREN -> cont 22;
	LBRACE -> cont 23;
	RBRACE -> cont 24;
	SEMICOLON -> cont 25;
	IF -> cont 26;
	ELSE -> cont 27;
	WHILE -> cont 28;
	INT -> cont 29;
	BOOLEAN -> cont 30;
	FUN -> cont 31;
	MAIN -> cont 32;
	VAL -> cont 33;
	VAR -> cont 34;
	PLUS -> cont 35;
	MINUS -> cont 36;
	MULT -> cont 37;
	DIV -> cont 38;
	MOD -> cont 39;
	G -> cont 40;
	GEQ -> cont 41;
	L -> cont 42;
	LEQ -> cont 43;
	EQUAL -> cont 44;
	NEQUAL -> cont 45;
	AND -> cont 46;
	OR -> cont 47;
	NOT -> cont 48;
	ICR -> cont 49;
	DCR -> cont 50;
	ATRIB -> cont 51;
	ATRIB_PLUS -> cont 52;
	ATRIB_MINUS -> cont 53;
	ATRIB_MULT -> cont 54;
	ATRIB_DIV -> cont 55;
	ATRIB_MOD -> cont 56;
	TRUE -> cont 57;
	FALSE -> cont 58;
	READLN -> cont 59;
	PRINT -> cont 60;
	RETURN -> cont 61;
	COLON -> cont 62;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 63 tk tks = happyError' (tks, explist)
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


-- Estrutura da AST (Árvore Sintática Abstrata) com tipos e nós de operações
data Exp = ProgramNode [Exp]             -- Nó para encapsular a lista principal de comandos
         | NumNode Int
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
         | ReturnNode
         | VarDecl Exp Exp
         | VarDeclTyped Exp Type Exp
         | ValDecl Exp Exp
         | ValDeclTyped Exp Type Exp
         | AssignNode String Exp
         | AddAssignNode String Exp
         | SubAssignNode String Exp
         | MultAssignNode String Exp
         | DivAssignNode String Exp
         | ModAssignNode String Exp
         deriving (Show, Eq)
data Type = IntType 
          -- | FloatType 
          | BoolType 
          -- | StringType 
          deriving (Show, Eq) --TODO deicar se ter string por enquanto

parseError :: [Token] -> a
parseError toks = error $ "Erro de parsing: " ++ show toks
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
