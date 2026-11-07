.class final Landroid/icu/text/BidiLine;
.super Ljava/lang/Object;
.source "BidiLine.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getLevelAt(Landroid/icu/text/Bidi;I)B
    .registers 4
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "charIndex"    # I

    .line 243
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-lt p1, v0, :cond_a

    goto :goto_f

    .line 246
    :cond_a
    iget-object v0, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v0, v0, p1

    return v0

    .line 244
    :cond_f
    :goto_f
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v0

    return v0
.end method

.method static blacklist getLevels(Landroid/icu/text/Bidi;)[B
    .registers 6
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    .line 252
    iget v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 253
    .local v0, "start":I
    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    .line 255
    .local v1, "length":I
    if-eq v0, v1, :cond_f

    .line 266
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-byte v3, p0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 269
    iput v1, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 271
    :cond_f
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 272
    new-array v2, v1, [B

    .line 273
    .local v2, "levels":[B
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    return-object v2

    .line 276
    .end local v2    # "levels":[B
    :cond_1d
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    return-object v2
.end method

.method static blacklist getLogicalIndex(Landroid/icu/text/Bidi;I)I
    .registers 18
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "visualIndex"    # I

    .line 916
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 917
    .local v2, "runs":[Landroid/icu/text/BidiRun;
    iget v3, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 918
    .local v3, "runCount":I
    iget-object v4, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v4, v4, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v4, :cond_41

    .line 920
    const/4 v4, 0x0

    .line 921
    .local v4, "markFound":I
    const/4 v5, 0x0

    .line 923
    .local v5, "visualStart":I
    const/4 v6, 0x0

    .line 924
    .local v6, "i":I
    :goto_11
    aget-object v7, v2, v6

    iget v7, v7, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v7, v5

    .line 925
    .local v7, "length":I
    aget-object v8, v2, v6

    iget v8, v8, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 926
    .local v8, "insertRemove":I
    and-int/lit8 v9, v8, 0x5

    const/4 v10, -0x1

    if-lez v9, :cond_26

    .line 927
    add-int v9, v5, v4

    if-gt v1, v9, :cond_24

    .line 928
    return v10

    .line 930
    :cond_24
    add-int/lit8 v4, v4, 0x1

    .line 933
    :cond_26
    aget-object v9, v2, v6

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v9, v4

    if-ge v1, v9, :cond_31

    .line 934
    sub-int/2addr v1, v4

    .line 935
    .end local p1    # "visualIndex":I
    .local v1, "visualIndex":I
    nop

    .line 944
    .end local v4    # "markFound":I
    .end local v5    # "visualStart":I
    .end local v7    # "length":I
    .end local v8    # "insertRemove":I
    goto/16 :goto_96

    .line 937
    .end local v1    # "visualIndex":I
    .restart local v4    # "markFound":I
    .restart local v5    # "visualStart":I
    .restart local v7    # "length":I
    .restart local v8    # "insertRemove":I
    .restart local p1    # "visualIndex":I
    :cond_31
    and-int/lit8 v9, v8, 0xa

    if-lez v9, :cond_3d

    .line 938
    add-int v9, v5, v7

    add-int/2addr v9, v4

    if-ne v1, v9, :cond_3b

    .line 939
    return v10

    .line 941
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    .line 923
    :cond_3d
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v7

    goto :goto_11

    .line 945
    .end local v4    # "markFound":I
    .end local v5    # "visualStart":I
    .end local v6    # "i":I
    .end local v7    # "length":I
    .end local v8    # "insertRemove":I
    :cond_41
    iget v4, v0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v4, :cond_96

    .line 947
    const/4 v4, 0x0

    .line 948
    .local v4, "controlFound":I
    const/4 v5, 0x0

    .line 952
    .restart local v5    # "visualStart":I
    const/4 v6, 0x0

    .line 953
    .restart local v6    # "i":I
    :goto_48
    aget-object v7, v2, v6

    iget v7, v7, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v7, v5

    .line 954
    .restart local v7    # "length":I
    aget-object v8, v2, v6

    iget v8, v8, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 956
    .restart local v8    # "insertRemove":I
    aget-object v9, v2, v6

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v9, v4

    add-int/2addr v9, v8

    if-lt v1, v9, :cond_5f

    .line 957
    sub-int/2addr v4, v8

    .line 958
    nop

    .line 952
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v7

    goto :goto_48

    .line 961
    :cond_5f
    if-nez v8, :cond_63

    .line 962
    add-int/2addr v1, v4

    .line 963
    .end local p1    # "visualIndex":I
    .restart local v1    # "visualIndex":I
    goto :goto_96

    .line 966
    .end local v1    # "visualIndex":I
    .restart local p1    # "visualIndex":I
    :cond_63
    aget-object v9, v2, v6

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    .line 967
    .local v9, "logicalStart":I
    aget-object v10, v2, v6

    invoke-virtual {v10}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v10

    .line 968
    .local v10, "evenRun":Z
    add-int v11, v9, v7

    add-int/lit8 v11, v11, -0x1

    .line 969
    .local v11, "logicalEnd":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_72
    if-ge v12, v7, :cond_93

    .line 970
    if-eqz v10, :cond_79

    add-int v13, v9, v12

    goto :goto_7b

    :cond_79
    sub-int v13, v11, v12

    .line 971
    .local v13, "k":I
    :goto_7b
    iget-object v14, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v14, v14, v13

    .line 972
    .local v14, "uchar":C
    invoke-static {v14}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v15

    if-eqz v15, :cond_87

    .line 973
    add-int/lit8 v4, v4, 0x1

    .line 975
    :cond_87
    add-int v15, v1, v4

    add-int v0, v5, v12

    if-ne v15, v0, :cond_8e

    .line 976
    goto :goto_93

    .line 969
    :cond_8e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_72

    .line 979
    .end local v13    # "k":I
    .end local v14    # "uchar":C
    :cond_93
    :goto_93
    add-int v0, v1, v4

    .line 980
    .end local p1    # "visualIndex":I
    .local v0, "visualIndex":I
    move v1, v0

    .line 984
    .end local v0    # "visualIndex":I
    .end local v4    # "controlFound":I
    .end local v5    # "visualStart":I
    .end local v6    # "i":I
    .end local v7    # "length":I
    .end local v8    # "insertRemove":I
    .end local v9    # "logicalStart":I
    .end local v10    # "evenRun":Z
    .end local v11    # "logicalEnd":I
    .end local v12    # "j":I
    .restart local v1    # "visualIndex":I
    :cond_96
    :goto_96
    const/16 v0, 0xa

    if-gt v3, v0, :cond_a4

    .line 986
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9b
    aget-object v4, v2, v0

    iget v4, v4, Landroid/icu/text/BidiRun;->limit:I

    if-lt v1, v4, :cond_c1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 989
    .end local v0    # "i":I
    :cond_a4
    const/4 v0, 0x0

    .local v0, "begin":I
    move v4, v3

    .line 993
    .local v4, "limit":I
    :goto_a6
    add-int v5, v0, v4

    ushr-int/lit8 v5, v5, 0x1

    .line 994
    .local v5, "i":I
    aget-object v6, v2, v5

    iget v6, v6, Landroid/icu/text/BidiRun;->limit:I

    if-lt v1, v6, :cond_b3

    .line 995
    add-int/lit8 v0, v5, 0x1

    goto :goto_a6

    .line 996
    :cond_b3
    if-eqz v5, :cond_c0

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v2, v6

    iget v6, v6, Landroid/icu/text/BidiRun;->limit:I

    if-lt v1, v6, :cond_be

    .line 997
    goto :goto_c0

    .line 999
    :cond_be
    move v4, v5

    goto :goto_a6

    .line 1004
    .end local v0    # "begin":I
    .end local v4    # "limit":I
    :cond_c0
    :goto_c0
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    :cond_c1
    aget-object v4, v2, v0

    iget v4, v4, Landroid/icu/text/BidiRun;->start:I

    .line 1005
    .local v4, "start":I
    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 1008
    if-lez v0, :cond_d6

    .line 1009
    add-int/lit8 v5, v0, -0x1

    aget-object v5, v2, v5

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v1, v5

    .line 1011
    :cond_d6
    add-int v5, v4, v1

    return v5

    .line 1014
    :cond_d9
    aget-object v5, v2, v0

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v5, v4

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    return v5
.end method

.method static blacklist getLogicalMap(Landroid/icu/text/Bidi;)[I
    .registers 18
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    .line 1021
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 1023
    .local v1, "runs":[Landroid/icu/text/BidiRun;
    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    new-array v2, v2, [I

    .line 1024
    .local v2, "indexMap":[I
    iget v3, v0, Landroid/icu/text/Bidi;->length:I

    iget v4, v0, Landroid/icu/text/Bidi;->resultLength:I

    const/4 v5, -0x1

    if-le v3, v4, :cond_12

    .line 1025
    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 1028
    :cond_12
    const/4 v3, 0x0

    .line 1029
    .local v3, "visualStart":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_14
    iget v6, v0, Landroid/icu/text/Bidi;->runCount:I

    if-ge v4, v6, :cond_44

    .line 1030
    aget-object v6, v1, v4

    iget v6, v6, Landroid/icu/text/BidiRun;->start:I

    .line 1031
    .local v6, "logicalStart":I
    aget-object v7, v1, v4

    iget v7, v7, Landroid/icu/text/BidiRun;->limit:I

    .line 1032
    .local v7, "visualLimit":I
    aget-object v8, v1, v4

    invoke-virtual {v8}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 1034
    :goto_28
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "logicalStart":I
    .local v8, "logicalStart":I
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "visualStart":I
    .local v9, "visualStart":I
    aput v3, v2, v6

    .line 1035
    if-lt v9, v7, :cond_32

    move v3, v9

    goto :goto_41

    :cond_32
    move v6, v8

    move v3, v9

    goto :goto_28

    .line 1037
    .end local v8    # "logicalStart":I
    .end local v9    # "visualStart":I
    .restart local v3    # "visualStart":I
    .restart local v6    # "logicalStart":I
    :cond_35
    sub-int v8, v7, v3

    add-int/2addr v6, v8

    .line 1039
    :cond_38
    add-int/2addr v6, v5

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "visualStart":I
    .local v8, "visualStart":I
    aput v3, v2, v6

    .line 1040
    move v3, v8

    if-lt v8, v7, :cond_38

    move v8, v6

    .line 1029
    .end local v6    # "logicalStart":I
    .restart local v3    # "visualStart":I
    .local v8, "logicalStart":I
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1045
    .end local v4    # "j":I
    .end local v7    # "visualLimit":I
    .end local v8    # "logicalStart":I
    :cond_44
    iget-object v4, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v4, v4, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v4, :cond_80

    .line 1046
    const/4 v4, 0x0

    .local v4, "markFound":I
    iget v5, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 1048
    .local v5, "runCount":I
    iget-object v1, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 1049
    const/4 v3, 0x0

    .line 1051
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_51
    if-ge v6, v5, :cond_7f

    .line 1052
    aget-object v7, v1, v6

    iget v7, v7, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v7, v3

    .line 1053
    .local v7, "length":I
    aget-object v8, v1, v6

    iget v8, v8, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 1054
    .local v8, "insertRemove":I
    and-int/lit8 v9, v8, 0x5

    if-lez v9, :cond_62

    .line 1055
    add-int/lit8 v4, v4, 0x1

    .line 1057
    :cond_62
    if-lez v4, :cond_75

    .line 1058
    aget-object v9, v1, v6

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    .line 1059
    .local v9, "logicalStart":I
    add-int v10, v9, v7

    .line 1060
    .local v10, "logicalLimit":I
    move v11, v9

    .local v11, "j":I
    :goto_6b
    if-ge v11, v10, :cond_75

    .line 1061
    aget v12, v2, v11

    add-int/2addr v12, v4

    aput v12, v2, v11

    .line 1060
    add-int/lit8 v11, v11, 0x1

    goto :goto_6b

    .line 1064
    .end local v9    # "logicalStart":I
    .end local v10    # "logicalLimit":I
    .end local v11    # "j":I
    :cond_75
    and-int/lit8 v9, v8, 0xa

    if-lez v9, :cond_7b

    .line 1065
    add-int/lit8 v4, v4, 0x1

    .line 1051
    :cond_7b
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v3, v7

    goto :goto_51

    .line 1068
    .end local v4    # "markFound":I
    .end local v5    # "runCount":I
    .end local v6    # "i":I
    .end local v7    # "length":I
    .end local v8    # "insertRemove":I
    :cond_7f
    goto :goto_dc

    .line 1069
    :cond_80
    iget v4, v0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v4, :cond_dc

    .line 1070
    const/4 v4, 0x0

    .local v4, "controlFound":I
    iget v6, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 1074
    .local v6, "runCount":I
    iget-object v1, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 1075
    const/4 v3, 0x0

    .line 1077
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8b
    if-ge v7, v6, :cond_dc

    .line 1078
    aget-object v8, v1, v7

    iget v8, v8, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v8, v3

    .line 1079
    .local v8, "length":I
    aget-object v9, v1, v7

    iget v9, v9, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 1081
    .local v9, "insertRemove":I
    sub-int v10, v4, v9

    if-nez v10, :cond_9b

    .line 1082
    goto :goto_d8

    .line 1084
    :cond_9b
    aget-object v10, v1, v7

    iget v10, v10, Landroid/icu/text/BidiRun;->start:I

    .line 1085
    .local v10, "logicalStart":I
    aget-object v11, v1, v7

    invoke-virtual {v11}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v11

    .line 1086
    .local v11, "evenRun":Z
    add-int v12, v10, v8

    .line 1088
    .local v12, "logicalLimit":I
    if-nez v9, :cond_b4

    .line 1089
    move v13, v10

    .local v13, "j":I
    :goto_aa
    if-ge v13, v12, :cond_d8

    .line 1090
    aget v14, v2, v13

    sub-int/2addr v14, v4

    aput v14, v2, v13

    .line 1089
    add-int/lit8 v13, v13, 0x1

    goto :goto_aa

    .line 1094
    .end local v13    # "j":I
    :cond_b4
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_b5
    if-ge v13, v8, :cond_d8

    .line 1095
    if-eqz v11, :cond_bc

    add-int v14, v10, v13

    goto :goto_c0

    :cond_bc
    sub-int v14, v12, v13

    add-int/lit8 v14, v14, -0x1

    .line 1096
    .local v14, "k":I
    :goto_c0
    iget-object v15, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v15, v15, v14

    .line 1097
    .local v15, "uchar":C
    invoke-static {v15}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v16

    if-eqz v16, :cond_cf

    .line 1098
    add-int/lit8 v4, v4, 0x1

    .line 1099
    aput v5, v2, v14

    .line 1100
    goto :goto_d5

    .line 1102
    :cond_cf
    aget v16, v2, v14

    sub-int v16, v16, v4

    aput v16, v2, v14

    .line 1094
    :goto_d5
    add-int/lit8 v13, v13, 0x1

    goto :goto_b5

    .line 1077
    .end local v10    # "logicalStart":I
    .end local v11    # "evenRun":Z
    .end local v12    # "logicalLimit":I
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v15    # "uchar":C
    :cond_d8
    :goto_d8
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v8

    goto :goto_8b

    .line 1106
    .end local v4    # "controlFound":I
    .end local v6    # "runCount":I
    .end local v7    # "i":I
    .end local v8    # "length":I
    .end local v9    # "insertRemove":I
    :cond_dc
    :goto_dc
    return-object v2
.end method

.method static blacklist getLogicalRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;
    .registers 10
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "logicalPosition"    # I

    .line 284
    new-instance v0, Landroid/icu/text/BidiRun;

    invoke-direct {v0}, Landroid/icu/text/BidiRun;-><init>()V

    .line 285
    .local v0, "newRun":Landroid/icu/text/BidiRun;
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 286
    iget v1, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 287
    .local v1, "runCount":I
    const/4 v2, 0x0

    .local v2, "visualStart":I
    const/4 v3, 0x0

    .line 288
    .local v3, "logicalLimit":I
    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 290
    .local v4, "iRun":Landroid/icu/text/BidiRun;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    if-ge v5, v1, :cond_2b

    .line 291
    iget-object v6, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v4, v6, v5

    .line 292
    iget v6, v4, Landroid/icu/text/BidiRun;->start:I

    iget v7, v4, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v6, v7

    sub-int v3, v6, v2

    .line 293
    iget v6, v4, Landroid/icu/text/BidiRun;->start:I

    if-lt p1, v6, :cond_26

    if-ge p1, v3, :cond_26

    .line 295
    goto :goto_2b

    .line 297
    :cond_26
    iget v2, v4, Landroid/icu/text/BidiRun;->limit:I

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 299
    .end local v5    # "i":I
    :cond_2b
    :goto_2b
    iget v5, v4, Landroid/icu/text/BidiRun;->start:I

    iput v5, v0, Landroid/icu/text/BidiRun;->start:I

    .line 300
    iput v3, v0, Landroid/icu/text/BidiRun;->limit:I

    .line 301
    iget-byte v5, v4, Landroid/icu/text/BidiRun;->level:B

    iput-byte v5, v0, Landroid/icu/text/BidiRun;->level:B

    .line 302
    return-object v0
.end method

.method static blacklist getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I
    .registers 9
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "logicalIndex"    # I

    .line 451
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 452
    .local v0, "runs":[Landroid/icu/text/BidiRun;
    iget v1, p0, Landroid/icu/text/Bidi;->runCount:I

    .local v1, "runCount":I
    const/4 v2, 0x0

    .line 454
    .local v2, "visualStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v1, :cond_1c

    .line 455
    aget-object v4, v0, v3

    iget v4, v4, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v4, v2

    .line 456
    .local v4, "length":I
    aget-object v5, v0, v3

    iget v5, v5, Landroid/icu/text/BidiRun;->start:I

    .line 457
    .local v5, "logicalStart":I
    if-lt p1, v5, :cond_18

    add-int v6, v5, v4

    if-ge p1, v6, :cond_18

    .line 458
    return v3

    .line 460
    :cond_18
    add-int/2addr v2, v4

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 464
    .end local v4    # "length":I
    .end local v5    # "logicalStart":I
    :cond_1c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Internal ICU error in getRunFromLogicalIndex"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static blacklist getRuns(Landroid/icu/text/Bidi;)V
    .registers 18
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    .line 484
    move-object/from16 v0, p0

    iget v1, v0, Landroid/icu/text/Bidi;->runCount:I

    if-ltz v1, :cond_7

    .line 485
    return-void

    .line 487
    :cond_7
    iget-byte v1, v0, Landroid/icu/text/Bidi;->direction:B

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_16

    .line 490
    iget-byte v1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v0, v1}, Landroid/icu/text/BidiLine;->getSingleRun(Landroid/icu/text/Bidi;B)V

    move/from16 v16, v3

    goto/16 :goto_ad

    .line 493
    :cond_16
    iget v1, v0, Landroid/icu/text/Bidi;->length:I

    .line 494
    .local v1, "length":I
    iget-object v2, v0, Landroid/icu/text/Bidi;->levels:[B

    .line 496
    .local v2, "levels":[B
    const/4 v4, -0x1

    .line 508
    .local v4, "level":B
    iget v5, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 510
    .local v5, "limit":I
    const/4 v6, 0x0

    .line 511
    .local v6, "runCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    if-ge v7, v5, :cond_2c

    .line 513
    aget-byte v8, v2, v7

    if-eq v8, v4, :cond_29

    .line 514
    add-int/lit8 v6, v6, 0x1

    .line 515
    aget-byte v4, v2, v7

    .line 511
    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 523
    :cond_2c
    const/4 v8, 0x0

    if-ne v6, v3, :cond_3a

    if-ne v5, v1, :cond_3a

    .line 525
    aget-byte v8, v2, v8

    invoke-static {v0, v8}, Landroid/icu/text/BidiLine;->getSingleRun(Landroid/icu/text/Bidi;B)V

    move/from16 v16, v3

    goto/16 :goto_ad

    .line 530
    :cond_3a
    const/16 v9, 0x7e

    .line 531
    .local v9, "minLevel":B
    const/4 v10, 0x0

    .line 534
    .local v10, "maxLevel":B
    if-ge v5, v1, :cond_41

    .line 535
    add-int/lit8 v6, v6, 0x1

    .line 539
    :cond_41
    invoke-virtual {v0, v6}, Landroid/icu/text/Bidi;->getRunsMemory(I)V

    .line 540
    iget-object v11, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    .line 548
    .local v11, "runs":[Landroid/icu/text/BidiRun;
    const/4 v12, 0x0

    .line 551
    .local v12, "runIndex":I
    const/4 v7, 0x0

    .line 554
    :goto_48
    move v13, v7

    .line 555
    .local v13, "start":I
    aget-byte v4, v2, v7

    .line 556
    if-ge v4, v9, :cond_4e

    .line 557
    move v9, v4

    .line 559
    :cond_4e
    if-le v4, v10, :cond_51

    .line 560
    move v10, v4

    .line 564
    :cond_51
    :goto_51
    add-int/2addr v7, v3

    if-ge v7, v5, :cond_59

    aget-byte v14, v2, v7

    if-ne v14, v4, :cond_59

    goto :goto_51

    .line 567
    :cond_59
    new-instance v14, Landroid/icu/text/BidiRun;

    sub-int v15, v7, v13

    invoke-direct {v14, v13, v15, v4}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v14, v11, v12

    .line 568
    add-int/2addr v12, v3

    .line 569
    if-lt v7, v5, :cond_f9

    .line 571
    if-ge v5, v1, :cond_7b

    .line 573
    new-instance v14, Landroid/icu/text/BidiRun;

    sub-int v15, v1, v5

    move/from16 v16, v3

    iget-byte v3, v0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-direct {v14, v5, v15, v3}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v14, v11, v12

    .line 576
    iget-byte v3, v0, Landroid/icu/text/Bidi;->paraLevel:B

    if-ge v3, v9, :cond_7d

    .line 577
    iget-byte v9, v0, Landroid/icu/text/Bidi;->paraLevel:B

    goto :goto_7d

    .line 571
    :cond_7b
    move/from16 v16, v3

    .line 582
    :cond_7d
    :goto_7d
    iput-object v11, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 583
    iput v6, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 585
    invoke-static {v0, v9, v10}, Landroid/icu/text/BidiLine;->reorderLine(Landroid/icu/text/Bidi;BB)V

    .line 589
    const/4 v3, 0x0

    .line 590
    .end local v5    # "limit":I
    .local v3, "limit":I
    const/4 v5, 0x0

    .end local v7    # "i":I
    .local v5, "i":I
    :goto_86
    if-ge v5, v6, :cond_9d

    .line 591
    aget-object v7, v11, v5

    aget-object v14, v11, v5

    iget v14, v14, Landroid/icu/text/BidiRun;->start:I

    aget-byte v14, v2, v14

    iput-byte v14, v7, Landroid/icu/text/BidiRun;->level:B

    .line 592
    aget-object v7, v11, v5

    iget v14, v7, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v14, v3

    iput v14, v7, Landroid/icu/text/BidiRun;->limit:I

    move v3, v14

    .line 590
    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 599
    :cond_9d
    if-ge v12, v6, :cond_ad

    .line 600
    iget-byte v7, v0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a6

    goto :goto_a7

    :cond_a6
    move v8, v12

    .line 601
    .local v8, "trailingRun":I
    :goto_a7
    aget-object v7, v11, v8

    iget-byte v14, v0, Landroid/icu/text/Bidi;->paraLevel:B

    iput-byte v14, v7, Landroid/icu/text/BidiRun;->level:B

    .line 607
    .end local v1    # "length":I
    .end local v2    # "levels":[B
    .end local v3    # "limit":I
    .end local v4    # "level":B
    .end local v5    # "i":I
    .end local v6    # "runCount":I
    .end local v8    # "trailingRun":I
    .end local v9    # "minLevel":B
    .end local v10    # "maxLevel":B
    .end local v11    # "runs":[Landroid/icu/text/BidiRun;
    .end local v12    # "runIndex":I
    .end local v13    # "start":I
    :cond_ad
    :goto_ad
    iget-object v1, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v1, v1, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v1, :cond_d4

    .line 610
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_b4
    iget-object v2, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v2, v2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-ge v1, v2, :cond_d4

    .line 611
    iget-object v2, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v2, v2, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    aget-object v2, v2, v1

    .line 612
    .local v2, "point":Landroid/icu/text/Bidi$Point;
    iget v3, v2, Landroid/icu/text/Bidi$Point;->pos:I

    invoke-static {v0, v3}, Landroid/icu/text/BidiLine;->getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result v3

    .line 613
    .local v3, "runIndex":I
    iget-object v4, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v4, v4, v3

    iget v5, v4, Landroid/icu/text/BidiRun;->insertRemove:I

    iget v6, v2, Landroid/icu/text/Bidi$Point;->flag:I

    or-int/2addr v5, v6

    iput v5, v4, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    .line 618
    .end local v1    # "ip":I
    .end local v2    # "point":Landroid/icu/text/Bidi$Point;
    .end local v3    # "runIndex":I
    :cond_d4
    iget v1, v0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v1, :cond_f8

    .line 621
    const/4 v1, 0x0

    .local v1, "ic":I
    :goto_d9
    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v1, v2, :cond_f8

    .line 622
    iget-object v2, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v2, v2, v1

    .line 623
    .local v2, "c":C
    invoke-static {v2}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 624
    invoke-static {v0, v1}, Landroid/icu/text/BidiLine;->getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result v3

    .line 625
    .restart local v3    # "runIndex":I
    iget-object v4, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v4, v4, v3

    iget v5, v4, Landroid/icu/text/BidiRun;->insertRemove:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 621
    .end local v3    # "runIndex":I
    :cond_f5
    add-int/lit8 v1, v1, 0x1

    goto :goto_d9

    .line 629
    .end local v1    # "ic":I
    .end local v2    # "c":C
    :cond_f8
    return-void

    .line 569
    .local v1, "length":I
    .local v2, "levels":[B
    .restart local v4    # "level":B
    .local v5, "limit":I
    .restart local v6    # "runCount":I
    .restart local v7    # "i":I
    .restart local v9    # "minLevel":B
    .restart local v10    # "maxLevel":B
    .restart local v11    # "runs":[Landroid/icu/text/BidiRun;
    .restart local v12    # "runIndex":I
    .restart local v13    # "start":I
    :cond_f9
    move/from16 v16, v3

    goto/16 :goto_48
.end method

.method static blacklist getSingleRun(Landroid/icu/text/Bidi;B)V
    .registers 6
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "level"    # B

    .line 324
    iget-object v0, p0, Landroid/icu/text/Bidi;->simpleRuns:[Landroid/icu/text/BidiRun;

    iput-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 325
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 328
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    new-instance v1, Landroid/icu/text/BidiRun;

    iget v2, p0, Landroid/icu/text/Bidi;->length:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p1}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v1, v0, v3

    .line 329
    return-void
.end method

.method static blacklist getVisualIndex(Landroid/icu/text/Bidi;I)I
    .registers 14
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "logicalIndex"    # I

    .line 810
    const/4 v0, -0x1

    .line 813
    .local v0, "visualIndex":I
    iget-byte v1, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_cc

    .line 821
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 822
    iget-object v1, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 823
    .local v1, "runs":[Landroid/icu/text/BidiRun;
    const/4 v3, 0x0

    .line 826
    .local v3, "visualStart":I
    const/4 v4, 0x0

    .local v4, "i":I
    goto :goto_17

    .line 818
    .end local v1    # "runs":[Landroid/icu/text/BidiRun;
    .end local v3    # "visualStart":I
    .end local v4    # "i":I
    :pswitch_f
    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 819
    .end local v0    # "visualIndex":I
    .local v1, "visualIndex":I
    goto :goto_45

    .line 815
    .end local v1    # "visualIndex":I
    .restart local v0    # "visualIndex":I
    :pswitch_15
    move v1, p1

    .line 816
    .end local v0    # "visualIndex":I
    .restart local v1    # "visualIndex":I
    goto :goto_45

    .line 826
    .restart local v0    # "visualIndex":I
    .local v1, "runs":[Landroid/icu/text/BidiRun;
    .restart local v3    # "visualStart":I
    .restart local v4    # "i":I
    :goto_17
    iget v5, p0, Landroid/icu/text/Bidi;->runCount:I

    if-ge v4, v5, :cond_3f

    .line 827
    aget-object v5, v1, v4

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v3

    .line 828
    .local v5, "length":I
    aget-object v6, v1, v4

    iget v6, v6, Landroid/icu/text/BidiRun;->start:I

    sub-int v6, p1, v6

    .line 829
    .local v6, "offset":I
    if-ltz v6, :cond_3b

    if-ge v6, v5, :cond_3b

    .line 830
    aget-object v7, v1, v4

    invoke-virtual {v7}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 832
    add-int v0, v3, v6

    goto :goto_3f

    .line 835
    :cond_35
    add-int v7, v3, v5

    sub-int/2addr v7, v6

    add-int/lit8 v0, v7, -0x1

    .line 837
    goto :goto_3f

    .line 839
    :cond_3b
    add-int/2addr v3, v5

    .line 826
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 841
    .end local v5    # "length":I
    .end local v6    # "offset":I
    :cond_3f
    :goto_3f
    iget v5, p0, Landroid/icu/text/Bidi;->runCount:I

    if-lt v4, v5, :cond_44

    .line 842
    return v2

    .line 841
    :cond_44
    move v1, v0

    .line 846
    .end local v0    # "visualIndex":I
    .end local v3    # "visualStart":I
    .end local v4    # "i":I
    .local v1, "visualIndex":I
    :goto_45
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v0, :cond_72

    .line 848
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 850
    .local v0, "runs":[Landroid/icu/text/BidiRun;
    const/4 v2, 0x0

    .local v2, "visualStart":I
    const/4 v3, 0x0

    .line 851
    .local v3, "markFound":I
    const/4 v4, 0x0

    .line 852
    .restart local v4    # "i":I
    :goto_50
    aget-object v5, v0, v4

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v2

    .line 853
    .restart local v5    # "length":I
    aget-object v6, v0, v4

    iget v6, v6, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 854
    .local v6, "insertRemove":I
    and-int/lit8 v7, v6, 0x5

    if-lez v7, :cond_5f

    .line 855
    add-int/lit8 v3, v3, 0x1

    .line 858
    :cond_5f
    aget-object v7, v0, v4

    iget v7, v7, Landroid/icu/text/BidiRun;->limit:I

    if-ge v1, v7, :cond_68

    .line 859
    add-int v7, v1, v3

    return v7

    .line 861
    :cond_68
    and-int/lit8 v7, v6, 0xa

    if-lez v7, :cond_6e

    .line 862
    add-int/lit8 v3, v3, 0x1

    .line 851
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v5

    goto :goto_50

    .line 866
    .end local v0    # "runs":[Landroid/icu/text/BidiRun;
    .end local v2    # "visualStart":I
    .end local v3    # "markFound":I
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "insertRemove":I
    :cond_72
    iget v0, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v0, :cond_ca

    .line 868
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 870
    .restart local v0    # "runs":[Landroid/icu/text/BidiRun;
    const/4 v3, 0x0

    .local v3, "visualStart":I
    const/4 v4, 0x0

    .line 871
    .local v4, "controlFound":I
    iget-object v5, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v5, v5, p1

    .line 873
    .local v5, "uchar":C
    invoke-static {v5}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 874
    return v2

    .line 877
    :cond_85
    const/4 v2, 0x0

    .line 878
    .local v2, "i":I
    :goto_86
    aget-object v6, v0, v2

    iget v6, v6, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v6, v3

    .line 879
    .local v6, "length":I
    aget-object v7, v0, v2

    iget v7, v7, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 881
    .local v7, "insertRemove":I
    aget-object v8, v0, v2

    iget v8, v8, Landroid/icu/text/BidiRun;->limit:I

    if-lt v1, v8, :cond_9b

    .line 882
    sub-int/2addr v4, v7

    .line 883
    nop

    .line 877
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v6

    goto :goto_86

    .line 886
    :cond_9b
    if-nez v7, :cond_a0

    .line 887
    sub-int v8, v1, v4

    return v8

    .line 889
    :cond_a0
    aget-object v8, v0, v2

    invoke-virtual {v8}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 891
    aget-object v8, v0, v2

    iget v8, v8, Landroid/icu/text/BidiRun;->start:I

    .line 892
    .local v8, "start":I
    move v9, p1

    .local v9, "limit":I
    goto :goto_b5

    .line 895
    .end local v8    # "start":I
    .end local v9    # "limit":I
    :cond_ae
    add-int/lit8 v8, p1, 0x1

    .line 896
    .restart local v8    # "start":I
    aget-object v9, v0, v2

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    add-int/2addr v9, v6

    .line 898
    .restart local v9    # "limit":I
    :goto_b5
    move v10, v8

    .local v10, "j":I
    :goto_b6
    if-ge v10, v9, :cond_c7

    .line 899
    iget-object v11, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v5, v11, v10

    .line 900
    invoke-static {v5}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v11

    if-eqz v11, :cond_c4

    .line 901
    add-int/lit8 v4, v4, 0x1

    .line 898
    :cond_c4
    add-int/lit8 v10, v10, 0x1

    goto :goto_b6

    .line 904
    :cond_c7
    sub-int v11, v1, v4

    return v11

    .line 908
    .end local v0    # "runs":[Landroid/icu/text/BidiRun;
    .end local v2    # "i":I
    .end local v3    # "visualStart":I
    .end local v4    # "controlFound":I
    .end local v5    # "uchar":C
    .end local v6    # "length":I
    .end local v7    # "insertRemove":I
    .end local v8    # "start":I
    .end local v9    # "limit":I
    .end local v10    # "j":I
    :cond_ca
    return v1

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method

.method static blacklist getVisualMap(Landroid/icu/text/Bidi;)[I
    .registers 19
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    .line 1112
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 1114
    .local v1, "runs":[Landroid/icu/text/BidiRun;
    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    iget v3, v0, Landroid/icu/text/Bidi;->resultLength:I

    if-le v2, v3, :cond_d

    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    goto :goto_f

    .line 1115
    :cond_d
    iget v2, v0, Landroid/icu/text/Bidi;->resultLength:I

    :goto_f
    nop

    .line 1116
    .local v2, "allocLength":I
    new-array v3, v2, [I

    .line 1118
    .local v3, "indexMap":[I
    const/4 v4, 0x0

    .line 1119
    .local v4, "visualStart":I
    const/4 v5, 0x0

    .line 1120
    .local v5, "idx":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_15
    iget v7, v0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v8, -0x1

    if-ge v6, v7, :cond_49

    .line 1121
    aget-object v7, v1, v6

    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    .line 1122
    .local v7, "logicalStart":I
    aget-object v9, v1, v6

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    .line 1123
    .local v9, "visualLimit":I
    aget-object v10, v1, v6

    invoke-virtual {v10}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v10

    if-eqz v10, :cond_38

    .line 1125
    :goto_2a
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "idx":I
    .local v8, "idx":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "logicalStart":I
    .local v10, "logicalStart":I
    aput v7, v3, v5

    .line 1126
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    if-lt v4, v9, :cond_36

    goto :goto_46

    :cond_36
    move v7, v10

    goto :goto_2a

    .line 1128
    .end local v8    # "idx":I
    .end local v10    # "logicalStart":I
    .restart local v5    # "idx":I
    .restart local v7    # "logicalStart":I
    :cond_38
    sub-int v10, v9, v4

    add-int/2addr v7, v10

    .line 1130
    :cond_3b
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "idx":I
    .local v10, "idx":I
    add-int/2addr v7, v8

    aput v7, v3, v5

    .line 1131
    add-int/lit8 v4, v4, 0x1

    move v5, v10

    if-lt v4, v9, :cond_3b

    move v10, v7

    .line 1120
    .end local v7    # "logicalStart":I
    .restart local v5    # "idx":I
    .local v10, "logicalStart":I
    :goto_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 1136
    .end local v6    # "j":I
    .end local v9    # "visualLimit":I
    .end local v10    # "logicalStart":I
    :cond_49
    iget-object v6, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v6, v6, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v6, :cond_ac

    .line 1137
    const/4 v6, 0x0

    .local v6, "markFound":I
    iget v9, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 1139
    .local v9, "runCount":I
    iget-object v1, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 1141
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_55
    if-ge v10, v9, :cond_6a

    .line 1142
    aget-object v11, v1, v10

    iget v11, v11, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 1143
    .local v11, "insertRemove":I
    and-int/lit8 v12, v11, 0x5

    if-lez v12, :cond_61

    .line 1144
    add-int/lit8 v6, v6, 0x1

    .line 1146
    :cond_61
    and-int/lit8 v12, v11, 0xa

    if-lez v12, :cond_67

    .line 1147
    add-int/lit8 v6, v6, 0x1

    .line 1141
    :cond_67
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    .line 1151
    .end local v11    # "insertRemove":I
    :cond_6a
    iget v11, v0, Landroid/icu/text/Bidi;->resultLength:I

    .line 1152
    .local v11, "k":I
    add-int/lit8 v10, v9, -0x1

    :goto_6e
    if-ltz v10, :cond_ab

    if-lez v6, :cond_ab

    .line 1153
    aget-object v12, v1, v10

    iget v12, v12, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 1154
    .local v12, "insertRemove":I
    and-int/lit8 v13, v12, 0xa

    if-lez v13, :cond_80

    .line 1155
    add-int/lit8 v11, v11, -0x1

    aput v8, v3, v11

    .line 1156
    add-int/lit8 v6, v6, -0x1

    .line 1158
    :cond_80
    if-lez v10, :cond_89

    add-int/lit8 v13, v10, -0x1

    aget-object v13, v1, v13

    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    goto :goto_8a

    :cond_89
    const/4 v13, 0x0

    :goto_8a
    move v4, v13

    .line 1159
    aget-object v13, v1, v10

    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v13, v13, -0x1

    .local v13, "j":I
    :goto_91
    if-lt v13, v4, :cond_9e

    if-lez v6, :cond_9e

    .line 1160
    add-int/lit8 v11, v11, -0x1

    aget v14, v3, v13

    aput v14, v3, v11

    .line 1159
    add-int/lit8 v13, v13, -0x1

    goto :goto_91

    .line 1162
    :cond_9e
    and-int/lit8 v14, v12, 0x5

    if-lez v14, :cond_a8

    .line 1163
    add-int/lit8 v11, v11, -0x1

    aput v8, v3, v11

    .line 1164
    add-int/lit8 v6, v6, -0x1

    .line 1152
    :cond_a8
    add-int/lit8 v10, v10, -0x1

    goto :goto_6e

    .line 1167
    .end local v6    # "markFound":I
    .end local v9    # "runCount":I
    .end local v10    # "i":I
    .end local v11    # "k":I
    .end local v12    # "insertRemove":I
    .end local v13    # "j":I
    :cond_ab
    goto :goto_10a

    .line 1168
    :cond_ac
    iget v6, v0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v6, :cond_10a

    .line 1169
    iget v6, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 1173
    .local v6, "runCount":I
    iget-object v1, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 1174
    const/4 v4, 0x0

    .line 1176
    const/4 v8, 0x0

    .line 1177
    .local v8, "k":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_b7
    if-ge v9, v6, :cond_10a

    .line 1178
    aget-object v10, v1, v9

    iget v10, v10, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v10, v4

    .line 1179
    .local v10, "length":I
    aget-object v11, v1, v9

    iget v11, v11, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 1181
    .local v11, "insertRemove":I
    if-nez v11, :cond_c8

    if-ne v8, v4, :cond_c8

    .line 1182
    add-int/2addr v8, v10

    .line 1183
    goto :goto_106

    .line 1186
    :cond_c8
    if-nez v11, :cond_db

    .line 1187
    aget-object v12, v1, v9

    iget v12, v12, Landroid/icu/text/BidiRun;->limit:I

    .line 1188
    .local v12, "visualLimit":I
    move v13, v4

    .restart local v13    # "j":I
    :goto_cf
    if-ge v13, v12, :cond_106

    .line 1189
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "k":I
    .local v14, "k":I
    aget v15, v3, v13

    aput v15, v3, v8

    .line 1188
    add-int/lit8 v13, v13, 0x1

    move v8, v14

    goto :goto_cf

    .line 1193
    .end local v12    # "visualLimit":I
    .end local v13    # "j":I
    .end local v14    # "k":I
    .restart local v8    # "k":I
    :cond_db
    aget-object v12, v1, v9

    iget v12, v12, Landroid/icu/text/BidiRun;->start:I

    .line 1194
    .local v12, "logicalStart":I
    aget-object v13, v1, v9

    invoke-virtual {v13}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v13

    .line 1195
    .local v13, "evenRun":Z
    add-int v14, v12, v10

    add-int/lit8 v14, v14, -0x1

    .line 1196
    .local v14, "logicalEnd":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_ea
    if-ge v15, v10, :cond_106

    .line 1197
    if-eqz v13, :cond_f1

    add-int v16, v12, v15

    goto :goto_f3

    :cond_f1
    sub-int v16, v14, v15

    .line 1198
    .local v16, "m":I
    :goto_f3
    iget-object v7, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v7, v7, v16

    .line 1199
    .local v7, "uchar":C
    invoke-static {v7}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v17

    if-nez v17, :cond_103

    .line 1200
    add-int/lit8 v17, v8, 0x1

    .end local v8    # "k":I
    .local v17, "k":I
    aput v16, v3, v8

    move/from16 v8, v17

    .line 1196
    .end local v17    # "k":I
    .restart local v8    # "k":I
    :cond_103
    add-int/lit8 v15, v15, 0x1

    goto :goto_ea

    .line 1177
    .end local v7    # "uchar":C
    .end local v12    # "logicalStart":I
    .end local v13    # "evenRun":Z
    .end local v14    # "logicalEnd":I
    .end local v15    # "j":I
    .end local v16    # "m":I
    :cond_106
    :goto_106
    add-int/lit8 v9, v9, 0x1

    add-int/2addr v4, v10

    goto :goto_b7

    .line 1205
    .end local v6    # "runCount":I
    .end local v8    # "k":I
    .end local v9    # "i":I
    .end local v10    # "length":I
    .end local v11    # "insertRemove":I
    :cond_10a
    :goto_10a
    iget v6, v0, Landroid/icu/text/Bidi;->resultLength:I

    if-ne v2, v6, :cond_10f

    .line 1206
    return-object v3

    .line 1208
    :cond_10f
    iget v6, v0, Landroid/icu/text/Bidi;->resultLength:I

    new-array v6, v6, [I

    .line 1209
    .local v6, "newMap":[I
    iget v7, v0, Landroid/icu/text/Bidi;->resultLength:I

    const/4 v8, 0x0

    invoke-static {v3, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1210
    return-object v6
.end method

.method static blacklist getVisualRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;
    .registers 7
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "runIndex"    # I

    .line 307
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    .line 309
    .local v0, "start":I
    iget-object v1, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v1, v1, p1

    iget-byte v1, v1, Landroid/icu/text/BidiRun;->level:B

    .line 311
    .local v1, "level":B
    if-lez p1, :cond_1f

    .line 312
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v2, v3

    .local v2, "limit":I
    goto :goto_27

    .line 316
    .end local v2    # "limit":I
    :cond_1f
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v2, v0

    .line 318
    .restart local v2    # "limit":I
    :goto_27
    new-instance v3, Landroid/icu/text/BidiRun;

    invoke-direct {v3, v0, v2, v1}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    return-object v3
.end method

.method static blacklist invertMap([I)[I
    .registers 7
    .param p0, "srcMap"    # [I

    .line 1215
    array-length v0, p0

    .line 1216
    .local v0, "srcLength":I
    const/4 v1, -0x1

    .local v1, "destLength":I
    const/4 v2, 0x0

    .line 1219
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v0, :cond_12

    .line 1220
    aget v4, p0, v3

    .line 1221
    .local v4, "srcEntry":I
    if-le v4, v1, :cond_b

    .line 1222
    move v1, v4

    .line 1224
    :cond_b
    if-ltz v4, :cond_f

    .line 1225
    add-int/lit8 v2, v2, 0x1

    .line 1219
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1228
    .end local v4    # "srcEntry":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 1229
    new-array v4, v1, [I

    .line 1230
    .local v4, "destMap":[I
    if-ge v2, v1, :cond_1c

    .line 1232
    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 1234
    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v0, :cond_28

    .line 1235
    aget v5, p0, v3

    .line 1236
    .local v5, "srcEntry":I
    if-ltz v5, :cond_25

    .line 1237
    aput v3, v4, v5

    .line 1234
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1240
    .end local v5    # "srcEntry":I
    :cond_28
    return-object v4
.end method

.method static blacklist prepareReorder([B[B[B)[I
    .registers 9
    .param p0, "levels"    # [B
    .param p1, "pMinLevel"    # [B
    .param p2, "pMaxLevel"    # [B

    .line 636
    const/4 v0, 0x0

    if-eqz p0, :cond_31

    array-length v1, p0

    if-gtz v1, :cond_7

    goto :goto_31

    .line 641
    :cond_7
    const/16 v1, 0x7e

    .line 642
    .local v1, "minLevel":B
    const/4 v2, 0x0

    .line 643
    .local v2, "maxLevel":B
    array-length v3, p0

    .local v3, "start":I
    :cond_b
    :goto_b
    if-lez v3, :cond_20

    .line 644
    add-int/lit8 v3, v3, -0x1

    aget-byte v4, p0, v3

    .line 645
    .local v4, "level":B
    if-gez v4, :cond_14

    .line 646
    return-object v0

    .line 648
    :cond_14
    const/16 v5, 0x7e

    if-le v4, v5, :cond_19

    .line 649
    return-object v0

    .line 651
    :cond_19
    if-ge v4, v1, :cond_1c

    .line 652
    move v1, v4

    .line 654
    :cond_1c
    if-le v4, v2, :cond_b

    .line 655
    move v2, v4

    goto :goto_b

    .line 658
    .end local v4    # "level":B
    :cond_20
    const/4 v0, 0x0

    aput-byte v1, p1, v0

    .line 659
    aput-byte v2, p2, v0

    .line 662
    array-length v0, p0

    new-array v0, v0, [I

    .line 663
    .local v0, "indexMap":[I
    array-length v3, p0

    :goto_29
    if-lez v3, :cond_30

    .line 664
    add-int/lit8 v3, v3, -0x1

    .line 665
    aput v3, v0, v3

    goto :goto_29

    .line 668
    :cond_30
    return-object v0

    .line 637
    .end local v0    # "indexMap":[I
    .end local v1    # "minLevel":B
    .end local v2    # "maxLevel":B
    .end local v3    # "start":I
    :cond_31
    :goto_31
    return-object v0
.end method

.method private static blacklist reorderLine(Landroid/icu/text/Bidi;BB)V
    .registers 11
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "minLevel"    # B
    .param p2, "maxLevel"    # B

    .line 367
    or-int/lit8 v0, p1, 0x1

    if-gt p2, v0, :cond_5

    .line 368
    return-void

    .line 381
    :cond_5
    add-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 383
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 384
    .local v0, "runs":[Landroid/icu/text/BidiRun;
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 385
    .local v1, "levels":[B
    iget v2, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 388
    .local v2, "runCount":I
    iget v3, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v3, v4, :cond_16

    .line 389
    add-int/lit8 v2, v2, -0x1

    .line 392
    :cond_16
    :goto_16
    add-int/lit8 v3, p2, -0x1

    int-to-byte p2, v3

    if-lt p2, p1, :cond_51

    .line 393
    const/4 v3, 0x0

    .line 399
    .local v3, "firstRun":I
    :goto_1c
    if-ge v3, v2, :cond_29

    aget-object v4, v0, v3

    iget v4, v4, Landroid/icu/text/BidiRun;->start:I

    aget-byte v4, v1, v4

    if-ge v4, p2, :cond_29

    .line 400
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 402
    :cond_29
    if-lt v3, v2, :cond_2c

    .line 403
    goto :goto_16

    .line 407
    :cond_2c
    move v4, v3

    .local v4, "limitRun":I
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v2, :cond_3a

    aget-object v5, v0, v4

    iget v5, v5, Landroid/icu/text/BidiRun;->start:I

    aget-byte v5, v1, v5

    if-lt v5, p2, :cond_3a

    goto :goto_2d

    .line 411
    :cond_3a
    add-int/lit8 v5, v4, -0x1

    .line 412
    .local v5, "endRun":I
    :goto_3c
    if-ge v3, v5, :cond_4b

    .line 413
    aget-object v6, v0, v3

    .line 414
    .local v6, "tempRun":Landroid/icu/text/BidiRun;
    aget-object v7, v0, v5

    aput-object v7, v0, v3

    .line 415
    aput-object v6, v0, v5

    .line 416
    add-int/lit8 v3, v3, 0x1

    .line 417
    add-int/lit8 v5, v5, -0x1

    goto :goto_3c

    .line 420
    .end local v6    # "tempRun":Landroid/icu/text/BidiRun;
    :cond_4b
    if-ne v4, v2, :cond_4e

    .line 421
    goto :goto_16

    .line 423
    :cond_4e
    add-int/lit8 v3, v4, 0x1

    goto :goto_1c

    .line 429
    .end local v3    # "firstRun":I
    .end local v4    # "limitRun":I
    .end local v5    # "endRun":I
    :cond_51
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_6d

    .line 430
    const/4 v3, 0x0

    .line 433
    .restart local v3    # "firstRun":I
    iget v4, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    iget v5, p0, Landroid/icu/text/Bidi;->length:I

    if-ne v4, v5, :cond_5e

    .line 434
    add-int/lit8 v2, v2, -0x1

    .line 438
    :cond_5e
    :goto_5e
    if-ge v3, v2, :cond_6d

    .line 439
    aget-object v4, v0, v3

    .line 440
    .local v4, "tempRun":Landroid/icu/text/BidiRun;
    aget-object v5, v0, v2

    aput-object v5, v0, v3

    .line 441
    aput-object v4, v0, v2

    .line 442
    add-int/lit8 v3, v3, 0x1

    .line 443
    add-int/lit8 v2, v2, -0x1

    goto :goto_5e

    .line 446
    .end local v3    # "firstRun":I
    .end local v4    # "tempRun":Landroid/icu/text/BidiRun;
    :cond_6d
    return-void
.end method

.method static blacklist reorderLogical([B)[I
    .registers 11
    .param p0, "levels"    # [B

    .line 673
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 674
    .local v1, "aMinLevel":[B
    new-array v2, v0, [B

    .line 677
    .local v2, "aMaxLevel":[B
    invoke-static {p0, v1, v2}, Landroid/icu/text/BidiLine;->prepareReorder([B[B[B)[I

    move-result-object v3

    .line 678
    .local v3, "indexMap":[I
    if-nez v3, :cond_d

    .line 679
    const/4 v0, 0x0

    return-object v0

    .line 682
    :cond_d
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    .line 683
    .local v5, "minLevel":B
    aget-byte v4, v2, v4

    .line 686
    .local v4, "maxLevel":B
    if-ne v5, v4, :cond_19

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_19

    .line 687
    return-object v3

    .line 691
    :cond_19
    or-int/lit8 v6, v5, 0x1

    int-to-byte v5, v6

    .line 695
    :cond_1c
    const/4 v6, 0x0

    .line 701
    .local v6, "start":I
    :goto_1d
    array-length v7, p0

    if-ge v6, v7, :cond_27

    aget-byte v7, p0, v6

    if-ge v7, v4, :cond_27

    .line 702
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 704
    :cond_27
    array-length v7, p0

    if-lt v6, v7, :cond_2b

    .line 705
    goto :goto_45

    .line 709
    :cond_2b
    move v7, v6

    .local v7, "limit":I
    :goto_2c
    add-int/2addr v7, v0

    array-length v8, p0

    if-ge v7, v8, :cond_35

    aget-byte v8, p0, v7

    if-lt v8, v4, :cond_35

    goto :goto_2c

    .line 722
    :cond_35
    add-int v8, v6, v7

    sub-int/2addr v8, v0

    .line 726
    .local v8, "sumOfSosEos":I
    :cond_38
    aget v9, v3, v6

    sub-int v9, v8, v9

    aput v9, v3, v6

    .line 727
    add-int/2addr v6, v0

    if-lt v6, v7, :cond_38

    .line 730
    array-length v9, p0

    if-ne v7, v9, :cond_4b

    .line 731
    nop

    .line 736
    .end local v7    # "limit":I
    .end local v8    # "sumOfSosEos":I
    :goto_45
    add-int/lit8 v7, v4, -0x1

    int-to-byte v4, v7

    if-ge v4, v5, :cond_1c

    .line 737
    return-object v3

    .line 733
    .restart local v7    # "limit":I
    .restart local v8    # "sumOfSosEos":I
    :cond_4b
    add-int/lit8 v6, v7, 0x1

    goto :goto_1d
.end method

.method static blacklist reorderVisual([B)[I
    .registers 12
    .param p0, "levels"    # [B

    .line 742
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 743
    .local v1, "aMinLevel":[B
    new-array v2, v0, [B

    .line 747
    .local v2, "aMaxLevel":[B
    invoke-static {p0, v1, v2}, Landroid/icu/text/BidiLine;->prepareReorder([B[B[B)[I

    move-result-object v3

    .line 748
    .local v3, "indexMap":[I
    if-nez v3, :cond_d

    .line 749
    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_d
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    .line 753
    .local v5, "minLevel":B
    aget-byte v4, v2, v4

    .line 756
    .local v4, "maxLevel":B
    if-ne v5, v4, :cond_19

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_19

    .line 757
    return-object v3

    .line 761
    :cond_19
    or-int/lit8 v6, v5, 0x1

    int-to-byte v5, v6

    .line 765
    :cond_1c
    const/4 v6, 0x0

    .line 771
    .local v6, "start":I
    :goto_1d
    array-length v7, p0

    if-ge v6, v7, :cond_27

    aget-byte v7, p0, v6

    if-ge v7, v4, :cond_27

    .line 772
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 774
    :cond_27
    array-length v7, p0

    if-lt v6, v7, :cond_2b

    .line 775
    goto :goto_4a

    .line 779
    :cond_2b
    move v7, v6

    .local v7, "limit":I
    :goto_2c
    add-int/2addr v7, v0

    array-length v8, p0

    if-ge v7, v8, :cond_35

    aget-byte v8, p0, v7

    if-lt v8, v4, :cond_35

    goto :goto_2c

    .line 787
    :cond_35
    add-int/lit8 v8, v7, -0x1

    .line 788
    .local v8, "end":I
    :goto_37
    if-ge v6, v8, :cond_46

    .line 789
    aget v9, v3, v6

    .line 790
    .local v9, "temp":I
    aget v10, v3, v8

    aput v10, v3, v6

    .line 791
    aput v9, v3, v8

    .line 793
    add-int/lit8 v6, v6, 0x1

    .line 794
    add-int/lit8 v8, v8, -0x1

    goto :goto_37

    .line 797
    .end local v9    # "temp":I
    :cond_46
    array-length v9, p0

    if-ne v7, v9, :cond_50

    .line 798
    nop

    .line 803
    .end local v7    # "limit":I
    .end local v8    # "end":I
    :goto_4a
    add-int/lit8 v7, v4, -0x1

    int-to-byte v4, v7

    if-ge v4, v5, :cond_1c

    .line 805
    return-object v3

    .line 800
    .restart local v7    # "limit":I
    .restart local v8    # "end":I
    :cond_50
    add-int/lit8 v6, v7, 0x1

    goto :goto_1d
.end method

.method static blacklist setLine(Landroid/icu/text/Bidi;II)Landroid/icu/text/Bidi;
    .registers 12
    .param p0, "paraBidi"    # Landroid/icu/text/Bidi;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 120
    new-instance v0, Landroid/icu/text/Bidi;

    invoke-direct {v0}, Landroid/icu/text/Bidi;-><init>()V

    .line 128
    .local v0, "lineBidi":Landroid/icu/text/Bidi;
    sub-int v1, p2, p1

    iput v1, v0, Landroid/icu/text/Bidi;->resultLength:I

    iput v1, v0, Landroid/icu/text/Bidi;->originalLength:I

    iput v1, v0, Landroid/icu/text/Bidi;->length:I

    .line 131
    .local v1, "length":I
    new-array v2, v1, [C

    iput-object v2, v0, Landroid/icu/text/Bidi;->text:[C

    .line 132
    iget-object v2, p0, Landroid/icu/text/Bidi;->text:[C

    iget-object v3, v0, Landroid/icu/text/Bidi;->text:[C

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    iput-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 134
    iget v2, p0, Landroid/icu/text/Bidi;->paraCount:I

    iput v2, v0, Landroid/icu/text/Bidi;->paraCount:I

    .line 135
    new-array v2, v4, [Landroid/icu/text/BidiRun;

    iput-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 136
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    iput v2, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 137
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    iput v2, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 138
    iget v2, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v2, :cond_50

    .line 140
    move v2, p1

    .local v2, "j":I
    :goto_34
    if-ge v2, p2, :cond_49

    .line 141
    iget-object v3, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v3, v3, v2

    invoke-static {v3}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 142
    iget v3, v0, Landroid/icu/text/Bidi;->controlCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/icu/text/Bidi;->controlCount:I

    .line 140
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 145
    :cond_49
    iget v3, v0, Landroid/icu/text/Bidi;->resultLength:I

    iget v5, v0, Landroid/icu/text/Bidi;->controlCount:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/icu/text/Bidi;->resultLength:I

    .line 148
    .end local v2    # "j":I
    :cond_50
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->getDirPropsMemory(I)V

    .line 149
    iget-object v2, v0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    iput-object v2, v0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 150
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    iget-object v3, v0, Landroid/icu/text/Bidi;->dirProps:[B

    invoke-static {v2, p1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->getLevelsMemory(I)V

    .line 154
    iget-object v2, v0, Landroid/icu/text/Bidi;->levelsMemory:[B

    iput-object v2, v0, Landroid/icu/text/Bidi;->levels:[B

    .line 155
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v3, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v2, p1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/4 v2, -0x1

    iput v2, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 159
    iget-byte v2, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8c

    .line 161
    iget-byte v2, p0, Landroid/icu/text/Bidi;->direction:B

    iput-byte v2, v0, Landroid/icu/text/Bidi;->direction:B

    .line 168
    iget v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-gt v2, p1, :cond_7f

    .line 169
    iput v4, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_d8

    .line 170
    :cond_7f
    iget v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-ge v2, p2, :cond_89

    .line 171
    iget v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_d8

    .line 173
    :cond_89
    iput v1, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_d8

    .line 176
    :cond_8c
    iget-object v2, v0, Landroid/icu/text/Bidi;->levels:[B

    .line 180
    .local v2, "levels":[B
    invoke-static {v0}, Landroid/icu/text/BidiLine;->setTrailingWSStart(Landroid/icu/text/Bidi;)V

    .line 181
    iget v5, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 184
    .local v5, "trailingWSStart":I
    if-nez v5, :cond_9d

    .line 186
    iget-byte v3, v0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    iput-byte v3, v0, Landroid/icu/text/Bidi;->direction:B

    goto :goto_bc

    .line 189
    :cond_9d
    aget-byte v6, v2, v4

    and-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    .line 193
    .local v6, "level":B
    if-ge v5, v1, :cond_ad

    iget-byte v7, v0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v7, v7, 0x1

    if-eq v7, v6, :cond_ad

    .line 197
    iput-byte v3, v0, Landroid/icu/text/Bidi;->direction:B

    goto :goto_bc

    .line 201
    :cond_ad
    const/4 v7, 0x1

    .line 202
    .local v7, "i":I
    :goto_ae
    if-ne v7, v5, :cond_b3

    .line 204
    iput-byte v6, v0, Landroid/icu/text/Bidi;->direction:B

    .line 205
    goto :goto_bc

    .line 206
    :cond_b3
    aget-byte v8, v2, v7

    and-int/lit8 v8, v8, 0x1

    if-eq v8, v6, :cond_db

    .line 207
    iput-byte v3, v0, Landroid/icu/text/Bidi;->direction:B

    .line 208
    nop

    .line 214
    .end local v6    # "level":B
    .end local v7    # "i":I
    :goto_bc
    iget-byte v3, v0, Landroid/icu/text/Bidi;->direction:B

    packed-switch v3, :pswitch_data_de

    goto :goto_d8

    .line 226
    :pswitch_c2
    iget-byte v3, v0, Landroid/icu/text/Bidi;->paraLevel:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    iput-byte v3, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 230
    iput v4, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 231
    goto :goto_d8

    .line 217
    :pswitch_cc
    iget-byte v3, v0, Landroid/icu/text/Bidi;->paraLevel:B

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    iput-byte v3, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 222
    iput v4, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 223
    nop

    .line 236
    .end local v2    # "levels":[B
    .end local v5    # "trailingWSStart":I
    :goto_d8
    iput-object p0, v0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 237
    return-object v0

    .line 201
    .restart local v2    # "levels":[B
    .restart local v5    # "trailingWSStart":I
    .restart local v6    # "level":B
    .restart local v7    # "i":I
    :cond_db
    add-int/lit8 v7, v7, 0x1

    goto :goto_ae

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_c2
    .end packed-switch
.end method

.method static blacklist setTrailingWSStart(Landroid/icu/text/Bidi;)V
    .registers 7
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    .line 88
    iget-object v0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 89
    .local v0, "dirProps":[B
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 90
    .local v1, "levels":[B
    iget v2, p0, Landroid/icu/text/Bidi;->length:I

    .line 91
    .local v2, "start":I
    iget-byte v3, p0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 99
    .local v3, "paraLevel":B
    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v0, v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_12

    .line 100
    iput v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 101
    return-void

    .line 104
    :cond_12
    :goto_12
    if-lez v2, :cond_24

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v0, v4

    .line 105
    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    sget v5, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_24

    .line 106
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 110
    :cond_24
    :goto_24
    if-lez v2, :cond_2f

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v1, v4

    if-ne v4, v3, :cond_2f

    .line 111
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 114
    :cond_2f
    iput v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 115
    return-void
.end method
