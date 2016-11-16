.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x1d

.field private static final COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0xc80

.field private static final INSERTION_SORT_THRESHOLD:I = 0x2f

.field private static final MAX_RUN_COUNT:I = 0x43

.field private static final MAX_RUN_LENGTH:I = 0x21

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000

.field private static final QUICKSORT_THRESHOLD:I = 0x11e


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static doSort([CII[CII)V
    .locals 29
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [C
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 1526
    sub-int v27, p2, p1

    #@2
    const/16 v28, 0x11e

    #@4
    move/from16 v0, v27

    #@6
    move/from16 v1, v28

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1527
    const/16 v27, 0x1

    #@c
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p1

    #@10
    move/from16 v2, p2

    #@12
    move/from16 v3, v27

    #@14
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    #@17
    .line 1528
    return-void

    #@18
    .line 1535
    :cond_0
    const/16 v27, 0x44

    #@1a
    move/from16 v0, v27

    #@1c
    new-array v0, v0, [I

    #@1e
    move-object/from16 v24, v0

    #@20
    .line 1536
    .local v24, "run":[I
    const/4 v8, 0x0

    #@21
    .local v8, "count":I
    const/16 v27, 0x0

    #@23
    aput p1, v24, v27

    #@25
    .line 1539
    move/from16 v11, p1

    #@27
    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    #@29
    if-ge v11, v0, :cond_9

    #@2b
    .line 1540
    aget-char v27, p0, v11

    #@2d
    add-int/lit8 v28, v11, 0x1

    #@2f
    aget-char v28, p0, v28

    #@31
    move/from16 v0, v27

    #@33
    move/from16 v1, v28

    #@35
    if-ge v0, v1, :cond_3

    #@37
    .line 1541
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@39
    move/from16 v0, p2

    #@3b
    if-gt v11, v0, :cond_2

    #@3d
    add-int/lit8 v27, v11, -0x1

    #@3f
    aget-char v27, p0, v27

    #@41
    aget-char v28, p0, v11

    #@43
    move/from16 v0, v27

    #@45
    move/from16 v1, v28

    #@47
    if-le v0, v1, :cond_1

    #@49
    .line 1560
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@4b
    const/16 v27, 0x43

    #@4d
    move/from16 v0, v27

    #@4f
    if-ne v8, v0, :cond_8

    #@51
    .line 1561
    const/16 v27, 0x1

    #@53
    move-object/from16 v0, p0

    #@55
    move/from16 v1, p1

    #@57
    move/from16 v2, p2

    #@59
    move/from16 v3, v27

    #@5b
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    #@5e
    .line 1562
    return-void

    #@5f
    .line 1542
    :cond_3
    aget-char v27, p0, v11

    #@61
    add-int/lit8 v28, v11, 0x1

    #@63
    aget-char v28, p0, v28

    #@65
    move/from16 v0, v27

    #@67
    move/from16 v1, v28

    #@69
    if-le v0, v1, :cond_6

    #@6b
    .line 1543
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@6d
    move/from16 v0, p2

    #@6f
    if-gt v11, v0, :cond_5

    #@71
    add-int/lit8 v27, v11, -0x1

    #@73
    aget-char v27, p0, v27

    #@75
    aget-char v28, p0, v11

    #@77
    move/from16 v0, v27

    #@79
    move/from16 v1, v28

    #@7b
    if-ge v0, v1, :cond_4

    #@7d
    .line 1544
    :cond_5
    aget v27, v24, v8

    #@7f
    add-int/lit8 v13, v27, -0x1

    #@81
    .local v13, "lo":I
    move v9, v11

    #@82
    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@84
    add-int/lit8 v9, v9, -0x1

    #@86
    if-ge v13, v9, :cond_2

    #@88
    .line 1545
    aget-char v25, p0, v13

    #@8a
    .local v25, "t":C
    aget-char v27, p0, v9

    #@8c
    aput-char v27, p0, v13

    #@8e
    aput-char v25, p0, v9

    #@90
    goto :goto_1

    #@91
    .line 1548
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":C
    :cond_6
    const/16 v14, 0x21

    #@93
    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@95
    move/from16 v0, p2

    #@97
    if-gt v11, v0, :cond_2

    #@99
    add-int/lit8 v27, v11, -0x1

    #@9b
    aget-char v27, p0, v27

    #@9d
    aget-char v28, p0, v11

    #@9f
    move/from16 v0, v27

    #@a1
    move/from16 v1, v28

    #@a3
    if-ne v0, v1, :cond_2

    #@a5
    .line 1549
    add-int/lit8 v14, v14, -0x1

    #@a7
    if-nez v14, :cond_7

    #@a9
    .line 1550
    const/16 v27, 0x1

    #@ab
    move-object/from16 v0, p0

    #@ad
    move/from16 v1, p1

    #@af
    move/from16 v2, p2

    #@b1
    move/from16 v3, v27

    #@b3
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    #@b6
    .line 1551
    return-void

    #@b7
    .line 1539
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    #@b9
    goto/16 :goto_0

    #@bb
    .line 1568
    :cond_9
    aget v27, v24, v8

    #@bd
    add-int/lit8 v23, p2, 0x1

    #@bf
    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    #@c1
    move/from16 v1, p2

    #@c3
    if-ne v0, v1, :cond_b

    #@c5
    .line 1569
    add-int/lit8 v8, v8, 0x1

    #@c7
    aput v23, v24, v8

    #@c9
    .line 1575
    :cond_a
    const/16 v18, 0x0

    #@cb
    .line 1576
    .local v18, "odd":B
    const/16 v16, 0x1

    #@cd
    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    #@cf
    move/from16 v0, v16

    #@d1
    if-ge v0, v8, :cond_c

    #@d3
    xor-int/lit8 v27, v18, 0x1

    #@d5
    move/from16 v0, v27

    #@d7
    int-to-byte v0, v0

    #@d8
    move/from16 v18, v0

    #@da
    .local v18, "odd":B
    goto :goto_2

    #@db
    .line 1570
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v27, 0x1

    #@dd
    move/from16 v0, v27

    #@df
    if-ne v8, v0, :cond_a

    #@e1
    .line 1571
    return-void

    #@e2
    .line 1581
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    #@e4
    .line 1582
    .local v6, "blen":I
    if-eqz p3, :cond_d

    #@e6
    move/from16 v0, p5

    #@e8
    if-ge v0, v6, :cond_10

    #@ea
    .line 1583
    :cond_d
    :goto_3
    new-array v0, v6, [C

    #@ec
    move-object/from16 p3, v0

    #@ee
    .line 1584
    const/16 p4, 0x0

    #@f0
    .line 1586
    :cond_e
    if-nez v18, :cond_11

    #@f2
    .line 1587
    move-object/from16 v0, p0

    #@f4
    move/from16 v1, p1

    #@f6
    move-object/from16 v2, p3

    #@f8
    move/from16 v3, p4

    #@fa
    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@fd
    .line 1588
    move-object/from16 v5, p0

    #@ff
    .line 1589
    .local v5, "b":[C
    const/4 v7, 0x0

    #@100
    .line 1590
    .local v7, "bo":I
    move-object/from16 p0, p3

    #@102
    .line 1591
    sub-int v4, p4, p1

    #@104
    .line 1599
    .local v4, "ao":I
    :goto_4
    const/16 v27, 0x1

    #@106
    move/from16 v0, v27

    #@108
    if-le v8, v0, :cond_17

    #@10a
    .line 1600
    const/4 v12, 0x0

    #@10b
    .local v12, "last":I
    const/4 v11, 0x2

    #@10c
    :goto_5
    if-gt v11, v8, :cond_14

    #@10e
    .line 1601
    aget v9, v24, v11

    #@110
    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    #@112
    aget v15, v24, v27

    #@114
    .line 1602
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    #@116
    aget v10, v24, v27

    #@118
    .local v10, "i":I
    move/from16 v19, v10

    #@11a
    .local v19, "p":I
    move/from16 v21, v15

    #@11c
    .local v21, "q":I
    move/from16 v22, v21

    #@11e
    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    #@120
    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    #@122
    .line 1603
    move/from16 v0, v22

    #@124
    if-ge v0, v9, :cond_f

    #@126
    move/from16 v0, v20

    #@128
    if-ge v0, v15, :cond_12

    #@12a
    add-int v27, v20, v4

    #@12c
    aget-char v27, p0, v27

    #@12e
    add-int v28, v22, v4

    #@130
    aget-char v28, p0, v28

    #@132
    move/from16 v0, v27

    #@134
    move/from16 v1, v28

    #@136
    if-gt v0, v1, :cond_12

    #@138
    .line 1604
    :cond_f
    add-int v27, v10, v7

    #@13a
    add-int/lit8 v19, v20, 0x1

    #@13c
    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    #@13e
    aget-char v28, p0, v28

    #@140
    aput-char v28, v5, v27

    #@142
    move/from16 v21, v22

    #@144
    .line 1602
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    #@146
    move/from16 v22, v21

    #@148
    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    #@14a
    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    #@14b
    .line 1582
    .end local v4    # "ao":I
    .end local v5    # "b":[C
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v27, p4, v6

    #@14d
    move-object/from16 v0, p3

    #@14f
    array-length v0, v0

    #@150
    move/from16 v28, v0

    #@152
    move/from16 v0, v27

    #@154
    move/from16 v1, v28

    #@156
    if-le v0, v1, :cond_e

    #@158
    goto :goto_3

    #@159
    .line 1593
    :cond_11
    move-object/from16 v5, p3

    #@15b
    .line 1594
    .restart local v5    # "b":[C
    const/4 v4, 0x0

    #@15c
    .line 1595
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    #@15e
    .restart local v7    # "bo":I
    goto :goto_4

    #@15f
    .line 1606
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v27, v10, v7

    #@161
    add-int/lit8 v21, v22, 0x1

    #@163
    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    #@165
    aget-char v28, p0, v28

    #@167
    aput-char v28, v5, v27

    #@169
    move/from16 v19, v20

    #@16b
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    #@16c
    .line 1609
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    #@16e
    aput v9, v24, v12

    #@170
    .line 1600
    add-int/lit8 v11, v11, 0x2

    #@172
    goto :goto_5

    #@173
    .line 1611
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v27, v8, 0x1

    #@175
    if-eqz v27, :cond_16

    #@177
    .line 1612
    move/from16 v10, v23

    #@179
    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    #@17b
    aget v13, v24, v27

    #@17d
    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    #@17f
    if-lt v10, v13, :cond_15

    #@181
    .line 1613
    add-int v27, v10, v7

    #@183
    add-int v28, v10, v4

    #@185
    aget-char v28, p0, v28

    #@187
    aput-char v28, v5, v27

    #@189
    goto :goto_8

    #@18a
    .line 1615
    :cond_15
    add-int/lit8 v12, v12, 0x1

    #@18c
    aput v23, v24, v12

    #@18e
    .line 1617
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v26, p0

    #@190
    .local v26, "t":[C
    move-object/from16 p0, v5

    #@192
    move-object/from16 v5, v26

    #@194
    .line 1618
    move/from16 v17, v4

    #@196
    .local v17, "o":I
    move v4, v7

    #@197
    move/from16 v7, v17

    #@199
    .line 1599
    move v8, v12

    #@19a
    goto/16 :goto_4

    #@19c
    .line 1524
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[C
    :cond_17
    return-void
.end method

.method private static doSort([DII[DII)V
    .locals 32
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [D
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 2645
    sub-int v28, p2, p1

    #@2
    const/16 v29, 0x11e

    #@4
    move/from16 v0, v28

    #@6
    move/from16 v1, v29

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 2646
    const/16 v28, 0x1

    #@c
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p1

    #@10
    move/from16 v2, p2

    #@12
    move/from16 v3, v28

    #@14
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    #@17
    .line 2647
    return-void

    #@18
    .line 2654
    :cond_0
    const/16 v28, 0x44

    #@1a
    move/from16 v0, v28

    #@1c
    new-array v0, v0, [I

    #@1e
    move-object/from16 v24, v0

    #@20
    .line 2655
    .local v24, "run":[I
    const/4 v8, 0x0

    #@21
    .local v8, "count":I
    const/16 v28, 0x0

    #@23
    aput p1, v24, v28

    #@25
    .line 2658
    move/from16 v11, p1

    #@27
    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    #@29
    if-ge v11, v0, :cond_9

    #@2b
    .line 2659
    aget-wide v28, p0, v11

    #@2d
    add-int/lit8 v30, v11, 0x1

    #@2f
    aget-wide v30, p0, v30

    #@31
    cmpg-double v28, v28, v30

    #@33
    if-gez v28, :cond_3

    #@35
    .line 2660
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@37
    move/from16 v0, p2

    #@39
    if-gt v11, v0, :cond_2

    #@3b
    add-int/lit8 v28, v11, -0x1

    #@3d
    aget-wide v28, p0, v28

    #@3f
    aget-wide v30, p0, v11

    #@41
    cmpg-double v28, v28, v30

    #@43
    if-lez v28, :cond_1

    #@45
    .line 2679
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@47
    const/16 v28, 0x43

    #@49
    move/from16 v0, v28

    #@4b
    if-ne v8, v0, :cond_8

    #@4d
    .line 2680
    const/16 v28, 0x1

    #@4f
    move-object/from16 v0, p0

    #@51
    move/from16 v1, p1

    #@53
    move/from16 v2, p2

    #@55
    move/from16 v3, v28

    #@57
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    #@5a
    .line 2681
    return-void

    #@5b
    .line 2661
    :cond_3
    aget-wide v28, p0, v11

    #@5d
    add-int/lit8 v30, v11, 0x1

    #@5f
    aget-wide v30, p0, v30

    #@61
    cmpl-double v28, v28, v30

    #@63
    if-lez v28, :cond_6

    #@65
    .line 2662
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@67
    move/from16 v0, p2

    #@69
    if-gt v11, v0, :cond_5

    #@6b
    add-int/lit8 v28, v11, -0x1

    #@6d
    aget-wide v28, p0, v28

    #@6f
    aget-wide v30, p0, v11

    #@71
    cmpl-double v28, v28, v30

    #@73
    if-gez v28, :cond_4

    #@75
    .line 2663
    :cond_5
    aget v28, v24, v8

    #@77
    add-int/lit8 v13, v28, -0x1

    #@79
    .local v13, "lo":I
    move v9, v11

    #@7a
    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@7c
    add-int/lit8 v9, v9, -0x1

    #@7e
    if-ge v13, v9, :cond_2

    #@80
    .line 2664
    aget-wide v26, p0, v13

    #@82
    .local v26, "t":D
    aget-wide v28, p0, v9

    #@84
    aput-wide v28, p0, v13

    #@86
    aput-wide v26, p0, v9

    #@88
    goto :goto_1

    #@89
    .line 2667
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v26    # "t":D
    :cond_6
    const/16 v14, 0x21

    #@8b
    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@8d
    move/from16 v0, p2

    #@8f
    if-gt v11, v0, :cond_2

    #@91
    add-int/lit8 v28, v11, -0x1

    #@93
    aget-wide v28, p0, v28

    #@95
    aget-wide v30, p0, v11

    #@97
    cmpl-double v28, v28, v30

    #@99
    if-nez v28, :cond_2

    #@9b
    .line 2668
    add-int/lit8 v14, v14, -0x1

    #@9d
    if-nez v14, :cond_7

    #@9f
    .line 2669
    const/16 v28, 0x1

    #@a1
    move-object/from16 v0, p0

    #@a3
    move/from16 v1, p1

    #@a5
    move/from16 v2, p2

    #@a7
    move/from16 v3, v28

    #@a9
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    #@ac
    .line 2670
    return-void

    #@ad
    .line 2658
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    #@af
    goto/16 :goto_0

    #@b1
    .line 2687
    :cond_9
    aget v28, v24, v8

    #@b3
    add-int/lit8 v23, p2, 0x1

    #@b5
    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v28

    #@b7
    move/from16 v1, p2

    #@b9
    if-ne v0, v1, :cond_b

    #@bb
    .line 2688
    add-int/lit8 v8, v8, 0x1

    #@bd
    aput v23, v24, v8

    #@bf
    .line 2694
    :cond_a
    const/16 v18, 0x0

    #@c1
    .line 2695
    .local v18, "odd":B
    const/16 v16, 0x1

    #@c3
    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    #@c5
    move/from16 v0, v16

    #@c7
    if-ge v0, v8, :cond_c

    #@c9
    xor-int/lit8 v28, v18, 0x1

    #@cb
    move/from16 v0, v28

    #@cd
    int-to-byte v0, v0

    #@ce
    move/from16 v18, v0

    #@d0
    .local v18, "odd":B
    goto :goto_2

    #@d1
    .line 2689
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v28, 0x1

    #@d3
    move/from16 v0, v28

    #@d5
    if-ne v8, v0, :cond_a

    #@d7
    .line 2690
    return-void

    #@d8
    .line 2700
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    #@da
    .line 2701
    .local v6, "blen":I
    if-eqz p3, :cond_d

    #@dc
    move/from16 v0, p5

    #@de
    if-ge v0, v6, :cond_10

    #@e0
    .line 2702
    :cond_d
    :goto_3
    new-array v0, v6, [D

    #@e2
    move-object/from16 p3, v0

    #@e4
    .line 2703
    const/16 p4, 0x0

    #@e6
    .line 2705
    :cond_e
    if-nez v18, :cond_11

    #@e8
    .line 2706
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, p1

    #@ec
    move-object/from16 v2, p3

    #@ee
    move/from16 v3, p4

    #@f0
    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@f3
    .line 2707
    move-object/from16 v5, p0

    #@f5
    .line 2708
    .local v5, "b":[D
    const/4 v7, 0x0

    #@f6
    .line 2709
    .local v7, "bo":I
    move-object/from16 p0, p3

    #@f8
    .line 2710
    sub-int v4, p4, p1

    #@fa
    .line 2718
    .local v4, "ao":I
    :goto_4
    const/16 v28, 0x1

    #@fc
    move/from16 v0, v28

    #@fe
    if-le v8, v0, :cond_17

    #@100
    .line 2719
    const/4 v12, 0x0

    #@101
    .local v12, "last":I
    const/4 v11, 0x2

    #@102
    :goto_5
    if-gt v11, v8, :cond_14

    #@104
    .line 2720
    aget v9, v24, v11

    #@106
    .restart local v9    # "hi":I
    add-int/lit8 v28, v11, -0x1

    #@108
    aget v15, v24, v28

    #@10a
    .line 2721
    .local v15, "mi":I
    add-int/lit8 v28, v11, -0x2

    #@10c
    aget v10, v24, v28

    #@10e
    .local v10, "i":I
    move/from16 v19, v10

    #@110
    .local v19, "p":I
    move/from16 v21, v15

    #@112
    .local v21, "q":I
    move/from16 v22, v21

    #@114
    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    #@116
    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    #@118
    .line 2722
    move/from16 v0, v22

    #@11a
    if-ge v0, v9, :cond_f

    #@11c
    move/from16 v0, v20

    #@11e
    if-ge v0, v15, :cond_12

    #@120
    add-int v28, v20, v4

    #@122
    aget-wide v28, p0, v28

    #@124
    add-int v30, v22, v4

    #@126
    aget-wide v30, p0, v30

    #@128
    cmpg-double v28, v28, v30

    #@12a
    if-gtz v28, :cond_12

    #@12c
    .line 2723
    :cond_f
    add-int v28, v10, v7

    #@12e
    add-int/lit8 v19, v20, 0x1

    #@130
    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v29, v20, v4

    #@132
    aget-wide v30, p0, v29

    #@134
    aput-wide v30, v5, v28

    #@136
    move/from16 v21, v22

    #@138
    .line 2721
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    #@13a
    move/from16 v22, v21

    #@13c
    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    #@13e
    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    #@13f
    .line 2701
    .end local v4    # "ao":I
    .end local v5    # "b":[D
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v28, p4, v6

    #@141
    move-object/from16 v0, p3

    #@143
    array-length v0, v0

    #@144
    move/from16 v29, v0

    #@146
    move/from16 v0, v28

    #@148
    move/from16 v1, v29

    #@14a
    if-le v0, v1, :cond_e

    #@14c
    goto :goto_3

    #@14d
    .line 2712
    :cond_11
    move-object/from16 v5, p3

    #@14f
    .line 2713
    .restart local v5    # "b":[D
    const/4 v4, 0x0

    #@150
    .line 2714
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    #@152
    .restart local v7    # "bo":I
    goto :goto_4

    #@153
    .line 2725
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v28, v10, v7

    #@155
    add-int/lit8 v21, v22, 0x1

    #@157
    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v29, v22, v4

    #@159
    aget-wide v30, p0, v29

    #@15b
    aput-wide v30, v5, v28

    #@15d
    move/from16 v19, v20

    #@15f
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    #@160
    .line 2728
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    #@162
    aput v9, v24, v12

    #@164
    .line 2719
    add-int/lit8 v11, v11, 0x2

    #@166
    goto :goto_5

    #@167
    .line 2730
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v28, v8, 0x1

    #@169
    if-eqz v28, :cond_16

    #@16b
    .line 2731
    move/from16 v10, v23

    #@16d
    .restart local v10    # "i":I
    add-int/lit8 v28, v8, -0x1

    #@16f
    aget v13, v24, v28

    #@171
    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    #@173
    if-lt v10, v13, :cond_15

    #@175
    .line 2732
    add-int v28, v10, v7

    #@177
    add-int v29, v10, v4

    #@179
    aget-wide v30, p0, v29

    #@17b
    aput-wide v30, v5, v28

    #@17d
    goto :goto_8

    #@17e
    .line 2734
    :cond_15
    add-int/lit8 v12, v12, 0x1

    #@180
    aput v23, v24, v12

    #@182
    .line 2736
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v25, p0

    #@184
    .local v25, "t":[D
    move-object/from16 p0, v5

    #@186
    move-object/from16 v5, v25

    #@188
    .line 2737
    move/from16 v17, v4

    #@18a
    .local v17, "o":I
    move v4, v7

    #@18b
    move/from16 v7, v17

    #@18d
    .line 2718
    move v8, v12

    #@18e
    goto/16 :goto_4

    #@190
    .line 2643
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v25    # "t":[D
    :cond_17
    return-void
.end method

.method private static doSort([FII[FII)V
    .locals 29
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [F
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 2106
    sub-int v27, p2, p1

    #@2
    const/16 v28, 0x11e

    #@4
    move/from16 v0, v27

    #@6
    move/from16 v1, v28

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 2107
    const/16 v27, 0x1

    #@c
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p1

    #@10
    move/from16 v2, p2

    #@12
    move/from16 v3, v27

    #@14
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    #@17
    .line 2108
    return-void

    #@18
    .line 2115
    :cond_0
    const/16 v27, 0x44

    #@1a
    move/from16 v0, v27

    #@1c
    new-array v0, v0, [I

    #@1e
    move-object/from16 v24, v0

    #@20
    .line 2116
    .local v24, "run":[I
    const/4 v8, 0x0

    #@21
    .local v8, "count":I
    const/16 v27, 0x0

    #@23
    aput p1, v24, v27

    #@25
    .line 2119
    move/from16 v11, p1

    #@27
    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    #@29
    if-ge v11, v0, :cond_9

    #@2b
    .line 2120
    aget v27, p0, v11

    #@2d
    add-int/lit8 v28, v11, 0x1

    #@2f
    aget v28, p0, v28

    #@31
    cmpg-float v27, v27, v28

    #@33
    if-gez v27, :cond_3

    #@35
    .line 2121
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@37
    move/from16 v0, p2

    #@39
    if-gt v11, v0, :cond_2

    #@3b
    add-int/lit8 v27, v11, -0x1

    #@3d
    aget v27, p0, v27

    #@3f
    aget v28, p0, v11

    #@41
    cmpg-float v27, v27, v28

    #@43
    if-lez v27, :cond_1

    #@45
    .line 2140
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@47
    const/16 v27, 0x43

    #@49
    move/from16 v0, v27

    #@4b
    if-ne v8, v0, :cond_8

    #@4d
    .line 2141
    const/16 v27, 0x1

    #@4f
    move-object/from16 v0, p0

    #@51
    move/from16 v1, p1

    #@53
    move/from16 v2, p2

    #@55
    move/from16 v3, v27

    #@57
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    #@5a
    .line 2142
    return-void

    #@5b
    .line 2122
    :cond_3
    aget v27, p0, v11

    #@5d
    add-int/lit8 v28, v11, 0x1

    #@5f
    aget v28, p0, v28

    #@61
    cmpl-float v27, v27, v28

    #@63
    if-lez v27, :cond_6

    #@65
    .line 2123
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@67
    move/from16 v0, p2

    #@69
    if-gt v11, v0, :cond_5

    #@6b
    add-int/lit8 v27, v11, -0x1

    #@6d
    aget v27, p0, v27

    #@6f
    aget v28, p0, v11

    #@71
    cmpl-float v27, v27, v28

    #@73
    if-gez v27, :cond_4

    #@75
    .line 2124
    :cond_5
    aget v27, v24, v8

    #@77
    add-int/lit8 v13, v27, -0x1

    #@79
    .local v13, "lo":I
    move v9, v11

    #@7a
    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@7c
    add-int/lit8 v9, v9, -0x1

    #@7e
    if-ge v13, v9, :cond_2

    #@80
    .line 2125
    aget v25, p0, v13

    #@82
    .local v25, "t":F
    aget v27, p0, v9

    #@84
    aput v27, p0, v13

    #@86
    aput v25, p0, v9

    #@88
    goto :goto_1

    #@89
    .line 2128
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":F
    :cond_6
    const/16 v14, 0x21

    #@8b
    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@8d
    move/from16 v0, p2

    #@8f
    if-gt v11, v0, :cond_2

    #@91
    add-int/lit8 v27, v11, -0x1

    #@93
    aget v27, p0, v27

    #@95
    aget v28, p0, v11

    #@97
    cmpl-float v27, v27, v28

    #@99
    if-nez v27, :cond_2

    #@9b
    .line 2129
    add-int/lit8 v14, v14, -0x1

    #@9d
    if-nez v14, :cond_7

    #@9f
    .line 2130
    const/16 v27, 0x1

    #@a1
    move-object/from16 v0, p0

    #@a3
    move/from16 v1, p1

    #@a5
    move/from16 v2, p2

    #@a7
    move/from16 v3, v27

    #@a9
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    #@ac
    .line 2131
    return-void

    #@ad
    .line 2119
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    #@af
    goto/16 :goto_0

    #@b1
    .line 2148
    :cond_9
    aget v27, v24, v8

    #@b3
    add-int/lit8 v23, p2, 0x1

    #@b5
    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    #@b7
    move/from16 v1, p2

    #@b9
    if-ne v0, v1, :cond_b

    #@bb
    .line 2149
    add-int/lit8 v8, v8, 0x1

    #@bd
    aput v23, v24, v8

    #@bf
    .line 2155
    :cond_a
    const/16 v18, 0x0

    #@c1
    .line 2156
    .local v18, "odd":B
    const/16 v16, 0x1

    #@c3
    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    #@c5
    move/from16 v0, v16

    #@c7
    if-ge v0, v8, :cond_c

    #@c9
    xor-int/lit8 v27, v18, 0x1

    #@cb
    move/from16 v0, v27

    #@cd
    int-to-byte v0, v0

    #@ce
    move/from16 v18, v0

    #@d0
    .local v18, "odd":B
    goto :goto_2

    #@d1
    .line 2150
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v27, 0x1

    #@d3
    move/from16 v0, v27

    #@d5
    if-ne v8, v0, :cond_a

    #@d7
    .line 2151
    return-void

    #@d8
    .line 2161
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    #@da
    .line 2162
    .local v6, "blen":I
    if-eqz p3, :cond_d

    #@dc
    move/from16 v0, p5

    #@de
    if-ge v0, v6, :cond_10

    #@e0
    .line 2163
    :cond_d
    :goto_3
    new-array v0, v6, [F

    #@e2
    move-object/from16 p3, v0

    #@e4
    .line 2164
    const/16 p4, 0x0

    #@e6
    .line 2166
    :cond_e
    if-nez v18, :cond_11

    #@e8
    .line 2167
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, p1

    #@ec
    move-object/from16 v2, p3

    #@ee
    move/from16 v3, p4

    #@f0
    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@f3
    .line 2168
    move-object/from16 v5, p0

    #@f5
    .line 2169
    .local v5, "b":[F
    const/4 v7, 0x0

    #@f6
    .line 2170
    .local v7, "bo":I
    move-object/from16 p0, p3

    #@f8
    .line 2171
    sub-int v4, p4, p1

    #@fa
    .line 2179
    .local v4, "ao":I
    :goto_4
    const/16 v27, 0x1

    #@fc
    move/from16 v0, v27

    #@fe
    if-le v8, v0, :cond_17

    #@100
    .line 2180
    const/4 v12, 0x0

    #@101
    .local v12, "last":I
    const/4 v11, 0x2

    #@102
    :goto_5
    if-gt v11, v8, :cond_14

    #@104
    .line 2181
    aget v9, v24, v11

    #@106
    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    #@108
    aget v15, v24, v27

    #@10a
    .line 2182
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    #@10c
    aget v10, v24, v27

    #@10e
    .local v10, "i":I
    move/from16 v19, v10

    #@110
    .local v19, "p":I
    move/from16 v21, v15

    #@112
    .local v21, "q":I
    move/from16 v22, v21

    #@114
    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    #@116
    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    #@118
    .line 2183
    move/from16 v0, v22

    #@11a
    if-ge v0, v9, :cond_f

    #@11c
    move/from16 v0, v20

    #@11e
    if-ge v0, v15, :cond_12

    #@120
    add-int v27, v20, v4

    #@122
    aget v27, p0, v27

    #@124
    add-int v28, v22, v4

    #@126
    aget v28, p0, v28

    #@128
    cmpg-float v27, v27, v28

    #@12a
    if-gtz v27, :cond_12

    #@12c
    .line 2184
    :cond_f
    add-int v27, v10, v7

    #@12e
    add-int/lit8 v19, v20, 0x1

    #@130
    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    #@132
    aget v28, p0, v28

    #@134
    aput v28, v5, v27

    #@136
    move/from16 v21, v22

    #@138
    .line 2182
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    #@13a
    move/from16 v22, v21

    #@13c
    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    #@13e
    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    #@13f
    .line 2162
    .end local v4    # "ao":I
    .end local v5    # "b":[F
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v27, p4, v6

    #@141
    move-object/from16 v0, p3

    #@143
    array-length v0, v0

    #@144
    move/from16 v28, v0

    #@146
    move/from16 v0, v27

    #@148
    move/from16 v1, v28

    #@14a
    if-le v0, v1, :cond_e

    #@14c
    goto :goto_3

    #@14d
    .line 2173
    :cond_11
    move-object/from16 v5, p3

    #@14f
    .line 2174
    .restart local v5    # "b":[F
    const/4 v4, 0x0

    #@150
    .line 2175
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    #@152
    .restart local v7    # "bo":I
    goto :goto_4

    #@153
    .line 2186
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v27, v10, v7

    #@155
    add-int/lit8 v21, v22, 0x1

    #@157
    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    #@159
    aget v28, p0, v28

    #@15b
    aput v28, v5, v27

    #@15d
    move/from16 v19, v20

    #@15f
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    #@160
    .line 2189
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    #@162
    aput v9, v24, v12

    #@164
    .line 2180
    add-int/lit8 v11, v11, 0x2

    #@166
    goto :goto_5

    #@167
    .line 2191
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v27, v8, 0x1

    #@169
    if-eqz v27, :cond_16

    #@16b
    .line 2192
    move/from16 v10, v23

    #@16d
    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    #@16f
    aget v13, v24, v27

    #@171
    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    #@173
    if-lt v10, v13, :cond_15

    #@175
    .line 2193
    add-int v27, v10, v7

    #@177
    add-int v28, v10, v4

    #@179
    aget v28, p0, v28

    #@17b
    aput v28, v5, v27

    #@17d
    goto :goto_8

    #@17e
    .line 2195
    :cond_15
    add-int/lit8 v12, v12, 0x1

    #@180
    aput v23, v24, v12

    #@182
    .line 2197
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v26, p0

    #@184
    .local v26, "t":[F
    move-object/from16 p0, v5

    #@186
    move-object/from16 v5, v26

    #@188
    .line 2198
    move/from16 v17, v4

    #@18a
    .local v17, "o":I
    move v4, v7

    #@18b
    move/from16 v7, v17

    #@18d
    .line 2179
    move v8, v12

    #@18e
    goto/16 :goto_4

    #@190
    .line 2104
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[F
    :cond_17
    return-void
.end method

.method private static doSort([SII[SII)V
    .locals 29
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [S
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 1042
    sub-int v27, p2, p1

    #@2
    const/16 v28, 0x11e

    #@4
    move/from16 v0, v27

    #@6
    move/from16 v1, v28

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1043
    const/16 v27, 0x1

    #@c
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p1

    #@10
    move/from16 v2, p2

    #@12
    move/from16 v3, v27

    #@14
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    #@17
    .line 1044
    return-void

    #@18
    .line 1051
    :cond_0
    const/16 v27, 0x44

    #@1a
    move/from16 v0, v27

    #@1c
    new-array v0, v0, [I

    #@1e
    move-object/from16 v24, v0

    #@20
    .line 1052
    .local v24, "run":[I
    const/4 v8, 0x0

    #@21
    .local v8, "count":I
    const/16 v27, 0x0

    #@23
    aput p1, v24, v27

    #@25
    .line 1055
    move/from16 v11, p1

    #@27
    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    #@29
    if-ge v11, v0, :cond_9

    #@2b
    .line 1056
    aget-short v27, p0, v11

    #@2d
    add-int/lit8 v28, v11, 0x1

    #@2f
    aget-short v28, p0, v28

    #@31
    move/from16 v0, v27

    #@33
    move/from16 v1, v28

    #@35
    if-ge v0, v1, :cond_3

    #@37
    .line 1057
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@39
    move/from16 v0, p2

    #@3b
    if-gt v11, v0, :cond_2

    #@3d
    add-int/lit8 v27, v11, -0x1

    #@3f
    aget-short v27, p0, v27

    #@41
    aget-short v28, p0, v11

    #@43
    move/from16 v0, v27

    #@45
    move/from16 v1, v28

    #@47
    if-le v0, v1, :cond_1

    #@49
    .line 1076
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@4b
    const/16 v27, 0x43

    #@4d
    move/from16 v0, v27

    #@4f
    if-ne v8, v0, :cond_8

    #@51
    .line 1077
    const/16 v27, 0x1

    #@53
    move-object/from16 v0, p0

    #@55
    move/from16 v1, p1

    #@57
    move/from16 v2, p2

    #@59
    move/from16 v3, v27

    #@5b
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    #@5e
    .line 1078
    return-void

    #@5f
    .line 1058
    :cond_3
    aget-short v27, p0, v11

    #@61
    add-int/lit8 v28, v11, 0x1

    #@63
    aget-short v28, p0, v28

    #@65
    move/from16 v0, v27

    #@67
    move/from16 v1, v28

    #@69
    if-le v0, v1, :cond_6

    #@6b
    .line 1059
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@6d
    move/from16 v0, p2

    #@6f
    if-gt v11, v0, :cond_5

    #@71
    add-int/lit8 v27, v11, -0x1

    #@73
    aget-short v27, p0, v27

    #@75
    aget-short v28, p0, v11

    #@77
    move/from16 v0, v27

    #@79
    move/from16 v1, v28

    #@7b
    if-ge v0, v1, :cond_4

    #@7d
    .line 1060
    :cond_5
    aget v27, v24, v8

    #@7f
    add-int/lit8 v13, v27, -0x1

    #@81
    .local v13, "lo":I
    move v9, v11

    #@82
    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@84
    add-int/lit8 v9, v9, -0x1

    #@86
    if-ge v13, v9, :cond_2

    #@88
    .line 1061
    aget-short v25, p0, v13

    #@8a
    .local v25, "t":S
    aget-short v27, p0, v9

    #@8c
    aput-short v27, p0, v13

    #@8e
    aput-short v25, p0, v9

    #@90
    goto :goto_1

    #@91
    .line 1064
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":S
    :cond_6
    const/16 v14, 0x21

    #@93
    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@95
    move/from16 v0, p2

    #@97
    if-gt v11, v0, :cond_2

    #@99
    add-int/lit8 v27, v11, -0x1

    #@9b
    aget-short v27, p0, v27

    #@9d
    aget-short v28, p0, v11

    #@9f
    move/from16 v0, v27

    #@a1
    move/from16 v1, v28

    #@a3
    if-ne v0, v1, :cond_2

    #@a5
    .line 1065
    add-int/lit8 v14, v14, -0x1

    #@a7
    if-nez v14, :cond_7

    #@a9
    .line 1066
    const/16 v27, 0x1

    #@ab
    move-object/from16 v0, p0

    #@ad
    move/from16 v1, p1

    #@af
    move/from16 v2, p2

    #@b1
    move/from16 v3, v27

    #@b3
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    #@b6
    .line 1067
    return-void

    #@b7
    .line 1055
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    #@b9
    goto/16 :goto_0

    #@bb
    .line 1084
    :cond_9
    aget v27, v24, v8

    #@bd
    add-int/lit8 v23, p2, 0x1

    #@bf
    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    #@c1
    move/from16 v1, p2

    #@c3
    if-ne v0, v1, :cond_b

    #@c5
    .line 1085
    add-int/lit8 v8, v8, 0x1

    #@c7
    aput v23, v24, v8

    #@c9
    .line 1091
    :cond_a
    const/16 v18, 0x0

    #@cb
    .line 1092
    .local v18, "odd":B
    const/16 v16, 0x1

    #@cd
    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    #@cf
    move/from16 v0, v16

    #@d1
    if-ge v0, v8, :cond_c

    #@d3
    xor-int/lit8 v27, v18, 0x1

    #@d5
    move/from16 v0, v27

    #@d7
    int-to-byte v0, v0

    #@d8
    move/from16 v18, v0

    #@da
    .local v18, "odd":B
    goto :goto_2

    #@db
    .line 1086
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v27, 0x1

    #@dd
    move/from16 v0, v27

    #@df
    if-ne v8, v0, :cond_a

    #@e1
    .line 1087
    return-void

    #@e2
    .line 1097
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    #@e4
    .line 1098
    .local v6, "blen":I
    if-eqz p3, :cond_d

    #@e6
    move/from16 v0, p5

    #@e8
    if-ge v0, v6, :cond_10

    #@ea
    .line 1099
    :cond_d
    :goto_3
    new-array v0, v6, [S

    #@ec
    move-object/from16 p3, v0

    #@ee
    .line 1100
    const/16 p4, 0x0

    #@f0
    .line 1102
    :cond_e
    if-nez v18, :cond_11

    #@f2
    .line 1103
    move-object/from16 v0, p0

    #@f4
    move/from16 v1, p1

    #@f6
    move-object/from16 v2, p3

    #@f8
    move/from16 v3, p4

    #@fa
    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@fd
    .line 1104
    move-object/from16 v5, p0

    #@ff
    .line 1105
    .local v5, "b":[S
    const/4 v7, 0x0

    #@100
    .line 1106
    .local v7, "bo":I
    move-object/from16 p0, p3

    #@102
    .line 1107
    sub-int v4, p4, p1

    #@104
    .line 1115
    .local v4, "ao":I
    :goto_4
    const/16 v27, 0x1

    #@106
    move/from16 v0, v27

    #@108
    if-le v8, v0, :cond_17

    #@10a
    .line 1116
    const/4 v12, 0x0

    #@10b
    .local v12, "last":I
    const/4 v11, 0x2

    #@10c
    :goto_5
    if-gt v11, v8, :cond_14

    #@10e
    .line 1117
    aget v9, v24, v11

    #@110
    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    #@112
    aget v15, v24, v27

    #@114
    .line 1118
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    #@116
    aget v10, v24, v27

    #@118
    .local v10, "i":I
    move/from16 v19, v10

    #@11a
    .local v19, "p":I
    move/from16 v21, v15

    #@11c
    .local v21, "q":I
    move/from16 v22, v21

    #@11e
    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    #@120
    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    #@122
    .line 1119
    move/from16 v0, v22

    #@124
    if-ge v0, v9, :cond_f

    #@126
    move/from16 v0, v20

    #@128
    if-ge v0, v15, :cond_12

    #@12a
    add-int v27, v20, v4

    #@12c
    aget-short v27, p0, v27

    #@12e
    add-int v28, v22, v4

    #@130
    aget-short v28, p0, v28

    #@132
    move/from16 v0, v27

    #@134
    move/from16 v1, v28

    #@136
    if-gt v0, v1, :cond_12

    #@138
    .line 1120
    :cond_f
    add-int v27, v10, v7

    #@13a
    add-int/lit8 v19, v20, 0x1

    #@13c
    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    #@13e
    aget-short v28, p0, v28

    #@140
    aput-short v28, v5, v27

    #@142
    move/from16 v21, v22

    #@144
    .line 1118
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    #@146
    move/from16 v22, v21

    #@148
    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    #@14a
    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    #@14b
    .line 1098
    .end local v4    # "ao":I
    .end local v5    # "b":[S
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v27, p4, v6

    #@14d
    move-object/from16 v0, p3

    #@14f
    array-length v0, v0

    #@150
    move/from16 v28, v0

    #@152
    move/from16 v0, v27

    #@154
    move/from16 v1, v28

    #@156
    if-le v0, v1, :cond_e

    #@158
    goto :goto_3

    #@159
    .line 1109
    :cond_11
    move-object/from16 v5, p3

    #@15b
    .line 1110
    .restart local v5    # "b":[S
    const/4 v4, 0x0

    #@15c
    .line 1111
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    #@15e
    .restart local v7    # "bo":I
    goto :goto_4

    #@15f
    .line 1122
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v27, v10, v7

    #@161
    add-int/lit8 v21, v22, 0x1

    #@163
    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    #@165
    aget-short v28, p0, v28

    #@167
    aput-short v28, v5, v27

    #@169
    move/from16 v19, v20

    #@16b
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    #@16c
    .line 1125
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    #@16e
    aput v9, v24, v12

    #@170
    .line 1116
    add-int/lit8 v11, v11, 0x2

    #@172
    goto :goto_5

    #@173
    .line 1127
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v27, v8, 0x1

    #@175
    if-eqz v27, :cond_16

    #@177
    .line 1128
    move/from16 v10, v23

    #@179
    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    #@17b
    aget v13, v24, v27

    #@17d
    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    #@17f
    if-lt v10, v13, :cond_15

    #@181
    .line 1129
    add-int v27, v10, v7

    #@183
    add-int v28, v10, v4

    #@185
    aget-short v28, p0, v28

    #@187
    aput-short v28, v5, v27

    #@189
    goto :goto_8

    #@18a
    .line 1131
    :cond_15
    add-int/lit8 v12, v12, 0x1

    #@18c
    aput v23, v24, v12

    #@18e
    .line 1133
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v26, p0

    #@190
    .local v26, "t":[S
    move-object/from16 p0, v5

    #@192
    move-object/from16 v5, v26

    #@194
    .line 1134
    move/from16 v17, v4

    #@196
    .local v17, "o":I
    move v4, v7

    #@197
    move/from16 v7, v17

    #@199
    .line 1115
    move v8, v12

    #@19a
    goto/16 :goto_4

    #@19c
    .line 1040
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[S
    :cond_17
    return-void
.end method

.method static sort([BII)V
    .locals 10
    .param p0, "a"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 1972
    sub-int v8, p2, p1

    #@2
    const/16 v9, 0x1d

    #@4
    if-le v8, v9, :cond_3

    #@6
    .line 1973
    const/16 v8, 0x100

    #@8
    new-array v1, v8, [I

    #@a
    .line 1975
    .local v1, "count":[I
    add-int/lit8 v2, p1, -0x1

    #@c
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    #@e
    if-gt v2, p2, :cond_0

    #@10
    .line 1976
    aget-byte v8, p0, v2

    #@12
    add-int/lit16 v8, v8, 0x80

    #@14
    aget v9, v1, v8

    #@16
    add-int/lit8 v9, v9, 0x1

    #@18
    aput v9, v1, v8

    #@1a
    goto :goto_0

    #@1b
    .line 1978
    :cond_0
    const/16 v2, 0x100

    #@1d
    add-int/lit8 v5, p2, 0x1

    #@1f
    .local v5, "k":I
    :cond_1
    if-le v5, p1, :cond_6

    #@21
    .line 1979
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@23
    aget v8, v1, v2

    #@25
    if-eqz v8, :cond_2

    #@27
    .line 1980
    add-int/lit8 v8, v2, -0x80

    #@29
    int-to-byte v7, v8

    #@2a
    .line 1981
    .local v7, "value":B
    aget v6, v1, v2

    #@2c
    .line 1984
    .local v6, "s":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    #@2e
    aput-byte v7, p0, v5

    #@30
    .line 1985
    add-int/lit8 v6, v6, -0x1

    #@32
    if-lez v6, :cond_1

    #@34
    goto :goto_1

    #@35
    .line 1988
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v5    # "k":I
    .end local v6    # "s":I
    .end local v7    # "value":B
    :cond_3
    move v2, p1

    #@36
    .restart local v2    # "i":I
    move v3, p1

    #@37
    .local v3, "j":I
    :goto_2
    if-ge v2, p2, :cond_6

    #@39
    .line 1989
    add-int/lit8 v8, v2, 0x1

    #@3b
    aget-byte v0, p0, v8

    #@3d
    .line 1990
    .local v0, "ai":B
    :goto_3
    aget-byte v8, p0, v3

    #@3f
    if-ge v0, v8, :cond_4

    #@41
    .line 1991
    add-int/lit8 v8, v3, 0x1

    #@43
    aget-byte v9, p0, v3

    #@45
    aput-byte v9, p0, v8

    #@47
    .line 1992
    add-int/lit8 v4, v3, -0x1

    #@49
    .end local v3    # "j":I
    .local v4, "j":I
    if-ne v3, p1, :cond_5

    #@4b
    move v3, v4

    #@4c
    .line 1996
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v8, v3, 0x1

    #@4e
    aput-byte v0, p0, v8

    #@50
    .line 1988
    add-int/lit8 v2, v2, 0x1

    #@52
    move v3, v2

    #@53
    goto :goto_2

    #@54
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_5
    move v3, v4

    #@55
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    #@56
    .line 1970
    .end local v0    # "ai":B
    .end local v3    # "j":I
    :cond_6
    return-void
.end method

.method private static sort([CIIZ)V
    .locals 29
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    #@0
    .prologue
    .line 1631
    sub-int v27, p2, p1

    #@2
    add-int/lit8 v20, v27, 0x1

    #@4
    .line 1634
    .local v20, "length":I
    const/16 v27, 0x2f

    #@6
    move/from16 v0, v20

    #@8
    move/from16 v1, v27

    #@a
    if-ge v0, v1, :cond_b

    #@c
    .line 1635
    if-eqz p3, :cond_3

    #@e
    .line 1641
    move/from16 v15, p1

    #@10
    .local v15, "i":I
    move/from16 v16, p1

    #@12
    .local v16, "j":I
    :goto_0
    move/from16 v0, p2

    #@14
    if-ge v15, v0, :cond_a

    #@16
    .line 1642
    add-int/lit8 v27, v15, 0x1

    #@18
    aget-char v6, p0, v27

    #@1a
    .line 1643
    .local v6, "ai":C
    :goto_1
    aget-char v27, p0, v16

    #@1c
    move/from16 v0, v27

    #@1e
    if-ge v6, v0, :cond_0

    #@20
    .line 1644
    add-int/lit8 v27, v16, 0x1

    #@22
    aget-char v28, p0, v16

    #@24
    aput-char v28, p0, v27

    #@26
    .line 1645
    add-int/lit8 v17, v16, -0x1

    #@28
    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    #@2a
    move/from16 v1, p1

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    move/from16 v16, v17

    #@30
    .line 1649
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_0
    add-int/lit8 v27, v16, 0x1

    #@32
    aput-char v6, p0, v27

    #@34
    .line 1641
    add-int/lit8 v15, v15, 0x1

    #@36
    move/from16 v16, v15

    #@38
    goto :goto_0

    #@39
    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_1
    move/from16 v16, v17

    #@3b
    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    #@3c
    .line 1659
    .end local v6    # "ai":C
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@3e
    aget-char v27, p0, p1

    #@40
    add-int/lit8 v28, p1, -0x1

    #@42
    aget-char v28, p0, v28

    #@44
    move/from16 v0, v27

    #@46
    move/from16 v1, v28

    #@48
    if-lt v0, v1, :cond_4

    #@4a
    .line 1656
    :cond_3
    move/from16 v0, p1

    #@4c
    move/from16 v1, p2

    #@4e
    if-lt v0, v1, :cond_2

    #@50
    .line 1657
    return-void

    #@51
    .line 1669
    :cond_4
    move/from16 v18, p1

    #@53
    .local v18, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    #@55
    move/from16 v0, p1

    #@57
    move/from16 v1, p2

    #@59
    if-gt v0, v1, :cond_8

    #@5b
    .line 1670
    aget-char v4, p0, v18

    #@5d
    .local v4, "a1":C
    aget-char v5, p0, p1

    #@5f
    .line 1672
    .local v5, "a2":C
    if-ge v4, v5, :cond_5

    #@61
    .line 1673
    move v5, v4

    #@62
    aget-char v4, p0, p1

    #@64
    .line 1675
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    #@66
    aget-char v27, p0, v18

    #@68
    move/from16 v0, v27

    #@6a
    if-ge v4, v0, :cond_6

    #@6c
    .line 1676
    add-int/lit8 v27, v18, 0x2

    #@6e
    aget-char v28, p0, v18

    #@70
    aput-char v28, p0, v27

    #@72
    goto :goto_3

    #@73
    .line 1678
    :cond_6
    add-int/lit8 v18, v18, 0x1

    #@75
    add-int/lit8 v27, v18, 0x1

    #@77
    aput-char v4, p0, v27

    #@79
    .line 1680
    :goto_4
    add-int/lit8 v18, v18, -0x1

    #@7b
    aget-char v27, p0, v18

    #@7d
    move/from16 v0, v27

    #@7f
    if-ge v5, v0, :cond_7

    #@81
    .line 1681
    add-int/lit8 v27, v18, 0x1

    #@83
    aget-char v28, p0, v18

    #@85
    aput-char v28, p0, v27

    #@87
    goto :goto_4

    #@88
    .line 1683
    :cond_7
    add-int/lit8 v27, v18, 0x1

    #@8a
    aput-char v5, p0, v27

    #@8c
    .line 1669
    add-int/lit8 p1, p1, 0x1

    #@8e
    move/from16 v18, p1

    #@90
    goto :goto_2

    #@91
    .line 1685
    .end local v4    # "a1":C
    .end local v5    # "a2":C
    :cond_8
    aget-char v19, p0, p2

    #@93
    .line 1687
    .local v19, "last":C
    :goto_5
    add-int/lit8 p2, p2, -0x1

    #@95
    aget-char v27, p0, p2

    #@97
    move/from16 v0, v19

    #@99
    move/from16 v1, v27

    #@9b
    if-ge v0, v1, :cond_9

    #@9d
    .line 1688
    add-int/lit8 v27, p2, 0x1

    #@9f
    aget-char v28, p0, p2

    #@a1
    aput-char v28, p0, v27

    #@a3
    goto :goto_5

    #@a4
    .line 1690
    :cond_9
    add-int/lit8 v27, p2, 0x1

    #@a6
    aput-char v19, p0, v27

    #@a8
    .line 1692
    .end local v18    # "k":I
    .end local v19    # "last":C
    :cond_a
    return-void

    #@a9
    .line 1696
    :cond_b
    shr-int/lit8 v27, v20, 0x3

    #@ab
    shr-int/lit8 v28, v20, 0x6

    #@ad
    add-int v27, v27, v28

    #@af
    add-int/lit8 v25, v27, 0x1

    #@b1
    .line 1705
    .local v25, "seventh":I
    add-int v27, p1, p2

    #@b3
    ushr-int/lit8 v10, v27, 0x1

    #@b5
    .line 1706
    .local v10, "e3":I
    sub-int v9, v10, v25

    #@b7
    .line 1707
    .local v9, "e2":I
    sub-int v8, v9, v25

    #@b9
    .line 1708
    .local v8, "e1":I
    add-int v11, v10, v25

    #@bb
    .line 1709
    .local v11, "e4":I
    add-int v12, v11, v25

    #@bd
    .line 1712
    .local v12, "e5":I
    aget-char v27, p0, v9

    #@bf
    aget-char v28, p0, v8

    #@c1
    move/from16 v0, v27

    #@c3
    move/from16 v1, v28

    #@c5
    if-ge v0, v1, :cond_c

    #@c7
    aget-char v26, p0, v9

    #@c9
    .local v26, "t":C
    aget-char v27, p0, v8

    #@cb
    aput-char v27, p0, v9

    #@cd
    aput-char v26, p0, v8

    #@cf
    .line 1714
    .end local v26    # "t":C
    :cond_c
    aget-char v27, p0, v10

    #@d1
    aget-char v28, p0, v9

    #@d3
    move/from16 v0, v27

    #@d5
    move/from16 v1, v28

    #@d7
    if-ge v0, v1, :cond_d

    #@d9
    aget-char v26, p0, v10

    #@db
    .restart local v26    # "t":C
    aget-char v27, p0, v9

    #@dd
    aput-char v27, p0, v10

    #@df
    aput-char v26, p0, v9

    #@e1
    .line 1715
    aget-char v27, p0, v8

    #@e3
    move/from16 v0, v26

    #@e5
    move/from16 v1, v27

    #@e7
    if-ge v0, v1, :cond_d

    #@e9
    aget-char v27, p0, v8

    #@eb
    aput-char v27, p0, v9

    #@ed
    aput-char v26, p0, v8

    #@ef
    .line 1717
    .end local v26    # "t":C
    :cond_d
    aget-char v27, p0, v11

    #@f1
    aget-char v28, p0, v10

    #@f3
    move/from16 v0, v27

    #@f5
    move/from16 v1, v28

    #@f7
    if-ge v0, v1, :cond_e

    #@f9
    aget-char v26, p0, v11

    #@fb
    .restart local v26    # "t":C
    aget-char v27, p0, v10

    #@fd
    aput-char v27, p0, v11

    #@ff
    aput-char v26, p0, v10

    #@101
    .line 1718
    aget-char v27, p0, v9

    #@103
    move/from16 v0, v26

    #@105
    move/from16 v1, v27

    #@107
    if-ge v0, v1, :cond_e

    #@109
    aget-char v27, p0, v9

    #@10b
    aput-char v27, p0, v10

    #@10d
    aput-char v26, p0, v9

    #@10f
    .line 1719
    aget-char v27, p0, v8

    #@111
    move/from16 v0, v26

    #@113
    move/from16 v1, v27

    #@115
    if-ge v0, v1, :cond_e

    #@117
    aget-char v27, p0, v8

    #@119
    aput-char v27, p0, v9

    #@11b
    aput-char v26, p0, v8

    #@11d
    .line 1722
    .end local v26    # "t":C
    :cond_e
    aget-char v27, p0, v12

    #@11f
    aget-char v28, p0, v11

    #@121
    move/from16 v0, v27

    #@123
    move/from16 v1, v28

    #@125
    if-ge v0, v1, :cond_f

    #@127
    aget-char v26, p0, v12

    #@129
    .restart local v26    # "t":C
    aget-char v27, p0, v11

    #@12b
    aput-char v27, p0, v12

    #@12d
    aput-char v26, p0, v11

    #@12f
    .line 1723
    aget-char v27, p0, v10

    #@131
    move/from16 v0, v26

    #@133
    move/from16 v1, v27

    #@135
    if-ge v0, v1, :cond_f

    #@137
    aget-char v27, p0, v10

    #@139
    aput-char v27, p0, v11

    #@13b
    aput-char v26, p0, v10

    #@13d
    .line 1724
    aget-char v27, p0, v9

    #@13f
    move/from16 v0, v26

    #@141
    move/from16 v1, v27

    #@143
    if-ge v0, v1, :cond_f

    #@145
    aget-char v27, p0, v9

    #@147
    aput-char v27, p0, v10

    #@149
    aput-char v26, p0, v9

    #@14b
    .line 1725
    aget-char v27, p0, v8

    #@14d
    move/from16 v0, v26

    #@14f
    move/from16 v1, v27

    #@151
    if-ge v0, v1, :cond_f

    #@153
    aget-char v27, p0, v8

    #@155
    aput-char v27, p0, v9

    #@157
    aput-char v26, p0, v8

    #@159
    .line 1731
    .end local v26    # "t":C
    :cond_f
    move/from16 v21, p1

    #@15b
    .line 1732
    .local v21, "less":I
    move/from16 v13, p2

    #@15d
    .line 1734
    .local v13, "great":I
    aget-char v27, p0, v8

    #@15f
    aget-char v28, p0, v9

    #@161
    move/from16 v0, v27

    #@163
    move/from16 v1, v28

    #@165
    if-eq v0, v1, :cond_20

    #@167
    aget-char v27, p0, v9

    #@169
    aget-char v28, p0, v10

    #@16b
    move/from16 v0, v27

    #@16d
    move/from16 v1, v28

    #@16f
    if-eq v0, v1, :cond_20

    #@171
    aget-char v27, p0, v10

    #@173
    aget-char v28, p0, v11

    #@175
    move/from16 v0, v27

    #@177
    move/from16 v1, v28

    #@179
    if-eq v0, v1, :cond_20

    #@17b
    aget-char v27, p0, v11

    #@17d
    aget-char v28, p0, v12

    #@17f
    move/from16 v0, v27

    #@181
    move/from16 v1, v28

    #@183
    if-eq v0, v1, :cond_20

    #@185
    .line 1740
    aget-char v23, p0, v9

    #@187
    .line 1741
    .local v23, "pivot1":C
    aget-char v24, p0, v11

    #@189
    .line 1749
    .local v24, "pivot2":C
    aget-char v27, p0, p1

    #@18b
    aput-char v27, p0, v9

    #@18d
    .line 1750
    aget-char v27, p0, p2

    #@18f
    aput-char v27, p0, v11

    #@191
    .line 1755
    :cond_10
    add-int/lit8 v21, v21, 0x1

    #@193
    aget-char v27, p0, v21

    #@195
    move/from16 v0, v27

    #@197
    move/from16 v1, v23

    #@199
    if-lt v0, v1, :cond_10

    #@19b
    .line 1756
    :cond_11
    add-int/lit8 v13, v13, -0x1

    #@19d
    aget-char v27, p0, v13

    #@19f
    move/from16 v0, v27

    #@1a1
    move/from16 v1, v24

    #@1a3
    if-gt v0, v1, :cond_11

    #@1a5
    .line 1778
    add-int/lit8 v18, v21, -0x1

    #@1a7
    .restart local v18    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    #@1a9
    move/from16 v0, v18

    #@1ab
    if-gt v0, v13, :cond_14

    #@1ad
    .line 1779
    aget-char v7, p0, v18

    #@1af
    .line 1780
    .local v7, "ak":C
    move/from16 v0, v23

    #@1b1
    if-ge v7, v0, :cond_13

    #@1b3
    .line 1781
    aget-char v27, p0, v21

    #@1b5
    aput-char v27, p0, v18

    #@1b7
    .line 1786
    aput-char v7, p0, v21

    #@1b9
    .line 1787
    add-int/lit8 v21, v21, 0x1

    #@1bb
    goto :goto_6

    #@1bc
    .line 1788
    :cond_13
    move/from16 v0, v24

    #@1be
    if-le v7, v0, :cond_12

    #@1c0
    .line 1789
    :goto_7
    aget-char v27, p0, v13

    #@1c2
    move/from16 v0, v27

    #@1c4
    move/from16 v1, v24

    #@1c6
    if-le v0, v1, :cond_16

    #@1c8
    .line 1790
    add-int/lit8 v14, v13, -0x1

    #@1ca
    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    #@1cc
    if-ne v13, v0, :cond_15

    #@1ce
    move v13, v14

    #@1cf
    .line 1811
    .end local v7    # "ak":C
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_14
    add-int/lit8 v27, v21, -0x1

    #@1d1
    aget-char v27, p0, v27

    #@1d3
    aput-char v27, p0, p1

    #@1d5
    add-int/lit8 v27, v21, -0x1

    #@1d7
    aput-char v23, p0, v27

    #@1d9
    .line 1812
    add-int/lit8 v27, v13, 0x1

    #@1db
    aget-char v27, p0, v27

    #@1dd
    aput-char v27, p0, p2

    #@1df
    add-int/lit8 v27, v13, 0x1

    #@1e1
    aput-char v24, p0, v27

    #@1e3
    .line 1815
    add-int/lit8 v27, v21, -0x2

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    move/from16 v1, p1

    #@1e9
    move/from16 v2, v27

    #@1eb
    move/from16 v3, p3

    #@1ed
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    #@1f0
    .line 1816
    add-int/lit8 v27, v13, 0x2

    #@1f2
    const/16 v28, 0x0

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    move/from16 v1, v27

    #@1f8
    move/from16 v2, p2

    #@1fa
    move/from16 v3, v28

    #@1fc
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    #@1ff
    .line 1822
    move/from16 v0, v21

    #@201
    if-ge v0, v8, :cond_1c

    #@203
    if-ge v12, v13, :cond_1c

    #@205
    .line 1826
    :goto_8
    aget-char v27, p0, v21

    #@207
    move/from16 v0, v27

    #@209
    move/from16 v1, v23

    #@20b
    if-ne v0, v1, :cond_18

    #@20d
    .line 1827
    add-int/lit8 v21, v21, 0x1

    #@20f
    goto :goto_8

    #@210
    .end local v13    # "great":I
    .restart local v7    # "ak":C
    .restart local v14    # "great":I
    :cond_15
    move v13, v14

    #@211
    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_7

    #@212
    .line 1794
    :cond_16
    aget-char v27, p0, v13

    #@214
    move/from16 v0, v27

    #@216
    move/from16 v1, v23

    #@218
    if-ge v0, v1, :cond_17

    #@21a
    .line 1795
    aget-char v27, p0, v21

    #@21c
    aput-char v27, p0, v18

    #@21e
    .line 1796
    aget-char v27, p0, v13

    #@220
    aput-char v27, p0, v21

    #@222
    .line 1797
    add-int/lit8 v21, v21, 0x1

    #@224
    .line 1805
    :goto_9
    aput-char v7, p0, v13

    #@226
    .line 1806
    add-int/lit8 v13, v13, -0x1

    #@228
    goto/16 :goto_6

    #@22a
    .line 1799
    :cond_17
    aget-char v27, p0, v13

    #@22c
    aput-char v27, p0, v18

    #@22e
    goto :goto_9

    #@22f
    .line 1830
    .end local v7    # "ak":C
    :cond_18
    :goto_a
    aget-char v27, p0, v13

    #@231
    move/from16 v0, v27

    #@233
    move/from16 v1, v24

    #@235
    if-ne v0, v1, :cond_19

    #@237
    .line 1831
    add-int/lit8 v13, v13, -0x1

    #@239
    goto :goto_a

    #@23a
    .line 1854
    :cond_19
    add-int/lit8 v18, v21, -0x1

    #@23c
    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    #@23e
    move/from16 v0, v18

    #@240
    if-gt v0, v13, :cond_1c

    #@242
    .line 1855
    aget-char v7, p0, v18

    #@244
    .line 1856
    .restart local v7    # "ak":C
    move/from16 v0, v23

    #@246
    if-ne v7, v0, :cond_1b

    #@248
    .line 1857
    aget-char v27, p0, v21

    #@24a
    aput-char v27, p0, v18

    #@24c
    .line 1858
    aput-char v7, p0, v21

    #@24e
    .line 1859
    add-int/lit8 v21, v21, 0x1

    #@250
    goto :goto_b

    #@251
    .line 1860
    :cond_1b
    move/from16 v0, v24

    #@253
    if-ne v7, v0, :cond_1a

    #@255
    .line 1861
    :goto_c
    aget-char v27, p0, v13

    #@257
    move/from16 v0, v27

    #@259
    move/from16 v1, v24

    #@25b
    if-ne v0, v1, :cond_1e

    #@25d
    .line 1862
    add-int/lit8 v14, v13, -0x1

    #@25f
    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    #@261
    if-ne v13, v0, :cond_1d

    #@263
    move v13, v14

    #@264
    .line 1888
    .end local v7    # "ak":C
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1c
    const/16 v27, 0x0

    #@266
    move-object/from16 v0, p0

    #@268
    move/from16 v1, v21

    #@26a
    move/from16 v2, v27

    #@26c
    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    #@26f
    .line 1630
    .end local v23    # "pivot1":C
    .end local v24    # "pivot2":C
    :goto_d
    return-void

    #@270
    .end local v13    # "great":I
    .restart local v7    # "ak":C
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":C
    .restart local v24    # "pivot2":C
    :cond_1d
    move v13, v14

    #@271
    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_c

    #@272
    .line 1866
    :cond_1e
    aget-char v27, p0, v13

    #@274
    move/from16 v0, v27

    #@276
    move/from16 v1, v23

    #@278
    if-ne v0, v1, :cond_1f

    #@27a
    .line 1867
    aget-char v27, p0, v21

    #@27c
    aput-char v27, p0, v18

    #@27e
    .line 1876
    aput-char v23, p0, v21

    #@280
    .line 1877
    add-int/lit8 v21, v21, 0x1

    #@282
    .line 1881
    :goto_e
    aput-char v7, p0, v13

    #@284
    .line 1882
    add-int/lit8 v13, v13, -0x1

    #@286
    goto :goto_b

    #@287
    .line 1879
    :cond_1f
    aget-char v27, p0, v13

    #@289
    aput-char v27, p0, v18

    #@28b
    goto :goto_e

    #@28c
    .line 1895
    .end local v7    # "ak":C
    .end local v18    # "k":I
    .end local v23    # "pivot1":C
    .end local v24    # "pivot2":C
    :cond_20
    aget-char v22, p0, v10

    #@28e
    .line 1917
    .local v22, "pivot":C
    move/from16 v18, p1

    #@290
    .restart local v18    # "k":I
    :goto_f
    move/from16 v0, v18

    #@292
    if-gt v0, v13, :cond_25

    #@294
    .line 1918
    aget-char v27, p0, v18

    #@296
    move/from16 v0, v27

    #@298
    move/from16 v1, v22

    #@29a
    if-ne v0, v1, :cond_21

    #@29c
    .line 1917
    :goto_10
    add-int/lit8 v18, v18, 0x1

    #@29e
    goto :goto_f

    #@29f
    .line 1921
    :cond_21
    aget-char v7, p0, v18

    #@2a1
    .line 1922
    .restart local v7    # "ak":C
    move/from16 v0, v22

    #@2a3
    if-ge v7, v0, :cond_22

    #@2a5
    .line 1923
    aget-char v27, p0, v21

    #@2a7
    aput-char v27, p0, v18

    #@2a9
    .line 1924
    aput-char v7, p0, v21

    #@2ab
    .line 1925
    add-int/lit8 v21, v21, 0x1

    #@2ad
    goto :goto_10

    #@2ae
    .line 1927
    :cond_22
    :goto_11
    aget-char v27, p0, v13

    #@2b0
    move/from16 v0, v27

    #@2b2
    move/from16 v1, v22

    #@2b4
    if-le v0, v1, :cond_23

    #@2b6
    .line 1928
    add-int/lit8 v13, v13, -0x1

    #@2b8
    goto :goto_11

    #@2b9
    .line 1930
    :cond_23
    aget-char v27, p0, v13

    #@2bb
    move/from16 v0, v27

    #@2bd
    move/from16 v1, v22

    #@2bf
    if-ge v0, v1, :cond_24

    #@2c1
    .line 1931
    aget-char v27, p0, v21

    #@2c3
    aput-char v27, p0, v18

    #@2c5
    .line 1932
    aget-char v27, p0, v13

    #@2c7
    aput-char v27, p0, v21

    #@2c9
    .line 1933
    add-int/lit8 v21, v21, 0x1

    #@2cb
    .line 1945
    :goto_12
    aput-char v7, p0, v13

    #@2cd
    .line 1946
    add-int/lit8 v13, v13, -0x1

    #@2cf
    goto :goto_10

    #@2d0
    .line 1943
    :cond_24
    aput-char v22, p0, v18

    #@2d2
    goto :goto_12

    #@2d3
    .line 1955
    .end local v7    # "ak":C
    :cond_25
    add-int/lit8 v27, v21, -0x1

    #@2d5
    move-object/from16 v0, p0

    #@2d7
    move/from16 v1, p1

    #@2d9
    move/from16 v2, v27

    #@2db
    move/from16 v3, p3

    #@2dd
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    #@2e0
    .line 1956
    add-int/lit8 v27, v13, 0x1

    #@2e2
    const/16 v28, 0x0

    #@2e4
    move-object/from16 v0, p0

    #@2e6
    move/from16 v1, v27

    #@2e8
    move/from16 v2, p2

    #@2ea
    move/from16 v3, v28

    #@2ec
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    #@2ef
    goto :goto_d
.end method

.method static sort([CII[CII)V
    .locals 7
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [C
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 1490
    sub-int v5, p2, p1

    #@2
    const/16 v6, 0xc80

    #@4
    if-le v5, v6, :cond_3

    #@6
    .line 1491
    const/high16 v5, 0x10000

    #@8
    new-array v0, v5, [I

    #@a
    .line 1493
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    #@c
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@e
    if-gt v1, p2, :cond_0

    #@10
    .line 1494
    aget-char v5, p0, v1

    #@12
    aget v6, v0, v5

    #@14
    add-int/lit8 v6, v6, 0x1

    #@16
    aput v6, v0, v5

    #@18
    goto :goto_0

    #@19
    .line 1496
    :cond_0
    const/high16 v1, 0x10000

    #@1b
    add-int/lit8 v2, p2, 0x1

    #@1d
    .local v2, "k":I
    :cond_1
    if-le v2, p1, :cond_4

    #@1f
    .line 1497
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@21
    aget v5, v0, v1

    #@23
    if-eqz v5, :cond_2

    #@25
    .line 1498
    int-to-char v4, v1

    #@26
    .line 1499
    .local v4, "value":C
    aget v3, v0, v1

    #@28
    .line 1502
    .local v3, "s":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@2a
    aput-char v4, p0, v2

    #@2c
    .line 1503
    add-int/lit8 v3, v3, -0x1

    #@2e
    if-lez v3, :cond_1

    #@30
    goto :goto_1

    #@31
    .line 1506
    .end local v0    # "count":[I
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "s":I
    .end local v4    # "value":C
    :cond_3
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([CII[CII)V

    #@34
    .line 1488
    :cond_4
    return-void
.end method

.method private static sort([DIIZ)V
    .locals 40
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    #@0
    .prologue
    .line 2750
    sub-int v36, p2, p1

    #@2
    add-int/lit8 v23, v36, 0x1

    #@4
    .line 2753
    .local v23, "length":I
    const/16 v36, 0x2f

    #@6
    move/from16 v0, v23

    #@8
    move/from16 v1, v36

    #@a
    if-ge v0, v1, :cond_b

    #@c
    .line 2754
    if-eqz p3, :cond_3

    #@e
    .line 2760
    move/from16 v19, p1

    #@10
    .local v19, "i":I
    move/from16 v20, p1

    #@12
    .local v20, "j":I
    :goto_0
    move/from16 v0, v19

    #@14
    move/from16 v1, p2

    #@16
    if-ge v0, v1, :cond_a

    #@18
    .line 2761
    add-int/lit8 v36, v19, 0x1

    #@1a
    aget-wide v8, p0, v36

    #@1c
    .line 2762
    .local v8, "ai":D
    :goto_1
    aget-wide v36, p0, v20

    #@1e
    cmpg-double v36, v8, v36

    #@20
    if-gez v36, :cond_0

    #@22
    .line 2763
    add-int/lit8 v36, v20, 0x1

    #@24
    aget-wide v38, p0, v20

    #@26
    aput-wide v38, p0, v36

    #@28
    .line 2764
    add-int/lit8 v21, v20, -0x1

    #@2a
    .end local v20    # "j":I
    .local v21, "j":I
    move/from16 v0, v20

    #@2c
    move/from16 v1, p1

    #@2e
    if-ne v0, v1, :cond_1

    #@30
    move/from16 v20, v21

    #@32
    .line 2768
    .end local v21    # "j":I
    .restart local v20    # "j":I
    :cond_0
    add-int/lit8 v36, v20, 0x1

    #@34
    aput-wide v8, p0, v36

    #@36
    .line 2760
    add-int/lit8 v19, v19, 0x1

    #@38
    move/from16 v20, v19

    #@3a
    goto :goto_0

    #@3b
    .end local v20    # "j":I
    .restart local v21    # "j":I
    :cond_1
    move/from16 v20, v21

    #@3d
    .end local v21    # "j":I
    .restart local v20    # "j":I
    goto :goto_1

    #@3e
    .line 2778
    .end local v8    # "ai":D
    .end local v19    # "i":I
    .end local v20    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@40
    aget-wide v36, p0, p1

    #@42
    add-int/lit8 v38, p1, -0x1

    #@44
    aget-wide v38, p0, v38

    #@46
    cmpl-double v36, v36, v38

    #@48
    if-ltz v36, :cond_4

    #@4a
    .line 2775
    :cond_3
    move/from16 v0, p1

    #@4c
    move/from16 v1, p2

    #@4e
    if-lt v0, v1, :cond_2

    #@50
    .line 2776
    return-void

    #@51
    .line 2788
    :cond_4
    move/from16 v22, p1

    #@53
    .local v22, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    #@55
    move/from16 v0, p1

    #@57
    move/from16 v1, p2

    #@59
    if-gt v0, v1, :cond_8

    #@5b
    .line 2789
    aget-wide v4, p0, v22

    #@5d
    .local v4, "a1":D
    aget-wide v6, p0, p1

    #@5f
    .line 2791
    .local v6, "a2":D
    cmpg-double v36, v4, v6

    #@61
    if-gez v36, :cond_5

    #@63
    .line 2792
    move-wide v6, v4

    #@64
    aget-wide v4, p0, p1

    #@66
    .line 2794
    :cond_5
    :goto_3
    add-int/lit8 v22, v22, -0x1

    #@68
    aget-wide v36, p0, v22

    #@6a
    cmpg-double v36, v4, v36

    #@6c
    if-gez v36, :cond_6

    #@6e
    .line 2795
    add-int/lit8 v36, v22, 0x2

    #@70
    aget-wide v38, p0, v22

    #@72
    aput-wide v38, p0, v36

    #@74
    goto :goto_3

    #@75
    .line 2797
    :cond_6
    add-int/lit8 v22, v22, 0x1

    #@77
    add-int/lit8 v36, v22, 0x1

    #@79
    aput-wide v4, p0, v36

    #@7b
    .line 2799
    :goto_4
    add-int/lit8 v22, v22, -0x1

    #@7d
    aget-wide v36, p0, v22

    #@7f
    cmpg-double v36, v6, v36

    #@81
    if-gez v36, :cond_7

    #@83
    .line 2800
    add-int/lit8 v36, v22, 0x1

    #@85
    aget-wide v38, p0, v22

    #@87
    aput-wide v38, p0, v36

    #@89
    goto :goto_4

    #@8a
    .line 2802
    :cond_7
    add-int/lit8 v36, v22, 0x1

    #@8c
    aput-wide v6, p0, v36

    #@8e
    .line 2788
    add-int/lit8 p1, p1, 0x1

    #@90
    move/from16 v22, p1

    #@92
    goto :goto_2

    #@93
    .line 2804
    .end local v4    # "a1":D
    .end local v6    # "a2":D
    :cond_8
    aget-wide v24, p0, p2

    #@95
    .line 2806
    .local v24, "last":D
    :goto_5
    add-int/lit8 p2, p2, -0x1

    #@97
    aget-wide v36, p0, p2

    #@99
    cmpg-double v36, v24, v36

    #@9b
    if-gez v36, :cond_9

    #@9d
    .line 2807
    add-int/lit8 v36, p2, 0x1

    #@9f
    aget-wide v38, p0, p2

    #@a1
    aput-wide v38, p0, v36

    #@a3
    goto :goto_5

    #@a4
    .line 2809
    :cond_9
    add-int/lit8 v36, p2, 0x1

    #@a6
    aput-wide v24, p0, v36

    #@a8
    .line 2811
    .end local v22    # "k":I
    .end local v24    # "last":D
    :cond_a
    return-void

    #@a9
    .line 2815
    :cond_b
    shr-int/lit8 v36, v23, 0x3

    #@ab
    shr-int/lit8 v37, v23, 0x6

    #@ad
    add-int v36, v36, v37

    #@af
    add-int/lit8 v27, v36, 0x1

    #@b1
    .line 2824
    .local v27, "seventh":I
    add-int v36, p1, p2

    #@b3
    ushr-int/lit8 v14, v36, 0x1

    #@b5
    .line 2825
    .local v14, "e3":I
    sub-int v13, v14, v27

    #@b7
    .line 2826
    .local v13, "e2":I
    sub-int v12, v13, v27

    #@b9
    .line 2827
    .local v12, "e1":I
    add-int v15, v14, v27

    #@bb
    .line 2828
    .local v15, "e4":I
    add-int v16, v15, v27

    #@bd
    .line 2831
    .local v16, "e5":I
    aget-wide v36, p0, v13

    #@bf
    aget-wide v38, p0, v12

    #@c1
    cmpg-double v36, v36, v38

    #@c3
    if-gez v36, :cond_c

    #@c5
    aget-wide v34, p0, v13

    #@c7
    .local v34, "t":D
    aget-wide v36, p0, v12

    #@c9
    aput-wide v36, p0, v13

    #@cb
    aput-wide v34, p0, v12

    #@cd
    .line 2833
    .end local v34    # "t":D
    :cond_c
    aget-wide v36, p0, v14

    #@cf
    aget-wide v38, p0, v13

    #@d1
    cmpg-double v36, v36, v38

    #@d3
    if-gez v36, :cond_d

    #@d5
    aget-wide v34, p0, v14

    #@d7
    .restart local v34    # "t":D
    aget-wide v36, p0, v13

    #@d9
    aput-wide v36, p0, v14

    #@db
    aput-wide v34, p0, v13

    #@dd
    .line 2834
    aget-wide v36, p0, v12

    #@df
    cmpg-double v36, v34, v36

    #@e1
    if-gez v36, :cond_d

    #@e3
    aget-wide v36, p0, v12

    #@e5
    aput-wide v36, p0, v13

    #@e7
    aput-wide v34, p0, v12

    #@e9
    .line 2836
    .end local v34    # "t":D
    :cond_d
    aget-wide v36, p0, v15

    #@eb
    aget-wide v38, p0, v14

    #@ed
    cmpg-double v36, v36, v38

    #@ef
    if-gez v36, :cond_e

    #@f1
    aget-wide v34, p0, v15

    #@f3
    .restart local v34    # "t":D
    aget-wide v36, p0, v14

    #@f5
    aput-wide v36, p0, v15

    #@f7
    aput-wide v34, p0, v14

    #@f9
    .line 2837
    aget-wide v36, p0, v13

    #@fb
    cmpg-double v36, v34, v36

    #@fd
    if-gez v36, :cond_e

    #@ff
    aget-wide v36, p0, v13

    #@101
    aput-wide v36, p0, v14

    #@103
    aput-wide v34, p0, v13

    #@105
    .line 2838
    aget-wide v36, p0, v12

    #@107
    cmpg-double v36, v34, v36

    #@109
    if-gez v36, :cond_e

    #@10b
    aget-wide v36, p0, v12

    #@10d
    aput-wide v36, p0, v13

    #@10f
    aput-wide v34, p0, v12

    #@111
    .line 2841
    .end local v34    # "t":D
    :cond_e
    aget-wide v36, p0, v16

    #@113
    aget-wide v38, p0, v15

    #@115
    cmpg-double v36, v36, v38

    #@117
    if-gez v36, :cond_f

    #@119
    aget-wide v34, p0, v16

    #@11b
    .restart local v34    # "t":D
    aget-wide v36, p0, v15

    #@11d
    aput-wide v36, p0, v16

    #@11f
    aput-wide v34, p0, v15

    #@121
    .line 2842
    aget-wide v36, p0, v14

    #@123
    cmpg-double v36, v34, v36

    #@125
    if-gez v36, :cond_f

    #@127
    aget-wide v36, p0, v14

    #@129
    aput-wide v36, p0, v15

    #@12b
    aput-wide v34, p0, v14

    #@12d
    .line 2843
    aget-wide v36, p0, v13

    #@12f
    cmpg-double v36, v34, v36

    #@131
    if-gez v36, :cond_f

    #@133
    aget-wide v36, p0, v13

    #@135
    aput-wide v36, p0, v14

    #@137
    aput-wide v34, p0, v13

    #@139
    .line 2844
    aget-wide v36, p0, v12

    #@13b
    cmpg-double v36, v34, v36

    #@13d
    if-gez v36, :cond_f

    #@13f
    aget-wide v36, p0, v12

    #@141
    aput-wide v36, p0, v13

    #@143
    aput-wide v34, p0, v12

    #@145
    .line 2850
    .end local v34    # "t":D
    :cond_f
    move/from16 v26, p1

    #@147
    .line 2851
    .local v26, "less":I
    move/from16 v17, p2

    #@149
    .line 2853
    .local v17, "great":I
    aget-wide v36, p0, v12

    #@14b
    aget-wide v38, p0, v13

    #@14d
    cmpl-double v36, v36, v38

    #@14f
    if-eqz v36, :cond_20

    #@151
    aget-wide v36, p0, v13

    #@153
    aget-wide v38, p0, v14

    #@155
    cmpl-double v36, v36, v38

    #@157
    if-eqz v36, :cond_20

    #@159
    aget-wide v36, p0, v14

    #@15b
    aget-wide v38, p0, v15

    #@15d
    cmpl-double v36, v36, v38

    #@15f
    if-eqz v36, :cond_20

    #@161
    aget-wide v36, p0, v15

    #@163
    aget-wide v38, p0, v16

    #@165
    cmpl-double v36, v36, v38

    #@167
    if-eqz v36, :cond_20

    #@169
    .line 2859
    aget-wide v30, p0, v13

    #@16b
    .line 2860
    .local v30, "pivot1":D
    aget-wide v32, p0, v15

    #@16d
    .line 2868
    .local v32, "pivot2":D
    aget-wide v36, p0, p1

    #@16f
    aput-wide v36, p0, v13

    #@171
    .line 2869
    aget-wide v36, p0, p2

    #@173
    aput-wide v36, p0, v15

    #@175
    .line 2874
    :cond_10
    add-int/lit8 v26, v26, 0x1

    #@177
    aget-wide v36, p0, v26

    #@179
    cmpg-double v36, v36, v30

    #@17b
    if-ltz v36, :cond_10

    #@17d
    .line 2875
    :cond_11
    add-int/lit8 v17, v17, -0x1

    #@17f
    aget-wide v36, p0, v17

    #@181
    cmpl-double v36, v36, v32

    #@183
    if-gtz v36, :cond_11

    #@185
    .line 2897
    add-int/lit8 v22, v26, -0x1

    #@187
    .restart local v22    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v22, v22, 0x1

    #@189
    move/from16 v0, v22

    #@18b
    move/from16 v1, v17

    #@18d
    if-gt v0, v1, :cond_14

    #@18f
    .line 2898
    aget-wide v10, p0, v22

    #@191
    .line 2899
    .local v10, "ak":D
    cmpg-double v36, v10, v30

    #@193
    if-gez v36, :cond_13

    #@195
    .line 2900
    aget-wide v36, p0, v26

    #@197
    aput-wide v36, p0, v22

    #@199
    .line 2905
    aput-wide v10, p0, v26

    #@19b
    .line 2906
    add-int/lit8 v26, v26, 0x1

    #@19d
    goto :goto_6

    #@19e
    .line 2907
    :cond_13
    cmpl-double v36, v10, v32

    #@1a0
    if-lez v36, :cond_12

    #@1a2
    .line 2908
    :goto_7
    aget-wide v36, p0, v17

    #@1a4
    cmpl-double v36, v36, v32

    #@1a6
    if-lez v36, :cond_16

    #@1a8
    .line 2909
    add-int/lit8 v18, v17, -0x1

    #@1aa
    .end local v17    # "great":I
    .local v18, "great":I
    move/from16 v0, v17

    #@1ac
    move/from16 v1, v22

    #@1ae
    if-ne v0, v1, :cond_15

    #@1b0
    move/from16 v17, v18

    #@1b2
    .line 2930
    .end local v10    # "ak":D
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_14
    add-int/lit8 v36, v26, -0x1

    #@1b4
    aget-wide v36, p0, v36

    #@1b6
    aput-wide v36, p0, p1

    #@1b8
    add-int/lit8 v36, v26, -0x1

    #@1ba
    aput-wide v30, p0, v36

    #@1bc
    .line 2931
    add-int/lit8 v36, v17, 0x1

    #@1be
    aget-wide v36, p0, v36

    #@1c0
    aput-wide v36, p0, p2

    #@1c2
    add-int/lit8 v36, v17, 0x1

    #@1c4
    aput-wide v32, p0, v36

    #@1c6
    .line 2934
    add-int/lit8 v36, v26, -0x2

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    move/from16 v1, p1

    #@1cc
    move/from16 v2, v36

    #@1ce
    move/from16 v3, p3

    #@1d0
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    #@1d3
    .line 2935
    add-int/lit8 v36, v17, 0x2

    #@1d5
    const/16 v37, 0x0

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    move/from16 v1, v36

    #@1db
    move/from16 v2, p2

    #@1dd
    move/from16 v3, v37

    #@1df
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    #@1e2
    .line 2941
    move/from16 v0, v26

    #@1e4
    if-ge v0, v12, :cond_1c

    #@1e6
    move/from16 v0, v16

    #@1e8
    move/from16 v1, v17

    #@1ea
    if-ge v0, v1, :cond_1c

    #@1ec
    .line 2945
    :goto_8
    aget-wide v36, p0, v26

    #@1ee
    cmpl-double v36, v36, v30

    #@1f0
    if-nez v36, :cond_18

    #@1f2
    .line 2946
    add-int/lit8 v26, v26, 0x1

    #@1f4
    goto :goto_8

    #@1f5
    .end local v17    # "great":I
    .restart local v10    # "ak":D
    .restart local v18    # "great":I
    :cond_15
    move/from16 v17, v18

    #@1f7
    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_7

    #@1f8
    .line 2913
    :cond_16
    aget-wide v36, p0, v17

    #@1fa
    cmpg-double v36, v36, v30

    #@1fc
    if-gez v36, :cond_17

    #@1fe
    .line 2914
    aget-wide v36, p0, v26

    #@200
    aput-wide v36, p0, v22

    #@202
    .line 2915
    aget-wide v36, p0, v17

    #@204
    aput-wide v36, p0, v26

    #@206
    .line 2916
    add-int/lit8 v26, v26, 0x1

    #@208
    .line 2924
    :goto_9
    aput-wide v10, p0, v17

    #@20a
    .line 2925
    add-int/lit8 v17, v17, -0x1

    #@20c
    goto/16 :goto_6

    #@20e
    .line 2918
    :cond_17
    aget-wide v36, p0, v17

    #@210
    aput-wide v36, p0, v22

    #@212
    goto :goto_9

    #@213
    .line 2949
    .end local v10    # "ak":D
    :cond_18
    :goto_a
    aget-wide v36, p0, v17

    #@215
    cmpl-double v36, v36, v32

    #@217
    if-nez v36, :cond_19

    #@219
    .line 2950
    add-int/lit8 v17, v17, -0x1

    #@21b
    goto :goto_a

    #@21c
    .line 2973
    :cond_19
    add-int/lit8 v22, v26, -0x1

    #@21e
    :cond_1a
    :goto_b
    add-int/lit8 v22, v22, 0x1

    #@220
    move/from16 v0, v22

    #@222
    move/from16 v1, v17

    #@224
    if-gt v0, v1, :cond_1c

    #@226
    .line 2974
    aget-wide v10, p0, v22

    #@228
    .line 2975
    .restart local v10    # "ak":D
    cmpl-double v36, v10, v30

    #@22a
    if-nez v36, :cond_1b

    #@22c
    .line 2976
    aget-wide v36, p0, v26

    #@22e
    aput-wide v36, p0, v22

    #@230
    .line 2977
    aput-wide v10, p0, v26

    #@232
    .line 2978
    add-int/lit8 v26, v26, 0x1

    #@234
    goto :goto_b

    #@235
    .line 2979
    :cond_1b
    cmpl-double v36, v10, v32

    #@237
    if-nez v36, :cond_1a

    #@239
    .line 2980
    :goto_c
    aget-wide v36, p0, v17

    #@23b
    cmpl-double v36, v36, v32

    #@23d
    if-nez v36, :cond_1e

    #@23f
    .line 2981
    add-int/lit8 v18, v17, -0x1

    #@241
    .end local v17    # "great":I
    .restart local v18    # "great":I
    move/from16 v0, v17

    #@243
    move/from16 v1, v22

    #@245
    if-ne v0, v1, :cond_1d

    #@247
    move/from16 v17, v18

    #@249
    .line 3007
    .end local v10    # "ak":D
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_1c
    const/16 v36, 0x0

    #@24b
    move-object/from16 v0, p0

    #@24d
    move/from16 v1, v26

    #@24f
    move/from16 v2, v17

    #@251
    move/from16 v3, v36

    #@253
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    #@256
    .line 2749
    .end local v30    # "pivot1":D
    .end local v32    # "pivot2":D
    :goto_d
    return-void

    #@257
    .end local v17    # "great":I
    .restart local v10    # "ak":D
    .restart local v18    # "great":I
    .restart local v30    # "pivot1":D
    .restart local v32    # "pivot2":D
    :cond_1d
    move/from16 v17, v18

    #@259
    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_c

    #@25a
    .line 2985
    :cond_1e
    aget-wide v36, p0, v17

    #@25c
    cmpl-double v36, v36, v30

    #@25e
    if-nez v36, :cond_1f

    #@260
    .line 2986
    aget-wide v36, p0, v26

    #@262
    aput-wide v36, p0, v22

    #@264
    .line 2995
    aget-wide v36, p0, v17

    #@266
    aput-wide v36, p0, v26

    #@268
    .line 2996
    add-int/lit8 v26, v26, 0x1

    #@26a
    .line 3000
    :goto_e
    aput-wide v10, p0, v17

    #@26c
    .line 3001
    add-int/lit8 v17, v17, -0x1

    #@26e
    goto :goto_b

    #@26f
    .line 2998
    :cond_1f
    aget-wide v36, p0, v17

    #@271
    aput-wide v36, p0, v22

    #@273
    goto :goto_e

    #@274
    .line 3014
    .end local v10    # "ak":D
    .end local v22    # "k":I
    .end local v30    # "pivot1":D
    .end local v32    # "pivot2":D
    :cond_20
    aget-wide v28, p0, v14

    #@276
    .line 3036
    .local v28, "pivot":D
    move/from16 v22, p1

    #@278
    .restart local v22    # "k":I
    :goto_f
    move/from16 v0, v22

    #@27a
    move/from16 v1, v17

    #@27c
    if-gt v0, v1, :cond_25

    #@27e
    .line 3037
    aget-wide v36, p0, v22

    #@280
    cmpl-double v36, v36, v28

    #@282
    if-nez v36, :cond_21

    #@284
    .line 3036
    :goto_10
    add-int/lit8 v22, v22, 0x1

    #@286
    goto :goto_f

    #@287
    .line 3040
    :cond_21
    aget-wide v10, p0, v22

    #@289
    .line 3041
    .restart local v10    # "ak":D
    cmpg-double v36, v10, v28

    #@28b
    if-gez v36, :cond_22

    #@28d
    .line 3042
    aget-wide v36, p0, v26

    #@28f
    aput-wide v36, p0, v22

    #@291
    .line 3043
    aput-wide v10, p0, v26

    #@293
    .line 3044
    add-int/lit8 v26, v26, 0x1

    #@295
    goto :goto_10

    #@296
    .line 3046
    :cond_22
    :goto_11
    aget-wide v36, p0, v17

    #@298
    cmpl-double v36, v36, v28

    #@29a
    if-lez v36, :cond_23

    #@29c
    .line 3047
    add-int/lit8 v17, v17, -0x1

    #@29e
    goto :goto_11

    #@29f
    .line 3049
    :cond_23
    aget-wide v36, p0, v17

    #@2a1
    cmpg-double v36, v36, v28

    #@2a3
    if-gez v36, :cond_24

    #@2a5
    .line 3050
    aget-wide v36, p0, v26

    #@2a7
    aput-wide v36, p0, v22

    #@2a9
    .line 3051
    aget-wide v36, p0, v17

    #@2ab
    aput-wide v36, p0, v26

    #@2ad
    .line 3052
    add-int/lit8 v26, v26, 0x1

    #@2af
    .line 3064
    :goto_12
    aput-wide v10, p0, v17

    #@2b1
    .line 3065
    add-int/lit8 v17, v17, -0x1

    #@2b3
    goto :goto_10

    #@2b4
    .line 3062
    :cond_24
    aget-wide v36, p0, v17

    #@2b6
    aput-wide v36, p0, v22

    #@2b8
    goto :goto_12

    #@2b9
    .line 3074
    .end local v10    # "ak":D
    :cond_25
    add-int/lit8 v36, v26, -0x1

    #@2bb
    move-object/from16 v0, p0

    #@2bd
    move/from16 v1, p1

    #@2bf
    move/from16 v2, v36

    #@2c1
    move/from16 v3, p3

    #@2c3
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    #@2c6
    .line 3075
    add-int/lit8 v36, v17, 0x1

    #@2c8
    const/16 v37, 0x0

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    move/from16 v1, v36

    #@2ce
    move/from16 v2, p2

    #@2d0
    move/from16 v3, v37

    #@2d2
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    #@2d5
    goto :goto_d
.end method

.method static sort([DII[DII)V
    .locals 12
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [D
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 2556
    :goto_0
    if-gt p1, p2, :cond_0

    #@2
    aget-wide v8, p0, p2

    #@4
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    #@7
    move-result v8

    #@8
    if-eqz v8, :cond_0

    #@a
    .line 2557
    add-int/lit8 p2, p2, -0x1

    #@c
    goto :goto_0

    #@d
    .line 2559
    :cond_0
    move v3, p2

    #@e
    .local v3, "k":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@10
    if-lt v3, p1, :cond_2

    #@12
    .line 2560
    aget-wide v0, p0, v3

    #@14
    .line 2561
    .local v0, "ak":D
    cmpl-double v8, v0, v0

    #@16
    if-eqz v8, :cond_1

    #@18
    .line 2562
    aget-wide v8, p0, p2

    #@1a
    aput-wide v8, p0, v3

    #@1c
    .line 2563
    aput-wide v0, p0, p2

    #@1e
    .line 2564
    add-int/lit8 p2, p2, -0x1

    #@20
    goto :goto_1

    #@21
    .line 2571
    .end local v0    # "ak":D
    :cond_2
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([DII[DII)V

    #@24
    .line 2576
    move v2, p2

    #@25
    .line 2581
    .local v2, "hi":I
    :goto_2
    if-ge p1, v2, :cond_4

    #@27
    .line 2582
    add-int v8, p1, v2

    #@29
    ushr-int/lit8 v4, v8, 0x1

    #@2b
    .line 2583
    .local v4, "middle":I
    aget-wide v6, p0, v4

    #@2d
    .line 2585
    .local v6, "middleValue":D
    const-wide/16 v8, 0x0

    #@2f
    cmpg-double v8, v6, v8

    #@31
    if-gez v8, :cond_3

    #@33
    .line 2586
    add-int/lit8 p1, v4, 0x1

    #@35
    goto :goto_2

    #@36
    .line 2588
    :cond_3
    move v2, v4

    #@37
    goto :goto_2

    #@38
    .line 2595
    .end local v4    # "middle":I
    .end local v6    # "middleValue":D
    :cond_4
    :goto_3
    if-gt p1, p2, :cond_5

    #@3a
    aget-wide v8, p0, p1

    #@3c
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3f
    move-result-wide v8

    #@40
    const-wide/16 v10, 0x0

    #@42
    cmp-long v8, v8, v10

    #@44
    if-gez v8, :cond_5

    #@46
    .line 2596
    add-int/lit8 p1, p1, 0x1

    #@48
    goto :goto_3

    #@49
    .line 2620
    :cond_5
    move v3, p1

    #@4a
    add-int/lit8 v5, p1, -0x1

    #@4c
    .local v5, "p":I
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@4e
    if-gt v3, p2, :cond_7

    #@50
    .line 2621
    aget-wide v0, p0, v3

    #@52
    .line 2622
    .restart local v0    # "ak":D
    const-wide/16 v8, 0x0

    #@54
    cmpl-double v8, v0, v8

    #@56
    if-eqz v8, :cond_8

    #@58
    .line 2552
    .end local v0    # "ak":D
    :cond_7
    return-void

    #@59
    .line 2625
    .restart local v0    # "ak":D
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@5c
    move-result-wide v8

    #@5d
    const-wide/16 v10, 0x0

    #@5f
    cmp-long v8, v8, v10

    #@61
    if-gez v8, :cond_6

    #@63
    .line 2626
    const-wide/16 v8, 0x0

    #@65
    aput-wide v8, p0, v3

    #@67
    .line 2627
    add-int/lit8 v5, v5, 0x1

    #@69
    const-wide/high16 v8, -0x8000000000000000L

    #@6b
    aput-wide v8, p0, v5

    #@6d
    goto :goto_4
.end method

.method private static sort([FIIZ)V
    .locals 29
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    #@0
    .prologue
    .line 2211
    sub-int v27, p2, p1

    #@2
    add-int/lit8 v20, v27, 0x1

    #@4
    .line 2214
    .local v20, "length":I
    const/16 v27, 0x2f

    #@6
    move/from16 v0, v20

    #@8
    move/from16 v1, v27

    #@a
    if-ge v0, v1, :cond_b

    #@c
    .line 2215
    if-eqz p3, :cond_3

    #@e
    .line 2221
    move/from16 v15, p1

    #@10
    .local v15, "i":I
    move/from16 v16, p1

    #@12
    .local v16, "j":I
    :goto_0
    move/from16 v0, p2

    #@14
    if-ge v15, v0, :cond_a

    #@16
    .line 2222
    add-int/lit8 v27, v15, 0x1

    #@18
    aget v6, p0, v27

    #@1a
    .line 2223
    .local v6, "ai":F
    :goto_1
    aget v27, p0, v16

    #@1c
    cmpg-float v27, v6, v27

    #@1e
    if-gez v27, :cond_0

    #@20
    .line 2224
    add-int/lit8 v27, v16, 0x1

    #@22
    aget v28, p0, v16

    #@24
    aput v28, p0, v27

    #@26
    .line 2225
    add-int/lit8 v17, v16, -0x1

    #@28
    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    #@2a
    move/from16 v1, p1

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    move/from16 v16, v17

    #@30
    .line 2229
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_0
    add-int/lit8 v27, v16, 0x1

    #@32
    aput v6, p0, v27

    #@34
    .line 2221
    add-int/lit8 v15, v15, 0x1

    #@36
    move/from16 v16, v15

    #@38
    goto :goto_0

    #@39
    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_1
    move/from16 v16, v17

    #@3b
    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    #@3c
    .line 2239
    .end local v6    # "ai":F
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@3e
    aget v27, p0, p1

    #@40
    add-int/lit8 v28, p1, -0x1

    #@42
    aget v28, p0, v28

    #@44
    cmpl-float v27, v27, v28

    #@46
    if-ltz v27, :cond_4

    #@48
    .line 2236
    :cond_3
    move/from16 v0, p1

    #@4a
    move/from16 v1, p2

    #@4c
    if-lt v0, v1, :cond_2

    #@4e
    .line 2237
    return-void

    #@4f
    .line 2249
    :cond_4
    move/from16 v18, p1

    #@51
    .local v18, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    #@53
    move/from16 v0, p1

    #@55
    move/from16 v1, p2

    #@57
    if-gt v0, v1, :cond_8

    #@59
    .line 2250
    aget v4, p0, v18

    #@5b
    .local v4, "a1":F
    aget v5, p0, p1

    #@5d
    .line 2252
    .local v5, "a2":F
    cmpg-float v27, v4, v5

    #@5f
    if-gez v27, :cond_5

    #@61
    .line 2253
    move v5, v4

    #@62
    aget v4, p0, p1

    #@64
    .line 2255
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    #@66
    aget v27, p0, v18

    #@68
    cmpg-float v27, v4, v27

    #@6a
    if-gez v27, :cond_6

    #@6c
    .line 2256
    add-int/lit8 v27, v18, 0x2

    #@6e
    aget v28, p0, v18

    #@70
    aput v28, p0, v27

    #@72
    goto :goto_3

    #@73
    .line 2258
    :cond_6
    add-int/lit8 v18, v18, 0x1

    #@75
    add-int/lit8 v27, v18, 0x1

    #@77
    aput v4, p0, v27

    #@79
    .line 2260
    :goto_4
    add-int/lit8 v18, v18, -0x1

    #@7b
    aget v27, p0, v18

    #@7d
    cmpg-float v27, v5, v27

    #@7f
    if-gez v27, :cond_7

    #@81
    .line 2261
    add-int/lit8 v27, v18, 0x1

    #@83
    aget v28, p0, v18

    #@85
    aput v28, p0, v27

    #@87
    goto :goto_4

    #@88
    .line 2263
    :cond_7
    add-int/lit8 v27, v18, 0x1

    #@8a
    aput v5, p0, v27

    #@8c
    .line 2249
    add-int/lit8 p1, p1, 0x1

    #@8e
    move/from16 v18, p1

    #@90
    goto :goto_2

    #@91
    .line 2265
    .end local v4    # "a1":F
    .end local v5    # "a2":F
    :cond_8
    aget v19, p0, p2

    #@93
    .line 2267
    .local v19, "last":F
    :goto_5
    add-int/lit8 p2, p2, -0x1

    #@95
    aget v27, p0, p2

    #@97
    cmpg-float v27, v19, v27

    #@99
    if-gez v27, :cond_9

    #@9b
    .line 2268
    add-int/lit8 v27, p2, 0x1

    #@9d
    aget v28, p0, p2

    #@9f
    aput v28, p0, v27

    #@a1
    goto :goto_5

    #@a2
    .line 2270
    :cond_9
    add-int/lit8 v27, p2, 0x1

    #@a4
    aput v19, p0, v27

    #@a6
    .line 2272
    .end local v18    # "k":I
    .end local v19    # "last":F
    :cond_a
    return-void

    #@a7
    .line 2276
    :cond_b
    shr-int/lit8 v27, v20, 0x3

    #@a9
    shr-int/lit8 v28, v20, 0x6

    #@ab
    add-int v27, v27, v28

    #@ad
    add-int/lit8 v25, v27, 0x1

    #@af
    .line 2285
    .local v25, "seventh":I
    add-int v27, p1, p2

    #@b1
    ushr-int/lit8 v10, v27, 0x1

    #@b3
    .line 2286
    .local v10, "e3":I
    sub-int v9, v10, v25

    #@b5
    .line 2287
    .local v9, "e2":I
    sub-int v8, v9, v25

    #@b7
    .line 2288
    .local v8, "e1":I
    add-int v11, v10, v25

    #@b9
    .line 2289
    .local v11, "e4":I
    add-int v12, v11, v25

    #@bb
    .line 2292
    .local v12, "e5":I
    aget v27, p0, v9

    #@bd
    aget v28, p0, v8

    #@bf
    cmpg-float v27, v27, v28

    #@c1
    if-gez v27, :cond_c

    #@c3
    aget v26, p0, v9

    #@c5
    .local v26, "t":F
    aget v27, p0, v8

    #@c7
    aput v27, p0, v9

    #@c9
    aput v26, p0, v8

    #@cb
    .line 2294
    .end local v26    # "t":F
    :cond_c
    aget v27, p0, v10

    #@cd
    aget v28, p0, v9

    #@cf
    cmpg-float v27, v27, v28

    #@d1
    if-gez v27, :cond_d

    #@d3
    aget v26, p0, v10

    #@d5
    .restart local v26    # "t":F
    aget v27, p0, v9

    #@d7
    aput v27, p0, v10

    #@d9
    aput v26, p0, v9

    #@db
    .line 2295
    aget v27, p0, v8

    #@dd
    cmpg-float v27, v26, v27

    #@df
    if-gez v27, :cond_d

    #@e1
    aget v27, p0, v8

    #@e3
    aput v27, p0, v9

    #@e5
    aput v26, p0, v8

    #@e7
    .line 2297
    .end local v26    # "t":F
    :cond_d
    aget v27, p0, v11

    #@e9
    aget v28, p0, v10

    #@eb
    cmpg-float v27, v27, v28

    #@ed
    if-gez v27, :cond_e

    #@ef
    aget v26, p0, v11

    #@f1
    .restart local v26    # "t":F
    aget v27, p0, v10

    #@f3
    aput v27, p0, v11

    #@f5
    aput v26, p0, v10

    #@f7
    .line 2298
    aget v27, p0, v9

    #@f9
    cmpg-float v27, v26, v27

    #@fb
    if-gez v27, :cond_e

    #@fd
    aget v27, p0, v9

    #@ff
    aput v27, p0, v10

    #@101
    aput v26, p0, v9

    #@103
    .line 2299
    aget v27, p0, v8

    #@105
    cmpg-float v27, v26, v27

    #@107
    if-gez v27, :cond_e

    #@109
    aget v27, p0, v8

    #@10b
    aput v27, p0, v9

    #@10d
    aput v26, p0, v8

    #@10f
    .line 2302
    .end local v26    # "t":F
    :cond_e
    aget v27, p0, v12

    #@111
    aget v28, p0, v11

    #@113
    cmpg-float v27, v27, v28

    #@115
    if-gez v27, :cond_f

    #@117
    aget v26, p0, v12

    #@119
    .restart local v26    # "t":F
    aget v27, p0, v11

    #@11b
    aput v27, p0, v12

    #@11d
    aput v26, p0, v11

    #@11f
    .line 2303
    aget v27, p0, v10

    #@121
    cmpg-float v27, v26, v27

    #@123
    if-gez v27, :cond_f

    #@125
    aget v27, p0, v10

    #@127
    aput v27, p0, v11

    #@129
    aput v26, p0, v10

    #@12b
    .line 2304
    aget v27, p0, v9

    #@12d
    cmpg-float v27, v26, v27

    #@12f
    if-gez v27, :cond_f

    #@131
    aget v27, p0, v9

    #@133
    aput v27, p0, v10

    #@135
    aput v26, p0, v9

    #@137
    .line 2305
    aget v27, p0, v8

    #@139
    cmpg-float v27, v26, v27

    #@13b
    if-gez v27, :cond_f

    #@13d
    aget v27, p0, v8

    #@13f
    aput v27, p0, v9

    #@141
    aput v26, p0, v8

    #@143
    .line 2311
    .end local v26    # "t":F
    :cond_f
    move/from16 v21, p1

    #@145
    .line 2312
    .local v21, "less":I
    move/from16 v13, p2

    #@147
    .line 2314
    .local v13, "great":I
    aget v27, p0, v8

    #@149
    aget v28, p0, v9

    #@14b
    cmpl-float v27, v27, v28

    #@14d
    if-eqz v27, :cond_20

    #@14f
    aget v27, p0, v9

    #@151
    aget v28, p0, v10

    #@153
    cmpl-float v27, v27, v28

    #@155
    if-eqz v27, :cond_20

    #@157
    aget v27, p0, v10

    #@159
    aget v28, p0, v11

    #@15b
    cmpl-float v27, v27, v28

    #@15d
    if-eqz v27, :cond_20

    #@15f
    aget v27, p0, v11

    #@161
    aget v28, p0, v12

    #@163
    cmpl-float v27, v27, v28

    #@165
    if-eqz v27, :cond_20

    #@167
    .line 2320
    aget v23, p0, v9

    #@169
    .line 2321
    .local v23, "pivot1":F
    aget v24, p0, v11

    #@16b
    .line 2329
    .local v24, "pivot2":F
    aget v27, p0, p1

    #@16d
    aput v27, p0, v9

    #@16f
    .line 2330
    aget v27, p0, p2

    #@171
    aput v27, p0, v11

    #@173
    .line 2335
    :cond_10
    add-int/lit8 v21, v21, 0x1

    #@175
    aget v27, p0, v21

    #@177
    cmpg-float v27, v27, v23

    #@179
    if-ltz v27, :cond_10

    #@17b
    .line 2336
    :cond_11
    add-int/lit8 v13, v13, -0x1

    #@17d
    aget v27, p0, v13

    #@17f
    cmpl-float v27, v27, v24

    #@181
    if-gtz v27, :cond_11

    #@183
    .line 2358
    add-int/lit8 v18, v21, -0x1

    #@185
    .restart local v18    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    #@187
    move/from16 v0, v18

    #@189
    if-gt v0, v13, :cond_14

    #@18b
    .line 2359
    aget v7, p0, v18

    #@18d
    .line 2360
    .local v7, "ak":F
    cmpg-float v27, v7, v23

    #@18f
    if-gez v27, :cond_13

    #@191
    .line 2361
    aget v27, p0, v21

    #@193
    aput v27, p0, v18

    #@195
    .line 2366
    aput v7, p0, v21

    #@197
    .line 2367
    add-int/lit8 v21, v21, 0x1

    #@199
    goto :goto_6

    #@19a
    .line 2368
    :cond_13
    cmpl-float v27, v7, v24

    #@19c
    if-lez v27, :cond_12

    #@19e
    .line 2369
    :goto_7
    aget v27, p0, v13

    #@1a0
    cmpl-float v27, v27, v24

    #@1a2
    if-lez v27, :cond_16

    #@1a4
    .line 2370
    add-int/lit8 v14, v13, -0x1

    #@1a6
    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    #@1a8
    if-ne v13, v0, :cond_15

    #@1aa
    move v13, v14

    #@1ab
    .line 2391
    .end local v7    # "ak":F
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_14
    add-int/lit8 v27, v21, -0x1

    #@1ad
    aget v27, p0, v27

    #@1af
    aput v27, p0, p1

    #@1b1
    add-int/lit8 v27, v21, -0x1

    #@1b3
    aput v23, p0, v27

    #@1b5
    .line 2392
    add-int/lit8 v27, v13, 0x1

    #@1b7
    aget v27, p0, v27

    #@1b9
    aput v27, p0, p2

    #@1bb
    add-int/lit8 v27, v13, 0x1

    #@1bd
    aput v24, p0, v27

    #@1bf
    .line 2395
    add-int/lit8 v27, v21, -0x2

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    move/from16 v1, p1

    #@1c5
    move/from16 v2, v27

    #@1c7
    move/from16 v3, p3

    #@1c9
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    #@1cc
    .line 2396
    add-int/lit8 v27, v13, 0x2

    #@1ce
    const/16 v28, 0x0

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    move/from16 v1, v27

    #@1d4
    move/from16 v2, p2

    #@1d6
    move/from16 v3, v28

    #@1d8
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    #@1db
    .line 2402
    move/from16 v0, v21

    #@1dd
    if-ge v0, v8, :cond_1c

    #@1df
    if-ge v12, v13, :cond_1c

    #@1e1
    .line 2406
    :goto_8
    aget v27, p0, v21

    #@1e3
    cmpl-float v27, v27, v23

    #@1e5
    if-nez v27, :cond_18

    #@1e7
    .line 2407
    add-int/lit8 v21, v21, 0x1

    #@1e9
    goto :goto_8

    #@1ea
    .end local v13    # "great":I
    .restart local v7    # "ak":F
    .restart local v14    # "great":I
    :cond_15
    move v13, v14

    #@1eb
    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_7

    #@1ec
    .line 2374
    :cond_16
    aget v27, p0, v13

    #@1ee
    cmpg-float v27, v27, v23

    #@1f0
    if-gez v27, :cond_17

    #@1f2
    .line 2375
    aget v27, p0, v21

    #@1f4
    aput v27, p0, v18

    #@1f6
    .line 2376
    aget v27, p0, v13

    #@1f8
    aput v27, p0, v21

    #@1fa
    .line 2377
    add-int/lit8 v21, v21, 0x1

    #@1fc
    .line 2385
    :goto_9
    aput v7, p0, v13

    #@1fe
    .line 2386
    add-int/lit8 v13, v13, -0x1

    #@200
    goto :goto_6

    #@201
    .line 2379
    :cond_17
    aget v27, p0, v13

    #@203
    aput v27, p0, v18

    #@205
    goto :goto_9

    #@206
    .line 2410
    .end local v7    # "ak":F
    :cond_18
    :goto_a
    aget v27, p0, v13

    #@208
    cmpl-float v27, v27, v24

    #@20a
    if-nez v27, :cond_19

    #@20c
    .line 2411
    add-int/lit8 v13, v13, -0x1

    #@20e
    goto :goto_a

    #@20f
    .line 2434
    :cond_19
    add-int/lit8 v18, v21, -0x1

    #@211
    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    #@213
    move/from16 v0, v18

    #@215
    if-gt v0, v13, :cond_1c

    #@217
    .line 2435
    aget v7, p0, v18

    #@219
    .line 2436
    .restart local v7    # "ak":F
    cmpl-float v27, v7, v23

    #@21b
    if-nez v27, :cond_1b

    #@21d
    .line 2437
    aget v27, p0, v21

    #@21f
    aput v27, p0, v18

    #@221
    .line 2438
    aput v7, p0, v21

    #@223
    .line 2439
    add-int/lit8 v21, v21, 0x1

    #@225
    goto :goto_b

    #@226
    .line 2440
    :cond_1b
    cmpl-float v27, v7, v24

    #@228
    if-nez v27, :cond_1a

    #@22a
    .line 2441
    :goto_c
    aget v27, p0, v13

    #@22c
    cmpl-float v27, v27, v24

    #@22e
    if-nez v27, :cond_1e

    #@230
    .line 2442
    add-int/lit8 v14, v13, -0x1

    #@232
    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    #@234
    if-ne v13, v0, :cond_1d

    #@236
    move v13, v14

    #@237
    .line 2468
    .end local v7    # "ak":F
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1c
    const/16 v27, 0x0

    #@239
    move-object/from16 v0, p0

    #@23b
    move/from16 v1, v21

    #@23d
    move/from16 v2, v27

    #@23f
    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    #@242
    .line 2210
    .end local v23    # "pivot1":F
    .end local v24    # "pivot2":F
    :goto_d
    return-void

    #@243
    .end local v13    # "great":I
    .restart local v7    # "ak":F
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":F
    .restart local v24    # "pivot2":F
    :cond_1d
    move v13, v14

    #@244
    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_c

    #@245
    .line 2446
    :cond_1e
    aget v27, p0, v13

    #@247
    cmpl-float v27, v27, v23

    #@249
    if-nez v27, :cond_1f

    #@24b
    .line 2447
    aget v27, p0, v21

    #@24d
    aput v27, p0, v18

    #@24f
    .line 2456
    aget v27, p0, v13

    #@251
    aput v27, p0, v21

    #@253
    .line 2457
    add-int/lit8 v21, v21, 0x1

    #@255
    .line 2461
    :goto_e
    aput v7, p0, v13

    #@257
    .line 2462
    add-int/lit8 v13, v13, -0x1

    #@259
    goto :goto_b

    #@25a
    .line 2459
    :cond_1f
    aget v27, p0, v13

    #@25c
    aput v27, p0, v18

    #@25e
    goto :goto_e

    #@25f
    .line 2475
    .end local v7    # "ak":F
    .end local v18    # "k":I
    .end local v23    # "pivot1":F
    .end local v24    # "pivot2":F
    :cond_20
    aget v22, p0, v10

    #@261
    .line 2497
    .local v22, "pivot":F
    move/from16 v18, p1

    #@263
    .restart local v18    # "k":I
    :goto_f
    move/from16 v0, v18

    #@265
    if-gt v0, v13, :cond_25

    #@267
    .line 2498
    aget v27, p0, v18

    #@269
    cmpl-float v27, v27, v22

    #@26b
    if-nez v27, :cond_21

    #@26d
    .line 2497
    :goto_10
    add-int/lit8 v18, v18, 0x1

    #@26f
    goto :goto_f

    #@270
    .line 2501
    :cond_21
    aget v7, p0, v18

    #@272
    .line 2502
    .restart local v7    # "ak":F
    cmpg-float v27, v7, v22

    #@274
    if-gez v27, :cond_22

    #@276
    .line 2503
    aget v27, p0, v21

    #@278
    aput v27, p0, v18

    #@27a
    .line 2504
    aput v7, p0, v21

    #@27c
    .line 2505
    add-int/lit8 v21, v21, 0x1

    #@27e
    goto :goto_10

    #@27f
    .line 2507
    :cond_22
    :goto_11
    aget v27, p0, v13

    #@281
    cmpl-float v27, v27, v22

    #@283
    if-lez v27, :cond_23

    #@285
    .line 2508
    add-int/lit8 v13, v13, -0x1

    #@287
    goto :goto_11

    #@288
    .line 2510
    :cond_23
    aget v27, p0, v13

    #@28a
    cmpg-float v27, v27, v22

    #@28c
    if-gez v27, :cond_24

    #@28e
    .line 2511
    aget v27, p0, v21

    #@290
    aput v27, p0, v18

    #@292
    .line 2512
    aget v27, p0, v13

    #@294
    aput v27, p0, v21

    #@296
    .line 2513
    add-int/lit8 v21, v21, 0x1

    #@298
    .line 2525
    :goto_12
    aput v7, p0, v13

    #@29a
    .line 2526
    add-int/lit8 v13, v13, -0x1

    #@29c
    goto :goto_10

    #@29d
    .line 2523
    :cond_24
    aget v27, p0, v13

    #@29f
    aput v27, p0, v18

    #@2a1
    goto :goto_12

    #@2a2
    .line 2535
    .end local v7    # "ak":F
    :cond_25
    add-int/lit8 v27, v21, -0x1

    #@2a4
    move-object/from16 v0, p0

    #@2a6
    move/from16 v1, p1

    #@2a8
    move/from16 v2, v27

    #@2aa
    move/from16 v3, p3

    #@2ac
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    #@2af
    .line 2536
    add-int/lit8 v27, v13, 0x1

    #@2b1
    const/16 v28, 0x0

    #@2b3
    move-object/from16 v0, p0

    #@2b5
    move/from16 v1, v27

    #@2b7
    move/from16 v2, p2

    #@2b9
    move/from16 v3, v28

    #@2bb
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    #@2be
    goto :goto_d
.end method

.method static sort([FII[FII)V
    .locals 8
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [F
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2017
    :goto_0
    if-gt p1, p2, :cond_0

    #@3
    aget v6, p0, p2

    #@5
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_0

    #@b
    .line 2018
    add-int/lit8 p2, p2, -0x1

    #@d
    goto :goto_0

    #@e
    .line 2020
    :cond_0
    move v2, p2

    #@f
    .local v2, "k":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@11
    if-lt v2, p1, :cond_2

    #@13
    .line 2021
    aget v0, p0, v2

    #@15
    .line 2022
    .local v0, "ak":F
    cmpl-float v6, v0, v0

    #@17
    if-eqz v6, :cond_1

    #@19
    .line 2023
    aget v6, p0, p2

    #@1b
    aput v6, p0, v2

    #@1d
    .line 2024
    aput v0, p0, p2

    #@1f
    .line 2025
    add-int/lit8 p2, p2, -0x1

    #@21
    goto :goto_1

    #@22
    .line 2032
    .end local v0    # "ak":F
    :cond_2
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([FII[FII)V

    #@25
    .line 2037
    move v1, p2

    #@26
    .line 2042
    .local v1, "hi":I
    :goto_2
    if-ge p1, v1, :cond_4

    #@28
    .line 2043
    add-int v6, p1, v1

    #@2a
    ushr-int/lit8 v3, v6, 0x1

    #@2c
    .line 2044
    .local v3, "middle":I
    aget v4, p0, v3

    #@2e
    .line 2046
    .local v4, "middleValue":F
    cmpg-float v6, v4, v7

    #@30
    if-gez v6, :cond_3

    #@32
    .line 2047
    add-int/lit8 p1, v3, 0x1

    #@34
    goto :goto_2

    #@35
    .line 2049
    :cond_3
    move v1, v3

    #@36
    goto :goto_2

    #@37
    .line 2056
    .end local v3    # "middle":I
    .end local v4    # "middleValue":F
    :cond_4
    :goto_3
    if-gt p1, p2, :cond_5

    #@39
    aget v6, p0, p1

    #@3b
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3e
    move-result v6

    #@3f
    if-gez v6, :cond_5

    #@41
    .line 2057
    add-int/lit8 p1, p1, 0x1

    #@43
    goto :goto_3

    #@44
    .line 2081
    :cond_5
    move v2, p1

    #@45
    add-int/lit8 v5, p1, -0x1

    #@47
    .local v5, "p":I
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@49
    if-gt v2, p2, :cond_7

    #@4b
    .line 2082
    aget v0, p0, v2

    #@4d
    .line 2083
    .restart local v0    # "ak":F
    cmpl-float v6, v0, v7

    #@4f
    if-eqz v6, :cond_8

    #@51
    .line 2013
    .end local v0    # "ak":F
    :cond_7
    return-void

    #@52
    .line 2086
    .restart local v0    # "ak":F
    :cond_8
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@55
    move-result v6

    #@56
    if-gez v6, :cond_6

    #@58
    .line 2087
    aput v7, p0, v2

    #@5a
    .line 2088
    add-int/lit8 v5, v5, 0x1

    #@5c
    const/high16 v6, -0x80000000

    #@5e
    aput v6, p0, v5

    #@60
    goto :goto_4
.end method

.method private static sort([IIIZ)V
    .locals 29
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    #@0
    .prologue
    .line 215
    sub-int v27, p2, p1

    #@2
    add-int/lit8 v20, v27, 0x1

    #@4
    .line 218
    .local v20, "length":I
    const/16 v27, 0x2f

    #@6
    move/from16 v0, v20

    #@8
    move/from16 v1, v27

    #@a
    if-ge v0, v1, :cond_b

    #@c
    .line 219
    if-eqz p3, :cond_3

    #@e
    .line 225
    move/from16 v15, p1

    #@10
    .local v15, "i":I
    move/from16 v16, p1

    #@12
    .local v16, "j":I
    :goto_0
    move/from16 v0, p2

    #@14
    if-ge v15, v0, :cond_a

    #@16
    .line 226
    add-int/lit8 v27, v15, 0x1

    #@18
    aget v6, p0, v27

    #@1a
    .line 227
    .local v6, "ai":I
    :goto_1
    aget v27, p0, v16

    #@1c
    move/from16 v0, v27

    #@1e
    if-ge v6, v0, :cond_0

    #@20
    .line 228
    add-int/lit8 v27, v16, 0x1

    #@22
    aget v28, p0, v16

    #@24
    aput v28, p0, v27

    #@26
    .line 229
    add-int/lit8 v17, v16, -0x1

    #@28
    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    #@2a
    move/from16 v1, p1

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    move/from16 v16, v17

    #@30
    .line 233
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_0
    add-int/lit8 v27, v16, 0x1

    #@32
    aput v6, p0, v27

    #@34
    .line 225
    add-int/lit8 v15, v15, 0x1

    #@36
    move/from16 v16, v15

    #@38
    goto :goto_0

    #@39
    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_1
    move/from16 v16, v17

    #@3b
    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    #@3c
    .line 243
    .end local v6    # "ai":I
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@3e
    aget v27, p0, p1

    #@40
    add-int/lit8 v28, p1, -0x1

    #@42
    aget v28, p0, v28

    #@44
    move/from16 v0, v27

    #@46
    move/from16 v1, v28

    #@48
    if-lt v0, v1, :cond_4

    #@4a
    .line 240
    :cond_3
    move/from16 v0, p1

    #@4c
    move/from16 v1, p2

    #@4e
    if-lt v0, v1, :cond_2

    #@50
    .line 241
    return-void

    #@51
    .line 253
    :cond_4
    move/from16 v18, p1

    #@53
    .local v18, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    #@55
    move/from16 v0, p1

    #@57
    move/from16 v1, p2

    #@59
    if-gt v0, v1, :cond_8

    #@5b
    .line 254
    aget v4, p0, v18

    #@5d
    .local v4, "a1":I
    aget v5, p0, p1

    #@5f
    .line 256
    .local v5, "a2":I
    if-ge v4, v5, :cond_5

    #@61
    .line 257
    move v5, v4

    #@62
    aget v4, p0, p1

    #@64
    .line 259
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    #@66
    aget v27, p0, v18

    #@68
    move/from16 v0, v27

    #@6a
    if-ge v4, v0, :cond_6

    #@6c
    .line 260
    add-int/lit8 v27, v18, 0x2

    #@6e
    aget v28, p0, v18

    #@70
    aput v28, p0, v27

    #@72
    goto :goto_3

    #@73
    .line 262
    :cond_6
    add-int/lit8 v18, v18, 0x1

    #@75
    add-int/lit8 v27, v18, 0x1

    #@77
    aput v4, p0, v27

    #@79
    .line 264
    :goto_4
    add-int/lit8 v18, v18, -0x1

    #@7b
    aget v27, p0, v18

    #@7d
    move/from16 v0, v27

    #@7f
    if-ge v5, v0, :cond_7

    #@81
    .line 265
    add-int/lit8 v27, v18, 0x1

    #@83
    aget v28, p0, v18

    #@85
    aput v28, p0, v27

    #@87
    goto :goto_4

    #@88
    .line 267
    :cond_7
    add-int/lit8 v27, v18, 0x1

    #@8a
    aput v5, p0, v27

    #@8c
    .line 253
    add-int/lit8 p1, p1, 0x1

    #@8e
    move/from16 v18, p1

    #@90
    goto :goto_2

    #@91
    .line 269
    .end local v4    # "a1":I
    .end local v5    # "a2":I
    :cond_8
    aget v19, p0, p2

    #@93
    .line 271
    .local v19, "last":I
    :goto_5
    add-int/lit8 p2, p2, -0x1

    #@95
    aget v27, p0, p2

    #@97
    move/from16 v0, v19

    #@99
    move/from16 v1, v27

    #@9b
    if-ge v0, v1, :cond_9

    #@9d
    .line 272
    add-int/lit8 v27, p2, 0x1

    #@9f
    aget v28, p0, p2

    #@a1
    aput v28, p0, v27

    #@a3
    goto :goto_5

    #@a4
    .line 274
    :cond_9
    add-int/lit8 v27, p2, 0x1

    #@a6
    aput v19, p0, v27

    #@a8
    .line 276
    .end local v18    # "k":I
    .end local v19    # "last":I
    :cond_a
    return-void

    #@a9
    .line 280
    :cond_b
    shr-int/lit8 v27, v20, 0x3

    #@ab
    shr-int/lit8 v28, v20, 0x6

    #@ad
    add-int v27, v27, v28

    #@af
    add-int/lit8 v25, v27, 0x1

    #@b1
    .line 289
    .local v25, "seventh":I
    add-int v27, p1, p2

    #@b3
    ushr-int/lit8 v10, v27, 0x1

    #@b5
    .line 290
    .local v10, "e3":I
    sub-int v9, v10, v25

    #@b7
    .line 291
    .local v9, "e2":I
    sub-int v8, v9, v25

    #@b9
    .line 292
    .local v8, "e1":I
    add-int v11, v10, v25

    #@bb
    .line 293
    .local v11, "e4":I
    add-int v12, v11, v25

    #@bd
    .line 296
    .local v12, "e5":I
    aget v27, p0, v9

    #@bf
    aget v28, p0, v8

    #@c1
    move/from16 v0, v27

    #@c3
    move/from16 v1, v28

    #@c5
    if-ge v0, v1, :cond_c

    #@c7
    aget v26, p0, v9

    #@c9
    .local v26, "t":I
    aget v27, p0, v8

    #@cb
    aput v27, p0, v9

    #@cd
    aput v26, p0, v8

    #@cf
    .line 298
    .end local v26    # "t":I
    :cond_c
    aget v27, p0, v10

    #@d1
    aget v28, p0, v9

    #@d3
    move/from16 v0, v27

    #@d5
    move/from16 v1, v28

    #@d7
    if-ge v0, v1, :cond_d

    #@d9
    aget v26, p0, v10

    #@db
    .restart local v26    # "t":I
    aget v27, p0, v9

    #@dd
    aput v27, p0, v10

    #@df
    aput v26, p0, v9

    #@e1
    .line 299
    aget v27, p0, v8

    #@e3
    move/from16 v0, v26

    #@e5
    move/from16 v1, v27

    #@e7
    if-ge v0, v1, :cond_d

    #@e9
    aget v27, p0, v8

    #@eb
    aput v27, p0, v9

    #@ed
    aput v26, p0, v8

    #@ef
    .line 301
    .end local v26    # "t":I
    :cond_d
    aget v27, p0, v11

    #@f1
    aget v28, p0, v10

    #@f3
    move/from16 v0, v27

    #@f5
    move/from16 v1, v28

    #@f7
    if-ge v0, v1, :cond_e

    #@f9
    aget v26, p0, v11

    #@fb
    .restart local v26    # "t":I
    aget v27, p0, v10

    #@fd
    aput v27, p0, v11

    #@ff
    aput v26, p0, v10

    #@101
    .line 302
    aget v27, p0, v9

    #@103
    move/from16 v0, v26

    #@105
    move/from16 v1, v27

    #@107
    if-ge v0, v1, :cond_e

    #@109
    aget v27, p0, v9

    #@10b
    aput v27, p0, v10

    #@10d
    aput v26, p0, v9

    #@10f
    .line 303
    aget v27, p0, v8

    #@111
    move/from16 v0, v26

    #@113
    move/from16 v1, v27

    #@115
    if-ge v0, v1, :cond_e

    #@117
    aget v27, p0, v8

    #@119
    aput v27, p0, v9

    #@11b
    aput v26, p0, v8

    #@11d
    .line 306
    .end local v26    # "t":I
    :cond_e
    aget v27, p0, v12

    #@11f
    aget v28, p0, v11

    #@121
    move/from16 v0, v27

    #@123
    move/from16 v1, v28

    #@125
    if-ge v0, v1, :cond_f

    #@127
    aget v26, p0, v12

    #@129
    .restart local v26    # "t":I
    aget v27, p0, v11

    #@12b
    aput v27, p0, v12

    #@12d
    aput v26, p0, v11

    #@12f
    .line 307
    aget v27, p0, v10

    #@131
    move/from16 v0, v26

    #@133
    move/from16 v1, v27

    #@135
    if-ge v0, v1, :cond_f

    #@137
    aget v27, p0, v10

    #@139
    aput v27, p0, v11

    #@13b
    aput v26, p0, v10

    #@13d
    .line 308
    aget v27, p0, v9

    #@13f
    move/from16 v0, v26

    #@141
    move/from16 v1, v27

    #@143
    if-ge v0, v1, :cond_f

    #@145
    aget v27, p0, v9

    #@147
    aput v27, p0, v10

    #@149
    aput v26, p0, v9

    #@14b
    .line 309
    aget v27, p0, v8

    #@14d
    move/from16 v0, v26

    #@14f
    move/from16 v1, v27

    #@151
    if-ge v0, v1, :cond_f

    #@153
    aget v27, p0, v8

    #@155
    aput v27, p0, v9

    #@157
    aput v26, p0, v8

    #@159
    .line 315
    .end local v26    # "t":I
    :cond_f
    move/from16 v21, p1

    #@15b
    .line 316
    .local v21, "less":I
    move/from16 v13, p2

    #@15d
    .line 318
    .local v13, "great":I
    aget v27, p0, v8

    #@15f
    aget v28, p0, v9

    #@161
    move/from16 v0, v27

    #@163
    move/from16 v1, v28

    #@165
    if-eq v0, v1, :cond_20

    #@167
    aget v27, p0, v9

    #@169
    aget v28, p0, v10

    #@16b
    move/from16 v0, v27

    #@16d
    move/from16 v1, v28

    #@16f
    if-eq v0, v1, :cond_20

    #@171
    aget v27, p0, v10

    #@173
    aget v28, p0, v11

    #@175
    move/from16 v0, v27

    #@177
    move/from16 v1, v28

    #@179
    if-eq v0, v1, :cond_20

    #@17b
    aget v27, p0, v11

    #@17d
    aget v28, p0, v12

    #@17f
    move/from16 v0, v27

    #@181
    move/from16 v1, v28

    #@183
    if-eq v0, v1, :cond_20

    #@185
    .line 324
    aget v23, p0, v9

    #@187
    .line 325
    .local v23, "pivot1":I
    aget v24, p0, v11

    #@189
    .line 333
    .local v24, "pivot2":I
    aget v27, p0, p1

    #@18b
    aput v27, p0, v9

    #@18d
    .line 334
    aget v27, p0, p2

    #@18f
    aput v27, p0, v11

    #@191
    .line 339
    :cond_10
    add-int/lit8 v21, v21, 0x1

    #@193
    aget v27, p0, v21

    #@195
    move/from16 v0, v27

    #@197
    move/from16 v1, v23

    #@199
    if-lt v0, v1, :cond_10

    #@19b
    .line 340
    :cond_11
    add-int/lit8 v13, v13, -0x1

    #@19d
    aget v27, p0, v13

    #@19f
    move/from16 v0, v27

    #@1a1
    move/from16 v1, v24

    #@1a3
    if-gt v0, v1, :cond_11

    #@1a5
    .line 362
    add-int/lit8 v18, v21, -0x1

    #@1a7
    .restart local v18    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    #@1a9
    move/from16 v0, v18

    #@1ab
    if-gt v0, v13, :cond_14

    #@1ad
    .line 363
    aget v7, p0, v18

    #@1af
    .line 364
    .local v7, "ak":I
    move/from16 v0, v23

    #@1b1
    if-ge v7, v0, :cond_13

    #@1b3
    .line 365
    aget v27, p0, v21

    #@1b5
    aput v27, p0, v18

    #@1b7
    .line 370
    aput v7, p0, v21

    #@1b9
    .line 371
    add-int/lit8 v21, v21, 0x1

    #@1bb
    goto :goto_6

    #@1bc
    .line 372
    :cond_13
    move/from16 v0, v24

    #@1be
    if-le v7, v0, :cond_12

    #@1c0
    .line 373
    :goto_7
    aget v27, p0, v13

    #@1c2
    move/from16 v0, v27

    #@1c4
    move/from16 v1, v24

    #@1c6
    if-le v0, v1, :cond_16

    #@1c8
    .line 374
    add-int/lit8 v14, v13, -0x1

    #@1ca
    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    #@1cc
    if-ne v13, v0, :cond_15

    #@1ce
    move v13, v14

    #@1cf
    .line 395
    .end local v7    # "ak":I
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_14
    add-int/lit8 v27, v21, -0x1

    #@1d1
    aget v27, p0, v27

    #@1d3
    aput v27, p0, p1

    #@1d5
    add-int/lit8 v27, v21, -0x1

    #@1d7
    aput v23, p0, v27

    #@1d9
    .line 396
    add-int/lit8 v27, v13, 0x1

    #@1db
    aget v27, p0, v27

    #@1dd
    aput v27, p0, p2

    #@1df
    add-int/lit8 v27, v13, 0x1

    #@1e1
    aput v24, p0, v27

    #@1e3
    .line 399
    add-int/lit8 v27, v21, -0x2

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    move/from16 v1, p1

    #@1e9
    move/from16 v2, v27

    #@1eb
    move/from16 v3, p3

    #@1ed
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    #@1f0
    .line 400
    add-int/lit8 v27, v13, 0x2

    #@1f2
    const/16 v28, 0x0

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    move/from16 v1, v27

    #@1f8
    move/from16 v2, p2

    #@1fa
    move/from16 v3, v28

    #@1fc
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    #@1ff
    .line 406
    move/from16 v0, v21

    #@201
    if-ge v0, v8, :cond_1c

    #@203
    if-ge v12, v13, :cond_1c

    #@205
    .line 410
    :goto_8
    aget v27, p0, v21

    #@207
    move/from16 v0, v27

    #@209
    move/from16 v1, v23

    #@20b
    if-ne v0, v1, :cond_18

    #@20d
    .line 411
    add-int/lit8 v21, v21, 0x1

    #@20f
    goto :goto_8

    #@210
    .end local v13    # "great":I
    .restart local v7    # "ak":I
    .restart local v14    # "great":I
    :cond_15
    move v13, v14

    #@211
    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_7

    #@212
    .line 378
    :cond_16
    aget v27, p0, v13

    #@214
    move/from16 v0, v27

    #@216
    move/from16 v1, v23

    #@218
    if-ge v0, v1, :cond_17

    #@21a
    .line 379
    aget v27, p0, v21

    #@21c
    aput v27, p0, v18

    #@21e
    .line 380
    aget v27, p0, v13

    #@220
    aput v27, p0, v21

    #@222
    .line 381
    add-int/lit8 v21, v21, 0x1

    #@224
    .line 389
    :goto_9
    aput v7, p0, v13

    #@226
    .line 390
    add-int/lit8 v13, v13, -0x1

    #@228
    goto/16 :goto_6

    #@22a
    .line 383
    :cond_17
    aget v27, p0, v13

    #@22c
    aput v27, p0, v18

    #@22e
    goto :goto_9

    #@22f
    .line 414
    .end local v7    # "ak":I
    :cond_18
    :goto_a
    aget v27, p0, v13

    #@231
    move/from16 v0, v27

    #@233
    move/from16 v1, v24

    #@235
    if-ne v0, v1, :cond_19

    #@237
    .line 415
    add-int/lit8 v13, v13, -0x1

    #@239
    goto :goto_a

    #@23a
    .line 438
    :cond_19
    add-int/lit8 v18, v21, -0x1

    #@23c
    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    #@23e
    move/from16 v0, v18

    #@240
    if-gt v0, v13, :cond_1c

    #@242
    .line 439
    aget v7, p0, v18

    #@244
    .line 440
    .restart local v7    # "ak":I
    move/from16 v0, v23

    #@246
    if-ne v7, v0, :cond_1b

    #@248
    .line 441
    aget v27, p0, v21

    #@24a
    aput v27, p0, v18

    #@24c
    .line 442
    aput v7, p0, v21

    #@24e
    .line 443
    add-int/lit8 v21, v21, 0x1

    #@250
    goto :goto_b

    #@251
    .line 444
    :cond_1b
    move/from16 v0, v24

    #@253
    if-ne v7, v0, :cond_1a

    #@255
    .line 445
    :goto_c
    aget v27, p0, v13

    #@257
    move/from16 v0, v27

    #@259
    move/from16 v1, v24

    #@25b
    if-ne v0, v1, :cond_1e

    #@25d
    .line 446
    add-int/lit8 v14, v13, -0x1

    #@25f
    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    #@261
    if-ne v13, v0, :cond_1d

    #@263
    move v13, v14

    #@264
    .line 472
    .end local v7    # "ak":I
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1c
    const/16 v27, 0x0

    #@266
    move-object/from16 v0, p0

    #@268
    move/from16 v1, v21

    #@26a
    move/from16 v2, v27

    #@26c
    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    #@26f
    .line 214
    .end local v23    # "pivot1":I
    .end local v24    # "pivot2":I
    :goto_d
    return-void

    #@270
    .end local v13    # "great":I
    .restart local v7    # "ak":I
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":I
    .restart local v24    # "pivot2":I
    :cond_1d
    move v13, v14

    #@271
    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_c

    #@272
    .line 450
    :cond_1e
    aget v27, p0, v13

    #@274
    move/from16 v0, v27

    #@276
    move/from16 v1, v23

    #@278
    if-ne v0, v1, :cond_1f

    #@27a
    .line 451
    aget v27, p0, v21

    #@27c
    aput v27, p0, v18

    #@27e
    .line 460
    aput v23, p0, v21

    #@280
    .line 461
    add-int/lit8 v21, v21, 0x1

    #@282
    .line 465
    :goto_e
    aput v7, p0, v13

    #@284
    .line 466
    add-int/lit8 v13, v13, -0x1

    #@286
    goto :goto_b

    #@287
    .line 463
    :cond_1f
    aget v27, p0, v13

    #@289
    aput v27, p0, v18

    #@28b
    goto :goto_e

    #@28c
    .line 479
    .end local v7    # "ak":I
    .end local v18    # "k":I
    .end local v23    # "pivot1":I
    .end local v24    # "pivot2":I
    :cond_20
    aget v22, p0, v10

    #@28e
    .line 501
    .local v22, "pivot":I
    move/from16 v18, p1

    #@290
    .restart local v18    # "k":I
    :goto_f
    move/from16 v0, v18

    #@292
    if-gt v0, v13, :cond_25

    #@294
    .line 502
    aget v27, p0, v18

    #@296
    move/from16 v0, v27

    #@298
    move/from16 v1, v22

    #@29a
    if-ne v0, v1, :cond_21

    #@29c
    .line 501
    :goto_10
    add-int/lit8 v18, v18, 0x1

    #@29e
    goto :goto_f

    #@29f
    .line 505
    :cond_21
    aget v7, p0, v18

    #@2a1
    .line 506
    .restart local v7    # "ak":I
    move/from16 v0, v22

    #@2a3
    if-ge v7, v0, :cond_22

    #@2a5
    .line 507
    aget v27, p0, v21

    #@2a7
    aput v27, p0, v18

    #@2a9
    .line 508
    aput v7, p0, v21

    #@2ab
    .line 509
    add-int/lit8 v21, v21, 0x1

    #@2ad
    goto :goto_10

    #@2ae
    .line 511
    :cond_22
    :goto_11
    aget v27, p0, v13

    #@2b0
    move/from16 v0, v27

    #@2b2
    move/from16 v1, v22

    #@2b4
    if-le v0, v1, :cond_23

    #@2b6
    .line 512
    add-int/lit8 v13, v13, -0x1

    #@2b8
    goto :goto_11

    #@2b9
    .line 514
    :cond_23
    aget v27, p0, v13

    #@2bb
    move/from16 v0, v27

    #@2bd
    move/from16 v1, v22

    #@2bf
    if-ge v0, v1, :cond_24

    #@2c1
    .line 515
    aget v27, p0, v21

    #@2c3
    aput v27, p0, v18

    #@2c5
    .line 516
    aget v27, p0, v13

    #@2c7
    aput v27, p0, v21

    #@2c9
    .line 517
    add-int/lit8 v21, v21, 0x1

    #@2cb
    .line 529
    :goto_12
    aput v7, p0, v13

    #@2cd
    .line 530
    add-int/lit8 v13, v13, -0x1

    #@2cf
    goto :goto_10

    #@2d0
    .line 527
    :cond_24
    aput v22, p0, v18

    #@2d2
    goto :goto_12

    #@2d3
    .line 539
    .end local v7    # "ak":I
    :cond_25
    add-int/lit8 v27, v21, -0x1

    #@2d5
    move-object/from16 v0, p0

    #@2d7
    move/from16 v1, p1

    #@2d9
    move/from16 v2, v27

    #@2db
    move/from16 v3, p3

    #@2dd
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    #@2e0
    .line 540
    add-int/lit8 v27, v13, 0x1

    #@2e2
    const/16 v28, 0x0

    #@2e4
    move-object/from16 v0, p0

    #@2e6
    move/from16 v1, v27

    #@2e8
    move/from16 v2, p2

    #@2ea
    move/from16 v3, v28

    #@2ec
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    #@2ef
    goto :goto_d
.end method

.method static sort([III[III)V
    .locals 29
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [I
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 110
    sub-int v27, p2, p1

    #@2
    const/16 v28, 0x11e

    #@4
    move/from16 v0, v27

    #@6
    move/from16 v1, v28

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 111
    const/16 v27, 0x1

    #@c
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p1

    #@10
    move/from16 v2, p2

    #@12
    move/from16 v3, v27

    #@14
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    #@17
    .line 112
    return-void

    #@18
    .line 119
    :cond_0
    const/16 v27, 0x44

    #@1a
    move/from16 v0, v27

    #@1c
    new-array v0, v0, [I

    #@1e
    move-object/from16 v24, v0

    #@20
    .line 120
    .local v24, "run":[I
    const/4 v8, 0x0

    #@21
    .local v8, "count":I
    const/16 v27, 0x0

    #@23
    aput p1, v24, v27

    #@25
    .line 123
    move/from16 v11, p1

    #@27
    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    #@29
    if-ge v11, v0, :cond_9

    #@2b
    .line 124
    aget v27, p0, v11

    #@2d
    add-int/lit8 v28, v11, 0x1

    #@2f
    aget v28, p0, v28

    #@31
    move/from16 v0, v27

    #@33
    move/from16 v1, v28

    #@35
    if-ge v0, v1, :cond_3

    #@37
    .line 125
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@39
    move/from16 v0, p2

    #@3b
    if-gt v11, v0, :cond_2

    #@3d
    add-int/lit8 v27, v11, -0x1

    #@3f
    aget v27, p0, v27

    #@41
    aget v28, p0, v11

    #@43
    move/from16 v0, v27

    #@45
    move/from16 v1, v28

    #@47
    if-le v0, v1, :cond_1

    #@49
    .line 144
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@4b
    const/16 v27, 0x43

    #@4d
    move/from16 v0, v27

    #@4f
    if-ne v8, v0, :cond_8

    #@51
    .line 145
    const/16 v27, 0x1

    #@53
    move-object/from16 v0, p0

    #@55
    move/from16 v1, p1

    #@57
    move/from16 v2, p2

    #@59
    move/from16 v3, v27

    #@5b
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    #@5e
    .line 146
    return-void

    #@5f
    .line 126
    :cond_3
    aget v27, p0, v11

    #@61
    add-int/lit8 v28, v11, 0x1

    #@63
    aget v28, p0, v28

    #@65
    move/from16 v0, v27

    #@67
    move/from16 v1, v28

    #@69
    if-le v0, v1, :cond_6

    #@6b
    .line 127
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@6d
    move/from16 v0, p2

    #@6f
    if-gt v11, v0, :cond_5

    #@71
    add-int/lit8 v27, v11, -0x1

    #@73
    aget v27, p0, v27

    #@75
    aget v28, p0, v11

    #@77
    move/from16 v0, v27

    #@79
    move/from16 v1, v28

    #@7b
    if-ge v0, v1, :cond_4

    #@7d
    .line 128
    :cond_5
    aget v27, v24, v8

    #@7f
    add-int/lit8 v13, v27, -0x1

    #@81
    .local v13, "lo":I
    move v9, v11

    #@82
    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@84
    add-int/lit8 v9, v9, -0x1

    #@86
    if-ge v13, v9, :cond_2

    #@88
    .line 129
    aget v25, p0, v13

    #@8a
    .local v25, "t":I
    aget v27, p0, v9

    #@8c
    aput v27, p0, v13

    #@8e
    aput v25, p0, v9

    #@90
    goto :goto_1

    #@91
    .line 132
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":I
    :cond_6
    const/16 v14, 0x21

    #@93
    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@95
    move/from16 v0, p2

    #@97
    if-gt v11, v0, :cond_2

    #@99
    add-int/lit8 v27, v11, -0x1

    #@9b
    aget v27, p0, v27

    #@9d
    aget v28, p0, v11

    #@9f
    move/from16 v0, v27

    #@a1
    move/from16 v1, v28

    #@a3
    if-ne v0, v1, :cond_2

    #@a5
    .line 133
    add-int/lit8 v14, v14, -0x1

    #@a7
    if-nez v14, :cond_7

    #@a9
    .line 134
    const/16 v27, 0x1

    #@ab
    move-object/from16 v0, p0

    #@ad
    move/from16 v1, p1

    #@af
    move/from16 v2, p2

    #@b1
    move/from16 v3, v27

    #@b3
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    #@b6
    .line 135
    return-void

    #@b7
    .line 123
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    #@b9
    goto/16 :goto_0

    #@bb
    .line 152
    :cond_9
    aget v27, v24, v8

    #@bd
    add-int/lit8 v23, p2, 0x1

    #@bf
    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    #@c1
    move/from16 v1, p2

    #@c3
    if-ne v0, v1, :cond_b

    #@c5
    .line 153
    add-int/lit8 v8, v8, 0x1

    #@c7
    aput v23, v24, v8

    #@c9
    .line 159
    :cond_a
    const/16 v18, 0x0

    #@cb
    .line 160
    .local v18, "odd":B
    const/16 v16, 0x1

    #@cd
    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    #@cf
    move/from16 v0, v16

    #@d1
    if-ge v0, v8, :cond_c

    #@d3
    xor-int/lit8 v27, v18, 0x1

    #@d5
    move/from16 v0, v27

    #@d7
    int-to-byte v0, v0

    #@d8
    move/from16 v18, v0

    #@da
    .local v18, "odd":B
    goto :goto_2

    #@db
    .line 154
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v27, 0x1

    #@dd
    move/from16 v0, v27

    #@df
    if-ne v8, v0, :cond_a

    #@e1
    .line 155
    return-void

    #@e2
    .line 165
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    #@e4
    .line 166
    .local v6, "blen":I
    if-eqz p3, :cond_d

    #@e6
    move/from16 v0, p5

    #@e8
    if-ge v0, v6, :cond_10

    #@ea
    .line 167
    :cond_d
    :goto_3
    new-array v0, v6, [I

    #@ec
    move-object/from16 p3, v0

    #@ee
    .line 168
    const/16 p4, 0x0

    #@f0
    .line 170
    :cond_e
    if-nez v18, :cond_11

    #@f2
    .line 171
    move-object/from16 v0, p0

    #@f4
    move/from16 v1, p1

    #@f6
    move-object/from16 v2, p3

    #@f8
    move/from16 v3, p4

    #@fa
    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@fd
    .line 172
    move-object/from16 v5, p0

    #@ff
    .line 173
    .local v5, "b":[I
    const/4 v7, 0x0

    #@100
    .line 174
    .local v7, "bo":I
    move-object/from16 p0, p3

    #@102
    .line 175
    sub-int v4, p4, p1

    #@104
    .line 183
    .local v4, "ao":I
    :goto_4
    const/16 v27, 0x1

    #@106
    move/from16 v0, v27

    #@108
    if-le v8, v0, :cond_17

    #@10a
    .line 184
    const/4 v12, 0x0

    #@10b
    .local v12, "last":I
    const/4 v11, 0x2

    #@10c
    :goto_5
    if-gt v11, v8, :cond_14

    #@10e
    .line 185
    aget v9, v24, v11

    #@110
    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    #@112
    aget v15, v24, v27

    #@114
    .line 186
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    #@116
    aget v10, v24, v27

    #@118
    .local v10, "i":I
    move/from16 v19, v10

    #@11a
    .local v19, "p":I
    move/from16 v21, v15

    #@11c
    .local v21, "q":I
    move/from16 v22, v21

    #@11e
    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    #@120
    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    #@122
    .line 187
    move/from16 v0, v22

    #@124
    if-ge v0, v9, :cond_f

    #@126
    move/from16 v0, v20

    #@128
    if-ge v0, v15, :cond_12

    #@12a
    add-int v27, v20, v4

    #@12c
    aget v27, p0, v27

    #@12e
    add-int v28, v22, v4

    #@130
    aget v28, p0, v28

    #@132
    move/from16 v0, v27

    #@134
    move/from16 v1, v28

    #@136
    if-gt v0, v1, :cond_12

    #@138
    .line 188
    :cond_f
    add-int v27, v10, v7

    #@13a
    add-int/lit8 v19, v20, 0x1

    #@13c
    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    #@13e
    aget v28, p0, v28

    #@140
    aput v28, v5, v27

    #@142
    move/from16 v21, v22

    #@144
    .line 186
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    #@146
    move/from16 v22, v21

    #@148
    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    #@14a
    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    #@14b
    .line 166
    .end local v4    # "ao":I
    .end local v5    # "b":[I
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v27, p4, v6

    #@14d
    move-object/from16 v0, p3

    #@14f
    array-length v0, v0

    #@150
    move/from16 v28, v0

    #@152
    move/from16 v0, v27

    #@154
    move/from16 v1, v28

    #@156
    if-le v0, v1, :cond_e

    #@158
    goto :goto_3

    #@159
    .line 177
    :cond_11
    move-object/from16 v5, p3

    #@15b
    .line 178
    .restart local v5    # "b":[I
    const/4 v4, 0x0

    #@15c
    .line 179
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    #@15e
    .restart local v7    # "bo":I
    goto :goto_4

    #@15f
    .line 190
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v27, v10, v7

    #@161
    add-int/lit8 v21, v22, 0x1

    #@163
    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    #@165
    aget v28, p0, v28

    #@167
    aput v28, v5, v27

    #@169
    move/from16 v19, v20

    #@16b
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    #@16c
    .line 193
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    #@16e
    aput v9, v24, v12

    #@170
    .line 184
    add-int/lit8 v11, v11, 0x2

    #@172
    goto :goto_5

    #@173
    .line 195
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v27, v8, 0x1

    #@175
    if-eqz v27, :cond_16

    #@177
    .line 196
    move/from16 v10, v23

    #@179
    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    #@17b
    aget v13, v24, v27

    #@17d
    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    #@17f
    if-lt v10, v13, :cond_15

    #@181
    .line 197
    add-int v27, v10, v7

    #@183
    add-int v28, v10, v4

    #@185
    aget v28, p0, v28

    #@187
    aput v28, v5, v27

    #@189
    goto :goto_8

    #@18a
    .line 199
    :cond_15
    add-int/lit8 v12, v12, 0x1

    #@18c
    aput v23, v24, v12

    #@18e
    .line 201
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v26, p0

    #@190
    .local v26, "t":[I
    move-object/from16 p0, v5

    #@192
    move-object/from16 v5, v26

    #@194
    .line 202
    move/from16 v17, v4

    #@196
    .local v17, "o":I
    move v4, v7

    #@197
    move/from16 v7, v17

    #@199
    .line 183
    move v8, v12

    #@19a
    goto/16 :goto_4

    #@19c
    .line 108
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[I
    :cond_17
    return-void
.end method

.method private static sort([JIIZ)V
    .locals 40
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    #@0
    .prologue
    .line 663
    sub-int v36, p2, p1

    #@2
    add-int/lit8 v23, v36, 0x1

    #@4
    .line 666
    .local v23, "length":I
    const/16 v36, 0x2f

    #@6
    move/from16 v0, v23

    #@8
    move/from16 v1, v36

    #@a
    if-ge v0, v1, :cond_b

    #@c
    .line 667
    if-eqz p3, :cond_3

    #@e
    .line 673
    move/from16 v19, p1

    #@10
    .local v19, "i":I
    move/from16 v20, p1

    #@12
    .local v20, "j":I
    :goto_0
    move/from16 v0, v19

    #@14
    move/from16 v1, p2

    #@16
    if-ge v0, v1, :cond_a

    #@18
    .line 674
    add-int/lit8 v36, v19, 0x1

    #@1a
    aget-wide v8, p0, v36

    #@1c
    .line 675
    .local v8, "ai":J
    :goto_1
    aget-wide v36, p0, v20

    #@1e
    cmp-long v36, v8, v36

    #@20
    if-gez v36, :cond_0

    #@22
    .line 676
    add-int/lit8 v36, v20, 0x1

    #@24
    aget-wide v38, p0, v20

    #@26
    aput-wide v38, p0, v36

    #@28
    .line 677
    add-int/lit8 v21, v20, -0x1

    #@2a
    .end local v20    # "j":I
    .local v21, "j":I
    move/from16 v0, v20

    #@2c
    move/from16 v1, p1

    #@2e
    if-ne v0, v1, :cond_1

    #@30
    move/from16 v20, v21

    #@32
    .line 681
    .end local v21    # "j":I
    .restart local v20    # "j":I
    :cond_0
    add-int/lit8 v36, v20, 0x1

    #@34
    aput-wide v8, p0, v36

    #@36
    .line 673
    add-int/lit8 v19, v19, 0x1

    #@38
    move/from16 v20, v19

    #@3a
    goto :goto_0

    #@3b
    .end local v20    # "j":I
    .restart local v21    # "j":I
    :cond_1
    move/from16 v20, v21

    #@3d
    .end local v21    # "j":I
    .restart local v20    # "j":I
    goto :goto_1

    #@3e
    .line 691
    .end local v8    # "ai":J
    .end local v19    # "i":I
    .end local v20    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@40
    aget-wide v36, p0, p1

    #@42
    add-int/lit8 v38, p1, -0x1

    #@44
    aget-wide v38, p0, v38

    #@46
    cmp-long v36, v36, v38

    #@48
    if-ltz v36, :cond_4

    #@4a
    .line 688
    :cond_3
    move/from16 v0, p1

    #@4c
    move/from16 v1, p2

    #@4e
    if-lt v0, v1, :cond_2

    #@50
    .line 689
    return-void

    #@51
    .line 701
    :cond_4
    move/from16 v22, p1

    #@53
    .local v22, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    #@55
    move/from16 v0, p1

    #@57
    move/from16 v1, p2

    #@59
    if-gt v0, v1, :cond_8

    #@5b
    .line 702
    aget-wide v4, p0, v22

    #@5d
    .local v4, "a1":J
    aget-wide v6, p0, p1

    #@5f
    .line 704
    .local v6, "a2":J
    cmp-long v36, v4, v6

    #@61
    if-gez v36, :cond_5

    #@63
    .line 705
    move-wide v6, v4

    #@64
    aget-wide v4, p0, p1

    #@66
    .line 707
    :cond_5
    :goto_3
    add-int/lit8 v22, v22, -0x1

    #@68
    aget-wide v36, p0, v22

    #@6a
    cmp-long v36, v4, v36

    #@6c
    if-gez v36, :cond_6

    #@6e
    .line 708
    add-int/lit8 v36, v22, 0x2

    #@70
    aget-wide v38, p0, v22

    #@72
    aput-wide v38, p0, v36

    #@74
    goto :goto_3

    #@75
    .line 710
    :cond_6
    add-int/lit8 v22, v22, 0x1

    #@77
    add-int/lit8 v36, v22, 0x1

    #@79
    aput-wide v4, p0, v36

    #@7b
    .line 712
    :goto_4
    add-int/lit8 v22, v22, -0x1

    #@7d
    aget-wide v36, p0, v22

    #@7f
    cmp-long v36, v6, v36

    #@81
    if-gez v36, :cond_7

    #@83
    .line 713
    add-int/lit8 v36, v22, 0x1

    #@85
    aget-wide v38, p0, v22

    #@87
    aput-wide v38, p0, v36

    #@89
    goto :goto_4

    #@8a
    .line 715
    :cond_7
    add-int/lit8 v36, v22, 0x1

    #@8c
    aput-wide v6, p0, v36

    #@8e
    .line 701
    add-int/lit8 p1, p1, 0x1

    #@90
    move/from16 v22, p1

    #@92
    goto :goto_2

    #@93
    .line 717
    .end local v4    # "a1":J
    .end local v6    # "a2":J
    :cond_8
    aget-wide v24, p0, p2

    #@95
    .line 719
    .local v24, "last":J
    :goto_5
    add-int/lit8 p2, p2, -0x1

    #@97
    aget-wide v36, p0, p2

    #@99
    cmp-long v36, v24, v36

    #@9b
    if-gez v36, :cond_9

    #@9d
    .line 720
    add-int/lit8 v36, p2, 0x1

    #@9f
    aget-wide v38, p0, p2

    #@a1
    aput-wide v38, p0, v36

    #@a3
    goto :goto_5

    #@a4
    .line 722
    :cond_9
    add-int/lit8 v36, p2, 0x1

    #@a6
    aput-wide v24, p0, v36

    #@a8
    .line 724
    .end local v22    # "k":I
    .end local v24    # "last":J
    :cond_a
    return-void

    #@a9
    .line 728
    :cond_b
    shr-int/lit8 v36, v23, 0x3

    #@ab
    shr-int/lit8 v37, v23, 0x6

    #@ad
    add-int v36, v36, v37

    #@af
    add-int/lit8 v27, v36, 0x1

    #@b1
    .line 737
    .local v27, "seventh":I
    add-int v36, p1, p2

    #@b3
    ushr-int/lit8 v14, v36, 0x1

    #@b5
    .line 738
    .local v14, "e3":I
    sub-int v13, v14, v27

    #@b7
    .line 739
    .local v13, "e2":I
    sub-int v12, v13, v27

    #@b9
    .line 740
    .local v12, "e1":I
    add-int v15, v14, v27

    #@bb
    .line 741
    .local v15, "e4":I
    add-int v16, v15, v27

    #@bd
    .line 744
    .local v16, "e5":I
    aget-wide v36, p0, v13

    #@bf
    aget-wide v38, p0, v12

    #@c1
    cmp-long v36, v36, v38

    #@c3
    if-gez v36, :cond_c

    #@c5
    aget-wide v34, p0, v13

    #@c7
    .local v34, "t":J
    aget-wide v36, p0, v12

    #@c9
    aput-wide v36, p0, v13

    #@cb
    aput-wide v34, p0, v12

    #@cd
    .line 746
    .end local v34    # "t":J
    :cond_c
    aget-wide v36, p0, v14

    #@cf
    aget-wide v38, p0, v13

    #@d1
    cmp-long v36, v36, v38

    #@d3
    if-gez v36, :cond_d

    #@d5
    aget-wide v34, p0, v14

    #@d7
    .restart local v34    # "t":J
    aget-wide v36, p0, v13

    #@d9
    aput-wide v36, p0, v14

    #@db
    aput-wide v34, p0, v13

    #@dd
    .line 747
    aget-wide v36, p0, v12

    #@df
    cmp-long v36, v34, v36

    #@e1
    if-gez v36, :cond_d

    #@e3
    aget-wide v36, p0, v12

    #@e5
    aput-wide v36, p0, v13

    #@e7
    aput-wide v34, p0, v12

    #@e9
    .line 749
    .end local v34    # "t":J
    :cond_d
    aget-wide v36, p0, v15

    #@eb
    aget-wide v38, p0, v14

    #@ed
    cmp-long v36, v36, v38

    #@ef
    if-gez v36, :cond_e

    #@f1
    aget-wide v34, p0, v15

    #@f3
    .restart local v34    # "t":J
    aget-wide v36, p0, v14

    #@f5
    aput-wide v36, p0, v15

    #@f7
    aput-wide v34, p0, v14

    #@f9
    .line 750
    aget-wide v36, p0, v13

    #@fb
    cmp-long v36, v34, v36

    #@fd
    if-gez v36, :cond_e

    #@ff
    aget-wide v36, p0, v13

    #@101
    aput-wide v36, p0, v14

    #@103
    aput-wide v34, p0, v13

    #@105
    .line 751
    aget-wide v36, p0, v12

    #@107
    cmp-long v36, v34, v36

    #@109
    if-gez v36, :cond_e

    #@10b
    aget-wide v36, p0, v12

    #@10d
    aput-wide v36, p0, v13

    #@10f
    aput-wide v34, p0, v12

    #@111
    .line 754
    .end local v34    # "t":J
    :cond_e
    aget-wide v36, p0, v16

    #@113
    aget-wide v38, p0, v15

    #@115
    cmp-long v36, v36, v38

    #@117
    if-gez v36, :cond_f

    #@119
    aget-wide v34, p0, v16

    #@11b
    .restart local v34    # "t":J
    aget-wide v36, p0, v15

    #@11d
    aput-wide v36, p0, v16

    #@11f
    aput-wide v34, p0, v15

    #@121
    .line 755
    aget-wide v36, p0, v14

    #@123
    cmp-long v36, v34, v36

    #@125
    if-gez v36, :cond_f

    #@127
    aget-wide v36, p0, v14

    #@129
    aput-wide v36, p0, v15

    #@12b
    aput-wide v34, p0, v14

    #@12d
    .line 756
    aget-wide v36, p0, v13

    #@12f
    cmp-long v36, v34, v36

    #@131
    if-gez v36, :cond_f

    #@133
    aget-wide v36, p0, v13

    #@135
    aput-wide v36, p0, v14

    #@137
    aput-wide v34, p0, v13

    #@139
    .line 757
    aget-wide v36, p0, v12

    #@13b
    cmp-long v36, v34, v36

    #@13d
    if-gez v36, :cond_f

    #@13f
    aget-wide v36, p0, v12

    #@141
    aput-wide v36, p0, v13

    #@143
    aput-wide v34, p0, v12

    #@145
    .line 763
    .end local v34    # "t":J
    :cond_f
    move/from16 v26, p1

    #@147
    .line 764
    .local v26, "less":I
    move/from16 v17, p2

    #@149
    .line 766
    .local v17, "great":I
    aget-wide v36, p0, v12

    #@14b
    aget-wide v38, p0, v13

    #@14d
    cmp-long v36, v36, v38

    #@14f
    if-eqz v36, :cond_20

    #@151
    aget-wide v36, p0, v13

    #@153
    aget-wide v38, p0, v14

    #@155
    cmp-long v36, v36, v38

    #@157
    if-eqz v36, :cond_20

    #@159
    aget-wide v36, p0, v14

    #@15b
    aget-wide v38, p0, v15

    #@15d
    cmp-long v36, v36, v38

    #@15f
    if-eqz v36, :cond_20

    #@161
    aget-wide v36, p0, v15

    #@163
    aget-wide v38, p0, v16

    #@165
    cmp-long v36, v36, v38

    #@167
    if-eqz v36, :cond_20

    #@169
    .line 772
    aget-wide v30, p0, v13

    #@16b
    .line 773
    .local v30, "pivot1":J
    aget-wide v32, p0, v15

    #@16d
    .line 781
    .local v32, "pivot2":J
    aget-wide v36, p0, p1

    #@16f
    aput-wide v36, p0, v13

    #@171
    .line 782
    aget-wide v36, p0, p2

    #@173
    aput-wide v36, p0, v15

    #@175
    .line 787
    :cond_10
    add-int/lit8 v26, v26, 0x1

    #@177
    aget-wide v36, p0, v26

    #@179
    cmp-long v36, v36, v30

    #@17b
    if-ltz v36, :cond_10

    #@17d
    .line 788
    :cond_11
    add-int/lit8 v17, v17, -0x1

    #@17f
    aget-wide v36, p0, v17

    #@181
    cmp-long v36, v36, v32

    #@183
    if-gtz v36, :cond_11

    #@185
    .line 810
    add-int/lit8 v22, v26, -0x1

    #@187
    .restart local v22    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v22, v22, 0x1

    #@189
    move/from16 v0, v22

    #@18b
    move/from16 v1, v17

    #@18d
    if-gt v0, v1, :cond_14

    #@18f
    .line 811
    aget-wide v10, p0, v22

    #@191
    .line 812
    .local v10, "ak":J
    cmp-long v36, v10, v30

    #@193
    if-gez v36, :cond_13

    #@195
    .line 813
    aget-wide v36, p0, v26

    #@197
    aput-wide v36, p0, v22

    #@199
    .line 818
    aput-wide v10, p0, v26

    #@19b
    .line 819
    add-int/lit8 v26, v26, 0x1

    #@19d
    goto :goto_6

    #@19e
    .line 820
    :cond_13
    cmp-long v36, v10, v32

    #@1a0
    if-lez v36, :cond_12

    #@1a2
    .line 821
    :goto_7
    aget-wide v36, p0, v17

    #@1a4
    cmp-long v36, v36, v32

    #@1a6
    if-lez v36, :cond_16

    #@1a8
    .line 822
    add-int/lit8 v18, v17, -0x1

    #@1aa
    .end local v17    # "great":I
    .local v18, "great":I
    move/from16 v0, v17

    #@1ac
    move/from16 v1, v22

    #@1ae
    if-ne v0, v1, :cond_15

    #@1b0
    move/from16 v17, v18

    #@1b2
    .line 843
    .end local v10    # "ak":J
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_14
    add-int/lit8 v36, v26, -0x1

    #@1b4
    aget-wide v36, p0, v36

    #@1b6
    aput-wide v36, p0, p1

    #@1b8
    add-int/lit8 v36, v26, -0x1

    #@1ba
    aput-wide v30, p0, v36

    #@1bc
    .line 844
    add-int/lit8 v36, v17, 0x1

    #@1be
    aget-wide v36, p0, v36

    #@1c0
    aput-wide v36, p0, p2

    #@1c2
    add-int/lit8 v36, v17, 0x1

    #@1c4
    aput-wide v32, p0, v36

    #@1c6
    .line 847
    add-int/lit8 v36, v26, -0x2

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    move/from16 v1, p1

    #@1cc
    move/from16 v2, v36

    #@1ce
    move/from16 v3, p3

    #@1d0
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    #@1d3
    .line 848
    add-int/lit8 v36, v17, 0x2

    #@1d5
    const/16 v37, 0x0

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    move/from16 v1, v36

    #@1db
    move/from16 v2, p2

    #@1dd
    move/from16 v3, v37

    #@1df
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    #@1e2
    .line 854
    move/from16 v0, v26

    #@1e4
    if-ge v0, v12, :cond_1c

    #@1e6
    move/from16 v0, v16

    #@1e8
    move/from16 v1, v17

    #@1ea
    if-ge v0, v1, :cond_1c

    #@1ec
    .line 858
    :goto_8
    aget-wide v36, p0, v26

    #@1ee
    cmp-long v36, v36, v30

    #@1f0
    if-nez v36, :cond_18

    #@1f2
    .line 859
    add-int/lit8 v26, v26, 0x1

    #@1f4
    goto :goto_8

    #@1f5
    .end local v17    # "great":I
    .restart local v10    # "ak":J
    .restart local v18    # "great":I
    :cond_15
    move/from16 v17, v18

    #@1f7
    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_7

    #@1f8
    .line 826
    :cond_16
    aget-wide v36, p0, v17

    #@1fa
    cmp-long v36, v36, v30

    #@1fc
    if-gez v36, :cond_17

    #@1fe
    .line 827
    aget-wide v36, p0, v26

    #@200
    aput-wide v36, p0, v22

    #@202
    .line 828
    aget-wide v36, p0, v17

    #@204
    aput-wide v36, p0, v26

    #@206
    .line 829
    add-int/lit8 v26, v26, 0x1

    #@208
    .line 837
    :goto_9
    aput-wide v10, p0, v17

    #@20a
    .line 838
    add-int/lit8 v17, v17, -0x1

    #@20c
    goto/16 :goto_6

    #@20e
    .line 831
    :cond_17
    aget-wide v36, p0, v17

    #@210
    aput-wide v36, p0, v22

    #@212
    goto :goto_9

    #@213
    .line 862
    .end local v10    # "ak":J
    :cond_18
    :goto_a
    aget-wide v36, p0, v17

    #@215
    cmp-long v36, v36, v32

    #@217
    if-nez v36, :cond_19

    #@219
    .line 863
    add-int/lit8 v17, v17, -0x1

    #@21b
    goto :goto_a

    #@21c
    .line 886
    :cond_19
    add-int/lit8 v22, v26, -0x1

    #@21e
    :cond_1a
    :goto_b
    add-int/lit8 v22, v22, 0x1

    #@220
    move/from16 v0, v22

    #@222
    move/from16 v1, v17

    #@224
    if-gt v0, v1, :cond_1c

    #@226
    .line 887
    aget-wide v10, p0, v22

    #@228
    .line 888
    .restart local v10    # "ak":J
    cmp-long v36, v10, v30

    #@22a
    if-nez v36, :cond_1b

    #@22c
    .line 889
    aget-wide v36, p0, v26

    #@22e
    aput-wide v36, p0, v22

    #@230
    .line 890
    aput-wide v10, p0, v26

    #@232
    .line 891
    add-int/lit8 v26, v26, 0x1

    #@234
    goto :goto_b

    #@235
    .line 892
    :cond_1b
    cmp-long v36, v10, v32

    #@237
    if-nez v36, :cond_1a

    #@239
    .line 893
    :goto_c
    aget-wide v36, p0, v17

    #@23b
    cmp-long v36, v36, v32

    #@23d
    if-nez v36, :cond_1e

    #@23f
    .line 894
    add-int/lit8 v18, v17, -0x1

    #@241
    .end local v17    # "great":I
    .restart local v18    # "great":I
    move/from16 v0, v17

    #@243
    move/from16 v1, v22

    #@245
    if-ne v0, v1, :cond_1d

    #@247
    move/from16 v17, v18

    #@249
    .line 920
    .end local v10    # "ak":J
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_1c
    const/16 v36, 0x0

    #@24b
    move-object/from16 v0, p0

    #@24d
    move/from16 v1, v26

    #@24f
    move/from16 v2, v17

    #@251
    move/from16 v3, v36

    #@253
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    #@256
    .line 662
    .end local v30    # "pivot1":J
    .end local v32    # "pivot2":J
    :goto_d
    return-void

    #@257
    .end local v17    # "great":I
    .restart local v10    # "ak":J
    .restart local v18    # "great":I
    .restart local v30    # "pivot1":J
    .restart local v32    # "pivot2":J
    :cond_1d
    move/from16 v17, v18

    #@259
    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_c

    #@25a
    .line 898
    :cond_1e
    aget-wide v36, p0, v17

    #@25c
    cmp-long v36, v36, v30

    #@25e
    if-nez v36, :cond_1f

    #@260
    .line 899
    aget-wide v36, p0, v26

    #@262
    aput-wide v36, p0, v22

    #@264
    .line 908
    aput-wide v30, p0, v26

    #@266
    .line 909
    add-int/lit8 v26, v26, 0x1

    #@268
    .line 913
    :goto_e
    aput-wide v10, p0, v17

    #@26a
    .line 914
    add-int/lit8 v17, v17, -0x1

    #@26c
    goto :goto_b

    #@26d
    .line 911
    :cond_1f
    aget-wide v36, p0, v17

    #@26f
    aput-wide v36, p0, v22

    #@271
    goto :goto_e

    #@272
    .line 927
    .end local v10    # "ak":J
    .end local v22    # "k":I
    .end local v30    # "pivot1":J
    .end local v32    # "pivot2":J
    :cond_20
    aget-wide v28, p0, v14

    #@274
    .line 949
    .local v28, "pivot":J
    move/from16 v22, p1

    #@276
    .restart local v22    # "k":I
    :goto_f
    move/from16 v0, v22

    #@278
    move/from16 v1, v17

    #@27a
    if-gt v0, v1, :cond_25

    #@27c
    .line 950
    aget-wide v36, p0, v22

    #@27e
    cmp-long v36, v36, v28

    #@280
    if-nez v36, :cond_21

    #@282
    .line 949
    :goto_10
    add-int/lit8 v22, v22, 0x1

    #@284
    goto :goto_f

    #@285
    .line 953
    :cond_21
    aget-wide v10, p0, v22

    #@287
    .line 954
    .restart local v10    # "ak":J
    cmp-long v36, v10, v28

    #@289
    if-gez v36, :cond_22

    #@28b
    .line 955
    aget-wide v36, p0, v26

    #@28d
    aput-wide v36, p0, v22

    #@28f
    .line 956
    aput-wide v10, p0, v26

    #@291
    .line 957
    add-int/lit8 v26, v26, 0x1

    #@293
    goto :goto_10

    #@294
    .line 959
    :cond_22
    :goto_11
    aget-wide v36, p0, v17

    #@296
    cmp-long v36, v36, v28

    #@298
    if-lez v36, :cond_23

    #@29a
    .line 960
    add-int/lit8 v17, v17, -0x1

    #@29c
    goto :goto_11

    #@29d
    .line 962
    :cond_23
    aget-wide v36, p0, v17

    #@29f
    cmp-long v36, v36, v28

    #@2a1
    if-gez v36, :cond_24

    #@2a3
    .line 963
    aget-wide v36, p0, v26

    #@2a5
    aput-wide v36, p0, v22

    #@2a7
    .line 964
    aget-wide v36, p0, v17

    #@2a9
    aput-wide v36, p0, v26

    #@2ab
    .line 965
    add-int/lit8 v26, v26, 0x1

    #@2ad
    .line 977
    :goto_12
    aput-wide v10, p0, v17

    #@2af
    .line 978
    add-int/lit8 v17, v17, -0x1

    #@2b1
    goto :goto_10

    #@2b2
    .line 975
    :cond_24
    aput-wide v28, p0, v22

    #@2b4
    goto :goto_12

    #@2b5
    .line 987
    .end local v10    # "ak":J
    :cond_25
    add-int/lit8 v36, v26, -0x1

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    move/from16 v1, p1

    #@2bb
    move/from16 v2, v36

    #@2bd
    move/from16 v3, p3

    #@2bf
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    #@2c2
    .line 988
    add-int/lit8 v36, v17, 0x1

    #@2c4
    const/16 v37, 0x0

    #@2c6
    move-object/from16 v0, p0

    #@2c8
    move/from16 v1, v36

    #@2ca
    move/from16 v2, p2

    #@2cc
    move/from16 v3, v37

    #@2ce
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    #@2d1
    goto :goto_d
.end method

.method static sort([JII[JII)V
    .locals 32
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [J
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 558
    sub-int v28, p2, p1

    #@2
    const/16 v29, 0x11e

    #@4
    move/from16 v0, v28

    #@6
    move/from16 v1, v29

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 559
    const/16 v28, 0x1

    #@c
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p1

    #@10
    move/from16 v2, p2

    #@12
    move/from16 v3, v28

    #@14
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    #@17
    .line 560
    return-void

    #@18
    .line 567
    :cond_0
    const/16 v28, 0x44

    #@1a
    move/from16 v0, v28

    #@1c
    new-array v0, v0, [I

    #@1e
    move-object/from16 v24, v0

    #@20
    .line 568
    .local v24, "run":[I
    const/4 v8, 0x0

    #@21
    .local v8, "count":I
    const/16 v28, 0x0

    #@23
    aput p1, v24, v28

    #@25
    .line 571
    move/from16 v11, p1

    #@27
    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    #@29
    if-ge v11, v0, :cond_9

    #@2b
    .line 572
    aget-wide v28, p0, v11

    #@2d
    add-int/lit8 v30, v11, 0x1

    #@2f
    aget-wide v30, p0, v30

    #@31
    cmp-long v28, v28, v30

    #@33
    if-gez v28, :cond_3

    #@35
    .line 573
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@37
    move/from16 v0, p2

    #@39
    if-gt v11, v0, :cond_2

    #@3b
    add-int/lit8 v28, v11, -0x1

    #@3d
    aget-wide v28, p0, v28

    #@3f
    aget-wide v30, p0, v11

    #@41
    cmp-long v28, v28, v30

    #@43
    if-lez v28, :cond_1

    #@45
    .line 592
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@47
    const/16 v28, 0x43

    #@49
    move/from16 v0, v28

    #@4b
    if-ne v8, v0, :cond_8

    #@4d
    .line 593
    const/16 v28, 0x1

    #@4f
    move-object/from16 v0, p0

    #@51
    move/from16 v1, p1

    #@53
    move/from16 v2, p2

    #@55
    move/from16 v3, v28

    #@57
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    #@5a
    .line 594
    return-void

    #@5b
    .line 574
    :cond_3
    aget-wide v28, p0, v11

    #@5d
    add-int/lit8 v30, v11, 0x1

    #@5f
    aget-wide v30, p0, v30

    #@61
    cmp-long v28, v28, v30

    #@63
    if-lez v28, :cond_6

    #@65
    .line 575
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@67
    move/from16 v0, p2

    #@69
    if-gt v11, v0, :cond_5

    #@6b
    add-int/lit8 v28, v11, -0x1

    #@6d
    aget-wide v28, p0, v28

    #@6f
    aget-wide v30, p0, v11

    #@71
    cmp-long v28, v28, v30

    #@73
    if-gez v28, :cond_4

    #@75
    .line 576
    :cond_5
    aget v28, v24, v8

    #@77
    add-int/lit8 v13, v28, -0x1

    #@79
    .local v13, "lo":I
    move v9, v11

    #@7a
    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@7c
    add-int/lit8 v9, v9, -0x1

    #@7e
    if-ge v13, v9, :cond_2

    #@80
    .line 577
    aget-wide v26, p0, v13

    #@82
    .local v26, "t":J
    aget-wide v28, p0, v9

    #@84
    aput-wide v28, p0, v13

    #@86
    aput-wide v26, p0, v9

    #@88
    goto :goto_1

    #@89
    .line 580
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v26    # "t":J
    :cond_6
    const/16 v14, 0x21

    #@8b
    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@8d
    move/from16 v0, p2

    #@8f
    if-gt v11, v0, :cond_2

    #@91
    add-int/lit8 v28, v11, -0x1

    #@93
    aget-wide v28, p0, v28

    #@95
    aget-wide v30, p0, v11

    #@97
    cmp-long v28, v28, v30

    #@99
    if-nez v28, :cond_2

    #@9b
    .line 581
    add-int/lit8 v14, v14, -0x1

    #@9d
    if-nez v14, :cond_7

    #@9f
    .line 582
    const/16 v28, 0x1

    #@a1
    move-object/from16 v0, p0

    #@a3
    move/from16 v1, p1

    #@a5
    move/from16 v2, p2

    #@a7
    move/from16 v3, v28

    #@a9
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    #@ac
    .line 583
    return-void

    #@ad
    .line 571
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    #@af
    goto/16 :goto_0

    #@b1
    .line 600
    :cond_9
    aget v28, v24, v8

    #@b3
    add-int/lit8 v23, p2, 0x1

    #@b5
    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v28

    #@b7
    move/from16 v1, p2

    #@b9
    if-ne v0, v1, :cond_b

    #@bb
    .line 601
    add-int/lit8 v8, v8, 0x1

    #@bd
    aput v23, v24, v8

    #@bf
    .line 607
    :cond_a
    const/16 v18, 0x0

    #@c1
    .line 608
    .local v18, "odd":B
    const/16 v16, 0x1

    #@c3
    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    #@c5
    move/from16 v0, v16

    #@c7
    if-ge v0, v8, :cond_c

    #@c9
    xor-int/lit8 v28, v18, 0x1

    #@cb
    move/from16 v0, v28

    #@cd
    int-to-byte v0, v0

    #@ce
    move/from16 v18, v0

    #@d0
    .local v18, "odd":B
    goto :goto_2

    #@d1
    .line 602
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v28, 0x1

    #@d3
    move/from16 v0, v28

    #@d5
    if-ne v8, v0, :cond_a

    #@d7
    .line 603
    return-void

    #@d8
    .line 613
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    #@da
    .line 614
    .local v6, "blen":I
    if-eqz p3, :cond_d

    #@dc
    move/from16 v0, p5

    #@de
    if-ge v0, v6, :cond_10

    #@e0
    .line 615
    :cond_d
    :goto_3
    new-array v0, v6, [J

    #@e2
    move-object/from16 p3, v0

    #@e4
    .line 616
    const/16 p4, 0x0

    #@e6
    .line 618
    :cond_e
    if-nez v18, :cond_11

    #@e8
    .line 619
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, p1

    #@ec
    move-object/from16 v2, p3

    #@ee
    move/from16 v3, p4

    #@f0
    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@f3
    .line 620
    move-object/from16 v5, p0

    #@f5
    .line 621
    .local v5, "b":[J
    const/4 v7, 0x0

    #@f6
    .line 622
    .local v7, "bo":I
    move-object/from16 p0, p3

    #@f8
    .line 623
    sub-int v4, p4, p1

    #@fa
    .line 631
    .local v4, "ao":I
    :goto_4
    const/16 v28, 0x1

    #@fc
    move/from16 v0, v28

    #@fe
    if-le v8, v0, :cond_17

    #@100
    .line 632
    const/4 v12, 0x0

    #@101
    .local v12, "last":I
    const/4 v11, 0x2

    #@102
    :goto_5
    if-gt v11, v8, :cond_14

    #@104
    .line 633
    aget v9, v24, v11

    #@106
    .restart local v9    # "hi":I
    add-int/lit8 v28, v11, -0x1

    #@108
    aget v15, v24, v28

    #@10a
    .line 634
    .local v15, "mi":I
    add-int/lit8 v28, v11, -0x2

    #@10c
    aget v10, v24, v28

    #@10e
    .local v10, "i":I
    move/from16 v19, v10

    #@110
    .local v19, "p":I
    move/from16 v21, v15

    #@112
    .local v21, "q":I
    move/from16 v22, v21

    #@114
    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    #@116
    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    #@118
    .line 635
    move/from16 v0, v22

    #@11a
    if-ge v0, v9, :cond_f

    #@11c
    move/from16 v0, v20

    #@11e
    if-ge v0, v15, :cond_12

    #@120
    add-int v28, v20, v4

    #@122
    aget-wide v28, p0, v28

    #@124
    add-int v30, v22, v4

    #@126
    aget-wide v30, p0, v30

    #@128
    cmp-long v28, v28, v30

    #@12a
    if-gtz v28, :cond_12

    #@12c
    .line 636
    :cond_f
    add-int v28, v10, v7

    #@12e
    add-int/lit8 v19, v20, 0x1

    #@130
    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v29, v20, v4

    #@132
    aget-wide v30, p0, v29

    #@134
    aput-wide v30, v5, v28

    #@136
    move/from16 v21, v22

    #@138
    .line 634
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    #@13a
    move/from16 v22, v21

    #@13c
    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    #@13e
    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    #@13f
    .line 614
    .end local v4    # "ao":I
    .end local v5    # "b":[J
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v28, p4, v6

    #@141
    move-object/from16 v0, p3

    #@143
    array-length v0, v0

    #@144
    move/from16 v29, v0

    #@146
    move/from16 v0, v28

    #@148
    move/from16 v1, v29

    #@14a
    if-le v0, v1, :cond_e

    #@14c
    goto :goto_3

    #@14d
    .line 625
    :cond_11
    move-object/from16 v5, p3

    #@14f
    .line 626
    .restart local v5    # "b":[J
    const/4 v4, 0x0

    #@150
    .line 627
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    #@152
    .restart local v7    # "bo":I
    goto :goto_4

    #@153
    .line 638
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v28, v10, v7

    #@155
    add-int/lit8 v21, v22, 0x1

    #@157
    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v29, v22, v4

    #@159
    aget-wide v30, p0, v29

    #@15b
    aput-wide v30, v5, v28

    #@15d
    move/from16 v19, v20

    #@15f
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    #@160
    .line 641
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    #@162
    aput v9, v24, v12

    #@164
    .line 632
    add-int/lit8 v11, v11, 0x2

    #@166
    goto :goto_5

    #@167
    .line 643
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v28, v8, 0x1

    #@169
    if-eqz v28, :cond_16

    #@16b
    .line 644
    move/from16 v10, v23

    #@16d
    .restart local v10    # "i":I
    add-int/lit8 v28, v8, -0x1

    #@16f
    aget v13, v24, v28

    #@171
    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    #@173
    if-lt v10, v13, :cond_15

    #@175
    .line 645
    add-int v28, v10, v7

    #@177
    add-int v29, v10, v4

    #@179
    aget-wide v30, p0, v29

    #@17b
    aput-wide v30, v5, v28

    #@17d
    goto :goto_8

    #@17e
    .line 647
    :cond_15
    add-int/lit8 v12, v12, 0x1

    #@180
    aput v23, v24, v12

    #@182
    .line 649
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v25, p0

    #@184
    .local v25, "t":[J
    move-object/from16 p0, v5

    #@186
    move-object/from16 v5, v25

    #@188
    .line 650
    move/from16 v17, v4

    #@18a
    .local v17, "o":I
    move v4, v7

    #@18b
    move/from16 v7, v17

    #@18d
    .line 631
    move v8, v12

    #@18e
    goto/16 :goto_4

    #@190
    .line 556
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v25    # "t":[J
    :cond_17
    return-void
.end method

.method private static sort([SIIZ)V
    .locals 29
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    #@0
    .prologue
    .line 1147
    sub-int v27, p2, p1

    #@2
    add-int/lit8 v20, v27, 0x1

    #@4
    .line 1150
    .local v20, "length":I
    const/16 v27, 0x2f

    #@6
    move/from16 v0, v20

    #@8
    move/from16 v1, v27

    #@a
    if-ge v0, v1, :cond_b

    #@c
    .line 1151
    if-eqz p3, :cond_3

    #@e
    .line 1157
    move/from16 v15, p1

    #@10
    .local v15, "i":I
    move/from16 v16, p1

    #@12
    .local v16, "j":I
    :goto_0
    move/from16 v0, p2

    #@14
    if-ge v15, v0, :cond_a

    #@16
    .line 1158
    add-int/lit8 v27, v15, 0x1

    #@18
    aget-short v6, p0, v27

    #@1a
    .line 1159
    .local v6, "ai":S
    :goto_1
    aget-short v27, p0, v16

    #@1c
    move/from16 v0, v27

    #@1e
    if-ge v6, v0, :cond_0

    #@20
    .line 1160
    add-int/lit8 v27, v16, 0x1

    #@22
    aget-short v28, p0, v16

    #@24
    aput-short v28, p0, v27

    #@26
    .line 1161
    add-int/lit8 v17, v16, -0x1

    #@28
    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    #@2a
    move/from16 v1, p1

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    move/from16 v16, v17

    #@30
    .line 1165
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_0
    add-int/lit8 v27, v16, 0x1

    #@32
    aput-short v6, p0, v27

    #@34
    .line 1157
    add-int/lit8 v15, v15, 0x1

    #@36
    move/from16 v16, v15

    #@38
    goto :goto_0

    #@39
    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_1
    move/from16 v16, v17

    #@3b
    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    #@3c
    .line 1175
    .end local v6    # "ai":S
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@3e
    aget-short v27, p0, p1

    #@40
    add-int/lit8 v28, p1, -0x1

    #@42
    aget-short v28, p0, v28

    #@44
    move/from16 v0, v27

    #@46
    move/from16 v1, v28

    #@48
    if-lt v0, v1, :cond_4

    #@4a
    .line 1172
    :cond_3
    move/from16 v0, p1

    #@4c
    move/from16 v1, p2

    #@4e
    if-lt v0, v1, :cond_2

    #@50
    .line 1173
    return-void

    #@51
    .line 1185
    :cond_4
    move/from16 v18, p1

    #@53
    .local v18, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    #@55
    move/from16 v0, p1

    #@57
    move/from16 v1, p2

    #@59
    if-gt v0, v1, :cond_8

    #@5b
    .line 1186
    aget-short v4, p0, v18

    #@5d
    .local v4, "a1":S
    aget-short v5, p0, p1

    #@5f
    .line 1188
    .local v5, "a2":S
    if-ge v4, v5, :cond_5

    #@61
    .line 1189
    move v5, v4

    #@62
    aget-short v4, p0, p1

    #@64
    .line 1191
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    #@66
    aget-short v27, p0, v18

    #@68
    move/from16 v0, v27

    #@6a
    if-ge v4, v0, :cond_6

    #@6c
    .line 1192
    add-int/lit8 v27, v18, 0x2

    #@6e
    aget-short v28, p0, v18

    #@70
    aput-short v28, p0, v27

    #@72
    goto :goto_3

    #@73
    .line 1194
    :cond_6
    add-int/lit8 v18, v18, 0x1

    #@75
    add-int/lit8 v27, v18, 0x1

    #@77
    aput-short v4, p0, v27

    #@79
    .line 1196
    :goto_4
    add-int/lit8 v18, v18, -0x1

    #@7b
    aget-short v27, p0, v18

    #@7d
    move/from16 v0, v27

    #@7f
    if-ge v5, v0, :cond_7

    #@81
    .line 1197
    add-int/lit8 v27, v18, 0x1

    #@83
    aget-short v28, p0, v18

    #@85
    aput-short v28, p0, v27

    #@87
    goto :goto_4

    #@88
    .line 1199
    :cond_7
    add-int/lit8 v27, v18, 0x1

    #@8a
    aput-short v5, p0, v27

    #@8c
    .line 1185
    add-int/lit8 p1, p1, 0x1

    #@8e
    move/from16 v18, p1

    #@90
    goto :goto_2

    #@91
    .line 1201
    .end local v4    # "a1":S
    .end local v5    # "a2":S
    :cond_8
    aget-short v19, p0, p2

    #@93
    .line 1203
    .local v19, "last":S
    :goto_5
    add-int/lit8 p2, p2, -0x1

    #@95
    aget-short v27, p0, p2

    #@97
    move/from16 v0, v19

    #@99
    move/from16 v1, v27

    #@9b
    if-ge v0, v1, :cond_9

    #@9d
    .line 1204
    add-int/lit8 v27, p2, 0x1

    #@9f
    aget-short v28, p0, p2

    #@a1
    aput-short v28, p0, v27

    #@a3
    goto :goto_5

    #@a4
    .line 1206
    :cond_9
    add-int/lit8 v27, p2, 0x1

    #@a6
    aput-short v19, p0, v27

    #@a8
    .line 1208
    .end local v18    # "k":I
    .end local v19    # "last":S
    :cond_a
    return-void

    #@a9
    .line 1212
    :cond_b
    shr-int/lit8 v27, v20, 0x3

    #@ab
    shr-int/lit8 v28, v20, 0x6

    #@ad
    add-int v27, v27, v28

    #@af
    add-int/lit8 v25, v27, 0x1

    #@b1
    .line 1221
    .local v25, "seventh":I
    add-int v27, p1, p2

    #@b3
    ushr-int/lit8 v10, v27, 0x1

    #@b5
    .line 1222
    .local v10, "e3":I
    sub-int v9, v10, v25

    #@b7
    .line 1223
    .local v9, "e2":I
    sub-int v8, v9, v25

    #@b9
    .line 1224
    .local v8, "e1":I
    add-int v11, v10, v25

    #@bb
    .line 1225
    .local v11, "e4":I
    add-int v12, v11, v25

    #@bd
    .line 1228
    .local v12, "e5":I
    aget-short v27, p0, v9

    #@bf
    aget-short v28, p0, v8

    #@c1
    move/from16 v0, v27

    #@c3
    move/from16 v1, v28

    #@c5
    if-ge v0, v1, :cond_c

    #@c7
    aget-short v26, p0, v9

    #@c9
    .local v26, "t":S
    aget-short v27, p0, v8

    #@cb
    aput-short v27, p0, v9

    #@cd
    aput-short v26, p0, v8

    #@cf
    .line 1230
    .end local v26    # "t":S
    :cond_c
    aget-short v27, p0, v10

    #@d1
    aget-short v28, p0, v9

    #@d3
    move/from16 v0, v27

    #@d5
    move/from16 v1, v28

    #@d7
    if-ge v0, v1, :cond_d

    #@d9
    aget-short v26, p0, v10

    #@db
    .restart local v26    # "t":S
    aget-short v27, p0, v9

    #@dd
    aput-short v27, p0, v10

    #@df
    aput-short v26, p0, v9

    #@e1
    .line 1231
    aget-short v27, p0, v8

    #@e3
    move/from16 v0, v26

    #@e5
    move/from16 v1, v27

    #@e7
    if-ge v0, v1, :cond_d

    #@e9
    aget-short v27, p0, v8

    #@eb
    aput-short v27, p0, v9

    #@ed
    aput-short v26, p0, v8

    #@ef
    .line 1233
    .end local v26    # "t":S
    :cond_d
    aget-short v27, p0, v11

    #@f1
    aget-short v28, p0, v10

    #@f3
    move/from16 v0, v27

    #@f5
    move/from16 v1, v28

    #@f7
    if-ge v0, v1, :cond_e

    #@f9
    aget-short v26, p0, v11

    #@fb
    .restart local v26    # "t":S
    aget-short v27, p0, v10

    #@fd
    aput-short v27, p0, v11

    #@ff
    aput-short v26, p0, v10

    #@101
    .line 1234
    aget-short v27, p0, v9

    #@103
    move/from16 v0, v26

    #@105
    move/from16 v1, v27

    #@107
    if-ge v0, v1, :cond_e

    #@109
    aget-short v27, p0, v9

    #@10b
    aput-short v27, p0, v10

    #@10d
    aput-short v26, p0, v9

    #@10f
    .line 1235
    aget-short v27, p0, v8

    #@111
    move/from16 v0, v26

    #@113
    move/from16 v1, v27

    #@115
    if-ge v0, v1, :cond_e

    #@117
    aget-short v27, p0, v8

    #@119
    aput-short v27, p0, v9

    #@11b
    aput-short v26, p0, v8

    #@11d
    .line 1238
    .end local v26    # "t":S
    :cond_e
    aget-short v27, p0, v12

    #@11f
    aget-short v28, p0, v11

    #@121
    move/from16 v0, v27

    #@123
    move/from16 v1, v28

    #@125
    if-ge v0, v1, :cond_f

    #@127
    aget-short v26, p0, v12

    #@129
    .restart local v26    # "t":S
    aget-short v27, p0, v11

    #@12b
    aput-short v27, p0, v12

    #@12d
    aput-short v26, p0, v11

    #@12f
    .line 1239
    aget-short v27, p0, v10

    #@131
    move/from16 v0, v26

    #@133
    move/from16 v1, v27

    #@135
    if-ge v0, v1, :cond_f

    #@137
    aget-short v27, p0, v10

    #@139
    aput-short v27, p0, v11

    #@13b
    aput-short v26, p0, v10

    #@13d
    .line 1240
    aget-short v27, p0, v9

    #@13f
    move/from16 v0, v26

    #@141
    move/from16 v1, v27

    #@143
    if-ge v0, v1, :cond_f

    #@145
    aget-short v27, p0, v9

    #@147
    aput-short v27, p0, v10

    #@149
    aput-short v26, p0, v9

    #@14b
    .line 1241
    aget-short v27, p0, v8

    #@14d
    move/from16 v0, v26

    #@14f
    move/from16 v1, v27

    #@151
    if-ge v0, v1, :cond_f

    #@153
    aget-short v27, p0, v8

    #@155
    aput-short v27, p0, v9

    #@157
    aput-short v26, p0, v8

    #@159
    .line 1247
    .end local v26    # "t":S
    :cond_f
    move/from16 v21, p1

    #@15b
    .line 1248
    .local v21, "less":I
    move/from16 v13, p2

    #@15d
    .line 1250
    .local v13, "great":I
    aget-short v27, p0, v8

    #@15f
    aget-short v28, p0, v9

    #@161
    move/from16 v0, v27

    #@163
    move/from16 v1, v28

    #@165
    if-eq v0, v1, :cond_20

    #@167
    aget-short v27, p0, v9

    #@169
    aget-short v28, p0, v10

    #@16b
    move/from16 v0, v27

    #@16d
    move/from16 v1, v28

    #@16f
    if-eq v0, v1, :cond_20

    #@171
    aget-short v27, p0, v10

    #@173
    aget-short v28, p0, v11

    #@175
    move/from16 v0, v27

    #@177
    move/from16 v1, v28

    #@179
    if-eq v0, v1, :cond_20

    #@17b
    aget-short v27, p0, v11

    #@17d
    aget-short v28, p0, v12

    #@17f
    move/from16 v0, v27

    #@181
    move/from16 v1, v28

    #@183
    if-eq v0, v1, :cond_20

    #@185
    .line 1256
    aget-short v23, p0, v9

    #@187
    .line 1257
    .local v23, "pivot1":S
    aget-short v24, p0, v11

    #@189
    .line 1265
    .local v24, "pivot2":S
    aget-short v27, p0, p1

    #@18b
    aput-short v27, p0, v9

    #@18d
    .line 1266
    aget-short v27, p0, p2

    #@18f
    aput-short v27, p0, v11

    #@191
    .line 1271
    :cond_10
    add-int/lit8 v21, v21, 0x1

    #@193
    aget-short v27, p0, v21

    #@195
    move/from16 v0, v27

    #@197
    move/from16 v1, v23

    #@199
    if-lt v0, v1, :cond_10

    #@19b
    .line 1272
    :cond_11
    add-int/lit8 v13, v13, -0x1

    #@19d
    aget-short v27, p0, v13

    #@19f
    move/from16 v0, v27

    #@1a1
    move/from16 v1, v24

    #@1a3
    if-gt v0, v1, :cond_11

    #@1a5
    .line 1294
    add-int/lit8 v18, v21, -0x1

    #@1a7
    .restart local v18    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    #@1a9
    move/from16 v0, v18

    #@1ab
    if-gt v0, v13, :cond_14

    #@1ad
    .line 1295
    aget-short v7, p0, v18

    #@1af
    .line 1296
    .local v7, "ak":S
    move/from16 v0, v23

    #@1b1
    if-ge v7, v0, :cond_13

    #@1b3
    .line 1297
    aget-short v27, p0, v21

    #@1b5
    aput-short v27, p0, v18

    #@1b7
    .line 1302
    aput-short v7, p0, v21

    #@1b9
    .line 1303
    add-int/lit8 v21, v21, 0x1

    #@1bb
    goto :goto_6

    #@1bc
    .line 1304
    :cond_13
    move/from16 v0, v24

    #@1be
    if-le v7, v0, :cond_12

    #@1c0
    .line 1305
    :goto_7
    aget-short v27, p0, v13

    #@1c2
    move/from16 v0, v27

    #@1c4
    move/from16 v1, v24

    #@1c6
    if-le v0, v1, :cond_16

    #@1c8
    .line 1306
    add-int/lit8 v14, v13, -0x1

    #@1ca
    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    #@1cc
    if-ne v13, v0, :cond_15

    #@1ce
    move v13, v14

    #@1cf
    .line 1327
    .end local v7    # "ak":S
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_14
    add-int/lit8 v27, v21, -0x1

    #@1d1
    aget-short v27, p0, v27

    #@1d3
    aput-short v27, p0, p1

    #@1d5
    add-int/lit8 v27, v21, -0x1

    #@1d7
    aput-short v23, p0, v27

    #@1d9
    .line 1328
    add-int/lit8 v27, v13, 0x1

    #@1db
    aget-short v27, p0, v27

    #@1dd
    aput-short v27, p0, p2

    #@1df
    add-int/lit8 v27, v13, 0x1

    #@1e1
    aput-short v24, p0, v27

    #@1e3
    .line 1331
    add-int/lit8 v27, v21, -0x2

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    move/from16 v1, p1

    #@1e9
    move/from16 v2, v27

    #@1eb
    move/from16 v3, p3

    #@1ed
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    #@1f0
    .line 1332
    add-int/lit8 v27, v13, 0x2

    #@1f2
    const/16 v28, 0x0

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    move/from16 v1, v27

    #@1f8
    move/from16 v2, p2

    #@1fa
    move/from16 v3, v28

    #@1fc
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    #@1ff
    .line 1338
    move/from16 v0, v21

    #@201
    if-ge v0, v8, :cond_1c

    #@203
    if-ge v12, v13, :cond_1c

    #@205
    .line 1342
    :goto_8
    aget-short v27, p0, v21

    #@207
    move/from16 v0, v27

    #@209
    move/from16 v1, v23

    #@20b
    if-ne v0, v1, :cond_18

    #@20d
    .line 1343
    add-int/lit8 v21, v21, 0x1

    #@20f
    goto :goto_8

    #@210
    .end local v13    # "great":I
    .restart local v7    # "ak":S
    .restart local v14    # "great":I
    :cond_15
    move v13, v14

    #@211
    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_7

    #@212
    .line 1310
    :cond_16
    aget-short v27, p0, v13

    #@214
    move/from16 v0, v27

    #@216
    move/from16 v1, v23

    #@218
    if-ge v0, v1, :cond_17

    #@21a
    .line 1311
    aget-short v27, p0, v21

    #@21c
    aput-short v27, p0, v18

    #@21e
    .line 1312
    aget-short v27, p0, v13

    #@220
    aput-short v27, p0, v21

    #@222
    .line 1313
    add-int/lit8 v21, v21, 0x1

    #@224
    .line 1321
    :goto_9
    aput-short v7, p0, v13

    #@226
    .line 1322
    add-int/lit8 v13, v13, -0x1

    #@228
    goto/16 :goto_6

    #@22a
    .line 1315
    :cond_17
    aget-short v27, p0, v13

    #@22c
    aput-short v27, p0, v18

    #@22e
    goto :goto_9

    #@22f
    .line 1346
    .end local v7    # "ak":S
    :cond_18
    :goto_a
    aget-short v27, p0, v13

    #@231
    move/from16 v0, v27

    #@233
    move/from16 v1, v24

    #@235
    if-ne v0, v1, :cond_19

    #@237
    .line 1347
    add-int/lit8 v13, v13, -0x1

    #@239
    goto :goto_a

    #@23a
    .line 1370
    :cond_19
    add-int/lit8 v18, v21, -0x1

    #@23c
    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    #@23e
    move/from16 v0, v18

    #@240
    if-gt v0, v13, :cond_1c

    #@242
    .line 1371
    aget-short v7, p0, v18

    #@244
    .line 1372
    .restart local v7    # "ak":S
    move/from16 v0, v23

    #@246
    if-ne v7, v0, :cond_1b

    #@248
    .line 1373
    aget-short v27, p0, v21

    #@24a
    aput-short v27, p0, v18

    #@24c
    .line 1374
    aput-short v7, p0, v21

    #@24e
    .line 1375
    add-int/lit8 v21, v21, 0x1

    #@250
    goto :goto_b

    #@251
    .line 1376
    :cond_1b
    move/from16 v0, v24

    #@253
    if-ne v7, v0, :cond_1a

    #@255
    .line 1377
    :goto_c
    aget-short v27, p0, v13

    #@257
    move/from16 v0, v27

    #@259
    move/from16 v1, v24

    #@25b
    if-ne v0, v1, :cond_1e

    #@25d
    .line 1378
    add-int/lit8 v14, v13, -0x1

    #@25f
    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    #@261
    if-ne v13, v0, :cond_1d

    #@263
    move v13, v14

    #@264
    .line 1404
    .end local v7    # "ak":S
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1c
    const/16 v27, 0x0

    #@266
    move-object/from16 v0, p0

    #@268
    move/from16 v1, v21

    #@26a
    move/from16 v2, v27

    #@26c
    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    #@26f
    .line 1146
    .end local v23    # "pivot1":S
    .end local v24    # "pivot2":S
    :goto_d
    return-void

    #@270
    .end local v13    # "great":I
    .restart local v7    # "ak":S
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":S
    .restart local v24    # "pivot2":S
    :cond_1d
    move v13, v14

    #@271
    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_c

    #@272
    .line 1382
    :cond_1e
    aget-short v27, p0, v13

    #@274
    move/from16 v0, v27

    #@276
    move/from16 v1, v23

    #@278
    if-ne v0, v1, :cond_1f

    #@27a
    .line 1383
    aget-short v27, p0, v21

    #@27c
    aput-short v27, p0, v18

    #@27e
    .line 1392
    aput-short v23, p0, v21

    #@280
    .line 1393
    add-int/lit8 v21, v21, 0x1

    #@282
    .line 1397
    :goto_e
    aput-short v7, p0, v13

    #@284
    .line 1398
    add-int/lit8 v13, v13, -0x1

    #@286
    goto :goto_b

    #@287
    .line 1395
    :cond_1f
    aget-short v27, p0, v13

    #@289
    aput-short v27, p0, v18

    #@28b
    goto :goto_e

    #@28c
    .line 1411
    .end local v7    # "ak":S
    .end local v18    # "k":I
    .end local v23    # "pivot1":S
    .end local v24    # "pivot2":S
    :cond_20
    aget-short v22, p0, v10

    #@28e
    .line 1433
    .local v22, "pivot":S
    move/from16 v18, p1

    #@290
    .restart local v18    # "k":I
    :goto_f
    move/from16 v0, v18

    #@292
    if-gt v0, v13, :cond_25

    #@294
    .line 1434
    aget-short v27, p0, v18

    #@296
    move/from16 v0, v27

    #@298
    move/from16 v1, v22

    #@29a
    if-ne v0, v1, :cond_21

    #@29c
    .line 1433
    :goto_10
    add-int/lit8 v18, v18, 0x1

    #@29e
    goto :goto_f

    #@29f
    .line 1437
    :cond_21
    aget-short v7, p0, v18

    #@2a1
    .line 1438
    .restart local v7    # "ak":S
    move/from16 v0, v22

    #@2a3
    if-ge v7, v0, :cond_22

    #@2a5
    .line 1439
    aget-short v27, p0, v21

    #@2a7
    aput-short v27, p0, v18

    #@2a9
    .line 1440
    aput-short v7, p0, v21

    #@2ab
    .line 1441
    add-int/lit8 v21, v21, 0x1

    #@2ad
    goto :goto_10

    #@2ae
    .line 1443
    :cond_22
    :goto_11
    aget-short v27, p0, v13

    #@2b0
    move/from16 v0, v27

    #@2b2
    move/from16 v1, v22

    #@2b4
    if-le v0, v1, :cond_23

    #@2b6
    .line 1444
    add-int/lit8 v13, v13, -0x1

    #@2b8
    goto :goto_11

    #@2b9
    .line 1446
    :cond_23
    aget-short v27, p0, v13

    #@2bb
    move/from16 v0, v27

    #@2bd
    move/from16 v1, v22

    #@2bf
    if-ge v0, v1, :cond_24

    #@2c1
    .line 1447
    aget-short v27, p0, v21

    #@2c3
    aput-short v27, p0, v18

    #@2c5
    .line 1448
    aget-short v27, p0, v13

    #@2c7
    aput-short v27, p0, v21

    #@2c9
    .line 1449
    add-int/lit8 v21, v21, 0x1

    #@2cb
    .line 1461
    :goto_12
    aput-short v7, p0, v13

    #@2cd
    .line 1462
    add-int/lit8 v13, v13, -0x1

    #@2cf
    goto :goto_10

    #@2d0
    .line 1459
    :cond_24
    aput-short v22, p0, v18

    #@2d2
    goto :goto_12

    #@2d3
    .line 1471
    .end local v7    # "ak":S
    :cond_25
    add-int/lit8 v27, v21, -0x1

    #@2d5
    move-object/from16 v0, p0

    #@2d7
    move/from16 v1, p1

    #@2d9
    move/from16 v2, v27

    #@2db
    move/from16 v3, p3

    #@2dd
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    #@2e0
    .line 1472
    add-int/lit8 v27, v13, 0x1

    #@2e2
    const/16 v28, 0x0

    #@2e4
    move-object/from16 v0, p0

    #@2e6
    move/from16 v1, v27

    #@2e8
    move/from16 v2, p2

    #@2ea
    move/from16 v3, v28

    #@2ec
    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    #@2ef
    goto :goto_d
.end method

.method static sort([SII[SII)V
    .locals 7
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [S
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    .line 1006
    sub-int v5, p2, p1

    #@2
    const/16 v6, 0xc80

    #@4
    if-le v5, v6, :cond_3

    #@6
    .line 1007
    const/high16 v5, 0x10000

    #@8
    new-array v0, v5, [I

    #@a
    .line 1009
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    #@c
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@e
    if-gt v1, p2, :cond_0

    #@10
    .line 1010
    aget-short v5, p0, v1

    #@12
    const/16 v6, -0x8000

    #@14
    sub-int/2addr v5, v6

    #@15
    aget v6, v0, v5

    #@17
    add-int/lit8 v6, v6, 0x1

    #@19
    aput v6, v0, v5

    #@1b
    goto :goto_0

    #@1c
    .line 1012
    :cond_0
    const/high16 v1, 0x10000

    #@1e
    add-int/lit8 v2, p2, 0x1

    #@20
    .local v2, "k":I
    :cond_1
    if-le v2, p1, :cond_4

    #@22
    .line 1013
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@24
    aget v5, v0, v1

    #@26
    if-eqz v5, :cond_2

    #@28
    .line 1014
    add-int/lit16 v5, v1, -0x8000

    #@2a
    int-to-short v4, v5

    #@2b
    .line 1015
    .local v4, "value":S
    aget v3, v0, v1

    #@2d
    .line 1018
    .local v3, "s":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@2f
    aput-short v4, p0, v2

    #@31
    .line 1019
    add-int/lit8 v3, v3, -0x1

    #@33
    if-lez v3, :cond_1

    #@35
    goto :goto_1

    #@36
    .line 1022
    .end local v0    # "count":[I
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "s":I
    .end local v4    # "value":S
    :cond_3
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([SII[SII)V

    #@39
    .line 1004
    :cond_4
    return-void
.end method
