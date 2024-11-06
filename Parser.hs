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
happyExpList = Happy_Data_Array.listArray (0,278) ([0,8192,0,0,0,32,0,0,16384,0,0,0,0,0,0,8,0,0,4096,0,0,0,32,0,0,33664,386,15424,0,64,0,0,33664,386,15424,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,34814,1,0,0,56,0,0,0,2,0,0,0,0,0,0,0,2048,0,0,0,8,0,0,128,0,0,32768,0,0,0,896,0,3136,0,0,0,0,0,0,0,0,8,0,0,2048,0,0,32768,7,16384,12,4096,0,0,0,0,34814,1,0,0,0,0,0,0,0,0,0,16896,0,0,0,66,896,0,3136,32768,3,16384,12,896,0,3136,32768,3,16384,12,896,0,3136,32768,3,16384,12,896,0,0,32768,3,0,0,896,0,0,32768,3,0,0,896,0,0,32768,3,0,0,896,0,0,32768,3,0,0,896,0,0,32768,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15872,384,0,0,0,0,0,15872,384,0,0,32830,1,0,15872,384,0,0,32830,1,0,0,0,0,0,0,0,0,0,0,0,0,56,0,0,14336,0,0,0,4096,0,0,0,0,0,0,0,0,0,65024,391,0,0,14336,0,4096,0,56,0,16,14336,0,896,0,3136,0,7172,0,0,896,0,3136,0,7172,0,0,0,0,0,0,16,34814,1,4096,0,56,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65024,391,0,0,14336,0,0,0,512,0,0,34814,1,0,0,56,0,32,0,0,8192,0,0,32768,33411,16385,60,33664,386,15424,32768,3,16384,12,896,0,3136,0,0,34814,1,0,0,56,0,0,34814,1,0,0,56,0,64,0,0,16384,0,0,0,256,0,0,0,0,0,0,32,0,0,33664,386,15424,0,64,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Fun","Commands","Command","Readln","Print","If","While","Type","Decl","Assign","Aexp","Bexp","id","num","real","string","'('","')'","'{'","'}'","if","else","while","int","float","boolean","fun","main","val","var","'+'","'-'","'*'","'/'","'%'","'>'","\">=\"","'<'","\"<=\"","\"==\"","\"!=\"","\"&&\"","\"||\"","'!'","\"++\"","\"--\"","'='","true","false","readln","print","':'","%eof"]
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

action_4 (20) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (21) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (22) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (16) = happyShift action_18
action_7 (17) = happyShift action_19
action_7 (18) = happyShift action_20
action_7 (24) = happyShift action_21
action_7 (26) = happyShift action_22
action_7 (32) = happyShift action_23
action_7 (33) = happyShift action_24
action_7 (47) = happyShift action_25
action_7 (51) = happyShift action_26
action_7 (52) = happyShift action_27
action_7 (53) = happyShift action_28
action_7 (54) = happyShift action_29
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

action_8 (23) = happyShift action_56
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (16) = happyShift action_18
action_9 (17) = happyShift action_19
action_9 (18) = happyShift action_20
action_9 (24) = happyShift action_21
action_9 (26) = happyShift action_22
action_9 (32) = happyShift action_23
action_9 (33) = happyShift action_24
action_9 (47) = happyShift action_25
action_9 (51) = happyShift action_26
action_9 (52) = happyShift action_27
action_9 (53) = happyShift action_28
action_9 (54) = happyShift action_29
action_9 (5) = happyGoto action_55
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

action_16 (34) = happyShift action_43
action_16 (35) = happyShift action_44
action_16 (36) = happyShift action_45
action_16 (37) = happyShift action_46
action_16 (38) = happyShift action_47
action_16 (39) = happyShift action_48
action_16 (40) = happyShift action_49
action_16 (41) = happyShift action_50
action_16 (42) = happyShift action_51
action_16 (43) = happyShift action_52
action_16 (48) = happyShift action_53
action_16 (49) = happyShift action_54
action_16 _ = happyReduce_7

action_17 (44) = happyShift action_40
action_17 (45) = happyShift action_41
action_17 (46) = happyShift action_42
action_17 _ = happyReduce_8

action_18 (16) = happyReduce_46
action_18 (17) = happyReduce_46
action_18 (18) = happyReduce_46
action_18 (23) = happyReduce_46
action_18 (24) = happyReduce_46
action_18 (26) = happyReduce_46
action_18 (32) = happyReduce_46
action_18 (33) = happyReduce_46
action_18 (44) = happyReduce_46
action_18 (45) = happyReduce_46
action_18 (46) = happyReduce_46
action_18 (47) = happyReduce_46
action_18 (50) = happyShift action_39
action_18 (51) = happyReduce_46
action_18 (52) = happyReduce_46
action_18 (53) = happyReduce_46
action_18 (54) = happyReduce_46
action_18 _ = happyReduce_36

action_19 _ = happyReduce_34

action_20 _ = happyReduce_35

action_21 (20) = happyShift action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (20) = happyShift action_37
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (16) = happyShift action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (16) = happyShift action_35
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (16) = happyShift action_34
action_25 (17) = happyShift action_19
action_25 (18) = happyShift action_20
action_25 (47) = happyShift action_25
action_25 (51) = happyShift action_26
action_25 (52) = happyShift action_27
action_25 (14) = happyGoto action_32
action_25 (15) = happyGoto action_33
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_44

action_27 _ = happyReduce_45

action_28 (20) = happyShift action_31
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (20) = happyShift action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (16) = happyShift action_34
action_30 (17) = happyShift action_19
action_30 (18) = happyShift action_20
action_30 (19) = happyShift action_82
action_30 (47) = happyShift action_25
action_30 (51) = happyShift action_26
action_30 (52) = happyShift action_27
action_30 (14) = happyGoto action_80
action_30 (15) = happyGoto action_81
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (21) = happyShift action_79
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (34) = happyShift action_43
action_32 (35) = happyShift action_44
action_32 (36) = happyShift action_45
action_32 (37) = happyShift action_46
action_32 (38) = happyShift action_47
action_32 (39) = happyShift action_48
action_32 (40) = happyShift action_49
action_32 (41) = happyShift action_50
action_32 (42) = happyShift action_51
action_32 (43) = happyShift action_52
action_32 (48) = happyShift action_53
action_32 (49) = happyShift action_54
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (44) = happyShift action_40
action_33 (45) = happyShift action_41
action_33 (46) = happyShift action_42
action_33 _ = happyReduce_55

action_34 (16) = happyReduce_46
action_34 (17) = happyReduce_46
action_34 (18) = happyReduce_46
action_34 (21) = happyReduce_46
action_34 (23) = happyReduce_46
action_34 (24) = happyReduce_46
action_34 (26) = happyReduce_46
action_34 (32) = happyReduce_46
action_34 (33) = happyReduce_46
action_34 (44) = happyReduce_46
action_34 (45) = happyReduce_46
action_34 (46) = happyReduce_46
action_34 (47) = happyReduce_46
action_34 (51) = happyReduce_46
action_34 (52) = happyReduce_46
action_34 (53) = happyReduce_46
action_34 (54) = happyReduce_46
action_34 _ = happyReduce_36

action_35 (50) = happyShift action_77
action_35 (55) = happyShift action_78
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (50) = happyShift action_75
action_36 (55) = happyShift action_76
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (16) = happyShift action_34
action_37 (17) = happyShift action_19
action_37 (18) = happyShift action_20
action_37 (47) = happyShift action_25
action_37 (51) = happyShift action_26
action_37 (52) = happyShift action_27
action_37 (14) = happyGoto action_32
action_37 (15) = happyGoto action_74
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (16) = happyShift action_34
action_38 (17) = happyShift action_19
action_38 (18) = happyShift action_20
action_38 (47) = happyShift action_25
action_38 (51) = happyShift action_26
action_38 (52) = happyShift action_27
action_38 (14) = happyGoto action_32
action_38 (15) = happyGoto action_73
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (16) = happyShift action_34
action_39 (17) = happyShift action_19
action_39 (18) = happyShift action_20
action_39 (47) = happyShift action_25
action_39 (51) = happyShift action_26
action_39 (52) = happyShift action_27
action_39 (14) = happyGoto action_71
action_39 (15) = happyGoto action_72
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (16) = happyShift action_34
action_40 (17) = happyShift action_19
action_40 (18) = happyShift action_20
action_40 (47) = happyShift action_25
action_40 (51) = happyShift action_26
action_40 (52) = happyShift action_27
action_40 (14) = happyGoto action_32
action_40 (15) = happyGoto action_70
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (16) = happyShift action_34
action_41 (17) = happyShift action_19
action_41 (18) = happyShift action_20
action_41 (47) = happyShift action_25
action_41 (51) = happyShift action_26
action_41 (52) = happyShift action_27
action_41 (14) = happyGoto action_32
action_41 (15) = happyGoto action_69
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (16) = happyShift action_34
action_42 (17) = happyShift action_19
action_42 (18) = happyShift action_20
action_42 (47) = happyShift action_25
action_42 (51) = happyShift action_26
action_42 (52) = happyShift action_27
action_42 (14) = happyGoto action_32
action_42 (15) = happyGoto action_68
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (16) = happyShift action_58
action_43 (17) = happyShift action_19
action_43 (18) = happyShift action_20
action_43 (14) = happyGoto action_67
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (16) = happyShift action_58
action_44 (17) = happyShift action_19
action_44 (18) = happyShift action_20
action_44 (14) = happyGoto action_66
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (16) = happyShift action_58
action_45 (17) = happyShift action_19
action_45 (18) = happyShift action_20
action_45 (14) = happyGoto action_65
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (16) = happyShift action_58
action_46 (17) = happyShift action_19
action_46 (18) = happyShift action_20
action_46 (14) = happyGoto action_64
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (16) = happyShift action_58
action_47 (17) = happyShift action_19
action_47 (18) = happyShift action_20
action_47 (14) = happyGoto action_63
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (16) = happyShift action_58
action_48 (17) = happyShift action_19
action_48 (18) = happyShift action_20
action_48 (14) = happyGoto action_62
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (16) = happyShift action_58
action_49 (17) = happyShift action_19
action_49 (18) = happyShift action_20
action_49 (14) = happyGoto action_61
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (16) = happyShift action_58
action_50 (17) = happyShift action_19
action_50 (18) = happyShift action_20
action_50 (14) = happyGoto action_60
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (16) = happyShift action_58
action_51 (17) = happyShift action_19
action_51 (18) = happyShift action_20
action_51 (14) = happyGoto action_59
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (16) = happyShift action_58
action_52 (17) = happyShift action_19
action_52 (18) = happyShift action_20
action_52 (14) = happyGoto action_57
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_42

action_54 _ = happyReduce_43

action_55 _ = happyReduce_3

action_56 _ = happyReduce_1

action_57 (34) = happyShift action_43
action_57 (35) = happyShift action_44
action_57 (36) = happyShift action_45
action_57 (37) = happyShift action_46
action_57 (38) = happyShift action_47
action_57 (48) = happyShift action_53
action_57 (49) = happyShift action_54
action_57 _ = happyReduce_53

action_58 _ = happyReduce_36

action_59 (34) = happyShift action_43
action_59 (35) = happyShift action_44
action_59 (36) = happyShift action_45
action_59 (37) = happyShift action_46
action_59 (38) = happyShift action_47
action_59 (48) = happyShift action_53
action_59 (49) = happyShift action_54
action_59 _ = happyReduce_52

action_60 (34) = happyShift action_43
action_60 (35) = happyShift action_44
action_60 (36) = happyShift action_45
action_60 (37) = happyShift action_46
action_60 (38) = happyShift action_47
action_60 (48) = happyShift action_53
action_60 (49) = happyShift action_54
action_60 _ = happyReduce_51

action_61 (34) = happyShift action_43
action_61 (35) = happyShift action_44
action_61 (36) = happyShift action_45
action_61 (37) = happyShift action_46
action_61 (38) = happyShift action_47
action_61 (48) = happyShift action_53
action_61 (49) = happyShift action_54
action_61 _ = happyReduce_50

action_62 (34) = happyShift action_43
action_62 (35) = happyShift action_44
action_62 (36) = happyShift action_45
action_62 (37) = happyShift action_46
action_62 (38) = happyShift action_47
action_62 (48) = happyShift action_53
action_62 (49) = happyShift action_54
action_62 _ = happyReduce_49

action_63 (48) = happyShift action_53
action_63 (49) = happyShift action_54
action_63 _ = happyReduce_41

action_64 (48) = happyShift action_53
action_64 (49) = happyShift action_54
action_64 _ = happyReduce_40

action_65 (48) = happyShift action_53
action_65 (49) = happyShift action_54
action_65 _ = happyReduce_39

action_66 (36) = happyShift action_45
action_66 (37) = happyShift action_46
action_66 (38) = happyShift action_47
action_66 (48) = happyShift action_53
action_66 (49) = happyShift action_54
action_66 _ = happyReduce_38

action_67 (36) = happyShift action_45
action_67 (37) = happyShift action_46
action_67 (38) = happyShift action_47
action_67 (48) = happyShift action_53
action_67 (49) = happyShift action_54
action_67 _ = happyReduce_37

action_68 (44) = happyShift action_40
action_68 (45) = happyShift action_41
action_68 _ = happyReduce_48

action_69 (44) = happyShift action_40
action_69 _ = happyReduce_47

action_70 (44) = happyShift action_40
action_70 (45) = happyShift action_41
action_70 (46) = happyShift action_42
action_70 _ = happyReduce_54

action_71 (34) = happyShift action_43
action_71 (35) = happyShift action_44
action_71 (36) = happyShift action_45
action_71 (37) = happyShift action_46
action_71 (38) = happyShift action_47
action_71 (39) = happyShift action_48
action_71 (40) = happyShift action_49
action_71 (41) = happyShift action_50
action_71 (42) = happyShift action_51
action_71 (43) = happyShift action_52
action_71 (48) = happyShift action_53
action_71 (49) = happyShift action_54
action_71 _ = happyReduce_32

action_72 (44) = happyShift action_40
action_72 (45) = happyShift action_41
action_72 (46) = happyShift action_42
action_72 _ = happyReduce_33

action_73 (21) = happyShift action_97
action_73 (44) = happyShift action_40
action_73 (45) = happyShift action_41
action_73 (46) = happyShift action_42
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (21) = happyShift action_96
action_74 (44) = happyShift action_40
action_74 (45) = happyShift action_41
action_74 (46) = happyShift action_42
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (16) = happyShift action_34
action_75 (17) = happyShift action_19
action_75 (18) = happyShift action_20
action_75 (47) = happyShift action_25
action_75 (51) = happyShift action_26
action_75 (52) = happyShift action_27
action_75 (14) = happyGoto action_94
action_75 (15) = happyGoto action_95
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (19) = happyShift action_87
action_76 (27) = happyShift action_88
action_76 (28) = happyShift action_89
action_76 (29) = happyShift action_90
action_76 (11) = happyGoto action_93
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (16) = happyShift action_34
action_77 (17) = happyShift action_19
action_77 (18) = happyShift action_20
action_77 (47) = happyShift action_25
action_77 (51) = happyShift action_26
action_77 (52) = happyShift action_27
action_77 (14) = happyGoto action_91
action_77 (15) = happyGoto action_92
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (19) = happyShift action_87
action_78 (27) = happyShift action_88
action_78 (28) = happyShift action_89
action_78 (29) = happyShift action_90
action_78 (11) = happyGoto action_86
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_13

action_80 (21) = happyShift action_85
action_80 (34) = happyShift action_43
action_80 (35) = happyShift action_44
action_80 (36) = happyShift action_45
action_80 (37) = happyShift action_46
action_80 (38) = happyShift action_47
action_80 (39) = happyShift action_48
action_80 (40) = happyShift action_49
action_80 (41) = happyShift action_50
action_80 (42) = happyShift action_51
action_80 (43) = happyShift action_52
action_80 (48) = happyShift action_53
action_80 (49) = happyShift action_54
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (21) = happyShift action_84
action_81 (44) = happyShift action_40
action_81 (45) = happyShift action_41
action_81 (46) = happyShift action_42
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (21) = happyShift action_83
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_16

action_84 _ = happyReduce_15

action_85 _ = happyReduce_14

action_86 (50) = happyShift action_101
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_23

action_88 _ = happyReduce_20

action_89 _ = happyReduce_21

action_90 _ = happyReduce_22

action_91 (34) = happyShift action_43
action_91 (35) = happyShift action_44
action_91 (36) = happyShift action_45
action_91 (37) = happyShift action_46
action_91 (38) = happyShift action_47
action_91 (39) = happyShift action_48
action_91 (40) = happyShift action_49
action_91 (41) = happyShift action_50
action_91 (42) = happyShift action_51
action_91 (43) = happyShift action_52
action_91 (48) = happyShift action_53
action_91 (49) = happyShift action_54
action_91 _ = happyReduce_24

action_92 (44) = happyShift action_40
action_92 (45) = happyShift action_41
action_92 (46) = happyShift action_42
action_92 _ = happyReduce_25

action_93 (50) = happyShift action_100
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (34) = happyShift action_43
action_94 (35) = happyShift action_44
action_94 (36) = happyShift action_45
action_94 (37) = happyShift action_46
action_94 (38) = happyShift action_47
action_94 (39) = happyShift action_48
action_94 (40) = happyShift action_49
action_94 (41) = happyShift action_50
action_94 (42) = happyShift action_51
action_94 (43) = happyShift action_52
action_94 (48) = happyShift action_53
action_94 (49) = happyShift action_54
action_94 _ = happyReduce_28

action_95 (44) = happyShift action_40
action_95 (45) = happyShift action_41
action_95 (46) = happyShift action_42
action_95 _ = happyReduce_29

action_96 (22) = happyShift action_99
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (22) = happyShift action_98
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (16) = happyShift action_18
action_98 (17) = happyShift action_19
action_98 (18) = happyShift action_20
action_98 (24) = happyShift action_21
action_98 (26) = happyShift action_22
action_98 (32) = happyShift action_23
action_98 (33) = happyShift action_24
action_98 (47) = happyShift action_25
action_98 (51) = happyShift action_26
action_98 (52) = happyShift action_27
action_98 (53) = happyShift action_28
action_98 (54) = happyShift action_29
action_98 (5) = happyGoto action_107
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

action_99 (16) = happyShift action_18
action_99 (17) = happyShift action_19
action_99 (18) = happyShift action_20
action_99 (24) = happyShift action_21
action_99 (26) = happyShift action_22
action_99 (32) = happyShift action_23
action_99 (33) = happyShift action_24
action_99 (47) = happyShift action_25
action_99 (51) = happyShift action_26
action_99 (52) = happyShift action_27
action_99 (53) = happyShift action_28
action_99 (54) = happyShift action_29
action_99 (5) = happyGoto action_106
action_99 (6) = happyGoto action_9
action_99 (7) = happyGoto action_10
action_99 (8) = happyGoto action_11
action_99 (9) = happyGoto action_12
action_99 (10) = happyGoto action_13
action_99 (12) = happyGoto action_14
action_99 (13) = happyGoto action_15
action_99 (14) = happyGoto action_16
action_99 (15) = happyGoto action_17
action_99 _ = happyReduce_4

action_100 (16) = happyShift action_34
action_100 (17) = happyShift action_19
action_100 (18) = happyShift action_20
action_100 (47) = happyShift action_25
action_100 (51) = happyShift action_26
action_100 (52) = happyShift action_27
action_100 (14) = happyGoto action_104
action_100 (15) = happyGoto action_105
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (16) = happyShift action_34
action_101 (17) = happyShift action_19
action_101 (18) = happyShift action_20
action_101 (47) = happyShift action_25
action_101 (51) = happyShift action_26
action_101 (52) = happyShift action_27
action_101 (14) = happyGoto action_102
action_101 (15) = happyGoto action_103
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (34) = happyShift action_43
action_102 (35) = happyShift action_44
action_102 (36) = happyShift action_45
action_102 (37) = happyShift action_46
action_102 (38) = happyShift action_47
action_102 (39) = happyShift action_48
action_102 (40) = happyShift action_49
action_102 (41) = happyShift action_50
action_102 (42) = happyShift action_51
action_102 (43) = happyShift action_52
action_102 (48) = happyShift action_53
action_102 (49) = happyShift action_54
action_102 _ = happyReduce_26

action_103 (44) = happyShift action_40
action_103 (45) = happyShift action_41
action_103 (46) = happyShift action_42
action_103 _ = happyReduce_27

action_104 (34) = happyShift action_43
action_104 (35) = happyShift action_44
action_104 (36) = happyShift action_45
action_104 (37) = happyShift action_46
action_104 (38) = happyShift action_47
action_104 (39) = happyShift action_48
action_104 (40) = happyShift action_49
action_104 (41) = happyShift action_50
action_104 (42) = happyShift action_51
action_104 (43) = happyShift action_52
action_104 (48) = happyShift action_53
action_104 (49) = happyShift action_54
action_104 _ = happyReduce_30

action_105 (44) = happyShift action_40
action_105 (45) = happyShift action_41
action_105 (46) = happyShift action_42
action_105 _ = happyReduce_31

action_106 (23) = happyShift action_109
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (23) = happyShift action_108
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (25) = happyShift action_110
action_108 _ = happyReduce_17

action_109 _ = happyReduce_19

action_110 (22) = happyShift action_111
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (16) = happyShift action_18
action_111 (17) = happyShift action_19
action_111 (18) = happyShift action_20
action_111 (24) = happyShift action_21
action_111 (26) = happyShift action_22
action_111 (32) = happyShift action_23
action_111 (33) = happyShift action_24
action_111 (47) = happyShift action_25
action_111 (51) = happyShift action_26
action_111 (52) = happyShift action_27
action_111 (53) = happyShift action_28
action_111 (54) = happyShift action_29
action_111 (5) = happyGoto action_112
action_111 (6) = happyGoto action_9
action_111 (7) = happyGoto action_10
action_111 (8) = happyGoto action_11
action_111 (9) = happyGoto action_12
action_111 (10) = happyGoto action_13
action_111 (12) = happyGoto action_14
action_111 (13) = happyGoto action_15
action_111 (14) = happyGoto action_16
action_111 (15) = happyGoto action_17
action_111 _ = happyReduce_4

action_112 (23) = happyShift action_113
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_18

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
	(HappyTerminal (STRING happy_var_3)) `HappyStk`
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
		 (NumNode happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  14 happyReduction_35
happyReduction_35 (HappyTerminal (REAL happy_var_1))
	 =  HappyAbsSyn14
		 (RealNode happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  14 happyReduction_36
happyReduction_36 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (IdNode happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  14 happyReduction_37
happyReduction_37 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (AddNode happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  14 happyReduction_38
happyReduction_38 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (SubNode happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  14 happyReduction_39
happyReduction_39 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (MultNode happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  14 happyReduction_40
happyReduction_40 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (DivNode happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  14 happyReduction_41
happyReduction_41 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (ModNode happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  14 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (IncrNode happy_var_1
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  14 happyReduction_43
happyReduction_43 _
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (DecrNode happy_var_1
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  15 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn15
		 (BoolNode True
	)

happyReduce_45 = happySpecReduce_1  15 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn15
		 (BoolNode False
	)

happyReduce_46 = happySpecReduce_1  15 happyReduction_46
happyReduction_46 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (IdNode happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  15 happyReduction_47
happyReduction_47 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AndNode happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  15 happyReduction_48
happyReduction_48 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (OrNode happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  15 happyReduction_49
happyReduction_49 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (GtNode happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  15 happyReduction_50
happyReduction_50 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (GeNode happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  15 happyReduction_51
happyReduction_51 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (LtNode happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  15 happyReduction_52
happyReduction_52 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (LeNode happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  15 happyReduction_53
happyReduction_53 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 (EqNode happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  15 happyReduction_54
happyReduction_54 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (NeNode happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_2  15 happyReduction_55
happyReduction_55 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (NotNode happy_var_2
	)
happyReduction_55 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 56 56 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ID happy_dollar_dollar -> cont 16;
	NUM happy_dollar_dollar -> cont 17;
	REAL happy_dollar_dollar -> cont 18;
	STRING happy_dollar_dollar -> cont 19;
	LPAREN -> cont 20;
	RPAREN -> cont 21;
	LBRACE -> cont 22;
	RBRACE -> cont 23;
	IF -> cont 24;
	ELSE -> cont 25;
	WHILE -> cont 26;
	INT -> cont 27;
	FLOAT -> cont 28;
	BOOLEAN -> cont 29;
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
         | RealNode Float
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
