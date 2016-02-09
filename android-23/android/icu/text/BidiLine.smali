.class final Landroid/icu/text/BidiLine;
.super Ljava/lang/Object;
.source "BidiLine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getLevelAt(Landroid/icu/text/Bidi;I)B
    .locals 2
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "charIndex"    # I

    #@0
    .prologue
    .line 240
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@7
    if-lt p1, v0, :cond_1

    #@9
    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 243
    :cond_1
    iget-object v0, p0, Landroid/icu/text/Bidi;->levels:[B

    #@10
    aget-byte v0, v0, p1

    #@12
    return v0
.end method

.method static getLevels(Landroid/icu/text/Bidi;)[B
    .locals 6
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 249
    iget v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@3
    .line 250
    .local v2, "start":I
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@5
    .line 252
    .local v0, "length":I
    if-eq v2, v0, :cond_0

    #@7
    .line 263
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    #@9
    iget-byte v4, p0, Landroid/icu/text/Bidi;->paraLevel:B

    #@b
    invoke-static {v3, v2, v0, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@e
    .line 266
    iput v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@10
    .line 268
    :cond_0
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    #@12
    array-length v3, v3

    #@13
    if-ge v0, v3, :cond_1

    #@15
    .line 269
    new-array v1, v0, [B

    #@17
    .line 270
    .local v1, "levels":[B
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    #@19
    invoke-static {v3, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 271
    return-object v1

    #@1d
    .line 273
    .end local v1    # "levels":[B
    :cond_1
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1f
    return-object v3
.end method

.method static getLogicalIndex(Landroid/icu/text/Bidi;I)I
    .locals 21
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "visualIndex"    # I

    #@0
    .prologue
    .line 913
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@4
    .line 914
    .local v15, "runs":[Landroid/icu/text/BidiRun;
    move-object/from16 v0, p0

    #@6
    iget v14, v0, Landroid/icu/text/Bidi;->runCount:I

    #@8
    .line 915
    .local v14, "runCount":I
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@c
    move-object/from16 v19, v0

    #@e
    move-object/from16 v0, v19

    #@10
    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@12
    move/from16 v19, v0

    #@14
    if-lez v19, :cond_6

    #@16
    .line 917
    const/4 v13, 0x0

    #@17
    .line 918
    .local v13, "markFound":I
    const/16 v18, 0x0

    #@19
    .line 920
    .local v18, "visualStart":I
    const/4 v5, 0x0

    #@1a
    .line 921
    .local v5, "i":I
    :goto_0
    aget-object v19, v15, v5

    #@1c
    move-object/from16 v0, v19

    #@1e
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@20
    move/from16 v19, v0

    #@22
    sub-int v9, v19, v18

    #@24
    .line 922
    .local v9, "length":I
    aget-object v19, v15, v5

    #@26
    move-object/from16 v0, v19

    #@28
    iget v6, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@2a
    .line 923
    .local v6, "insertRemove":I
    and-int/lit8 v19, v6, 0x5

    #@2c
    if-lez v19, :cond_1

    #@2e
    .line 924
    add-int v19, v18, v13

    #@30
    move/from16 v0, p1

    #@32
    move/from16 v1, v19

    #@34
    if-gt v0, v1, :cond_0

    #@36
    .line 925
    const/16 v19, -0x1

    #@38
    return v19

    #@39
    .line 927
    :cond_0
    add-int/lit8 v13, v13, 0x1

    #@3b
    .line 930
    :cond_1
    aget-object v19, v15, v5

    #@3d
    move-object/from16 v0, v19

    #@3f
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@41
    move/from16 v19, v0

    #@43
    add-int v19, v19, v13

    #@45
    move/from16 v0, p1

    #@47
    move/from16 v1, v19

    #@49
    if-ge v0, v1, :cond_3

    #@4b
    .line 931
    sub-int p1, p1, v13

    #@4d
    .line 981
    .end local v5    # "i":I
    .end local v6    # "insertRemove":I
    .end local v9    # "length":I
    .end local v13    # "markFound":I
    .end local v18    # "visualStart":I
    :cond_2
    :goto_1
    const/16 v19, 0xa

    #@4f
    move/from16 v0, v19

    #@51
    if-gt v14, v0, :cond_d

    #@53
    .line 983
    const/4 v5, 0x0

    #@54
    .restart local v5    # "i":I
    :goto_2
    aget-object v19, v15, v5

    #@56
    move-object/from16 v0, v19

    #@58
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@5a
    move/from16 v19, v0

    #@5c
    move/from16 v0, p1

    #@5e
    move/from16 v1, v19

    #@60
    if-lt v0, v1, :cond_f

    #@62
    add-int/lit8 v5, v5, 0x1

    #@64
    goto :goto_2

    #@65
    .line 934
    .restart local v6    # "insertRemove":I
    .restart local v9    # "length":I
    .restart local v13    # "markFound":I
    .restart local v18    # "visualStart":I
    :cond_3
    and-int/lit8 v19, v6, 0xa

    #@67
    if-lez v19, :cond_5

    #@69
    .line 935
    add-int v19, v18, v9

    #@6b
    add-int v19, v19, v13

    #@6d
    move/from16 v0, p1

    #@6f
    move/from16 v1, v19

    #@71
    if-ne v0, v1, :cond_4

    #@73
    .line 936
    const/16 v19, -0x1

    #@75
    return v19

    #@76
    .line 938
    :cond_4
    add-int/lit8 v13, v13, 0x1

    #@78
    .line 920
    :cond_5
    add-int/lit8 v5, v5, 0x1

    #@7a
    add-int v18, v18, v9

    #@7c
    goto :goto_0

    #@7d
    .line 942
    .end local v5    # "i":I
    .end local v6    # "insertRemove":I
    .end local v9    # "length":I
    .end local v13    # "markFound":I
    .end local v18    # "visualStart":I
    :cond_6
    move-object/from16 v0, p0

    #@7f
    iget v0, v0, Landroid/icu/text/Bidi;->controlCount:I

    #@81
    move/from16 v19, v0

    #@83
    if-lez v19, :cond_2

    #@85
    .line 944
    const/4 v3, 0x0

    #@86
    .line 945
    .local v3, "controlFound":I
    const/16 v18, 0x0

    #@88
    .line 949
    .restart local v18    # "visualStart":I
    const/4 v5, 0x0

    #@89
    .line 950
    .restart local v5    # "i":I
    :goto_3
    aget-object v19, v15, v5

    #@8b
    move-object/from16 v0, v19

    #@8d
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@8f
    move/from16 v19, v0

    #@91
    sub-int v9, v19, v18

    #@93
    .line 951
    .restart local v9    # "length":I
    aget-object v19, v15, v5

    #@95
    move-object/from16 v0, v19

    #@97
    iget v6, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@99
    .line 953
    .restart local v6    # "insertRemove":I
    aget-object v19, v15, v5

    #@9b
    move-object/from16 v0, v19

    #@9d
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@9f
    move/from16 v19, v0

    #@a1
    sub-int v19, v19, v3

    #@a3
    add-int v19, v19, v6

    #@a5
    move/from16 v0, p1

    #@a7
    move/from16 v1, v19

    #@a9
    if-lt v0, v1, :cond_7

    #@ab
    .line 954
    sub-int/2addr v3, v6

    #@ac
    .line 949
    add-int/lit8 v5, v5, 0x1

    #@ae
    add-int v18, v18, v9

    #@b0
    goto :goto_3

    #@b1
    .line 958
    :cond_7
    if-nez v6, :cond_8

    #@b3
    .line 959
    add-int p1, p1, v3

    #@b5
    .line 960
    goto :goto_1

    #@b6
    .line 963
    :cond_8
    aget-object v19, v15, v5

    #@b8
    move-object/from16 v0, v19

    #@ba
    iget v12, v0, Landroid/icu/text/BidiRun;->start:I

    #@bc
    .line 964
    .local v12, "logicalStart":I
    aget-object v19, v15, v5

    #@be
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@c1
    move-result v4

    #@c2
    .line 965
    .local v4, "evenRun":Z
    add-int v19, v12, v9

    #@c4
    add-int/lit8 v11, v19, -0x1

    #@c6
    .line 966
    .local v11, "logicalEnd":I
    const/4 v7, 0x0

    #@c7
    .local v7, "j":I
    :goto_4
    if-ge v7, v9, :cond_a

    #@c9
    .line 967
    if-eqz v4, :cond_b

    #@cb
    add-int v8, v12, v7

    #@cd
    .line 968
    .local v8, "k":I
    :goto_5
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@d1
    move-object/from16 v19, v0

    #@d3
    aget-char v17, v19, v8

    #@d5
    .line 969
    .local v17, "uchar":C
    invoke-static/range {v17 .. v17}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@d8
    move-result v19

    #@d9
    if-eqz v19, :cond_9

    #@db
    .line 970
    add-int/lit8 v3, v3, 0x1

    #@dd
    .line 972
    :cond_9
    add-int v19, p1, v3

    #@df
    add-int v20, v18, v7

    #@e1
    move/from16 v0, v19

    #@e3
    move/from16 v1, v20

    #@e5
    if-ne v0, v1, :cond_c

    #@e7
    .line 976
    .end local v8    # "k":I
    .end local v17    # "uchar":C
    :cond_a
    add-int p1, p1, v3

    #@e9
    .line 977
    goto/16 :goto_1

    #@eb
    .line 967
    :cond_b
    sub-int v8, v11, v7

    #@ed
    .restart local v8    # "k":I
    goto :goto_5

    #@ee
    .line 966
    .restart local v17    # "uchar":C
    :cond_c
    add-int/lit8 v7, v7, 0x1

    #@f0
    goto :goto_4

    #@f1
    .line 986
    .end local v3    # "controlFound":I
    .end local v4    # "evenRun":Z
    .end local v5    # "i":I
    .end local v6    # "insertRemove":I
    .end local v7    # "j":I
    .end local v8    # "k":I
    .end local v9    # "length":I
    .end local v11    # "logicalEnd":I
    .end local v12    # "logicalStart":I
    .end local v17    # "uchar":C
    .end local v18    # "visualStart":I
    :cond_d
    const/4 v2, 0x0

    #@f2
    .local v2, "begin":I
    move v10, v14

    #@f3
    .line 990
    .local v10, "limit":I
    :goto_6
    add-int v19, v2, v10

    #@f5
    ushr-int/lit8 v5, v19, 0x1

    #@f7
    .line 991
    .restart local v5    # "i":I
    aget-object v19, v15, v5

    #@f9
    move-object/from16 v0, v19

    #@fb
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@fd
    move/from16 v19, v0

    #@ff
    move/from16 v0, p1

    #@101
    move/from16 v1, v19

    #@103
    if-lt v0, v1, :cond_e

    #@105
    .line 992
    add-int/lit8 v2, v5, 0x1

    #@107
    goto :goto_6

    #@108
    .line 993
    :cond_e
    if-eqz v5, :cond_f

    #@10a
    add-int/lit8 v19, v5, -0x1

    #@10c
    aget-object v19, v15, v19

    #@10e
    move-object/from16 v0, v19

    #@110
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@112
    move/from16 v19, v0

    #@114
    move/from16 v0, p1

    #@116
    move/from16 v1, v19

    #@118
    if-lt v0, v1, :cond_11

    #@11a
    .line 1001
    .end local v2    # "begin":I
    .end local v10    # "limit":I
    :cond_f
    aget-object v19, v15, v5

    #@11c
    move-object/from16 v0, v19

    #@11e
    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    #@120
    move/from16 v16, v0

    #@122
    .line 1002
    .local v16, "start":I
    aget-object v19, v15, v5

    #@124
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@127
    move-result v19

    #@128
    if-eqz v19, :cond_12

    #@12a
    .line 1005
    if-lez v5, :cond_10

    #@12c
    .line 1006
    add-int/lit8 v19, v5, -0x1

    #@12e
    aget-object v19, v15, v19

    #@130
    move-object/from16 v0, v19

    #@132
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@134
    move/from16 v19, v0

    #@136
    sub-int p1, p1, v19

    #@138
    .line 1008
    :cond_10
    add-int v19, v16, p1

    #@13a
    return v19

    #@13b
    .line 996
    .end local v16    # "start":I
    .restart local v2    # "begin":I
    .restart local v10    # "limit":I
    :cond_11
    move v10, v5

    #@13c
    goto :goto_6

    #@13d
    .line 1011
    .end local v2    # "begin":I
    .end local v10    # "limit":I
    .restart local v16    # "start":I
    :cond_12
    aget-object v19, v15, v5

    #@13f
    move-object/from16 v0, v19

    #@141
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@143
    move/from16 v19, v0

    #@145
    add-int v19, v19, v16

    #@147
    sub-int v19, v19, p1

    #@149
    add-int/lit8 v19, v19, -0x1

    #@14b
    return v19
.end method

.method static getLogicalMap(Landroid/icu/text/Bidi;)[I
    .locals 22
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    #@0
    .prologue
    .line 1018
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@4
    .line 1020
    .local v15, "runs":[Landroid/icu/text/BidiRun;
    move-object/from16 v0, p0

    #@6
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@8
    move/from16 v20, v0

    #@a
    move/from16 v0, v20

    #@c
    new-array v5, v0, [I

    #@e
    .line 1021
    .local v5, "indexMap":[I
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@12
    move/from16 v20, v0

    #@14
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@18
    move/from16 v21, v0

    #@1a
    move/from16 v0, v20

    #@1c
    move/from16 v1, v21

    #@1e
    if-le v0, v1, :cond_0

    #@20
    .line 1022
    const/16 v20, -0x1

    #@22
    move/from16 v0, v20

    #@24
    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    #@27
    .line 1025
    :cond_0
    const/16 v18, 0x0

    #@29
    .line 1026
    .local v18, "visualStart":I
    const/4 v7, 0x0

    #@2a
    .local v7, "j":I
    :goto_0
    move-object/from16 v0, p0

    #@2c
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@2e
    move/from16 v20, v0

    #@30
    move/from16 v0, v20

    #@32
    if-ge v7, v0, :cond_3

    #@34
    .line 1027
    aget-object v20, v15, v7

    #@36
    move-object/from16 v0, v20

    #@38
    iget v11, v0, Landroid/icu/text/BidiRun;->start:I

    #@3a
    .line 1028
    .local v11, "logicalStart":I
    aget-object v20, v15, v7

    #@3c
    move-object/from16 v0, v20

    #@3e
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@40
    move/from16 v17, v0

    #@42
    .line 1029
    .local v17, "visualLimit":I
    aget-object v20, v15, v7

    #@44
    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@47
    move-result v20

    #@48
    if-eqz v20, :cond_1

    #@4a
    .line 1031
    :goto_1
    add-int/lit8 v12, v11, 0x1

    #@4c
    .end local v11    # "logicalStart":I
    .local v12, "logicalStart":I
    add-int/lit8 v19, v18, 0x1

    #@4e
    .end local v18    # "visualStart":I
    .local v19, "visualStart":I
    aput v18, v5, v11

    #@50
    .line 1032
    move/from16 v0, v19

    #@52
    move/from16 v1, v17

    #@54
    if-ge v0, v1, :cond_e

    #@56
    move/from16 v18, v19

    #@58
    .end local v19    # "visualStart":I
    .restart local v18    # "visualStart":I
    move v11, v12

    #@59
    .end local v12    # "logicalStart":I
    .restart local v11    # "logicalStart":I
    goto :goto_1

    #@5a
    .line 1034
    :cond_1
    sub-int v20, v17, v18

    #@5c
    add-int v11, v11, v20

    #@5e
    .line 1036
    :goto_2
    add-int/lit8 v11, v11, -0x1

    #@60
    add-int/lit8 v19, v18, 0x1

    #@62
    .end local v18    # "visualStart":I
    .restart local v19    # "visualStart":I
    aput v18, v5, v11

    #@64
    .line 1037
    move/from16 v0, v19

    #@66
    move/from16 v1, v17

    #@68
    if-ge v0, v1, :cond_2

    #@6a
    move/from16 v18, v19

    #@6c
    .end local v19    # "visualStart":I
    .restart local v18    # "visualStart":I
    goto :goto_2

    #@6d
    .end local v18    # "visualStart":I
    .restart local v19    # "visualStart":I
    :cond_2
    move/from16 v18, v19

    #@6f
    .line 1026
    .end local v19    # "visualStart":I
    .restart local v18    # "visualStart":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    #@71
    goto :goto_0

    #@72
    .line 1042
    .end local v11    # "logicalStart":I
    .end local v17    # "visualLimit":I
    :cond_3
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@76
    move-object/from16 v20, v0

    #@78
    move-object/from16 v0, v20

    #@7a
    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@7c
    move/from16 v20, v0

    #@7e
    if-lez v20, :cond_7

    #@80
    .line 1043
    const/4 v13, 0x0

    #@81
    .local v13, "markFound":I
    move-object/from16 v0, p0

    #@83
    iget v14, v0, Landroid/icu/text/Bidi;->runCount:I

    #@85
    .line 1045
    .local v14, "runCount":I
    move-object/from16 v0, p0

    #@87
    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@89
    .line 1046
    const/16 v18, 0x0

    #@8b
    .line 1048
    const/4 v4, 0x0

    #@8c
    .local v4, "i":I
    :goto_4
    if-ge v4, v14, :cond_d

    #@8e
    .line 1049
    aget-object v20, v15, v4

    #@90
    move-object/from16 v0, v20

    #@92
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@94
    move/from16 v20, v0

    #@96
    sub-int v9, v20, v18

    #@98
    .line 1050
    .local v9, "length":I
    aget-object v20, v15, v4

    #@9a
    move-object/from16 v0, v20

    #@9c
    iget v6, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@9e
    .line 1051
    .local v6, "insertRemove":I
    and-int/lit8 v20, v6, 0x5

    #@a0
    if-lez v20, :cond_4

    #@a2
    .line 1052
    add-int/lit8 v13, v13, 0x1

    #@a4
    .line 1054
    :cond_4
    if-lez v13, :cond_5

    #@a6
    .line 1055
    aget-object v20, v15, v4

    #@a8
    move-object/from16 v0, v20

    #@aa
    iget v11, v0, Landroid/icu/text/BidiRun;->start:I

    #@ac
    .line 1056
    .restart local v11    # "logicalStart":I
    add-int v10, v11, v9

    #@ae
    .line 1057
    .local v10, "logicalLimit":I
    move v7, v11

    #@af
    :goto_5
    if-ge v7, v10, :cond_5

    #@b1
    .line 1058
    aget v20, v5, v7

    #@b3
    add-int v20, v20, v13

    #@b5
    aput v20, v5, v7

    #@b7
    .line 1057
    add-int/lit8 v7, v7, 0x1

    #@b9
    goto :goto_5

    #@ba
    .line 1061
    .end local v10    # "logicalLimit":I
    .end local v11    # "logicalStart":I
    :cond_5
    and-int/lit8 v20, v6, 0xa

    #@bc
    if-lez v20, :cond_6

    #@be
    .line 1062
    add-int/lit8 v13, v13, 0x1

    #@c0
    .line 1048
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@c2
    add-int v18, v18, v9

    #@c4
    goto :goto_4

    #@c5
    .line 1066
    .end local v4    # "i":I
    .end local v6    # "insertRemove":I
    .end local v9    # "length":I
    .end local v13    # "markFound":I
    .end local v14    # "runCount":I
    :cond_7
    move-object/from16 v0, p0

    #@c7
    iget v0, v0, Landroid/icu/text/Bidi;->controlCount:I

    #@c9
    move/from16 v20, v0

    #@cb
    if-lez v20, :cond_d

    #@cd
    .line 1067
    const/4 v2, 0x0

    #@ce
    .local v2, "controlFound":I
    move-object/from16 v0, p0

    #@d0
    iget v14, v0, Landroid/icu/text/Bidi;->runCount:I

    #@d2
    .line 1071
    .restart local v14    # "runCount":I
    move-object/from16 v0, p0

    #@d4
    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@d6
    .line 1072
    const/16 v18, 0x0

    #@d8
    .line 1074
    const/4 v4, 0x0

    #@d9
    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v14, :cond_d

    #@db
    .line 1075
    aget-object v20, v15, v4

    #@dd
    move-object/from16 v0, v20

    #@df
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@e1
    move/from16 v20, v0

    #@e3
    sub-int v9, v20, v18

    #@e5
    .line 1076
    .restart local v9    # "length":I
    aget-object v20, v15, v4

    #@e7
    move-object/from16 v0, v20

    #@e9
    iget v6, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@eb
    .line 1078
    .restart local v6    # "insertRemove":I
    sub-int v20, v2, v6

    #@ed
    if-nez v20, :cond_9

    #@ef
    .line 1074
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@f1
    add-int v18, v18, v9

    #@f3
    goto :goto_6

    #@f4
    .line 1081
    :cond_9
    aget-object v20, v15, v4

    #@f6
    move-object/from16 v0, v20

    #@f8
    iget v11, v0, Landroid/icu/text/BidiRun;->start:I

    #@fa
    .line 1082
    .restart local v11    # "logicalStart":I
    aget-object v20, v15, v4

    #@fc
    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@ff
    move-result v3

    #@100
    .line 1083
    .local v3, "evenRun":Z
    add-int v10, v11, v9

    #@102
    .line 1085
    .restart local v10    # "logicalLimit":I
    if-nez v6, :cond_a

    #@104
    .line 1086
    move v7, v11

    #@105
    :goto_7
    if-ge v7, v10, :cond_8

    #@107
    .line 1087
    aget v20, v5, v7

    #@109
    sub-int v20, v20, v2

    #@10b
    aput v20, v5, v7

    #@10d
    .line 1086
    add-int/lit8 v7, v7, 0x1

    #@10f
    goto :goto_7

    #@110
    .line 1091
    :cond_a
    const/4 v7, 0x0

    #@111
    :goto_8
    if-ge v7, v9, :cond_8

    #@113
    .line 1092
    if-eqz v3, :cond_b

    #@115
    add-int v8, v11, v7

    #@117
    .line 1093
    .local v8, "k":I
    :goto_9
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@11b
    move-object/from16 v20, v0

    #@11d
    aget-char v16, v20, v8

    #@11f
    .line 1094
    .local v16, "uchar":C
    invoke-static/range {v16 .. v16}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@122
    move-result v20

    #@123
    if-eqz v20, :cond_c

    #@125
    .line 1095
    add-int/lit8 v2, v2, 0x1

    #@127
    .line 1096
    const/16 v20, -0x1

    #@129
    aput v20, v5, v8

    #@12b
    .line 1091
    :goto_a
    add-int/lit8 v7, v7, 0x1

    #@12d
    goto :goto_8

    #@12e
    .line 1092
    .end local v8    # "k":I
    .end local v16    # "uchar":C
    :cond_b
    sub-int v20, v10, v7

    #@130
    add-int/lit8 v8, v20, -0x1

    #@132
    .restart local v8    # "k":I
    goto :goto_9

    #@133
    .line 1099
    .restart local v16    # "uchar":C
    :cond_c
    aget v20, v5, v8

    #@135
    sub-int v20, v20, v2

    #@137
    aput v20, v5, v8

    #@139
    goto :goto_a

    #@13a
    .line 1103
    .end local v2    # "controlFound":I
    .end local v3    # "evenRun":Z
    .end local v4    # "i":I
    .end local v6    # "insertRemove":I
    .end local v8    # "k":I
    .end local v9    # "length":I
    .end local v10    # "logicalLimit":I
    .end local v11    # "logicalStart":I
    .end local v14    # "runCount":I
    .end local v16    # "uchar":C
    :cond_d
    return-object v5

    #@13b
    .end local v18    # "visualStart":I
    .restart local v12    # "logicalStart":I
    .restart local v17    # "visualLimit":I
    .restart local v19    # "visualStart":I
    :cond_e
    move/from16 v18, v19

    #@13d
    .end local v19    # "visualStart":I
    .restart local v18    # "visualStart":I
    move v11, v12

    #@13e
    .end local v12    # "logicalStart":I
    .restart local v11    # "logicalStart":I
    goto/16 :goto_3
.end method

.method static getLogicalRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;
    .locals 8
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "logicalPosition"    # I

    #@0
    .prologue
    .line 281
    new-instance v3, Landroid/icu/text/BidiRun;

    #@2
    invoke-direct {v3}, Landroid/icu/text/BidiRun;-><init>()V

    #@5
    .line 282
    .local v3, "newRun":Landroid/icu/text/BidiRun;
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@8
    .line 283
    iget v4, p0, Landroid/icu/text/Bidi;->runCount:I

    #@a
    .line 284
    .local v4, "runCount":I
    const/4 v5, 0x0

    #@b
    .local v5, "visualStart":I
    const/4 v2, 0x0

    #@c
    .line 285
    .local v2, "logicalLimit":I
    iget-object v6, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@e
    const/4 v7, 0x0

    #@f
    aget-object v1, v6, v7

    #@11
    .line 287
    .local v1, "iRun":Landroid/icu/text/BidiRun;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@14
    .line 288
    iget-object v6, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@16
    aget-object v1, v6, v0

    #@18
    .line 289
    iget v6, v1, Landroid/icu/text/BidiRun;->start:I

    #@1a
    iget v7, v1, Landroid/icu/text/BidiRun;->limit:I

    #@1c
    add-int/2addr v6, v7

    #@1d
    sub-int v2, v6, v5

    #@1f
    .line 290
    iget v6, v1, Landroid/icu/text/BidiRun;->start:I

    #@21
    if-lt p1, v6, :cond_1

    #@23
    .line 291
    if-ge p1, v2, :cond_1

    #@25
    .line 296
    :cond_0
    iget v6, v1, Landroid/icu/text/BidiRun;->start:I

    #@27
    iput v6, v3, Landroid/icu/text/BidiRun;->start:I

    #@29
    .line 297
    iput v2, v3, Landroid/icu/text/BidiRun;->limit:I

    #@2b
    .line 298
    iget-byte v6, v1, Landroid/icu/text/BidiRun;->level:B

    #@2d
    iput-byte v6, v3, Landroid/icu/text/BidiRun;->level:B

    #@2f
    .line 299
    return-object v3

    #@30
    .line 294
    :cond_1
    iget v5, v1, Landroid/icu/text/BidiRun;->limit:I

    #@32
    .line 287
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0
.end method

.method static getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I
    .locals 8
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "logicalIndex"    # I

    #@0
    .prologue
    .line 448
    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@2
    .line 449
    .local v4, "runs":[Landroid/icu/text/BidiRun;
    iget v3, p0, Landroid/icu/text/Bidi;->runCount:I

    #@4
    .local v3, "runCount":I
    const/4 v5, 0x0

    #@5
    .line 451
    .local v5, "visualStart":I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@8
    .line 452
    aget-object v6, v4, v0

    #@a
    iget v6, v6, Landroid/icu/text/BidiRun;->limit:I

    #@c
    sub-int v1, v6, v5

    #@e
    .line 453
    .local v1, "length":I
    aget-object v6, v4, v0

    #@10
    iget v2, v6, Landroid/icu/text/BidiRun;->start:I

    #@12
    .line 454
    .local v2, "logicalStart":I
    if-lt p1, v2, :cond_0

    #@14
    add-int v6, v2, v1

    #@16
    if-ge p1, v6, :cond_0

    #@18
    .line 455
    return v0

    #@19
    .line 457
    :cond_0
    add-int/2addr v5, v1

    #@1a
    .line 451
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 461
    .end local v1    # "length":I
    .end local v2    # "logicalStart":I
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    #@1f
    const-string/jumbo v7, "Internal ICU error in getRunFromLogicalIndex"

    #@22
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v6
.end method

.method static getRuns(Landroid/icu/text/Bidi;)V
    .locals 22
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    #@0
    .prologue
    .line 481
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@4
    move/from16 v19, v0

    #@6
    if-ltz v19, :cond_0

    #@8
    .line 482
    return-void

    #@9
    .line 484
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-byte v0, v0, Landroid/icu/text/Bidi;->direction:B

    #@d
    move/from16 v19, v0

    #@f
    const/16 v20, 0x2

    #@11
    move/from16 v0, v19

    #@13
    move/from16 v1, v20

    #@15
    if-eq v0, v1, :cond_2

    #@17
    .line 487
    move-object/from16 v0, p0

    #@19
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@1b
    move/from16 v19, v0

    #@1d
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, v19

    #@21
    invoke-static {v0, v1}, Landroid/icu/text/BidiLine;->getSingleRun(Landroid/icu/text/Bidi;B)V

    #@24
    .line 604
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@28
    move-object/from16 v19, v0

    #@2a
    move-object/from16 v0, v19

    #@2c
    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@2e
    move/from16 v19, v0

    #@30
    if-lez v19, :cond_e

    #@32
    .line 607
    const/4 v6, 0x0

    #@33
    .local v6, "ip":I
    :goto_1
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@37
    move-object/from16 v19, v0

    #@39
    move-object/from16 v0, v19

    #@3b
    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@3d
    move/from16 v19, v0

    #@3f
    move/from16 v0, v19

    #@41
    if-ge v6, v0, :cond_e

    #@43
    .line 608
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@47
    move-object/from16 v19, v0

    #@49
    move-object/from16 v0, v19

    #@4b
    iget-object v0, v0, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@4d
    move-object/from16 v19, v0

    #@4f
    aget-object v13, v19, v6

    #@51
    .line 609
    .local v13, "point":Landroid/icu/text/Bidi$Point;
    iget v0, v13, Landroid/icu/text/Bidi$Point;->pos:I

    #@53
    move/from16 v19, v0

    #@55
    move-object/from16 v0, p0

    #@57
    move/from16 v1, v19

    #@59
    invoke-static {v0, v1}, Landroid/icu/text/BidiLine;->getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I

    #@5c
    move-result v15

    #@5d
    .line 610
    .local v15, "runIndex":I
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@61
    move-object/from16 v19, v0

    #@63
    aget-object v19, v19, v15

    #@65
    move-object/from16 v0, v19

    #@67
    iget v0, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@69
    move/from16 v20, v0

    #@6b
    iget v0, v13, Landroid/icu/text/Bidi$Point;->flag:I

    #@6d
    move/from16 v21, v0

    #@6f
    or-int v20, v20, v21

    #@71
    move/from16 v0, v20

    #@73
    move-object/from16 v1, v19

    #@75
    iput v0, v1, Landroid/icu/text/BidiRun;->insertRemove:I

    #@77
    .line 607
    add-int/lit8 v6, v6, 0x1

    #@79
    goto :goto_1

    #@7a
    .line 490
    .end local v6    # "ip":I
    .end local v13    # "point":Landroid/icu/text/Bidi$Point;
    .end local v15    # "runIndex":I
    :cond_2
    move-object/from16 v0, p0

    #@7c
    iget v7, v0, Landroid/icu/text/Bidi;->length:I

    #@7e
    .line 491
    .local v7, "length":I
    move-object/from16 v0, p0

    #@80
    iget-object v9, v0, Landroid/icu/text/Bidi;->levels:[B

    #@82
    .line 493
    .local v9, "levels":[B
    const/4 v8, -0x1

    #@83
    .line 505
    .local v8, "level":B
    move-object/from16 v0, p0

    #@85
    iget v10, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@87
    .line 507
    .local v10, "limit":I
    const/4 v14, 0x0

    #@88
    .line 508
    .local v14, "runCount":I
    const/4 v4, 0x0

    #@89
    .end local v8    # "level":B
    .local v4, "i":I
    :goto_2
    if-ge v4, v10, :cond_4

    #@8b
    .line 510
    aget-byte v19, v9, v4

    #@8d
    move/from16 v0, v19

    #@8f
    if-eq v0, v8, :cond_3

    #@91
    .line 511
    add-int/lit8 v14, v14, 0x1

    #@93
    .line 512
    aget-byte v8, v9, v4

    #@95
    .line 508
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@97
    goto :goto_2

    #@98
    .line 520
    :cond_4
    const/16 v19, 0x1

    #@9a
    move/from16 v0, v19

    #@9c
    if-ne v14, v0, :cond_5

    #@9e
    if-ne v10, v7, :cond_5

    #@a0
    .line 522
    const/16 v19, 0x0

    #@a2
    aget-byte v19, v9, v19

    #@a4
    move-object/from16 v0, p0

    #@a6
    move/from16 v1, v19

    #@a8
    invoke-static {v0, v1}, Landroid/icu/text/BidiLine;->getSingleRun(Landroid/icu/text/Bidi;B)V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 527
    :cond_5
    const/16 v12, 0x7e

    #@af
    .line 528
    .local v12, "minLevel":B
    const/4 v11, 0x0

    #@b0
    .line 531
    .local v11, "maxLevel":B
    if-ge v10, v7, :cond_6

    #@b2
    .line 532
    add-int/lit8 v14, v14, 0x1

    #@b4
    .line 536
    :cond_6
    move-object/from16 v0, p0

    #@b6
    invoke-virtual {v0, v14}, Landroid/icu/text/Bidi;->getRunsMemory(I)V

    #@b9
    .line 537
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    #@bd
    move-object/from16 v16, v0

    #@bf
    .line 545
    .local v16, "runs":[Landroid/icu/text/BidiRun;
    const/4 v15, 0x0

    #@c0
    .line 548
    .restart local v15    # "runIndex":I
    const/4 v4, 0x0

    #@c1
    .line 551
    .end local v11    # "maxLevel":B
    .end local v12    # "minLevel":B
    :cond_7
    move/from16 v17, v4

    #@c3
    .line 552
    .local v17, "start":I
    aget-byte v8, v9, v4

    #@c5
    .line 553
    .local v8, "level":B
    if-ge v8, v12, :cond_8

    #@c7
    .line 554
    move v12, v8

    #@c8
    .line 556
    :cond_8
    if-le v8, v11, :cond_9

    #@ca
    .line 557
    move v11, v8

    #@cb
    .line 561
    :cond_9
    add-int/lit8 v4, v4, 0x1

    #@cd
    if-ge v4, v10, :cond_a

    #@cf
    aget-byte v19, v9, v4

    #@d1
    move/from16 v0, v19

    #@d3
    if-eq v0, v8, :cond_9

    #@d5
    .line 564
    :cond_a
    new-instance v19, Landroid/icu/text/BidiRun;

    #@d7
    sub-int v20, v4, v17

    #@d9
    move-object/from16 v0, v19

    #@db
    move/from16 v1, v17

    #@dd
    move/from16 v2, v20

    #@df
    invoke-direct {v0, v1, v2, v8}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    #@e2
    aput-object v19, v16, v15

    #@e4
    .line 565
    add-int/lit8 v15, v15, 0x1

    #@e6
    .line 566
    if-lt v4, v10, :cond_7

    #@e8
    .line 568
    if-ge v10, v7, :cond_b

    #@ea
    .line 570
    new-instance v19, Landroid/icu/text/BidiRun;

    #@ec
    sub-int v20, v7, v10

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@f2
    move/from16 v21, v0

    #@f4
    move-object/from16 v0, v19

    #@f6
    move/from16 v1, v20

    #@f8
    move/from16 v2, v21

    #@fa
    invoke-direct {v0, v10, v1, v2}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    #@fd
    aput-object v19, v16, v15

    #@ff
    .line 573
    move-object/from16 v0, p0

    #@101
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@103
    move/from16 v19, v0

    #@105
    move/from16 v0, v19

    #@107
    if-ge v0, v12, :cond_b

    #@109
    .line 574
    move-object/from16 v0, p0

    #@10b
    iget-byte v12, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@10d
    .line 579
    :cond_b
    move-object/from16 v0, v16

    #@10f
    move-object/from16 v1, p0

    #@111
    iput-object v0, v1, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@113
    .line 580
    move-object/from16 v0, p0

    #@115
    iput v14, v0, Landroid/icu/text/Bidi;->runCount:I

    #@117
    .line 582
    move-object/from16 v0, p0

    #@119
    invoke-static {v0, v12, v11}, Landroid/icu/text/BidiLine;->reorderLine(Landroid/icu/text/Bidi;BB)V

    #@11c
    .line 586
    const/4 v10, 0x0

    #@11d
    .line 587
    const/4 v4, 0x0

    #@11e
    :goto_3
    if-ge v4, v14, :cond_c

    #@120
    .line 588
    aget-object v19, v16, v4

    #@122
    aget-object v20, v16, v4

    #@124
    move-object/from16 v0, v20

    #@126
    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    #@128
    move/from16 v20, v0

    #@12a
    aget-byte v20, v9, v20

    #@12c
    move/from16 v0, v20

    #@12e
    move-object/from16 v1, v19

    #@130
    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    #@132
    .line 589
    aget-object v19, v16, v4

    #@134
    move-object/from16 v0, v19

    #@136
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@138
    move/from16 v20, v0

    #@13a
    add-int v10, v10, v20

    #@13c
    move-object/from16 v0, v19

    #@13e
    iput v10, v0, Landroid/icu/text/BidiRun;->limit:I

    #@140
    .line 587
    add-int/lit8 v4, v4, 0x1

    #@142
    goto :goto_3

    #@143
    .line 596
    :cond_c
    if-ge v15, v14, :cond_1

    #@145
    .line 597
    move-object/from16 v0, p0

    #@147
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@149
    move/from16 v19, v0

    #@14b
    and-int/lit8 v19, v19, 0x1

    #@14d
    if-eqz v19, :cond_d

    #@14f
    const/16 v18, 0x0

    #@151
    .line 598
    .local v18, "trailingRun":I
    :goto_4
    aget-object v19, v16, v18

    #@153
    move-object/from16 v0, p0

    #@155
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@157
    move/from16 v20, v0

    #@159
    move/from16 v0, v20

    #@15b
    move-object/from16 v1, v19

    #@15d
    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    #@15f
    goto/16 :goto_0

    #@161
    .line 597
    .end local v18    # "trailingRun":I
    :cond_d
    move/from16 v18, v15

    #@163
    .restart local v18    # "trailingRun":I
    goto :goto_4

    #@164
    .line 615
    .end local v4    # "i":I
    .end local v7    # "length":I
    .end local v8    # "level":B
    .end local v9    # "levels":[B
    .end local v10    # "limit":I
    .end local v14    # "runCount":I
    .end local v15    # "runIndex":I
    .end local v16    # "runs":[Landroid/icu/text/BidiRun;
    .end local v17    # "start":I
    .end local v18    # "trailingRun":I
    :cond_e
    move-object/from16 v0, p0

    #@166
    iget v0, v0, Landroid/icu/text/Bidi;->controlCount:I

    #@168
    move/from16 v19, v0

    #@16a
    if-lez v19, :cond_10

    #@16c
    .line 618
    const/4 v5, 0x0

    #@16d
    .local v5, "ic":I
    :goto_5
    move-object/from16 v0, p0

    #@16f
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@171
    move/from16 v19, v0

    #@173
    move/from16 v0, v19

    #@175
    if-ge v5, v0, :cond_10

    #@177
    .line 619
    move-object/from16 v0, p0

    #@179
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@17b
    move-object/from16 v19, v0

    #@17d
    aget-char v3, v19, v5

    #@17f
    .line 620
    .local v3, "c":C
    invoke-static {v3}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@182
    move-result v19

    #@183
    if-eqz v19, :cond_f

    #@185
    .line 621
    move-object/from16 v0, p0

    #@187
    invoke-static {v0, v5}, Landroid/icu/text/BidiLine;->getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I

    #@18a
    move-result v15

    #@18b
    .line 622
    .restart local v15    # "runIndex":I
    move-object/from16 v0, p0

    #@18d
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@18f
    move-object/from16 v19, v0

    #@191
    aget-object v19, v19, v15

    #@193
    move-object/from16 v0, v19

    #@195
    iget v0, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@197
    move/from16 v20, v0

    #@199
    add-int/lit8 v20, v20, -0x1

    #@19b
    move/from16 v0, v20

    #@19d
    move-object/from16 v1, v19

    #@19f
    iput v0, v1, Landroid/icu/text/BidiRun;->insertRemove:I

    #@1a1
    .line 618
    .end local v15    # "runIndex":I
    :cond_f
    add-int/lit8 v5, v5, 0x1

    #@1a3
    goto :goto_5

    #@1a4
    .line 476
    .end local v3    # "c":C
    .end local v5    # "ic":I
    :cond_10
    return-void
.end method

.method static getSingleRun(Landroid/icu/text/Bidi;B)V
    .locals 4
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "level"    # B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 321
    iget-object v0, p0, Landroid/icu/text/Bidi;->simpleRuns:[Landroid/icu/text/BidiRun;

    #@3
    iput-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@5
    .line 322
    const/4 v0, 0x1

    #@6
    iput v0, p0, Landroid/icu/text/Bidi;->runCount:I

    #@8
    .line 325
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@a
    new-instance v1, Landroid/icu/text/BidiRun;

    #@c
    iget v2, p0, Landroid/icu/text/Bidi;->length:I

    #@e
    invoke-direct {v1, v3, v2, p1}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    #@11
    aput-object v1, v0, v3

    #@13
    .line 319
    return-void
.end method

.method static getVisualIndex(Landroid/icu/text/Bidi;I)I
    .locals 14
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "logicalIndex"    # I

    #@0
    .prologue
    .line 807
    const/4 v11, -0x1

    #@1
    .line 810
    .local v11, "visualIndex":I
    iget-byte v13, p0, Landroid/icu/text/Bidi;->direction:B

    #@3
    packed-switch v13, :pswitch_data_0

    #@6
    .line 818
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@9
    .line 819
    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@b
    .line 820
    .local v8, "runs":[Landroid/icu/text/BidiRun;
    const/4 v12, 0x0

    #@c
    .line 823
    .local v12, "visualStart":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    iget v13, p0, Landroid/icu/text/Bidi;->runCount:I

    #@f
    if-ge v1, v13, :cond_0

    #@11
    .line 824
    aget-object v13, v8, v1

    #@13
    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    #@15
    sub-int v4, v13, v12

    #@17
    .line 825
    .local v4, "length":I
    aget-object v13, v8, v1

    #@19
    iget v13, v13, Landroid/icu/text/BidiRun;->start:I

    #@1b
    sub-int v7, p1, v13

    #@1d
    .line 826
    .local v7, "offset":I
    if-ltz v7, :cond_4

    #@1f
    if-ge v7, v4, :cond_4

    #@21
    .line 827
    aget-object v13, v8, v1

    #@23
    invoke-virtual {v13}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@26
    move-result v13

    #@27
    if-eqz v13, :cond_3

    #@29
    .line 829
    add-int v11, v12, v7

    #@2b
    .line 838
    .end local v4    # "length":I
    .end local v7    # "offset":I
    :cond_0
    :goto_1
    iget v13, p0, Landroid/icu/text/Bidi;->runCount:I

    #@2d
    if-lt v1, v13, :cond_1

    #@2f
    .line 839
    const/4 v13, -0x1

    #@30
    return v13

    #@31
    .line 812
    .end local v1    # "i":I
    .end local v8    # "runs":[Landroid/icu/text/BidiRun;
    .end local v12    # "visualStart":I
    :pswitch_0
    move v11, p1

    #@32
    .line 843
    :cond_1
    :goto_2
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@34
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@36
    if-lez v13, :cond_7

    #@38
    .line 845
    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@3a
    .line 847
    .restart local v8    # "runs":[Landroid/icu/text/BidiRun;
    const/4 v12, 0x0

    #@3b
    .restart local v12    # "visualStart":I
    const/4 v6, 0x0

    #@3c
    .line 848
    .local v6, "markFound":I
    const/4 v1, 0x0

    #@3d
    .line 849
    .restart local v1    # "i":I
    :goto_3
    aget-object v13, v8, v1

    #@3f
    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    #@41
    sub-int v4, v13, v12

    #@43
    .line 850
    .restart local v4    # "length":I
    aget-object v13, v8, v1

    #@45
    iget v2, v13, Landroid/icu/text/BidiRun;->insertRemove:I

    #@47
    .line 851
    .local v2, "insertRemove":I
    and-int/lit8 v13, v2, 0x5

    #@49
    if-lez v13, :cond_2

    #@4b
    .line 852
    add-int/lit8 v6, v6, 0x1

    #@4d
    .line 855
    :cond_2
    aget-object v13, v8, v1

    #@4f
    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    #@51
    if-ge v11, v13, :cond_5

    #@53
    .line 856
    add-int v13, v11, v6

    #@55
    return v13

    #@56
    .line 815
    .end local v1    # "i":I
    .end local v2    # "insertRemove":I
    .end local v4    # "length":I
    .end local v6    # "markFound":I
    .end local v8    # "runs":[Landroid/icu/text/BidiRun;
    .end local v12    # "visualStart":I
    :pswitch_1
    iget v13, p0, Landroid/icu/text/Bidi;->length:I

    #@58
    sub-int/2addr v13, p1

    #@59
    add-int/lit8 v11, v13, -0x1

    #@5b
    .line 816
    goto :goto_2

    #@5c
    .line 832
    .restart local v1    # "i":I
    .restart local v4    # "length":I
    .restart local v7    # "offset":I
    .restart local v8    # "runs":[Landroid/icu/text/BidiRun;
    .restart local v12    # "visualStart":I
    :cond_3
    add-int v13, v12, v4

    #@5e
    sub-int/2addr v13, v7

    #@5f
    add-int/lit8 v11, v13, -0x1

    #@61
    goto :goto_1

    #@62
    .line 836
    :cond_4
    add-int/2addr v12, v4

    #@63
    .line 823
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_0

    #@66
    .line 858
    .end local v7    # "offset":I
    .restart local v2    # "insertRemove":I
    .restart local v6    # "markFound":I
    :cond_5
    and-int/lit8 v13, v2, 0xa

    #@68
    if-lez v13, :cond_6

    #@6a
    .line 859
    add-int/lit8 v6, v6, 0x1

    #@6c
    .line 848
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@6e
    add-int/2addr v12, v4

    #@6f
    goto :goto_3

    #@70
    .line 863
    .end local v1    # "i":I
    .end local v2    # "insertRemove":I
    .end local v4    # "length":I
    .end local v6    # "markFound":I
    .end local v8    # "runs":[Landroid/icu/text/BidiRun;
    .end local v12    # "visualStart":I
    :cond_7
    iget v13, p0, Landroid/icu/text/Bidi;->controlCount:I

    #@72
    if-lez v13, :cond_e

    #@74
    .line 865
    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@76
    .line 867
    .restart local v8    # "runs":[Landroid/icu/text/BidiRun;
    const/4 v12, 0x0

    #@77
    .restart local v12    # "visualStart":I
    const/4 v0, 0x0

    #@78
    .line 868
    .local v0, "controlFound":I
    iget-object v13, p0, Landroid/icu/text/Bidi;->text:[C

    #@7a
    aget-char v10, v13, p1

    #@7c
    .line 870
    .local v10, "uchar":C
    invoke-static {v10}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@7f
    move-result v13

    #@80
    if-eqz v13, :cond_8

    #@82
    .line 871
    const/4 v13, -0x1

    #@83
    return v13

    #@84
    .line 874
    :cond_8
    const/4 v1, 0x0

    #@85
    .line 875
    .restart local v1    # "i":I
    :goto_4
    aget-object v13, v8, v1

    #@87
    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    #@89
    sub-int v4, v13, v12

    #@8b
    .line 876
    .restart local v4    # "length":I
    aget-object v13, v8, v1

    #@8d
    iget v2, v13, Landroid/icu/text/BidiRun;->insertRemove:I

    #@8f
    .line 878
    .restart local v2    # "insertRemove":I
    aget-object v13, v8, v1

    #@91
    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    #@93
    if-lt v11, v13, :cond_9

    #@95
    .line 879
    sub-int/2addr v0, v2

    #@96
    .line 874
    add-int/lit8 v1, v1, 0x1

    #@98
    add-int/2addr v12, v4

    #@99
    goto :goto_4

    #@9a
    .line 883
    :cond_9
    if-nez v2, :cond_a

    #@9c
    .line 884
    sub-int v13, v11, v0

    #@9e
    return v13

    #@9f
    .line 886
    :cond_a
    aget-object v13, v8, v1

    #@a1
    invoke-virtual {v13}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@a4
    move-result v13

    #@a5
    if-eqz v13, :cond_c

    #@a7
    .line 888
    aget-object v13, v8, v1

    #@a9
    iget v9, v13, Landroid/icu/text/BidiRun;->start:I

    #@ab
    .line 889
    .local v9, "start":I
    move v5, p1

    #@ac
    .line 895
    .local v5, "limit":I
    :goto_5
    move v3, v9

    #@ad
    .local v3, "j":I
    :goto_6
    if-ge v3, v5, :cond_d

    #@af
    .line 896
    iget-object v13, p0, Landroid/icu/text/Bidi;->text:[C

    #@b1
    aget-char v10, v13, v3

    #@b3
    .line 897
    invoke-static {v10}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@b6
    move-result v13

    #@b7
    if-eqz v13, :cond_b

    #@b9
    .line 898
    add-int/lit8 v0, v0, 0x1

    #@bb
    .line 895
    :cond_b
    add-int/lit8 v3, v3, 0x1

    #@bd
    goto :goto_6

    #@be
    .line 892
    .end local v3    # "j":I
    .end local v5    # "limit":I
    .end local v9    # "start":I
    :cond_c
    add-int/lit8 v9, p1, 0x1

    #@c0
    .line 893
    .restart local v9    # "start":I
    aget-object v13, v8, v1

    #@c2
    iget v13, v13, Landroid/icu/text/BidiRun;->start:I

    #@c4
    add-int v5, v13, v4

    #@c6
    .restart local v5    # "limit":I
    goto :goto_5

    #@c7
    .line 901
    .restart local v3    # "j":I
    :cond_d
    sub-int v13, v11, v0

    #@c9
    return v13

    #@ca
    .line 905
    .end local v0    # "controlFound":I
    .end local v1    # "i":I
    .end local v2    # "insertRemove":I
    .end local v3    # "j":I
    .end local v4    # "length":I
    .end local v5    # "limit":I
    .end local v8    # "runs":[Landroid/icu/text/BidiRun;
    .end local v9    # "start":I
    .end local v10    # "uchar":C
    .end local v12    # "visualStart":I
    :cond_e
    return v11

    #@cb
    .line 810
    nop

    #@cc
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getVisualMap(Landroid/icu/text/Bidi;)[I
    .locals 29
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    #@0
    .prologue
    .line 1109
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@4
    move-object/from16 v22, v0

    #@6
    .line 1111
    .local v22, "runs":[Landroid/icu/text/BidiRun;
    move-object/from16 v0, p0

    #@8
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@a
    move/from16 v26, v0

    #@c
    move-object/from16 v0, p0

    #@e
    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@10
    move/from16 v27, v0

    #@12
    move/from16 v0, v26

    #@14
    move/from16 v1, v27

    #@16
    if-le v0, v1, :cond_0

    #@18
    move-object/from16 v0, p0

    #@1a
    iget v4, v0, Landroid/icu/text/Bidi;->length:I

    #@1c
    .line 1113
    .local v4, "allocLength":I
    :goto_0
    new-array v9, v4, [I

    #@1e
    .line 1115
    .local v9, "indexMap":[I
    const/16 v25, 0x0

    #@20
    .line 1116
    .local v25, "visualStart":I
    const/4 v7, 0x0

    #@21
    .line 1117
    .local v7, "idx":I
    const/4 v11, 0x0

    #@22
    .local v11, "j":I
    :goto_1
    move-object/from16 v0, p0

    #@24
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@26
    move/from16 v26, v0

    #@28
    move/from16 v0, v26

    #@2a
    if-ge v11, v0, :cond_3

    #@2c
    .line 1118
    aget-object v26, v22, v11

    #@2e
    move-object/from16 v0, v26

    #@30
    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    #@32
    move/from16 v16, v0

    #@34
    .line 1119
    .local v16, "logicalStart":I
    aget-object v26, v22, v11

    #@36
    move-object/from16 v0, v26

    #@38
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@3a
    move/from16 v24, v0

    #@3c
    .line 1120
    .local v24, "visualLimit":I
    aget-object v26, v22, v11

    #@3e
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@41
    move-result v26

    #@42
    if-eqz v26, :cond_1

    #@44
    .line 1122
    :goto_2
    add-int/lit8 v8, v7, 0x1

    #@46
    .end local v7    # "idx":I
    .local v8, "idx":I
    add-int/lit8 v17, v16, 0x1

    #@48
    .end local v16    # "logicalStart":I
    .local v17, "logicalStart":I
    aput v16, v9, v7

    #@4a
    .line 1123
    add-int/lit8 v25, v25, 0x1

    #@4c
    move/from16 v0, v25

    #@4e
    move/from16 v1, v24

    #@50
    if-ge v0, v1, :cond_14

    #@52
    move v7, v8

    #@53
    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    move/from16 v16, v17

    #@55
    .end local v17    # "logicalStart":I
    .restart local v16    # "logicalStart":I
    goto :goto_2

    #@56
    .line 1112
    .end local v4    # "allocLength":I
    .end local v7    # "idx":I
    .end local v9    # "indexMap":[I
    .end local v11    # "j":I
    .end local v16    # "logicalStart":I
    .end local v24    # "visualLimit":I
    .end local v25    # "visualStart":I
    :cond_0
    move-object/from16 v0, p0

    #@58
    iget v4, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@5a
    .restart local v4    # "allocLength":I
    goto :goto_0

    #@5b
    .line 1125
    .restart local v7    # "idx":I
    .restart local v9    # "indexMap":[I
    .restart local v11    # "j":I
    .restart local v16    # "logicalStart":I
    .restart local v24    # "visualLimit":I
    .restart local v25    # "visualStart":I
    :cond_1
    sub-int v26, v24, v25

    #@5d
    add-int v16, v16, v26

    #@5f
    .line 1127
    :goto_3
    add-int/lit8 v8, v7, 0x1

    #@61
    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    add-int/lit8 v16, v16, -0x1

    #@63
    aput v16, v9, v7

    #@65
    .line 1128
    add-int/lit8 v25, v25, 0x1

    #@67
    move/from16 v0, v25

    #@69
    move/from16 v1, v24

    #@6b
    if-ge v0, v1, :cond_2

    #@6d
    move v7, v8

    #@6e
    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    goto :goto_3

    #@6f
    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    :cond_2
    move v7, v8

    #@70
    .line 1117
    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    #@72
    goto :goto_1

    #@73
    .line 1133
    .end local v16    # "logicalStart":I
    .end local v24    # "visualLimit":I
    :cond_3
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@77
    move-object/from16 v26, v0

    #@79
    move-object/from16 v0, v26

    #@7b
    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@7d
    move/from16 v26, v0

    #@7f
    if-lez v26, :cond_b

    #@81
    .line 1134
    const/16 v19, 0x0

    #@83
    .local v19, "markFound":I
    move-object/from16 v0, p0

    #@85
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@87
    move/from16 v21, v0

    #@89
    .line 1136
    .local v21, "runCount":I
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@8d
    move-object/from16 v22, v0

    #@8f
    .line 1138
    const/4 v6, 0x0

    #@90
    .local v6, "i":I
    :goto_5
    move/from16 v0, v21

    #@92
    if-ge v6, v0, :cond_6

    #@94
    .line 1139
    aget-object v26, v22, v6

    #@96
    move-object/from16 v0, v26

    #@98
    iget v10, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@9a
    .line 1140
    .local v10, "insertRemove":I
    and-int/lit8 v26, v10, 0x5

    #@9c
    if-lez v26, :cond_4

    #@9e
    .line 1141
    add-int/lit8 v19, v19, 0x1

    #@a0
    .line 1143
    :cond_4
    and-int/lit8 v26, v10, 0xa

    #@a2
    if-lez v26, :cond_5

    #@a4
    .line 1144
    add-int/lit8 v19, v19, 0x1

    #@a6
    .line 1138
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@a8
    goto :goto_5

    #@a9
    .line 1148
    .end local v10    # "insertRemove":I
    :cond_6
    move-object/from16 v0, p0

    #@ab
    iget v12, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@ad
    .line 1149
    .local v12, "k":I
    add-int/lit8 v6, v21, -0x1

    #@af
    :goto_6
    if-ltz v6, :cond_10

    #@b1
    if-lez v19, :cond_10

    #@b3
    .line 1150
    aget-object v26, v22, v6

    #@b5
    move-object/from16 v0, v26

    #@b7
    iget v10, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@b9
    .line 1151
    .restart local v10    # "insertRemove":I
    and-int/lit8 v26, v10, 0xa

    #@bb
    if-lez v26, :cond_7

    #@bd
    .line 1152
    add-int/lit8 v12, v12, -0x1

    #@bf
    const/16 v26, -0x1

    #@c1
    aput v26, v9, v12

    #@c3
    .line 1153
    add-int/lit8 v19, v19, -0x1

    #@c5
    .line 1155
    :cond_7
    if-lez v6, :cond_8

    #@c7
    add-int/lit8 v26, v6, -0x1

    #@c9
    aget-object v26, v22, v26

    #@cb
    move-object/from16 v0, v26

    #@cd
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@cf
    move/from16 v25, v0

    #@d1
    .line 1156
    :goto_7
    aget-object v26, v22, v6

    #@d3
    move-object/from16 v0, v26

    #@d5
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@d7
    move/from16 v26, v0

    #@d9
    add-int/lit8 v11, v26, -0x1

    #@db
    :goto_8
    move/from16 v0, v25

    #@dd
    if-lt v11, v0, :cond_9

    #@df
    if-lez v19, :cond_9

    #@e1
    .line 1157
    add-int/lit8 v12, v12, -0x1

    #@e3
    aget v26, v9, v11

    #@e5
    aput v26, v9, v12

    #@e7
    .line 1156
    add-int/lit8 v11, v11, -0x1

    #@e9
    goto :goto_8

    #@ea
    .line 1155
    :cond_8
    const/16 v25, 0x0

    #@ec
    goto :goto_7

    #@ed
    .line 1159
    :cond_9
    and-int/lit8 v26, v10, 0x5

    #@ef
    if-lez v26, :cond_a

    #@f1
    .line 1160
    add-int/lit8 v12, v12, -0x1

    #@f3
    const/16 v26, -0x1

    #@f5
    aput v26, v9, v12

    #@f7
    .line 1161
    add-int/lit8 v19, v19, -0x1

    #@f9
    .line 1149
    :cond_a
    add-int/lit8 v6, v6, -0x1

    #@fb
    goto :goto_6

    #@fc
    .line 1165
    .end local v6    # "i":I
    .end local v10    # "insertRemove":I
    .end local v12    # "k":I
    .end local v19    # "markFound":I
    .end local v21    # "runCount":I
    :cond_b
    move-object/from16 v0, p0

    #@fe
    iget v0, v0, Landroid/icu/text/Bidi;->controlCount:I

    #@100
    move/from16 v26, v0

    #@102
    if-lez v26, :cond_10

    #@104
    .line 1166
    move-object/from16 v0, p0

    #@106
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@108
    move/from16 v21, v0

    #@10a
    .line 1170
    .restart local v21    # "runCount":I
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@10e
    move-object/from16 v22, v0

    #@110
    .line 1171
    const/16 v25, 0x0

    #@112
    .line 1173
    const/4 v12, 0x0

    #@113
    .line 1174
    .restart local v12    # "k":I
    const/4 v6, 0x0

    #@114
    .restart local v6    # "i":I
    :goto_9
    move/from16 v0, v21

    #@116
    if-ge v6, v0, :cond_10

    #@118
    .line 1175
    aget-object v26, v22, v6

    #@11a
    move-object/from16 v0, v26

    #@11c
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@11e
    move/from16 v26, v0

    #@120
    sub-int v14, v26, v25

    #@122
    .line 1176
    .local v14, "length":I
    aget-object v26, v22, v6

    #@124
    move-object/from16 v0, v26

    #@126
    iget v10, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@128
    .line 1178
    .restart local v10    # "insertRemove":I
    if-nez v10, :cond_c

    #@12a
    move/from16 v0, v25

    #@12c
    if-ne v12, v0, :cond_c

    #@12e
    .line 1179
    add-int/2addr v12, v14

    #@12f
    .line 1174
    :goto_a
    add-int/lit8 v6, v6, 0x1

    #@131
    add-int v25, v25, v14

    #@133
    goto :goto_9

    #@134
    .line 1183
    :cond_c
    if-nez v10, :cond_e

    #@136
    .line 1184
    aget-object v26, v22, v6

    #@138
    move-object/from16 v0, v26

    #@13a
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@13c
    move/from16 v24, v0

    #@13e
    .line 1185
    .restart local v24    # "visualLimit":I
    move/from16 v11, v25

    #@140
    move v13, v12

    #@141
    .end local v12    # "k":I
    .local v13, "k":I
    :goto_b
    move/from16 v0, v24

    #@143
    if-ge v11, v0, :cond_d

    #@145
    .line 1186
    add-int/lit8 v12, v13, 0x1

    #@147
    .end local v13    # "k":I
    .restart local v12    # "k":I
    aget v26, v9, v11

    #@149
    aput v26, v9, v13

    #@14b
    .line 1185
    add-int/lit8 v11, v11, 0x1

    #@14d
    move v13, v12

    #@14e
    .end local v12    # "k":I
    .restart local v13    # "k":I
    goto :goto_b

    #@14f
    :cond_d
    move v12, v13

    #@150
    .line 1188
    .end local v13    # "k":I
    .restart local v12    # "k":I
    goto :goto_a

    #@151
    .line 1190
    .end local v24    # "visualLimit":I
    :cond_e
    aget-object v26, v22, v6

    #@153
    move-object/from16 v0, v26

    #@155
    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    #@157
    move/from16 v16, v0

    #@159
    .line 1191
    .restart local v16    # "logicalStart":I
    aget-object v26, v22, v6

    #@15b
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@15e
    move-result v5

    #@15f
    .line 1192
    .local v5, "evenRun":Z
    add-int v26, v16, v14

    #@161
    add-int/lit8 v15, v26, -0x1

    #@163
    .line 1193
    .local v15, "logicalEnd":I
    const/4 v11, 0x0

    #@164
    move v13, v12

    #@165
    .end local v12    # "k":I
    .restart local v13    # "k":I
    :goto_c
    if-ge v11, v14, :cond_13

    #@167
    .line 1194
    if-eqz v5, :cond_f

    #@169
    add-int v18, v16, v11

    #@16b
    .line 1195
    .local v18, "m":I
    :goto_d
    move-object/from16 v0, p0

    #@16d
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@16f
    move-object/from16 v26, v0

    #@171
    aget-char v23, v26, v18

    #@173
    .line 1196
    .local v23, "uchar":C
    invoke-static/range {v23 .. v23}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@176
    move-result v26

    #@177
    if-nez v26, :cond_12

    #@179
    .line 1197
    add-int/lit8 v12, v13, 0x1

    #@17b
    .end local v13    # "k":I
    .restart local v12    # "k":I
    aput v18, v9, v13

    #@17d
    .line 1193
    :goto_e
    add-int/lit8 v11, v11, 0x1

    #@17f
    move v13, v12

    #@180
    .end local v12    # "k":I
    .restart local v13    # "k":I
    goto :goto_c

    #@181
    .line 1194
    .end local v18    # "m":I
    .end local v23    # "uchar":C
    :cond_f
    sub-int v18, v15, v11

    #@183
    .restart local v18    # "m":I
    goto :goto_d

    #@184
    .line 1202
    .end local v5    # "evenRun":Z
    .end local v6    # "i":I
    .end local v10    # "insertRemove":I
    .end local v13    # "k":I
    .end local v14    # "length":I
    .end local v15    # "logicalEnd":I
    .end local v16    # "logicalStart":I
    .end local v18    # "m":I
    .end local v21    # "runCount":I
    :cond_10
    move-object/from16 v0, p0

    #@186
    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@188
    move/from16 v26, v0

    #@18a
    move/from16 v0, v26

    #@18c
    if-ne v4, v0, :cond_11

    #@18e
    .line 1203
    return-object v9

    #@18f
    .line 1205
    :cond_11
    move-object/from16 v0, p0

    #@191
    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@193
    move/from16 v26, v0

    #@195
    move/from16 v0, v26

    #@197
    new-array v0, v0, [I

    #@199
    move-object/from16 v20, v0

    #@19b
    .line 1206
    .local v20, "newMap":[I
    move-object/from16 v0, p0

    #@19d
    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@19f
    move/from16 v26, v0

    #@1a1
    const/16 v27, 0x0

    #@1a3
    const/16 v28, 0x0

    #@1a5
    move/from16 v0, v27

    #@1a7
    move-object/from16 v1, v20

    #@1a9
    move/from16 v2, v28

    #@1ab
    move/from16 v3, v26

    #@1ad
    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@1b0
    .line 1207
    return-object v20

    #@1b1
    .end local v20    # "newMap":[I
    .restart local v5    # "evenRun":Z
    .restart local v6    # "i":I
    .restart local v10    # "insertRemove":I
    .restart local v13    # "k":I
    .restart local v14    # "length":I
    .restart local v15    # "logicalEnd":I
    .restart local v16    # "logicalStart":I
    .restart local v18    # "m":I
    .restart local v21    # "runCount":I
    .restart local v23    # "uchar":C
    :cond_12
    move v12, v13

    #@1b2
    .end local v13    # "k":I
    .restart local v12    # "k":I
    goto :goto_e

    #@1b3
    .end local v12    # "k":I
    .end local v18    # "m":I
    .end local v23    # "uchar":C
    .restart local v13    # "k":I
    :cond_13
    move v12, v13

    #@1b4
    .end local v13    # "k":I
    .restart local v12    # "k":I
    goto/16 :goto_a

    #@1b6
    .end local v5    # "evenRun":Z
    .end local v6    # "i":I
    .end local v7    # "idx":I
    .end local v10    # "insertRemove":I
    .end local v12    # "k":I
    .end local v14    # "length":I
    .end local v15    # "logicalEnd":I
    .end local v16    # "logicalStart":I
    .end local v21    # "runCount":I
    .restart local v8    # "idx":I
    .restart local v17    # "logicalStart":I
    .restart local v24    # "visualLimit":I
    :cond_14
    move v7, v8

    #@1b7
    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    move/from16 v16, v17

    #@1b9
    .end local v17    # "logicalStart":I
    .restart local v16    # "logicalStart":I
    goto/16 :goto_4
.end method

.method static getVisualRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;
    .locals 6
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "runIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 304
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@3
    aget-object v3, v3, p1

    #@5
    iget v2, v3, Landroid/icu/text/BidiRun;->start:I

    #@7
    .line 306
    .local v2, "start":I
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@9
    aget-object v3, v3, p1

    #@b
    iget-byte v0, v3, Landroid/icu/text/BidiRun;->level:B

    #@d
    .line 308
    .local v0, "level":B
    if-lez p1, :cond_0

    #@f
    .line 310
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@11
    aget-object v3, v3, p1

    #@13
    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    #@15
    .line 309
    add-int/2addr v3, v2

    #@16
    .line 311
    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@18
    add-int/lit8 v5, p1, -0x1

    #@1a
    aget-object v4, v4, v5

    #@1c
    iget v4, v4, Landroid/icu/text/BidiRun;->limit:I

    #@1e
    .line 309
    sub-int v1, v3, v4

    #@20
    .line 315
    .local v1, "limit":I
    :goto_0
    new-instance v3, Landroid/icu/text/BidiRun;

    #@22
    invoke-direct {v3, v2, v1, v0}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    #@25
    return-object v3

    #@26
    .line 313
    .end local v1    # "limit":I
    :cond_0
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@28
    aget-object v3, v3, v4

    #@2a
    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    #@2c
    add-int v1, v2, v3

    #@2e
    .restart local v1    # "limit":I
    goto :goto_0
.end method

.method static invertMap([I)[I
    .locals 7
    .param p0, "srcMap"    # [I

    #@0
    .prologue
    .line 1212
    array-length v5, p0

    #@1
    .line 1213
    .local v5, "srcLength":I
    const/4 v1, -0x1

    #@2
    .local v1, "destLength":I
    const/4 v0, 0x0

    #@3
    .line 1216
    .local v0, "count":I
    const/4 v3, 0x0

    #@4
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    #@6
    .line 1217
    aget v4, p0, v3

    #@8
    .line 1218
    .local v4, "srcEntry":I
    if-le v4, v1, :cond_0

    #@a
    .line 1219
    move v1, v4

    #@b
    .line 1221
    :cond_0
    if-ltz v4, :cond_1

    #@d
    .line 1222
    add-int/lit8 v0, v0, 0x1

    #@f
    .line 1216
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1225
    .end local v4    # "srcEntry":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@14
    .line 1226
    new-array v2, v1, [I

    #@16
    .line 1227
    .local v2, "destMap":[I
    if-ge v0, v1, :cond_3

    #@18
    .line 1229
    const/4 v6, -0x1

    #@19
    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    #@1c
    .line 1231
    :cond_3
    const/4 v3, 0x0

    #@1d
    :goto_1
    if-ge v3, v5, :cond_5

    #@1f
    .line 1232
    aget v4, p0, v3

    #@21
    .line 1233
    .restart local v4    # "srcEntry":I
    if-ltz v4, :cond_4

    #@23
    .line 1234
    aput v3, v2, v4

    #@25
    .line 1231
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_1

    #@28
    .line 1237
    .end local v4    # "srcEntry":I
    :cond_5
    return-object v2
.end method

.method static prepareReorder([B[B[B)[I
    .locals 8
    .param p0, "levels"    # [B
    .param p1, "pMinLevel"    # [B
    .param p2, "pMaxLevel"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 633
    if-eqz p0, :cond_0

    #@4
    array-length v5, p0

    #@5
    if-gtz v5, :cond_1

    #@7
    .line 634
    :cond_0
    return-object v7

    #@8
    .line 638
    :cond_1
    const/16 v3, 0x7e

    #@a
    .line 639
    .local v3, "minLevel":B
    const/4 v2, 0x0

    #@b
    .line 640
    .local v2, "maxLevel":B
    array-length v4, p0

    #@c
    .end local v2    # "maxLevel":B
    .end local v3    # "minLevel":B
    .local v4, "start":I
    :cond_2
    :goto_0
    if-lez v4, :cond_6

    #@e
    .line 641
    add-int/lit8 v4, v4, -0x1

    #@10
    aget-byte v1, p0, v4

    #@12
    .line 642
    .local v1, "level":B
    if-gez v1, :cond_3

    #@14
    .line 643
    return-object v7

    #@15
    .line 645
    :cond_3
    const/16 v5, 0x7e

    #@17
    if-le v1, v5, :cond_4

    #@19
    .line 646
    return-object v7

    #@1a
    .line 648
    :cond_4
    if-ge v1, v3, :cond_5

    #@1c
    .line 649
    move v3, v1

    #@1d
    .line 651
    :cond_5
    if-le v1, v2, :cond_2

    #@1f
    .line 652
    move v2, v1

    #@20
    .local v2, "maxLevel":B
    goto :goto_0

    #@21
    .line 655
    .end local v1    # "level":B
    .end local v2    # "maxLevel":B
    :cond_6
    aput-byte v3, p1, v6

    #@23
    .line 656
    aput-byte v2, p2, v6

    #@25
    .line 659
    array-length v5, p0

    #@26
    new-array v0, v5, [I

    #@28
    .line 660
    .local v0, "indexMap":[I
    array-length v4, p0

    #@29
    :goto_1
    if-lez v4, :cond_7

    #@2b
    .line 661
    add-int/lit8 v4, v4, -0x1

    #@2d
    .line 662
    aput v4, v0, v4

    #@2f
    goto :goto_1

    #@30
    .line 665
    :cond_7
    return-object v0
.end method

.method private static reorderLine(Landroid/icu/text/Bidi;BB)V
    .locals 9
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "minLevel"    # B
    .param p2, "maxLevel"    # B

    #@0
    .prologue
    .line 364
    or-int/lit8 v7, p1, 0x1

    #@2
    if-gt p2, v7, :cond_0

    #@4
    .line 365
    return-void

    #@5
    .line 378
    :cond_0
    add-int/lit8 v7, p1, 0x1

    #@7
    int-to-byte p1, v7

    #@8
    .line 380
    iget-object v5, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@a
    .line 381
    .local v5, "runs":[Landroid/icu/text/BidiRun;
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    #@c
    .line 382
    .local v2, "levels":[B
    iget v4, p0, Landroid/icu/text/Bidi;->runCount:I

    #@e
    .line 385
    .local v4, "runCount":I
    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@10
    iget v8, p0, Landroid/icu/text/Bidi;->length:I

    #@12
    if-ge v7, v8, :cond_1

    #@14
    .line 386
    add-int/lit8 v4, v4, -0x1

    #@16
    .line 389
    :cond_1
    add-int/lit8 v7, p2, -0x1

    #@18
    int-to-byte p2, v7

    #@19
    if-lt p2, p1, :cond_6

    #@1b
    .line 390
    const/4 v1, 0x0

    #@1c
    .line 396
    .local v1, "firstRun":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@1e
    aget-object v7, v5, v1

    #@20
    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    #@22
    aget-byte v7, v2, v7

    #@24
    if-ge v7, p2, :cond_2

    #@26
    .line 397
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 399
    :cond_2
    if-ge v1, v4, :cond_1

    #@2b
    .line 404
    move v3, v1

    #@2c
    .local v3, "limitRun":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@2e
    if-ge v3, v4, :cond_4

    #@30
    .line 405
    aget-object v7, v5, v3

    #@32
    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    #@34
    aget-byte v7, v2, v7

    #@36
    if-ge v7, p2, :cond_3

    #@38
    .line 408
    :cond_4
    add-int/lit8 v0, v3, -0x1

    #@3a
    .line 409
    .local v0, "endRun":I
    :goto_1
    if-ge v1, v0, :cond_5

    #@3c
    .line 410
    aget-object v6, v5, v1

    #@3e
    .line 411
    .local v6, "tempRun":Landroid/icu/text/BidiRun;
    aget-object v7, v5, v0

    #@40
    aput-object v7, v5, v1

    #@42
    .line 412
    aput-object v6, v5, v0

    #@44
    .line 413
    add-int/lit8 v1, v1, 0x1

    #@46
    .line 414
    add-int/lit8 v0, v0, -0x1

    #@48
    goto :goto_1

    #@49
    .line 417
    .end local v6    # "tempRun":Landroid/icu/text/BidiRun;
    :cond_5
    if-eq v3, v4, :cond_1

    #@4b
    .line 420
    add-int/lit8 v1, v3, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 426
    .end local v0    # "endRun":I
    .end local v1    # "firstRun":I
    .end local v3    # "limitRun":I
    :cond_6
    and-int/lit8 v7, p1, 0x1

    #@50
    if-nez v7, :cond_8

    #@52
    .line 427
    const/4 v1, 0x0

    #@53
    .line 430
    .restart local v1    # "firstRun":I
    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@55
    iget v8, p0, Landroid/icu/text/Bidi;->length:I

    #@57
    if-ne v7, v8, :cond_7

    #@59
    .line 431
    add-int/lit8 v4, v4, -0x1

    #@5b
    .line 435
    :cond_7
    :goto_2
    if-ge v1, v4, :cond_8

    #@5d
    .line 436
    aget-object v6, v5, v1

    #@5f
    .line 437
    .restart local v6    # "tempRun":Landroid/icu/text/BidiRun;
    aget-object v7, v5, v4

    #@61
    aput-object v7, v5, v1

    #@63
    .line 438
    aput-object v6, v5, v4

    #@65
    .line 439
    add-int/lit8 v1, v1, 0x1

    #@67
    .line 440
    add-int/lit8 v4, v4, -0x1

    #@69
    goto :goto_2

    #@6a
    .line 361
    .end local v1    # "firstRun":I
    .end local v6    # "tempRun":Landroid/icu/text/BidiRun;
    :cond_8
    return-void
.end method

.method static reorderLogical([B)[I
    .locals 11
    .param p0, "levels"    # [B

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 670
    new-array v1, v9, [B

    #@5
    .line 671
    .local v1, "aMinLevel":[B
    new-array v0, v9, [B

    #@7
    .line 674
    .local v0, "aMaxLevel":[B
    invoke-static {p0, v1, v0}, Landroid/icu/text/BidiLine;->prepareReorder([B[B[B)[I

    #@a
    move-result-object v2

    #@b
    .line 675
    .local v2, "indexMap":[I
    if-nez v2, :cond_0

    #@d
    .line 676
    return-object v10

    #@e
    .line 679
    :cond_0
    aget-byte v5, v1, v8

    #@10
    .line 680
    .local v5, "minLevel":B
    aget-byte v4, v0, v8

    #@12
    .line 683
    .local v4, "maxLevel":B
    if-ne v5, v4, :cond_1

    #@14
    and-int/lit8 v8, v5, 0x1

    #@16
    if-nez v8, :cond_1

    #@18
    .line 684
    return-object v2

    #@19
    .line 688
    :cond_1
    or-int/lit8 v8, v5, 0x1

    #@1b
    int-to-byte v5, v8

    #@1c
    .line 692
    :cond_2
    const/4 v6, 0x0

    #@1d
    .line 698
    .local v6, "start":I
    :goto_0
    array-length v8, p0

    #@1e
    if-ge v6, v8, :cond_3

    #@20
    aget-byte v8, p0, v6

    #@22
    if-ge v8, v4, :cond_3

    #@24
    .line 699
    add-int/lit8 v6, v6, 0x1

    #@26
    goto :goto_0

    #@27
    .line 701
    :cond_3
    array-length v8, p0

    #@28
    if-lt v6, v8, :cond_5

    #@2a
    .line 733
    :cond_4
    add-int/lit8 v8, v4, -0x1

    #@2c
    int-to-byte v4, v8

    #@2d
    if-ge v4, v5, :cond_2

    #@2f
    .line 734
    return-object v2

    #@30
    .line 706
    :cond_5
    move v3, v6

    #@31
    .local v3, "limit":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@33
    array-length v8, p0

    #@34
    if-ge v3, v8, :cond_7

    #@36
    aget-byte v8, p0, v3

    #@38
    if-ge v8, v4, :cond_6

    #@3a
    .line 719
    :cond_7
    add-int v8, v6, v3

    #@3c
    add-int/lit8 v7, v8, -0x1

    #@3e
    .line 723
    .local v7, "sumOfSosEos":I
    :cond_8
    aget v8, v2, v6

    #@40
    sub-int v8, v7, v8

    #@42
    aput v8, v2, v6

    #@44
    .line 724
    add-int/lit8 v6, v6, 0x1

    #@46
    if-lt v6, v3, :cond_8

    #@48
    .line 727
    array-length v8, p0

    #@49
    if-eq v3, v8, :cond_4

    #@4b
    .line 730
    add-int/lit8 v6, v3, 0x1

    #@4d
    goto :goto_0
.end method

.method static reorderVisual([B)[I
    .locals 12
    .param p0, "levels"    # [B

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 739
    new-array v1, v10, [B

    #@5
    .line 740
    .local v1, "aMinLevel":[B
    new-array v0, v10, [B

    #@7
    .line 744
    .local v0, "aMaxLevel":[B
    invoke-static {p0, v1, v0}, Landroid/icu/text/BidiLine;->prepareReorder([B[B[B)[I

    #@a
    move-result-object v3

    #@b
    .line 745
    .local v3, "indexMap":[I
    if-nez v3, :cond_0

    #@d
    .line 746
    return-object v11

    #@e
    .line 749
    :cond_0
    aget-byte v6, v1, v9

    #@10
    .line 750
    .local v6, "minLevel":B
    aget-byte v5, v0, v9

    #@12
    .line 753
    .local v5, "maxLevel":B
    if-ne v6, v5, :cond_1

    #@14
    and-int/lit8 v9, v6, 0x1

    #@16
    if-nez v9, :cond_1

    #@18
    .line 754
    return-object v3

    #@19
    .line 758
    :cond_1
    or-int/lit8 v9, v6, 0x1

    #@1b
    int-to-byte v6, v9

    #@1c
    .line 762
    :cond_2
    const/4 v7, 0x0

    #@1d
    .line 768
    .local v7, "start":I
    :goto_0
    array-length v9, p0

    #@1e
    if-ge v7, v9, :cond_3

    #@20
    aget-byte v9, p0, v7

    #@22
    if-ge v9, v5, :cond_3

    #@24
    .line 769
    add-int/lit8 v7, v7, 0x1

    #@26
    goto :goto_0

    #@27
    .line 771
    :cond_3
    array-length v9, p0

    #@28
    if-lt v7, v9, :cond_5

    #@2a
    .line 800
    :cond_4
    add-int/lit8 v9, v5, -0x1

    #@2c
    int-to-byte v5, v9

    #@2d
    if-ge v5, v6, :cond_2

    #@2f
    .line 802
    return-object v3

    #@30
    .line 776
    :cond_5
    move v4, v7

    #@31
    .local v4, "limit":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@33
    array-length v9, p0

    #@34
    if-ge v4, v9, :cond_7

    #@36
    aget-byte v9, p0, v4

    #@38
    if-ge v9, v5, :cond_6

    #@3a
    .line 784
    :cond_7
    add-int/lit8 v2, v4, -0x1

    #@3c
    .line 785
    .local v2, "end":I
    :goto_1
    if-ge v7, v2, :cond_8

    #@3e
    .line 786
    aget v8, v3, v7

    #@40
    .line 787
    .local v8, "temp":I
    aget v9, v3, v2

    #@42
    aput v9, v3, v7

    #@44
    .line 788
    aput v8, v3, v2

    #@46
    .line 790
    add-int/lit8 v7, v7, 0x1

    #@48
    .line 791
    add-int/lit8 v2, v2, -0x1

    #@4a
    goto :goto_1

    #@4b
    .line 794
    .end local v8    # "temp":I
    :cond_8
    array-length v9, p0

    #@4c
    if-eq v4, v9, :cond_4

    #@4e
    .line 797
    add-int/lit8 v7, v4, 0x1

    #@50
    goto :goto_0
.end method

.method static setLine(Landroid/icu/text/Bidi;II)Landroid/icu/text/Bidi;
    .locals 11
    .param p0, "paraBidi"    # Landroid/icu/text/Bidi;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    .line 117
    new-instance v5, Landroid/icu/text/Bidi;

    #@4
    invoke-direct {v5}, Landroid/icu/text/Bidi;-><init>()V

    #@7
    .line 126
    .local v5, "lineBidi":Landroid/icu/text/Bidi;
    sub-int v2, p2, p1

    #@9
    iput v2, v5, Landroid/icu/text/Bidi;->resultLength:I

    #@b
    .line 125
    iput v2, v5, Landroid/icu/text/Bidi;->originalLength:I

    #@d
    iput v2, v5, Landroid/icu/text/Bidi;->length:I

    #@f
    .line 128
    .local v2, "length":I
    new-array v7, v2, [C

    #@11
    iput-object v7, v5, Landroid/icu/text/Bidi;->text:[C

    #@13
    .line 129
    iget-object v7, p0, Landroid/icu/text/Bidi;->text:[C

    #@15
    iget-object v8, v5, Landroid/icu/text/Bidi;->text:[C

    #@17
    invoke-static {v7, p1, v8, v9, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1a
    .line 130
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@1d
    move-result v7

    #@1e
    iput-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    #@20
    .line 131
    iget v7, p0, Landroid/icu/text/Bidi;->paraCount:I

    #@22
    iput v7, v5, Landroid/icu/text/Bidi;->paraCount:I

    #@24
    .line 132
    new-array v7, v9, [Landroid/icu/text/BidiRun;

    #@26
    iput-object v7, v5, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@28
    .line 133
    iget v7, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@2a
    iput v7, v5, Landroid/icu/text/Bidi;->reorderingMode:I

    #@2c
    .line 134
    iget v7, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@2e
    iput v7, v5, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@30
    .line 135
    iget v7, p0, Landroid/icu/text/Bidi;->controlCount:I

    #@32
    if-lez v7, :cond_2

    #@34
    .line 137
    move v1, p1

    #@35
    .local v1, "j":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@37
    .line 138
    iget-object v7, p0, Landroid/icu/text/Bidi;->text:[C

    #@39
    aget-char v7, v7, v1

    #@3b
    invoke-static {v7}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_0

    #@41
    .line 139
    iget v7, v5, Landroid/icu/text/Bidi;->controlCount:I

    #@43
    add-int/lit8 v7, v7, 0x1

    #@45
    iput v7, v5, Landroid/icu/text/Bidi;->controlCount:I

    #@47
    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 142
    :cond_1
    iget v7, v5, Landroid/icu/text/Bidi;->resultLength:I

    #@4c
    iget v8, v5, Landroid/icu/text/Bidi;->controlCount:I

    #@4e
    sub-int/2addr v7, v8

    #@4f
    iput v7, v5, Landroid/icu/text/Bidi;->resultLength:I

    #@51
    .line 145
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {v5, v2}, Landroid/icu/text/Bidi;->getDirPropsMemory(I)V

    #@54
    .line 146
    iget-object v7, v5, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    #@56
    iput-object v7, v5, Landroid/icu/text/Bidi;->dirProps:[B

    #@58
    .line 147
    iget-object v7, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@5a
    iget-object v8, v5, Landroid/icu/text/Bidi;->dirProps:[B

    #@5c
    invoke-static {v7, p1, v8, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5f
    .line 150
    invoke-virtual {v5, v2}, Landroid/icu/text/Bidi;->getLevelsMemory(I)V

    #@62
    .line 151
    iget-object v7, v5, Landroid/icu/text/Bidi;->levelsMemory:[B

    #@64
    iput-object v7, v5, Landroid/icu/text/Bidi;->levels:[B

    #@66
    .line 152
    iget-object v7, p0, Landroid/icu/text/Bidi;->levels:[B

    #@68
    iget-object v8, v5, Landroid/icu/text/Bidi;->levels:[B

    #@6a
    invoke-static {v7, p1, v8, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6d
    .line 154
    const/4 v7, -0x1

    #@6e
    iput v7, v5, Landroid/icu/text/Bidi;->runCount:I

    #@70
    .line 156
    iget-byte v7, p0, Landroid/icu/text/Bidi;->direction:B

    #@72
    if-eq v7, v10, :cond_5

    #@74
    .line 158
    iget-byte v7, p0, Landroid/icu/text/Bidi;->direction:B

    #@76
    iput-byte v7, v5, Landroid/icu/text/Bidi;->direction:B

    #@78
    .line 165
    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@7a
    if-gt v7, p1, :cond_3

    #@7c
    .line 166
    iput v9, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@7e
    .line 233
    :goto_1
    iput-object p0, v5, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@80
    .line 234
    return-object v5

    #@81
    .line 167
    :cond_3
    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@83
    if-ge v7, p2, :cond_4

    #@85
    .line 168
    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@87
    sub-int/2addr v7, p1

    #@88
    iput v7, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@8a
    goto :goto_1

    #@8b
    .line 170
    :cond_4
    iput v2, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@8d
    goto :goto_1

    #@8e
    .line 173
    :cond_5
    iget-object v4, v5, Landroid/icu/text/Bidi;->levels:[B

    #@90
    .line 177
    .local v4, "levels":[B
    invoke-static {v5}, Landroid/icu/text/BidiLine;->setTrailingWSStart(Landroid/icu/text/Bidi;)V

    #@93
    .line 178
    iget v6, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@95
    .line 181
    .local v6, "trailingWSStart":I
    if-nez v6, :cond_6

    #@97
    .line 183
    iget-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    #@99
    and-int/lit8 v7, v7, 0x1

    #@9b
    int-to-byte v7, v7

    #@9c
    iput-byte v7, v5, Landroid/icu/text/Bidi;->direction:B

    #@9e
    .line 211
    :goto_2
    iget-byte v7, v5, Landroid/icu/text/Bidi;->direction:B

    #@a0
    packed-switch v7, :pswitch_data_0

    #@a3
    goto :goto_1

    #@a4
    .line 215
    :pswitch_0
    iget-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    #@a6
    add-int/lit8 v7, v7, 0x1

    #@a8
    and-int/lit8 v7, v7, -0x2

    #@aa
    .line 214
    int-to-byte v7, v7

    #@ab
    iput-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    #@ad
    .line 219
    iput v9, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@af
    goto :goto_1

    #@b0
    .line 186
    :cond_6
    aget-byte v7, v4, v9

    #@b2
    and-int/lit8 v7, v7, 0x1

    #@b4
    int-to-byte v3, v7

    #@b5
    .line 190
    .local v3, "level":B
    if-ge v6, v2, :cond_7

    #@b7
    .line 191
    iget-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    #@b9
    and-int/lit8 v7, v7, 0x1

    #@bb
    if-eq v7, v3, :cond_7

    #@bd
    .line 194
    iput-byte v10, v5, Landroid/icu/text/Bidi;->direction:B

    #@bf
    goto :goto_2

    #@c0
    .line 198
    :cond_7
    const/4 v0, 0x1

    #@c1
    .line 199
    .local v0, "i":I
    :goto_3
    if-ne v0, v6, :cond_8

    #@c3
    .line 201
    iput-byte v3, v5, Landroid/icu/text/Bidi;->direction:B

    #@c5
    goto :goto_2

    #@c6
    .line 203
    :cond_8
    aget-byte v7, v4, v0

    #@c8
    and-int/lit8 v7, v7, 0x1

    #@ca
    if-eq v7, v3, :cond_9

    #@cc
    .line 204
    iput-byte v10, v5, Landroid/icu/text/Bidi;->direction:B

    #@ce
    goto :goto_2

    #@cf
    .line 198
    :cond_9
    add-int/lit8 v0, v0, 0x1

    #@d1
    goto :goto_3

    #@d2
    .line 223
    .end local v0    # "i":I
    .end local v3    # "level":B
    :pswitch_1
    iget-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    #@d4
    or-int/lit8 v7, v7, 0x1

    #@d6
    int-to-byte v7, v7

    #@d7
    iput-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    #@d9
    .line 227
    iput v9, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@db
    goto :goto_1

    #@dc
    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static setTrailingWSStart(Landroid/icu/text/Bidi;)V
    .locals 6
    .param p0, "bidi"    # Landroid/icu/text/Bidi;

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@2
    .line 86
    .local v0, "dirProps":[B
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    #@4
    .line 87
    .local v1, "levels":[B
    iget v3, p0, Landroid/icu/text/Bidi;->length:I

    #@6
    .line 88
    .local v3, "start":I
    iget-byte v2, p0, Landroid/icu/text/Bidi;->paraLevel:B

    #@8
    .line 96
    .local v2, "paraLevel":B
    add-int/lit8 v4, v3, -0x1

    #@a
    aget-byte v4, v0, v4

    #@c
    const/4 v5, 0x7

    #@d
    if-ne v4, v5, :cond_0

    #@f
    .line 97
    iput v3, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@11
    .line 98
    return-void

    #@12
    .line 101
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    #@14
    .line 102
    add-int/lit8 v4, v3, -0x1

    #@16
    aget-byte v4, v0, v4

    #@18
    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@1b
    move-result v4

    #@1c
    sget v5, Landroid/icu/text/Bidi;->MASK_WS:I

    #@1e
    and-int/2addr v4, v5

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 103
    add-int/lit8 v3, v3, -0x1

    #@23
    goto :goto_0

    #@24
    .line 107
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    #@26
    add-int/lit8 v4, v3, -0x1

    #@28
    aget-byte v4, v1, v4

    #@2a
    if-ne v4, v2, :cond_2

    #@2c
    .line 108
    add-int/lit8 v3, v3, -0x1

    #@2e
    goto :goto_1

    #@2f
    .line 111
    :cond_2
    iput v3, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@31
    .line 83
    return-void
.end method
