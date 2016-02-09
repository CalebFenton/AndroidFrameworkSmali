.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x80

.field private static final COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0x8000

.field private static final INSERTION_SORT_THRESHOLD:I = 0x20

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static doSort([BII)V
    .locals 10
    .param p0, "a"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 1252
    sub-int v8, p2, p1

    #@2
    add-int/lit8 v8, v8, 0x1

    #@4
    const/16 v9, 0x20

    #@6
    if-ge v8, v9, :cond_1

    #@8
    .line 1253
    add-int/lit8 v2, p1, 0x1

    #@a
    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_5

    #@c
    .line 1254
    aget-byte v0, p0, v2

    #@e
    .line 1256
    .local v0, "ai":B
    add-int/lit8 v3, v2, -0x1

    #@10
    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    #@12
    aget-byte v8, p0, v3

    #@14
    if-ge v0, v8, :cond_0

    #@16
    .line 1257
    add-int/lit8 v8, v3, 0x1

    #@18
    aget-byte v9, p0, v3

    #@1a
    aput-byte v9, p0, v8

    #@1c
    .line 1256
    add-int/lit8 v3, v3, -0x1

    #@1e
    goto :goto_1

    #@1f
    .line 1259
    :cond_0
    add-int/lit8 v8, v3, 0x1

    #@21
    aput-byte v0, p0, v8

    #@23
    .line 1253
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1261
    .end local v0    # "ai":B
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    sub-int v8, p2, p1

    #@28
    add-int/lit8 v8, v8, 0x1

    #@2a
    const/16 v9, 0x80

    #@2c
    if-le v8, v9, :cond_4

    #@2e
    .line 1263
    const/16 v8, 0x100

    #@30
    new-array v1, v8, [I

    #@32
    .line 1265
    .local v1, "count":[I
    move v2, p1

    #@33
    .restart local v2    # "i":I
    :goto_2
    if-gt v2, p2, :cond_2

    #@35
    .line 1266
    aget-byte v8, p0, v2

    #@37
    add-int/lit16 v8, v8, 0x80

    #@39
    aget v9, v1, v8

    #@3b
    add-int/lit8 v9, v9, 0x1

    #@3d
    aput v9, v1, v8

    #@3f
    .line 1265
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_2

    #@42
    .line 1268
    :cond_2
    const/4 v2, 0x0

    #@43
    move v4, p1

    #@44
    .local v4, "k":I
    :goto_3
    array-length v8, v1

    #@45
    if-ge v2, v8, :cond_5

    #@47
    if-gt v4, p2, :cond_5

    #@49
    .line 1269
    add-int/lit8 v8, v2, -0x80

    #@4b
    int-to-byte v7, v8

    #@4c
    .line 1271
    .local v7, "value":B
    aget v6, v1, v2

    #@4e
    .local v6, "s":I
    move v5, v4

    #@4f
    .end local v4    # "k":I
    .local v5, "k":I
    :goto_4
    if-lez v6, :cond_3

    #@51
    .line 1272
    add-int/lit8 v4, v5, 0x1

    #@53
    .end local v5    # "k":I
    .restart local v4    # "k":I
    aput-byte v7, p0, v5

    #@55
    .line 1271
    add-int/lit8 v6, v6, -0x1

    #@57
    move v5, v4

    #@58
    .end local v4    # "k":I
    .restart local v5    # "k":I
    goto :goto_4

    #@59
    .line 1268
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5b
    move v4, v5

    #@5c
    .end local v5    # "k":I
    .restart local v4    # "k":I
    goto :goto_3

    #@5d
    .line 1276
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v6    # "s":I
    .end local v7    # "value":B
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([BII)V

    #@60
    .line 1250
    :cond_5
    return-void
.end method

.method private static doSort([CII)V
    .locals 9
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 959
    sub-int v7, p2, p1

    #@2
    add-int/lit8 v7, v7, 0x1

    #@4
    const/16 v8, 0x20

    #@6
    if-ge v7, v8, :cond_1

    #@8
    .line 960
    add-int/lit8 v2, p1, 0x1

    #@a
    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_5

    #@c
    .line 961
    aget-char v0, p0, v2

    #@e
    .line 963
    .local v0, "ai":C
    add-int/lit8 v3, v2, -0x1

    #@10
    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    #@12
    aget-char v7, p0, v3

    #@14
    if-ge v0, v7, :cond_0

    #@16
    .line 964
    add-int/lit8 v7, v3, 0x1

    #@18
    aget-char v8, p0, v3

    #@1a
    aput-char v8, p0, v7

    #@1c
    .line 963
    add-int/lit8 v3, v3, -0x1

    #@1e
    goto :goto_1

    #@1f
    .line 966
    :cond_0
    add-int/lit8 v7, v3, 0x1

    #@21
    aput-char v0, p0, v7

    #@23
    .line 960
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 968
    .end local v0    # "ai":C
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    sub-int v7, p2, p1

    #@28
    add-int/lit8 v7, v7, 0x1

    #@2a
    const v8, 0x8000

    #@2d
    if-le v7, v8, :cond_4

    #@2f
    .line 970
    const/high16 v7, 0x10000

    #@31
    new-array v1, v7, [I

    #@33
    .line 972
    .local v1, "count":[I
    move v2, p1

    #@34
    .restart local v2    # "i":I
    :goto_2
    if-gt v2, p2, :cond_2

    #@36
    .line 973
    aget-char v7, p0, v2

    #@38
    aget v8, v1, v7

    #@3a
    add-int/lit8 v8, v8, 0x1

    #@3c
    aput v8, v1, v7

    #@3e
    .line 972
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_2

    #@41
    .line 975
    :cond_2
    const/4 v2, 0x0

    #@42
    move v4, p1

    #@43
    .local v4, "k":I
    :goto_3
    array-length v7, v1

    #@44
    if-ge v2, v7, :cond_5

    #@46
    if-gt v4, p2, :cond_5

    #@48
    .line 976
    aget v6, v1, v2

    #@4a
    .local v6, "s":I
    move v5, v4

    #@4b
    .end local v4    # "k":I
    .local v5, "k":I
    :goto_4
    if-lez v6, :cond_3

    #@4d
    .line 977
    add-int/lit8 v4, v5, 0x1

    #@4f
    .end local v5    # "k":I
    .restart local v4    # "k":I
    int-to-char v7, v2

    #@50
    aput-char v7, p0, v5

    #@52
    .line 976
    add-int/lit8 v6, v6, -0x1

    #@54
    move v5, v4

    #@55
    .end local v4    # "k":I
    .restart local v5    # "k":I
    goto :goto_4

    #@56
    .line 975
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@58
    move v4, v5

    #@59
    .end local v5    # "k":I
    .restart local v4    # "k":I
    goto :goto_3

    #@5a
    .line 981
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v6    # "s":I
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([CII)V

    #@5d
    .line 957
    :cond_5
    return-void
.end method

.method private static doSort([DII)V
    .locals 8
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 2012
    sub-int v4, p2, p1

    #@2
    add-int/lit8 v4, v4, 0x1

    #@4
    const/16 v5, 0x20

    #@6
    if-ge v4, v5, :cond_1

    #@8
    .line 2013
    add-int/lit8 v2, p1, 0x1

    #@a
    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_2

    #@c
    .line 2014
    aget-wide v0, p0, v2

    #@e
    .line 2016
    .local v0, "ai":D
    add-int/lit8 v3, v2, -0x1

    #@10
    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    #@12
    aget-wide v4, p0, v3

    #@14
    cmpg-double v4, v0, v4

    #@16
    if-gez v4, :cond_0

    #@18
    .line 2017
    add-int/lit8 v4, v3, 0x1

    #@1a
    aget-wide v6, p0, v3

    #@1c
    aput-wide v6, p0, v4

    #@1e
    .line 2016
    add-int/lit8 v3, v3, -0x1

    #@20
    goto :goto_1

    #@21
    .line 2019
    :cond_0
    add-int/lit8 v4, v3, 0x1

    #@23
    aput-wide v0, p0, v4

    #@25
    .line 2013
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2022
    .end local v0    # "ai":D
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([DII)V

    #@2b
    .line 2010
    :cond_2
    return-void
.end method

.method private static doSort([FII)V
    .locals 5
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 1639
    sub-int v3, p2, p1

    #@2
    add-int/lit8 v3, v3, 0x1

    #@4
    const/16 v4, 0x20

    #@6
    if-ge v3, v4, :cond_1

    #@8
    .line 1640
    add-int/lit8 v1, p1, 0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_2

    #@c
    .line 1641
    aget v0, p0, v1

    #@e
    .line 1643
    .local v0, "ai":F
    add-int/lit8 v2, v1, -0x1

    #@10
    .local v2, "j":I
    :goto_1
    if-lt v2, p1, :cond_0

    #@12
    aget v3, p0, v2

    #@14
    cmpg-float v3, v0, v3

    #@16
    if-gez v3, :cond_0

    #@18
    .line 1644
    add-int/lit8 v3, v2, 0x1

    #@1a
    aget v4, p0, v2

    #@1c
    aput v4, p0, v3

    #@1e
    .line 1643
    add-int/lit8 v2, v2, -0x1

    #@20
    goto :goto_1

    #@21
    .line 1646
    :cond_0
    add-int/lit8 v3, v2, 0x1

    #@23
    aput v0, p0, v3

    #@25
    .line 1640
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1649
    .end local v0    # "ai":F
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([FII)V

    #@2b
    .line 1637
    :cond_2
    return-void
.end method

.method private static doSort([III)V
    .locals 5
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 105
    sub-int v3, p2, p1

    #@2
    add-int/lit8 v3, v3, 0x1

    #@4
    const/16 v4, 0x20

    #@6
    if-ge v3, v4, :cond_1

    #@8
    .line 106
    add-int/lit8 v1, p1, 0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_2

    #@c
    .line 107
    aget v0, p0, v1

    #@e
    .line 109
    .local v0, "ai":I
    add-int/lit8 v2, v1, -0x1

    #@10
    .local v2, "j":I
    :goto_1
    if-lt v2, p1, :cond_0

    #@12
    aget v3, p0, v2

    #@14
    if-ge v0, v3, :cond_0

    #@16
    .line 110
    add-int/lit8 v3, v2, 0x1

    #@18
    aget v4, p0, v2

    #@1a
    aput v4, p0, v3

    #@1c
    .line 109
    add-int/lit8 v2, v2, -0x1

    #@1e
    goto :goto_1

    #@1f
    .line 112
    :cond_0
    add-int/lit8 v3, v2, 0x1

    #@21
    aput v0, p0, v3

    #@23
    .line 106
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 115
    .end local v0    # "ai":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([III)V

    #@29
    .line 103
    :cond_2
    return-void
.end method

.method private static doSort([JII)V
    .locals 8
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 383
    sub-int v4, p2, p1

    #@2
    add-int/lit8 v4, v4, 0x1

    #@4
    const/16 v5, 0x20

    #@6
    if-ge v4, v5, :cond_1

    #@8
    .line 384
    add-int/lit8 v2, p1, 0x1

    #@a
    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_2

    #@c
    .line 385
    aget-wide v0, p0, v2

    #@e
    .line 387
    .local v0, "ai":J
    add-int/lit8 v3, v2, -0x1

    #@10
    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    #@12
    aget-wide v4, p0, v3

    #@14
    cmp-long v4, v0, v4

    #@16
    if-gez v4, :cond_0

    #@18
    .line 388
    add-int/lit8 v4, v3, 0x1

    #@1a
    aget-wide v6, p0, v3

    #@1c
    aput-wide v6, p0, v4

    #@1e
    .line 387
    add-int/lit8 v3, v3, -0x1

    #@20
    goto :goto_1

    #@21
    .line 390
    :cond_0
    add-int/lit8 v4, v3, 0x1

    #@23
    aput-wide v0, p0, v4

    #@25
    .line 384
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 393
    .end local v0    # "ai":J
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([JII)V

    #@2b
    .line 381
    :cond_2
    return-void
.end method

.method private static doSort([SII)V
    .locals 10
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 664
    sub-int v8, p2, p1

    #@2
    add-int/lit8 v8, v8, 0x1

    #@4
    const/16 v9, 0x20

    #@6
    if-ge v8, v9, :cond_1

    #@8
    .line 665
    add-int/lit8 v2, p1, 0x1

    #@a
    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_5

    #@c
    .line 666
    aget-short v0, p0, v2

    #@e
    .line 668
    .local v0, "ai":S
    add-int/lit8 v3, v2, -0x1

    #@10
    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    #@12
    aget-short v8, p0, v3

    #@14
    if-ge v0, v8, :cond_0

    #@16
    .line 669
    add-int/lit8 v8, v3, 0x1

    #@18
    aget-short v9, p0, v3

    #@1a
    aput-short v9, p0, v8

    #@1c
    .line 668
    add-int/lit8 v3, v3, -0x1

    #@1e
    goto :goto_1

    #@1f
    .line 671
    :cond_0
    add-int/lit8 v8, v3, 0x1

    #@21
    aput-short v0, p0, v8

    #@23
    .line 665
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 673
    .end local v0    # "ai":S
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    sub-int v8, p2, p1

    #@28
    add-int/lit8 v8, v8, 0x1

    #@2a
    const v9, 0x8000

    #@2d
    if-le v8, v9, :cond_4

    #@2f
    .line 675
    const/high16 v8, 0x10000

    #@31
    new-array v1, v8, [I

    #@33
    .line 677
    .local v1, "count":[I
    move v2, p1

    #@34
    .restart local v2    # "i":I
    :goto_2
    if-gt v2, p2, :cond_2

    #@36
    .line 678
    aget-short v8, p0, v2

    #@38
    const/16 v9, -0x8000

    #@3a
    sub-int/2addr v8, v9

    #@3b
    aget v9, v1, v8

    #@3d
    add-int/lit8 v9, v9, 0x1

    #@3f
    aput v9, v1, v8

    #@41
    .line 677
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_2

    #@44
    .line 680
    :cond_2
    const/4 v2, 0x0

    #@45
    move v4, p1

    #@46
    .local v4, "k":I
    :goto_3
    array-length v8, v1

    #@47
    if-ge v2, v8, :cond_5

    #@49
    if-gt v4, p2, :cond_5

    #@4b
    .line 681
    add-int/lit16 v8, v2, -0x8000

    #@4d
    int-to-short v7, v8

    #@4e
    .line 683
    .local v7, "value":S
    aget v6, v1, v2

    #@50
    .local v6, "s":I
    move v5, v4

    #@51
    .end local v4    # "k":I
    .local v5, "k":I
    :goto_4
    if-lez v6, :cond_3

    #@53
    .line 684
    add-int/lit8 v4, v5, 0x1

    #@55
    .end local v5    # "k":I
    .restart local v4    # "k":I
    aput-short v7, p0, v5

    #@57
    .line 683
    add-int/lit8 v6, v6, -0x1

    #@59
    move v5, v4

    #@5a
    .end local v4    # "k":I
    .restart local v5    # "k":I
    goto :goto_4

    #@5b
    .line 680
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5d
    move v4, v5

    #@5e
    .end local v5    # "k":I
    .restart local v4    # "k":I
    goto :goto_3

    #@5f
    .line 688
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v6    # "s":I
    .end local v7    # "value":S
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([SII)V

    #@62
    .line 662
    :cond_5
    return-void
.end method

.method private static dualPivotQuicksort([BII)V
    .locals 25
    .param p0, "a"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 1290
    sub-int v24, p2, p1

    #@2
    add-int/lit8 v24, v24, 0x1

    #@4
    div-int/lit8 v22, v24, 0x6

    #@6
    .line 1291
    .local v22, "sixth":I
    add-int v9, p1, v22

    #@8
    .line 1292
    .local v9, "e1":I
    sub-int v13, p2, v22

    #@a
    .line 1293
    .local v13, "e5":I
    add-int v24, p1, p2

    #@c
    ushr-int/lit8 v11, v24, 0x1

    #@e
    .line 1294
    .local v11, "e3":I
    add-int v12, v11, v22

    #@10
    .line 1295
    .local v12, "e4":I
    sub-int v10, v11, v22

    #@12
    .line 1298
    .local v10, "e2":I
    aget-byte v3, p0, v9

    #@14
    .local v3, "ae1":B
    aget-byte v4, p0, v10

    #@16
    .local v4, "ae2":B
    aget-byte v5, p0, v11

    #@18
    .local v5, "ae3":B
    aget-byte v6, p0, v12

    #@1a
    .local v6, "ae4":B
    aget-byte v7, p0, v13

    #@1c
    .line 1300
    .local v7, "ae5":B
    if-le v3, v4, :cond_0

    #@1e
    move/from16 v23, v3

    #@20
    .local v23, "t":B
    move v3, v4

    #@21
    move/from16 v4, v23

    #@23
    .line 1301
    .end local v23    # "t":B
    :cond_0
    if-le v6, v7, :cond_1

    #@25
    move/from16 v23, v6

    #@27
    .restart local v23    # "t":B
    move v6, v7

    #@28
    move/from16 v7, v23

    #@2a
    .line 1302
    .end local v23    # "t":B
    :cond_1
    if-le v3, v5, :cond_2

    #@2c
    move/from16 v23, v3

    #@2e
    .restart local v23    # "t":B
    move v3, v5

    #@2f
    move/from16 v5, v23

    #@31
    .line 1303
    .end local v23    # "t":B
    :cond_2
    if-le v4, v5, :cond_3

    #@33
    move/from16 v23, v4

    #@35
    .restart local v23    # "t":B
    move v4, v5

    #@36
    move/from16 v5, v23

    #@38
    .line 1304
    .end local v23    # "t":B
    :cond_3
    if-le v3, v6, :cond_4

    #@3a
    move/from16 v23, v3

    #@3c
    .restart local v23    # "t":B
    move v3, v6

    #@3d
    move/from16 v6, v23

    #@3f
    .line 1305
    .end local v23    # "t":B
    :cond_4
    if-le v5, v6, :cond_5

    #@41
    move/from16 v23, v5

    #@43
    .restart local v23    # "t":B
    move v5, v6

    #@44
    move/from16 v6, v23

    #@46
    .line 1306
    .end local v23    # "t":B
    :cond_5
    if-le v4, v7, :cond_6

    #@48
    move/from16 v23, v4

    #@4a
    .restart local v23    # "t":B
    move v4, v7

    #@4b
    move/from16 v7, v23

    #@4d
    .line 1307
    .end local v23    # "t":B
    :cond_6
    if-le v4, v5, :cond_7

    #@4f
    move/from16 v23, v4

    #@51
    .restart local v23    # "t":B
    move v4, v5

    #@52
    move/from16 v5, v23

    #@54
    .line 1308
    .end local v23    # "t":B
    :cond_7
    if-le v6, v7, :cond_8

    #@56
    move/from16 v23, v6

    #@58
    .restart local v23    # "t":B
    move v6, v7

    #@59
    move/from16 v7, v23

    #@5b
    .line 1310
    .end local v23    # "t":B
    :cond_8
    aput-byte v3, p0, v9

    #@5d
    aput-byte v5, p0, v11

    #@5f
    aput-byte v7, p0, v13

    #@61
    .line 1323
    move/from16 v19, v4

    #@63
    .local v19, "pivot1":B
    aget-byte v24, p0, p1

    #@65
    aput-byte v24, p0, v10

    #@67
    .line 1324
    move/from16 v20, v6

    #@69
    .local v20, "pivot2":B
    aget-byte v24, p0, p2

    #@6b
    aput-byte v24, p0, v12

    #@6d
    .line 1327
    add-int/lit8 v17, p1, 0x1

    #@6f
    .line 1328
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    #@71
    .line 1330
    .local v14, "great":I
    move/from16 v0, v19

    #@73
    move/from16 v1, v20

    #@75
    if-eq v0, v1, :cond_a

    #@77
    const/16 v21, 0x1

    #@79
    .line 1332
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    #@7b
    .line 1353
    move/from16 v16, v17

    #@7d
    .local v16, "k":I
    move/from16 v18, v17

    #@7f
    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    #@81
    if-gt v0, v14, :cond_1f

    #@83
    .line 1354
    aget-byte v8, p0, v16

    #@85
    .line 1355
    .local v8, "ak":B
    move/from16 v0, v19

    #@87
    if-ge v8, v0, :cond_b

    #@89
    .line 1356
    move/from16 v0, v16

    #@8b
    move/from16 v1, v18

    #@8d
    if-eq v0, v1, :cond_9

    #@8f
    .line 1357
    aget-byte v24, p0, v18

    #@91
    aput-byte v24, p0, v16

    #@93
    .line 1358
    aput-byte v8, p0, v18

    #@95
    .line 1360
    :cond_9
    add-int/lit8 v17, v18, 0x1

    #@97
    .line 1353
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@99
    move/from16 v18, v17

    #@9b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    #@9c
    .line 1330
    .end local v8    # "ak":B
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    #@9e
    .restart local v21    # "pivotsDiffer":Z
    goto :goto_0

    #@9f
    .line 1361
    .end local v17    # "less":I
    .restart local v8    # "ak":B
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    :cond_b
    move/from16 v0, v20

    #@a1
    if-le v8, v0, :cond_20

    #@a3
    .line 1362
    :goto_3
    aget-byte v24, p0, v14

    #@a5
    move/from16 v0, v24

    #@a7
    move/from16 v1, v20

    #@a9
    if-le v0, v1, :cond_d

    #@ab
    .line 1363
    add-int/lit8 v15, v14, -0x1

    #@ad
    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    #@af
    if-ne v14, v0, :cond_c

    #@b1
    move v14, v15

    #@b2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@b4
    .line 1432
    .end local v8    # "ak":B
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    #@b6
    aget-byte v24, p0, v24

    #@b8
    aput-byte v24, p0, p1

    #@ba
    add-int/lit8 v24, v17, -0x1

    #@bc
    aput-byte v19, p0, v24

    #@be
    .line 1433
    add-int/lit8 v24, v14, 0x1

    #@c0
    aget-byte v24, p0, v24

    #@c2
    aput-byte v24, p0, p2

    #@c4
    add-int/lit8 v24, v14, 0x1

    #@c6
    aput-byte v20, p0, v24

    #@c8
    .line 1436
    add-int/lit8 v24, v17, -0x2

    #@ca
    move-object/from16 v0, p0

    #@cc
    move/from16 v1, p1

    #@ce
    move/from16 v2, v24

    #@d0
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    #@d3
    .line 1437
    add-int/lit8 v24, v14, 0x2

    #@d5
    move-object/from16 v0, p0

    #@d7
    move/from16 v1, v24

    #@d9
    move/from16 v2, p2

    #@db
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    #@de
    .line 1443
    if-nez v21, :cond_15

    #@e0
    .line 1444
    return-void

    #@e1
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":B
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_c
    move v14, v15

    #@e2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_3

    #@e3
    .line 1367
    :cond_d
    aget-byte v24, p0, v14

    #@e5
    move/from16 v0, v24

    #@e7
    move/from16 v1, v19

    #@e9
    if-ge v0, v1, :cond_e

    #@eb
    .line 1368
    aget-byte v24, p0, v18

    #@ed
    aput-byte v24, p0, v16

    #@ef
    .line 1369
    add-int/lit8 v17, v18, 0x1

    #@f1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-byte v24, p0, v14

    #@f3
    aput-byte v24, p0, v18

    #@f5
    .line 1370
    add-int/lit8 v15, v14, -0x1

    #@f7
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v8, p0, v14

    #@f9
    move v14, v15

    #@fa
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    #@fb
    .line 1372
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    aget-byte v24, p0, v14

    #@fd
    aput-byte v24, p0, v16

    #@ff
    .line 1373
    add-int/lit8 v15, v14, -0x1

    #@101
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v8, p0, v14

    #@103
    move v14, v15

    #@104
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@106
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    #@107
    .line 1398
    .end local v8    # "ak":B
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    #@109
    .restart local v16    # "k":I
    move/from16 v18, v17

    #@10b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_5
    move/from16 v0, v16

    #@10d
    if-gt v0, v14, :cond_1f

    #@10f
    .line 1399
    aget-byte v8, p0, v16

    #@111
    .line 1400
    .restart local v8    # "ak":B
    move/from16 v0, v19

    #@113
    if-ne v8, v0, :cond_10

    #@115
    move/from16 v17, v18

    #@117
    .line 1398
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@119
    move/from16 v18, v17

    #@11b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_5

    #@11c
    .line 1403
    :cond_10
    move/from16 v0, v19

    #@11e
    if-ge v8, v0, :cond_12

    #@120
    .line 1404
    move/from16 v0, v16

    #@122
    move/from16 v1, v18

    #@124
    if-eq v0, v1, :cond_11

    #@126
    .line 1405
    aget-byte v24, p0, v18

    #@128
    aput-byte v24, p0, v16

    #@12a
    .line 1406
    aput-byte v8, p0, v18

    #@12c
    .line 1408
    :cond_11
    add-int/lit8 v17, v18, 0x1

    #@12e
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@12f
    .line 1416
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_7
    aget-byte v24, p0, v14

    #@131
    move/from16 v0, v24

    #@133
    move/from16 v1, v19

    #@135
    if-le v0, v1, :cond_13

    #@137
    .line 1417
    add-int/lit8 v14, v14, -0x1

    #@139
    goto :goto_7

    #@13a
    .line 1419
    :cond_13
    aget-byte v24, p0, v14

    #@13c
    move/from16 v0, v24

    #@13e
    move/from16 v1, v19

    #@140
    if-ge v0, v1, :cond_14

    #@142
    .line 1420
    aget-byte v24, p0, v18

    #@144
    aput-byte v24, p0, v16

    #@146
    .line 1421
    add-int/lit8 v17, v18, 0x1

    #@148
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-byte v24, p0, v14

    #@14a
    aput-byte v24, p0, v18

    #@14c
    .line 1422
    add-int/lit8 v15, v14, -0x1

    #@14e
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v8, p0, v14

    #@150
    move v14, v15

    #@151
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_6

    #@152
    .line 1424
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput-byte v19, p0, v16

    #@154
    .line 1425
    add-int/lit8 v15, v14, -0x1

    #@156
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v8, p0, v14

    #@158
    move v14, v15

    #@159
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@15b
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@15c
    .line 1451
    .end local v8    # "ak":B
    :cond_15
    move/from16 v0, v17

    #@15e
    if-ge v0, v9, :cond_18

    #@160
    if-le v14, v13, :cond_18

    #@162
    .line 1452
    :goto_8
    aget-byte v24, p0, v17

    #@164
    move/from16 v0, v24

    #@166
    move/from16 v1, v19

    #@168
    if-ne v0, v1, :cond_16

    #@16a
    .line 1453
    add-int/lit8 v17, v17, 0x1

    #@16c
    goto :goto_8

    #@16d
    .line 1455
    :cond_16
    :goto_9
    aget-byte v24, p0, v14

    #@16f
    move/from16 v0, v24

    #@171
    move/from16 v1, v20

    #@173
    if-ne v0, v1, :cond_17

    #@175
    .line 1456
    add-int/lit8 v14, v14, -0x1

    #@177
    goto :goto_9

    #@178
    .line 1479
    :cond_17
    move/from16 v16, v17

    #@17a
    move/from16 v18, v17

    #@17c
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_a
    move/from16 v0, v16

    #@17e
    if-gt v0, v14, :cond_1e

    #@180
    .line 1480
    aget-byte v8, p0, v16

    #@182
    .line 1481
    .restart local v8    # "ak":B
    move/from16 v0, v20

    #@184
    if-ne v8, v0, :cond_1c

    #@186
    .line 1482
    :goto_b
    aget-byte v24, p0, v14

    #@188
    move/from16 v0, v24

    #@18a
    move/from16 v1, v20

    #@18c
    if-ne v0, v1, :cond_1a

    #@18e
    .line 1483
    add-int/lit8 v15, v14, -0x1

    #@190
    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    #@192
    if-ne v14, v0, :cond_19

    #@194
    move v14, v15

    #@195
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@197
    .line 1502
    .end local v8    # "ak":B
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_c
    move-object/from16 v0, p0

    #@199
    move/from16 v1, v17

    #@19b
    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    #@19e
    .line 1288
    return-void

    #@19f
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":B
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_19
    move v14, v15

    #@1a0
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_b

    #@1a1
    .line 1487
    :cond_1a
    aget-byte v24, p0, v14

    #@1a3
    move/from16 v0, v24

    #@1a5
    move/from16 v1, v19

    #@1a7
    if-ne v0, v1, :cond_1b

    #@1a9
    .line 1488
    aget-byte v24, p0, v18

    #@1ab
    aput-byte v24, p0, v16

    #@1ad
    .line 1489
    add-int/lit8 v17, v18, 0x1

    #@1af
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-byte v19, p0, v18

    #@1b1
    .line 1493
    :goto_d
    add-int/lit8 v15, v14, -0x1

    #@1b3
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v20, p0, v14

    #@1b5
    move v14, v15

    #@1b6
    .line 1479
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_e
    add-int/lit8 v16, v16, 0x1

    #@1b8
    move/from16 v18, v17

    #@1ba
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_a

    #@1bb
    .line 1491
    :cond_1b
    aget-byte v24, p0, v14

    #@1bd
    aput-byte v24, p0, v16

    #@1bf
    move/from16 v17, v18

    #@1c1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    #@1c2
    .line 1494
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v0, v19

    #@1c4
    if-ne v8, v0, :cond_1d

    #@1c6
    .line 1495
    aget-byte v24, p0, v18

    #@1c8
    aput-byte v24, p0, v16

    #@1ca
    .line 1496
    add-int/lit8 v17, v18, 0x1

    #@1cc
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-byte v19, p0, v18

    #@1ce
    goto :goto_e

    #@1cf
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1d
    move/from16 v17, v18

    #@1d1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    #@1d2
    .end local v8    # "ak":B
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1e
    move/from16 v17, v18

    #@1d4
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_c

    #@1d5
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    #@1d7
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    #@1d9
    .end local v17    # "less":I
    .restart local v8    # "ak":B
    .restart local v18    # "less":I
    :cond_20
    move/from16 v17, v18

    #@1db
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([CII)V
    .locals 25
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 995
    sub-int v24, p2, p1

    #@2
    add-int/lit8 v24, v24, 0x1

    #@4
    div-int/lit8 v22, v24, 0x6

    #@6
    .line 996
    .local v22, "sixth":I
    add-int v9, p1, v22

    #@8
    .line 997
    .local v9, "e1":I
    sub-int v13, p2, v22

    #@a
    .line 998
    .local v13, "e5":I
    add-int v24, p1, p2

    #@c
    ushr-int/lit8 v11, v24, 0x1

    #@e
    .line 999
    .local v11, "e3":I
    add-int v12, v11, v22

    #@10
    .line 1000
    .local v12, "e4":I
    sub-int v10, v11, v22

    #@12
    .line 1003
    .local v10, "e2":I
    aget-char v3, p0, v9

    #@14
    .local v3, "ae1":C
    aget-char v4, p0, v10

    #@16
    .local v4, "ae2":C
    aget-char v5, p0, v11

    #@18
    .local v5, "ae3":C
    aget-char v6, p0, v12

    #@1a
    .local v6, "ae4":C
    aget-char v7, p0, v13

    #@1c
    .line 1005
    .local v7, "ae5":C
    if-le v3, v4, :cond_0

    #@1e
    move/from16 v23, v3

    #@20
    .local v23, "t":C
    move v3, v4

    #@21
    move/from16 v4, v23

    #@23
    .line 1006
    .end local v23    # "t":C
    :cond_0
    if-le v6, v7, :cond_1

    #@25
    move/from16 v23, v6

    #@27
    .restart local v23    # "t":C
    move v6, v7

    #@28
    move/from16 v7, v23

    #@2a
    .line 1007
    .end local v23    # "t":C
    :cond_1
    if-le v3, v5, :cond_2

    #@2c
    move/from16 v23, v3

    #@2e
    .restart local v23    # "t":C
    move v3, v5

    #@2f
    move/from16 v5, v23

    #@31
    .line 1008
    .end local v23    # "t":C
    :cond_2
    if-le v4, v5, :cond_3

    #@33
    move/from16 v23, v4

    #@35
    .restart local v23    # "t":C
    move v4, v5

    #@36
    move/from16 v5, v23

    #@38
    .line 1009
    .end local v23    # "t":C
    :cond_3
    if-le v3, v6, :cond_4

    #@3a
    move/from16 v23, v3

    #@3c
    .restart local v23    # "t":C
    move v3, v6

    #@3d
    move/from16 v6, v23

    #@3f
    .line 1010
    .end local v23    # "t":C
    :cond_4
    if-le v5, v6, :cond_5

    #@41
    move/from16 v23, v5

    #@43
    .restart local v23    # "t":C
    move v5, v6

    #@44
    move/from16 v6, v23

    #@46
    .line 1011
    .end local v23    # "t":C
    :cond_5
    if-le v4, v7, :cond_6

    #@48
    move/from16 v23, v4

    #@4a
    .restart local v23    # "t":C
    move v4, v7

    #@4b
    move/from16 v7, v23

    #@4d
    .line 1012
    .end local v23    # "t":C
    :cond_6
    if-le v4, v5, :cond_7

    #@4f
    move/from16 v23, v4

    #@51
    .restart local v23    # "t":C
    move v4, v5

    #@52
    move/from16 v5, v23

    #@54
    .line 1013
    .end local v23    # "t":C
    :cond_7
    if-le v6, v7, :cond_8

    #@56
    move/from16 v23, v6

    #@58
    .restart local v23    # "t":C
    move v6, v7

    #@59
    move/from16 v7, v23

    #@5b
    .line 1015
    .end local v23    # "t":C
    :cond_8
    aput-char v3, p0, v9

    #@5d
    aput-char v5, p0, v11

    #@5f
    aput-char v7, p0, v13

    #@61
    .line 1028
    move/from16 v19, v4

    #@63
    .local v19, "pivot1":C
    aget-char v24, p0, p1

    #@65
    aput-char v24, p0, v10

    #@67
    .line 1029
    move/from16 v20, v6

    #@69
    .local v20, "pivot2":C
    aget-char v24, p0, p2

    #@6b
    aput-char v24, p0, v12

    #@6d
    .line 1032
    add-int/lit8 v17, p1, 0x1

    #@6f
    .line 1033
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    #@71
    .line 1035
    .local v14, "great":I
    move/from16 v0, v19

    #@73
    move/from16 v1, v20

    #@75
    if-eq v0, v1, :cond_a

    #@77
    const/16 v21, 0x1

    #@79
    .line 1037
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    #@7b
    .line 1058
    move/from16 v16, v17

    #@7d
    .local v16, "k":I
    move/from16 v18, v17

    #@7f
    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    #@81
    if-gt v0, v14, :cond_1f

    #@83
    .line 1059
    aget-char v8, p0, v16

    #@85
    .line 1060
    .local v8, "ak":C
    move/from16 v0, v19

    #@87
    if-ge v8, v0, :cond_b

    #@89
    .line 1061
    move/from16 v0, v16

    #@8b
    move/from16 v1, v18

    #@8d
    if-eq v0, v1, :cond_9

    #@8f
    .line 1062
    aget-char v24, p0, v18

    #@91
    aput-char v24, p0, v16

    #@93
    .line 1063
    aput-char v8, p0, v18

    #@95
    .line 1065
    :cond_9
    add-int/lit8 v17, v18, 0x1

    #@97
    .line 1058
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@99
    move/from16 v18, v17

    #@9b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    #@9c
    .line 1035
    .end local v8    # "ak":C
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    #@9e
    .restart local v21    # "pivotsDiffer":Z
    goto :goto_0

    #@9f
    .line 1066
    .end local v17    # "less":I
    .restart local v8    # "ak":C
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    :cond_b
    move/from16 v0, v20

    #@a1
    if-le v8, v0, :cond_20

    #@a3
    .line 1067
    :goto_3
    aget-char v24, p0, v14

    #@a5
    move/from16 v0, v24

    #@a7
    move/from16 v1, v20

    #@a9
    if-le v0, v1, :cond_d

    #@ab
    .line 1068
    add-int/lit8 v15, v14, -0x1

    #@ad
    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    #@af
    if-ne v14, v0, :cond_c

    #@b1
    move v14, v15

    #@b2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@b4
    .line 1137
    .end local v8    # "ak":C
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    #@b6
    aget-char v24, p0, v24

    #@b8
    aput-char v24, p0, p1

    #@ba
    add-int/lit8 v24, v17, -0x1

    #@bc
    aput-char v19, p0, v24

    #@be
    .line 1138
    add-int/lit8 v24, v14, 0x1

    #@c0
    aget-char v24, p0, v24

    #@c2
    aput-char v24, p0, p2

    #@c4
    add-int/lit8 v24, v14, 0x1

    #@c6
    aput-char v20, p0, v24

    #@c8
    .line 1141
    add-int/lit8 v24, v17, -0x2

    #@ca
    move-object/from16 v0, p0

    #@cc
    move/from16 v1, p1

    #@ce
    move/from16 v2, v24

    #@d0
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    #@d3
    .line 1142
    add-int/lit8 v24, v14, 0x2

    #@d5
    move-object/from16 v0, p0

    #@d7
    move/from16 v1, v24

    #@d9
    move/from16 v2, p2

    #@db
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    #@de
    .line 1148
    if-nez v21, :cond_15

    #@e0
    .line 1149
    return-void

    #@e1
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":C
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_c
    move v14, v15

    #@e2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_3

    #@e3
    .line 1072
    :cond_d
    aget-char v24, p0, v14

    #@e5
    move/from16 v0, v24

    #@e7
    move/from16 v1, v19

    #@e9
    if-ge v0, v1, :cond_e

    #@eb
    .line 1073
    aget-char v24, p0, v18

    #@ed
    aput-char v24, p0, v16

    #@ef
    .line 1074
    add-int/lit8 v17, v18, 0x1

    #@f1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-char v24, p0, v14

    #@f3
    aput-char v24, p0, v18

    #@f5
    .line 1075
    add-int/lit8 v15, v14, -0x1

    #@f7
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v8, p0, v14

    #@f9
    move v14, v15

    #@fa
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    #@fb
    .line 1077
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    aget-char v24, p0, v14

    #@fd
    aput-char v24, p0, v16

    #@ff
    .line 1078
    add-int/lit8 v15, v14, -0x1

    #@101
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v8, p0, v14

    #@103
    move v14, v15

    #@104
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@106
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    #@107
    .line 1103
    .end local v8    # "ak":C
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    #@109
    .restart local v16    # "k":I
    move/from16 v18, v17

    #@10b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_5
    move/from16 v0, v16

    #@10d
    if-gt v0, v14, :cond_1f

    #@10f
    .line 1104
    aget-char v8, p0, v16

    #@111
    .line 1105
    .restart local v8    # "ak":C
    move/from16 v0, v19

    #@113
    if-ne v8, v0, :cond_10

    #@115
    move/from16 v17, v18

    #@117
    .line 1103
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@119
    move/from16 v18, v17

    #@11b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_5

    #@11c
    .line 1108
    :cond_10
    move/from16 v0, v19

    #@11e
    if-ge v8, v0, :cond_12

    #@120
    .line 1109
    move/from16 v0, v16

    #@122
    move/from16 v1, v18

    #@124
    if-eq v0, v1, :cond_11

    #@126
    .line 1110
    aget-char v24, p0, v18

    #@128
    aput-char v24, p0, v16

    #@12a
    .line 1111
    aput-char v8, p0, v18

    #@12c
    .line 1113
    :cond_11
    add-int/lit8 v17, v18, 0x1

    #@12e
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@12f
    .line 1121
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_7
    aget-char v24, p0, v14

    #@131
    move/from16 v0, v24

    #@133
    move/from16 v1, v19

    #@135
    if-le v0, v1, :cond_13

    #@137
    .line 1122
    add-int/lit8 v14, v14, -0x1

    #@139
    goto :goto_7

    #@13a
    .line 1124
    :cond_13
    aget-char v24, p0, v14

    #@13c
    move/from16 v0, v24

    #@13e
    move/from16 v1, v19

    #@140
    if-ge v0, v1, :cond_14

    #@142
    .line 1125
    aget-char v24, p0, v18

    #@144
    aput-char v24, p0, v16

    #@146
    .line 1126
    add-int/lit8 v17, v18, 0x1

    #@148
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-char v24, p0, v14

    #@14a
    aput-char v24, p0, v18

    #@14c
    .line 1127
    add-int/lit8 v15, v14, -0x1

    #@14e
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v8, p0, v14

    #@150
    move v14, v15

    #@151
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_6

    #@152
    .line 1129
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput-char v19, p0, v16

    #@154
    .line 1130
    add-int/lit8 v15, v14, -0x1

    #@156
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v8, p0, v14

    #@158
    move v14, v15

    #@159
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@15b
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@15c
    .line 1156
    .end local v8    # "ak":C
    :cond_15
    move/from16 v0, v17

    #@15e
    if-ge v0, v9, :cond_18

    #@160
    if-le v14, v13, :cond_18

    #@162
    .line 1157
    :goto_8
    aget-char v24, p0, v17

    #@164
    move/from16 v0, v24

    #@166
    move/from16 v1, v19

    #@168
    if-ne v0, v1, :cond_16

    #@16a
    .line 1158
    add-int/lit8 v17, v17, 0x1

    #@16c
    goto :goto_8

    #@16d
    .line 1160
    :cond_16
    :goto_9
    aget-char v24, p0, v14

    #@16f
    move/from16 v0, v24

    #@171
    move/from16 v1, v20

    #@173
    if-ne v0, v1, :cond_17

    #@175
    .line 1161
    add-int/lit8 v14, v14, -0x1

    #@177
    goto :goto_9

    #@178
    .line 1184
    :cond_17
    move/from16 v16, v17

    #@17a
    move/from16 v18, v17

    #@17c
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_a
    move/from16 v0, v16

    #@17e
    if-gt v0, v14, :cond_1e

    #@180
    .line 1185
    aget-char v8, p0, v16

    #@182
    .line 1186
    .restart local v8    # "ak":C
    move/from16 v0, v20

    #@184
    if-ne v8, v0, :cond_1c

    #@186
    .line 1187
    :goto_b
    aget-char v24, p0, v14

    #@188
    move/from16 v0, v24

    #@18a
    move/from16 v1, v20

    #@18c
    if-ne v0, v1, :cond_1a

    #@18e
    .line 1188
    add-int/lit8 v15, v14, -0x1

    #@190
    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    #@192
    if-ne v14, v0, :cond_19

    #@194
    move v14, v15

    #@195
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@197
    .line 1207
    .end local v8    # "ak":C
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_c
    move-object/from16 v0, p0

    #@199
    move/from16 v1, v17

    #@19b
    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    #@19e
    .line 993
    return-void

    #@19f
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":C
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_19
    move v14, v15

    #@1a0
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_b

    #@1a1
    .line 1192
    :cond_1a
    aget-char v24, p0, v14

    #@1a3
    move/from16 v0, v24

    #@1a5
    move/from16 v1, v19

    #@1a7
    if-ne v0, v1, :cond_1b

    #@1a9
    .line 1193
    aget-char v24, p0, v18

    #@1ab
    aput-char v24, p0, v16

    #@1ad
    .line 1194
    add-int/lit8 v17, v18, 0x1

    #@1af
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-char v19, p0, v18

    #@1b1
    .line 1198
    :goto_d
    add-int/lit8 v15, v14, -0x1

    #@1b3
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v20, p0, v14

    #@1b5
    move v14, v15

    #@1b6
    .line 1184
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_e
    add-int/lit8 v16, v16, 0x1

    #@1b8
    move/from16 v18, v17

    #@1ba
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_a

    #@1bb
    .line 1196
    :cond_1b
    aget-char v24, p0, v14

    #@1bd
    aput-char v24, p0, v16

    #@1bf
    move/from16 v17, v18

    #@1c1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    #@1c2
    .line 1199
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v0, v19

    #@1c4
    if-ne v8, v0, :cond_1d

    #@1c6
    .line 1200
    aget-char v24, p0, v18

    #@1c8
    aput-char v24, p0, v16

    #@1ca
    .line 1201
    add-int/lit8 v17, v18, 0x1

    #@1cc
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-char v19, p0, v18

    #@1ce
    goto :goto_e

    #@1cf
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1d
    move/from16 v17, v18

    #@1d1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    #@1d2
    .end local v8    # "ak":C
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1e
    move/from16 v17, v18

    #@1d4
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_c

    #@1d5
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    #@1d7
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    #@1d9
    .end local v17    # "less":I
    .restart local v8    # "ak":C
    .restart local v18    # "less":I
    :cond_20
    move/from16 v17, v18

    #@1db
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([DII)V
    .locals 36
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 2036
    sub-int v34, p2, p1

    #@2
    add-int/lit8 v34, v34, 0x1

    #@4
    div-int/lit8 v31, v34, 0x6

    #@6
    .line 2037
    .local v31, "sixth":I
    add-int v16, p1, v31

    #@8
    .line 2038
    .local v16, "e1":I
    sub-int v20, p2, v31

    #@a
    .line 2039
    .local v20, "e5":I
    add-int v34, p1, p2

    #@c
    ushr-int/lit8 v18, v34, 0x1

    #@e
    .line 2040
    .local v18, "e3":I
    add-int v19, v18, v31

    #@10
    .line 2041
    .local v19, "e4":I
    sub-int v17, v18, v31

    #@12
    .line 2044
    .local v17, "e2":I
    aget-wide v4, p0, v16

    #@14
    .local v4, "ae1":D
    aget-wide v6, p0, v17

    #@16
    .local v6, "ae2":D
    aget-wide v8, p0, v18

    #@18
    .local v8, "ae3":D
    aget-wide v10, p0, v19

    #@1a
    .local v10, "ae4":D
    aget-wide v12, p0, v20

    #@1c
    .line 2046
    .local v12, "ae5":D
    cmpl-double v34, v4, v6

    #@1e
    if-lez v34, :cond_0

    #@20
    move-wide/from16 v32, v4

    #@22
    .local v32, "t":D
    move-wide v4, v6

    #@23
    move-wide/from16 v6, v32

    #@25
    .line 2047
    .end local v32    # "t":D
    :cond_0
    cmpl-double v34, v10, v12

    #@27
    if-lez v34, :cond_1

    #@29
    move-wide/from16 v32, v10

    #@2b
    .restart local v32    # "t":D
    move-wide v10, v12

    #@2c
    move-wide/from16 v12, v32

    #@2e
    .line 2048
    .end local v32    # "t":D
    :cond_1
    cmpl-double v34, v4, v8

    #@30
    if-lez v34, :cond_2

    #@32
    move-wide/from16 v32, v4

    #@34
    .restart local v32    # "t":D
    move-wide v4, v8

    #@35
    move-wide/from16 v8, v32

    #@37
    .line 2049
    .end local v32    # "t":D
    :cond_2
    cmpl-double v34, v6, v8

    #@39
    if-lez v34, :cond_3

    #@3b
    move-wide/from16 v32, v6

    #@3d
    .restart local v32    # "t":D
    move-wide v6, v8

    #@3e
    move-wide/from16 v8, v32

    #@40
    .line 2050
    .end local v32    # "t":D
    :cond_3
    cmpl-double v34, v4, v10

    #@42
    if-lez v34, :cond_4

    #@44
    move-wide/from16 v32, v4

    #@46
    .restart local v32    # "t":D
    move-wide v4, v10

    #@47
    move-wide/from16 v10, v32

    #@49
    .line 2051
    .end local v32    # "t":D
    :cond_4
    cmpl-double v34, v8, v10

    #@4b
    if-lez v34, :cond_5

    #@4d
    move-wide/from16 v32, v8

    #@4f
    .restart local v32    # "t":D
    move-wide v8, v10

    #@50
    move-wide/from16 v10, v32

    #@52
    .line 2052
    .end local v32    # "t":D
    :cond_5
    cmpl-double v34, v6, v12

    #@54
    if-lez v34, :cond_6

    #@56
    move-wide/from16 v32, v6

    #@58
    .restart local v32    # "t":D
    move-wide v6, v12

    #@59
    move-wide/from16 v12, v32

    #@5b
    .line 2053
    .end local v32    # "t":D
    :cond_6
    cmpl-double v34, v6, v8

    #@5d
    if-lez v34, :cond_7

    #@5f
    move-wide/from16 v32, v6

    #@61
    .restart local v32    # "t":D
    move-wide v6, v8

    #@62
    move-wide/from16 v8, v32

    #@64
    .line 2054
    .end local v32    # "t":D
    :cond_7
    cmpl-double v34, v10, v12

    #@66
    if-lez v34, :cond_8

    #@68
    move-wide/from16 v32, v10

    #@6a
    .restart local v32    # "t":D
    move-wide v10, v12

    #@6b
    move-wide/from16 v12, v32

    #@6d
    .line 2056
    .end local v32    # "t":D
    :cond_8
    aput-wide v4, p0, v16

    #@6f
    aput-wide v8, p0, v18

    #@71
    aput-wide v12, p0, v20

    #@73
    .line 2069
    move-wide/from16 v26, v6

    #@75
    .local v26, "pivot1":D
    aget-wide v34, p0, p1

    #@77
    aput-wide v34, p0, v17

    #@79
    .line 2070
    move-wide/from16 v28, v10

    #@7b
    .local v28, "pivot2":D
    aget-wide v34, p0, p2

    #@7d
    aput-wide v34, p0, v19

    #@7f
    .line 2073
    add-int/lit8 v24, p1, 0x1

    #@81
    .line 2074
    .local v24, "less":I
    add-int/lit8 v21, p2, -0x1

    #@83
    .line 2076
    .local v21, "great":I
    cmpl-double v34, v26, v28

    #@85
    if-eqz v34, :cond_a

    #@87
    const/16 v30, 0x1

    #@89
    .line 2078
    .local v30, "pivotsDiffer":Z
    :goto_0
    if-eqz v30, :cond_f

    #@8b
    .line 2099
    move/from16 v23, v24

    #@8d
    .local v23, "k":I
    move/from16 v25, v24

    #@8f
    .end local v24    # "less":I
    .local v25, "less":I
    :goto_1
    move/from16 v0, v23

    #@91
    move/from16 v1, v21

    #@93
    if-gt v0, v1, :cond_1f

    #@95
    .line 2100
    aget-wide v14, p0, v23

    #@97
    .line 2101
    .local v14, "ak":D
    cmpg-double v34, v14, v26

    #@99
    if-gez v34, :cond_b

    #@9b
    .line 2102
    move/from16 v0, v23

    #@9d
    move/from16 v1, v25

    #@9f
    if-eq v0, v1, :cond_9

    #@a1
    .line 2103
    aget-wide v34, p0, v25

    #@a3
    aput-wide v34, p0, v23

    #@a5
    .line 2104
    aput-wide v14, p0, v25

    #@a7
    .line 2106
    :cond_9
    add-int/lit8 v24, v25, 0x1

    #@a9
    .line 2099
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_2
    add-int/lit8 v23, v23, 0x1

    #@ab
    move/from16 v25, v24

    #@ad
    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_1

    #@ae
    .line 2076
    .end local v14    # "ak":D
    .end local v23    # "k":I
    .end local v25    # "less":I
    .end local v30    # "pivotsDiffer":Z
    .restart local v24    # "less":I
    :cond_a
    const/16 v30, 0x0

    #@b0
    .restart local v30    # "pivotsDiffer":Z
    goto :goto_0

    #@b1
    .line 2107
    .end local v24    # "less":I
    .restart local v14    # "ak":D
    .restart local v23    # "k":I
    .restart local v25    # "less":I
    :cond_b
    cmpl-double v34, v14, v28

    #@b3
    if-lez v34, :cond_20

    #@b5
    .line 2108
    :goto_3
    aget-wide v34, p0, v21

    #@b7
    cmpl-double v34, v34, v28

    #@b9
    if-lez v34, :cond_d

    #@bb
    .line 2109
    add-int/lit8 v22, v21, -0x1

    #@bd
    .end local v21    # "great":I
    .local v22, "great":I
    move/from16 v0, v21

    #@bf
    move/from16 v1, v23

    #@c1
    if-ne v0, v1, :cond_c

    #@c3
    move/from16 v21, v22

    #@c5
    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    #@c7
    .line 2178
    .end local v14    # "ak":D
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_4
    add-int/lit8 v34, v24, -0x1

    #@c9
    aget-wide v34, p0, v34

    #@cb
    aput-wide v34, p0, p1

    #@cd
    add-int/lit8 v34, v24, -0x1

    #@cf
    aput-wide v26, p0, v34

    #@d1
    .line 2179
    add-int/lit8 v34, v21, 0x1

    #@d3
    aget-wide v34, p0, v34

    #@d5
    aput-wide v34, p0, p2

    #@d7
    add-int/lit8 v34, v21, 0x1

    #@d9
    aput-wide v28, p0, v34

    #@db
    .line 2182
    add-int/lit8 v34, v24, -0x2

    #@dd
    move-object/from16 v0, p0

    #@df
    move/from16 v1, p1

    #@e1
    move/from16 v2, v34

    #@e3
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    #@e6
    .line 2183
    add-int/lit8 v34, v21, 0x2

    #@e8
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, v34

    #@ec
    move/from16 v2, p2

    #@ee
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    #@f1
    .line 2189
    if-nez v30, :cond_15

    #@f3
    .line 2190
    return-void

    #@f4
    .end local v21    # "great":I
    .end local v24    # "less":I
    .restart local v14    # "ak":D
    .restart local v22    # "great":I
    .restart local v25    # "less":I
    :cond_c
    move/from16 v21, v22

    #@f6
    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_3

    #@f7
    .line 2113
    :cond_d
    aget-wide v34, p0, v21

    #@f9
    cmpg-double v34, v34, v26

    #@fb
    if-gez v34, :cond_e

    #@fd
    .line 2114
    aget-wide v34, p0, v25

    #@ff
    aput-wide v34, p0, v23

    #@101
    .line 2115
    add-int/lit8 v24, v25, 0x1

    #@103
    .end local v25    # "less":I
    .restart local v24    # "less":I
    aget-wide v34, p0, v21

    #@105
    aput-wide v34, p0, v25

    #@107
    .line 2116
    add-int/lit8 v22, v21, -0x1

    #@109
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    #@10b
    move/from16 v21, v22

    #@10d
    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_2

    #@10e
    .line 2118
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_e
    aget-wide v34, p0, v21

    #@110
    aput-wide v34, p0, v23

    #@112
    .line 2119
    add-int/lit8 v22, v21, -0x1

    #@114
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    #@116
    move/from16 v21, v22

    #@118
    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    #@11a
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_2

    #@11b
    .line 2144
    .end local v14    # "ak":D
    .end local v23    # "k":I
    :cond_f
    move/from16 v23, v24

    #@11d
    .restart local v23    # "k":I
    move/from16 v25, v24

    #@11f
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :goto_5
    move/from16 v0, v23

    #@121
    move/from16 v1, v21

    #@123
    if-gt v0, v1, :cond_1f

    #@125
    .line 2145
    aget-wide v14, p0, v23

    #@127
    .line 2146
    .restart local v14    # "ak":D
    cmpl-double v34, v14, v26

    #@129
    if-nez v34, :cond_10

    #@12b
    move/from16 v24, v25

    #@12d
    .line 2144
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_6
    add-int/lit8 v23, v23, 0x1

    #@12f
    move/from16 v25, v24

    #@131
    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_5

    #@132
    .line 2149
    :cond_10
    cmpg-double v34, v14, v26

    #@134
    if-gez v34, :cond_12

    #@136
    .line 2150
    move/from16 v0, v23

    #@138
    move/from16 v1, v25

    #@13a
    if-eq v0, v1, :cond_11

    #@13c
    .line 2151
    aget-wide v34, p0, v25

    #@13e
    aput-wide v34, p0, v23

    #@140
    .line 2152
    aput-wide v14, p0, v25

    #@142
    .line 2154
    :cond_11
    add-int/lit8 v24, v25, 0x1

    #@144
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_6

    #@145
    .line 2162
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_12
    :goto_7
    aget-wide v34, p0, v21

    #@147
    cmpl-double v34, v34, v26

    #@149
    if-lez v34, :cond_13

    #@14b
    .line 2163
    add-int/lit8 v21, v21, -0x1

    #@14d
    goto :goto_7

    #@14e
    .line 2165
    :cond_13
    aget-wide v34, p0, v21

    #@150
    cmpg-double v34, v34, v26

    #@152
    if-gez v34, :cond_14

    #@154
    .line 2166
    aget-wide v34, p0, v25

    #@156
    aput-wide v34, p0, v23

    #@158
    .line 2167
    add-int/lit8 v24, v25, 0x1

    #@15a
    .end local v25    # "less":I
    .restart local v24    # "less":I
    aget-wide v34, p0, v21

    #@15c
    aput-wide v34, p0, v25

    #@15e
    .line 2168
    add-int/lit8 v22, v21, -0x1

    #@160
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    #@162
    move/from16 v21, v22

    #@164
    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_6

    #@165
    .line 2170
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_14
    aput-wide v26, p0, v23

    #@167
    .line 2171
    add-int/lit8 v22, v21, -0x1

    #@169
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    #@16b
    move/from16 v21, v22

    #@16d
    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    #@16f
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_6

    #@170
    .line 2197
    .end local v14    # "ak":D
    :cond_15
    move/from16 v0, v24

    #@172
    move/from16 v1, v16

    #@174
    if-ge v0, v1, :cond_18

    #@176
    move/from16 v0, v21

    #@178
    move/from16 v1, v20

    #@17a
    if-le v0, v1, :cond_18

    #@17c
    .line 2198
    :goto_8
    aget-wide v34, p0, v24

    #@17e
    cmpl-double v34, v34, v26

    #@180
    if-nez v34, :cond_16

    #@182
    .line 2199
    add-int/lit8 v24, v24, 0x1

    #@184
    goto :goto_8

    #@185
    .line 2201
    :cond_16
    :goto_9
    aget-wide v34, p0, v21

    #@187
    cmpl-double v34, v34, v28

    #@189
    if-nez v34, :cond_17

    #@18b
    .line 2202
    add-int/lit8 v21, v21, -0x1

    #@18d
    goto :goto_9

    #@18e
    .line 2225
    :cond_17
    move/from16 v23, v24

    #@190
    move/from16 v25, v24

    #@192
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :goto_a
    move/from16 v0, v23

    #@194
    move/from16 v1, v21

    #@196
    if-gt v0, v1, :cond_1e

    #@198
    .line 2226
    aget-wide v14, p0, v23

    #@19a
    .line 2227
    .restart local v14    # "ak":D
    cmpl-double v34, v14, v28

    #@19c
    if-nez v34, :cond_1c

    #@19e
    .line 2228
    :goto_b
    aget-wide v34, p0, v21

    #@1a0
    cmpl-double v34, v34, v28

    #@1a2
    if-nez v34, :cond_1a

    #@1a4
    .line 2229
    add-int/lit8 v22, v21, -0x1

    #@1a6
    .end local v21    # "great":I
    .restart local v22    # "great":I
    move/from16 v0, v21

    #@1a8
    move/from16 v1, v23

    #@1aa
    if-ne v0, v1, :cond_19

    #@1ac
    move/from16 v21, v22

    #@1ae
    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    #@1b0
    .line 2248
    .end local v14    # "ak":D
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :cond_18
    :goto_c
    move-object/from16 v0, p0

    #@1b2
    move/from16 v1, v24

    #@1b4
    move/from16 v2, v21

    #@1b6
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    #@1b9
    .line 2034
    return-void

    #@1ba
    .end local v21    # "great":I
    .end local v24    # "less":I
    .restart local v14    # "ak":D
    .restart local v22    # "great":I
    .restart local v25    # "less":I
    :cond_19
    move/from16 v21, v22

    #@1bc
    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_b

    #@1bd
    .line 2233
    :cond_1a
    aget-wide v34, p0, v21

    #@1bf
    cmpl-double v34, v34, v26

    #@1c1
    if-nez v34, :cond_1b

    #@1c3
    .line 2234
    aget-wide v34, p0, v25

    #@1c5
    aput-wide v34, p0, v23

    #@1c7
    .line 2235
    add-int/lit8 v24, v25, 0x1

    #@1c9
    .end local v25    # "less":I
    .restart local v24    # "less":I
    aput-wide v26, p0, v25

    #@1cb
    .line 2239
    :goto_d
    add-int/lit8 v22, v21, -0x1

    #@1cd
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v28, p0, v21

    #@1cf
    move/from16 v21, v22

    #@1d1
    .line 2225
    .end local v22    # "great":I
    .restart local v21    # "great":I
    :goto_e
    add-int/lit8 v23, v23, 0x1

    #@1d3
    move/from16 v25, v24

    #@1d5
    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_a

    #@1d6
    .line 2237
    :cond_1b
    aget-wide v34, p0, v21

    #@1d8
    aput-wide v34, p0, v23

    #@1da
    move/from16 v24, v25

    #@1dc
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_d

    #@1dd
    .line 2240
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1c
    cmpl-double v34, v14, v26

    #@1df
    if-nez v34, :cond_1d

    #@1e1
    .line 2241
    aget-wide v34, p0, v25

    #@1e3
    aput-wide v34, p0, v23

    #@1e5
    .line 2242
    add-int/lit8 v24, v25, 0x1

    #@1e7
    .end local v25    # "less":I
    .restart local v24    # "less":I
    aput-wide v26, p0, v25

    #@1e9
    goto :goto_e

    #@1ea
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1d
    move/from16 v24, v25

    #@1ec
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_e

    #@1ed
    .end local v14    # "ak":D
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1e
    move/from16 v24, v25

    #@1ef
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_c

    #@1f0
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1f
    move/from16 v24, v25

    #@1f2
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto/16 :goto_4

    #@1f4
    .end local v24    # "less":I
    .restart local v14    # "ak":D
    .restart local v25    # "less":I
    :cond_20
    move/from16 v24, v25

    #@1f6
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([FII)V
    .locals 25
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 1663
    sub-int v24, p2, p1

    #@2
    add-int/lit8 v24, v24, 0x1

    #@4
    div-int/lit8 v22, v24, 0x6

    #@6
    .line 1664
    .local v22, "sixth":I
    add-int v9, p1, v22

    #@8
    .line 1665
    .local v9, "e1":I
    sub-int v13, p2, v22

    #@a
    .line 1666
    .local v13, "e5":I
    add-int v24, p1, p2

    #@c
    ushr-int/lit8 v11, v24, 0x1

    #@e
    .line 1667
    .local v11, "e3":I
    add-int v12, v11, v22

    #@10
    .line 1668
    .local v12, "e4":I
    sub-int v10, v11, v22

    #@12
    .line 1671
    .local v10, "e2":I
    aget v3, p0, v9

    #@14
    .local v3, "ae1":F
    aget v4, p0, v10

    #@16
    .local v4, "ae2":F
    aget v5, p0, v11

    #@18
    .local v5, "ae3":F
    aget v6, p0, v12

    #@1a
    .local v6, "ae4":F
    aget v7, p0, v13

    #@1c
    .line 1673
    .local v7, "ae5":F
    cmpl-float v24, v3, v4

    #@1e
    if-lez v24, :cond_0

    #@20
    move/from16 v23, v3

    #@22
    .local v23, "t":F
    move v3, v4

    #@23
    move/from16 v4, v23

    #@25
    .line 1674
    .end local v23    # "t":F
    :cond_0
    cmpl-float v24, v6, v7

    #@27
    if-lez v24, :cond_1

    #@29
    move/from16 v23, v6

    #@2b
    .restart local v23    # "t":F
    move v6, v7

    #@2c
    move/from16 v7, v23

    #@2e
    .line 1675
    .end local v23    # "t":F
    :cond_1
    cmpl-float v24, v3, v5

    #@30
    if-lez v24, :cond_2

    #@32
    move/from16 v23, v3

    #@34
    .restart local v23    # "t":F
    move v3, v5

    #@35
    move/from16 v5, v23

    #@37
    .line 1676
    .end local v23    # "t":F
    :cond_2
    cmpl-float v24, v4, v5

    #@39
    if-lez v24, :cond_3

    #@3b
    move/from16 v23, v4

    #@3d
    .restart local v23    # "t":F
    move v4, v5

    #@3e
    move/from16 v5, v23

    #@40
    .line 1677
    .end local v23    # "t":F
    :cond_3
    cmpl-float v24, v3, v6

    #@42
    if-lez v24, :cond_4

    #@44
    move/from16 v23, v3

    #@46
    .restart local v23    # "t":F
    move v3, v6

    #@47
    move/from16 v6, v23

    #@49
    .line 1678
    .end local v23    # "t":F
    :cond_4
    cmpl-float v24, v5, v6

    #@4b
    if-lez v24, :cond_5

    #@4d
    move/from16 v23, v5

    #@4f
    .restart local v23    # "t":F
    move v5, v6

    #@50
    move/from16 v6, v23

    #@52
    .line 1679
    .end local v23    # "t":F
    :cond_5
    cmpl-float v24, v4, v7

    #@54
    if-lez v24, :cond_6

    #@56
    move/from16 v23, v4

    #@58
    .restart local v23    # "t":F
    move v4, v7

    #@59
    move/from16 v7, v23

    #@5b
    .line 1680
    .end local v23    # "t":F
    :cond_6
    cmpl-float v24, v4, v5

    #@5d
    if-lez v24, :cond_7

    #@5f
    move/from16 v23, v4

    #@61
    .restart local v23    # "t":F
    move v4, v5

    #@62
    move/from16 v5, v23

    #@64
    .line 1681
    .end local v23    # "t":F
    :cond_7
    cmpl-float v24, v6, v7

    #@66
    if-lez v24, :cond_8

    #@68
    move/from16 v23, v6

    #@6a
    .restart local v23    # "t":F
    move v6, v7

    #@6b
    move/from16 v7, v23

    #@6d
    .line 1683
    .end local v23    # "t":F
    :cond_8
    aput v3, p0, v9

    #@6f
    aput v5, p0, v11

    #@71
    aput v7, p0, v13

    #@73
    .line 1696
    move/from16 v19, v4

    #@75
    .local v19, "pivot1":F
    aget v24, p0, p1

    #@77
    aput v24, p0, v10

    #@79
    .line 1697
    move/from16 v20, v6

    #@7b
    .local v20, "pivot2":F
    aget v24, p0, p2

    #@7d
    aput v24, p0, v12

    #@7f
    .line 1700
    add-int/lit8 v17, p1, 0x1

    #@81
    .line 1701
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    #@83
    .line 1703
    .local v14, "great":I
    cmpl-float v24, v19, v20

    #@85
    if-eqz v24, :cond_a

    #@87
    const/16 v21, 0x1

    #@89
    .line 1705
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    #@8b
    .line 1726
    move/from16 v16, v17

    #@8d
    .local v16, "k":I
    move/from16 v18, v17

    #@8f
    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    #@91
    if-gt v0, v14, :cond_1f

    #@93
    .line 1727
    aget v8, p0, v16

    #@95
    .line 1728
    .local v8, "ak":F
    cmpg-float v24, v8, v19

    #@97
    if-gez v24, :cond_b

    #@99
    .line 1729
    move/from16 v0, v16

    #@9b
    move/from16 v1, v18

    #@9d
    if-eq v0, v1, :cond_9

    #@9f
    .line 1730
    aget v24, p0, v18

    #@a1
    aput v24, p0, v16

    #@a3
    .line 1731
    aput v8, p0, v18

    #@a5
    .line 1733
    :cond_9
    add-int/lit8 v17, v18, 0x1

    #@a7
    .line 1726
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@a9
    move/from16 v18, v17

    #@ab
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    #@ac
    .line 1703
    .end local v8    # "ak":F
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    #@ae
    .restart local v21    # "pivotsDiffer":Z
    goto :goto_0

    #@af
    .line 1734
    .end local v17    # "less":I
    .restart local v8    # "ak":F
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    :cond_b
    cmpl-float v24, v8, v20

    #@b1
    if-lez v24, :cond_20

    #@b3
    .line 1735
    :goto_3
    aget v24, p0, v14

    #@b5
    cmpl-float v24, v24, v20

    #@b7
    if-lez v24, :cond_d

    #@b9
    .line 1736
    add-int/lit8 v15, v14, -0x1

    #@bb
    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    #@bd
    if-ne v14, v0, :cond_c

    #@bf
    move v14, v15

    #@c0
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@c2
    .line 1805
    .end local v8    # "ak":F
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    #@c4
    aget v24, p0, v24

    #@c6
    aput v24, p0, p1

    #@c8
    add-int/lit8 v24, v17, -0x1

    #@ca
    aput v19, p0, v24

    #@cc
    .line 1806
    add-int/lit8 v24, v14, 0x1

    #@ce
    aget v24, p0, v24

    #@d0
    aput v24, p0, p2

    #@d2
    add-int/lit8 v24, v14, 0x1

    #@d4
    aput v20, p0, v24

    #@d6
    .line 1809
    add-int/lit8 v24, v17, -0x2

    #@d8
    move-object/from16 v0, p0

    #@da
    move/from16 v1, p1

    #@dc
    move/from16 v2, v24

    #@de
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    #@e1
    .line 1810
    add-int/lit8 v24, v14, 0x2

    #@e3
    move-object/from16 v0, p0

    #@e5
    move/from16 v1, v24

    #@e7
    move/from16 v2, p2

    #@e9
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    #@ec
    .line 1816
    if-nez v21, :cond_15

    #@ee
    .line 1817
    return-void

    #@ef
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":F
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_c
    move v14, v15

    #@f0
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_3

    #@f1
    .line 1740
    :cond_d
    aget v24, p0, v14

    #@f3
    cmpg-float v24, v24, v19

    #@f5
    if-gez v24, :cond_e

    #@f7
    .line 1741
    aget v24, p0, v18

    #@f9
    aput v24, p0, v16

    #@fb
    .line 1742
    add-int/lit8 v17, v18, 0x1

    #@fd
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget v24, p0, v14

    #@ff
    aput v24, p0, v18

    #@101
    .line 1743
    add-int/lit8 v15, v14, -0x1

    #@103
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    #@105
    move v14, v15

    #@106
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    #@107
    .line 1745
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    aget v24, p0, v14

    #@109
    aput v24, p0, v16

    #@10b
    .line 1746
    add-int/lit8 v15, v14, -0x1

    #@10d
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    #@10f
    move v14, v15

    #@110
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@112
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    #@113
    .line 1771
    .end local v8    # "ak":F
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    #@115
    .restart local v16    # "k":I
    move/from16 v18, v17

    #@117
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_5
    move/from16 v0, v16

    #@119
    if-gt v0, v14, :cond_1f

    #@11b
    .line 1772
    aget v8, p0, v16

    #@11d
    .line 1773
    .restart local v8    # "ak":F
    cmpl-float v24, v8, v19

    #@11f
    if-nez v24, :cond_10

    #@121
    move/from16 v17, v18

    #@123
    .line 1771
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@125
    move/from16 v18, v17

    #@127
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_5

    #@128
    .line 1776
    :cond_10
    cmpg-float v24, v8, v19

    #@12a
    if-gez v24, :cond_12

    #@12c
    .line 1777
    move/from16 v0, v16

    #@12e
    move/from16 v1, v18

    #@130
    if-eq v0, v1, :cond_11

    #@132
    .line 1778
    aget v24, p0, v18

    #@134
    aput v24, p0, v16

    #@136
    .line 1779
    aput v8, p0, v18

    #@138
    .line 1781
    :cond_11
    add-int/lit8 v17, v18, 0x1

    #@13a
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@13b
    .line 1789
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_7
    aget v24, p0, v14

    #@13d
    cmpl-float v24, v24, v19

    #@13f
    if-lez v24, :cond_13

    #@141
    .line 1790
    add-int/lit8 v14, v14, -0x1

    #@143
    goto :goto_7

    #@144
    .line 1792
    :cond_13
    aget v24, p0, v14

    #@146
    cmpg-float v24, v24, v19

    #@148
    if-gez v24, :cond_14

    #@14a
    .line 1793
    aget v24, p0, v18

    #@14c
    aput v24, p0, v16

    #@14e
    .line 1794
    add-int/lit8 v17, v18, 0x1

    #@150
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget v24, p0, v14

    #@152
    aput v24, p0, v18

    #@154
    .line 1795
    add-int/lit8 v15, v14, -0x1

    #@156
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    #@158
    move v14, v15

    #@159
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_6

    #@15a
    .line 1797
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput v19, p0, v16

    #@15c
    .line 1798
    add-int/lit8 v15, v14, -0x1

    #@15e
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    #@160
    move v14, v15

    #@161
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@163
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@164
    .line 1824
    .end local v8    # "ak":F
    :cond_15
    move/from16 v0, v17

    #@166
    if-ge v0, v9, :cond_18

    #@168
    if-le v14, v13, :cond_18

    #@16a
    .line 1825
    :goto_8
    aget v24, p0, v17

    #@16c
    cmpl-float v24, v24, v19

    #@16e
    if-nez v24, :cond_16

    #@170
    .line 1826
    add-int/lit8 v17, v17, 0x1

    #@172
    goto :goto_8

    #@173
    .line 1828
    :cond_16
    :goto_9
    aget v24, p0, v14

    #@175
    cmpl-float v24, v24, v20

    #@177
    if-nez v24, :cond_17

    #@179
    .line 1829
    add-int/lit8 v14, v14, -0x1

    #@17b
    goto :goto_9

    #@17c
    .line 1852
    :cond_17
    move/from16 v16, v17

    #@17e
    move/from16 v18, v17

    #@180
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_a
    move/from16 v0, v16

    #@182
    if-gt v0, v14, :cond_1e

    #@184
    .line 1853
    aget v8, p0, v16

    #@186
    .line 1854
    .restart local v8    # "ak":F
    cmpl-float v24, v8, v20

    #@188
    if-nez v24, :cond_1c

    #@18a
    .line 1855
    :goto_b
    aget v24, p0, v14

    #@18c
    cmpl-float v24, v24, v20

    #@18e
    if-nez v24, :cond_1a

    #@190
    .line 1856
    add-int/lit8 v15, v14, -0x1

    #@192
    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    #@194
    if-ne v14, v0, :cond_19

    #@196
    move v14, v15

    #@197
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@199
    .line 1875
    .end local v8    # "ak":F
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_c
    move-object/from16 v0, p0

    #@19b
    move/from16 v1, v17

    #@19d
    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    #@1a0
    .line 1661
    return-void

    #@1a1
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":F
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_19
    move v14, v15

    #@1a2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_b

    #@1a3
    .line 1860
    :cond_1a
    aget v24, p0, v14

    #@1a5
    cmpl-float v24, v24, v19

    #@1a7
    if-nez v24, :cond_1b

    #@1a9
    .line 1861
    aget v24, p0, v18

    #@1ab
    aput v24, p0, v16

    #@1ad
    .line 1862
    add-int/lit8 v17, v18, 0x1

    #@1af
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput v19, p0, v18

    #@1b1
    .line 1866
    :goto_d
    add-int/lit8 v15, v14, -0x1

    #@1b3
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v20, p0, v14

    #@1b5
    move v14, v15

    #@1b6
    .line 1852
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_e
    add-int/lit8 v16, v16, 0x1

    #@1b8
    move/from16 v18, v17

    #@1ba
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_a

    #@1bb
    .line 1864
    :cond_1b
    aget v24, p0, v14

    #@1bd
    aput v24, p0, v16

    #@1bf
    move/from16 v17, v18

    #@1c1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    #@1c2
    .line 1867
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    cmpl-float v24, v8, v19

    #@1c4
    if-nez v24, :cond_1d

    #@1c6
    .line 1868
    aget v24, p0, v18

    #@1c8
    aput v24, p0, v16

    #@1ca
    .line 1869
    add-int/lit8 v17, v18, 0x1

    #@1cc
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput v19, p0, v18

    #@1ce
    goto :goto_e

    #@1cf
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1d
    move/from16 v17, v18

    #@1d1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    #@1d2
    .end local v8    # "ak":F
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1e
    move/from16 v17, v18

    #@1d4
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_c

    #@1d5
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    #@1d7
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    #@1d9
    .end local v17    # "less":I
    .restart local v8    # "ak":F
    .restart local v18    # "less":I
    :cond_20
    move/from16 v17, v18

    #@1db
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([III)V
    .locals 25
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 129
    sub-int v24, p2, p1

    #@2
    add-int/lit8 v24, v24, 0x1

    #@4
    div-int/lit8 v22, v24, 0x6

    #@6
    .line 130
    .local v22, "sixth":I
    add-int v9, p1, v22

    #@8
    .line 131
    .local v9, "e1":I
    sub-int v13, p2, v22

    #@a
    .line 132
    .local v13, "e5":I
    add-int v24, p1, p2

    #@c
    ushr-int/lit8 v11, v24, 0x1

    #@e
    .line 133
    .local v11, "e3":I
    add-int v12, v11, v22

    #@10
    .line 134
    .local v12, "e4":I
    sub-int v10, v11, v22

    #@12
    .line 137
    .local v10, "e2":I
    aget v3, p0, v9

    #@14
    .local v3, "ae1":I
    aget v4, p0, v10

    #@16
    .local v4, "ae2":I
    aget v5, p0, v11

    #@18
    .local v5, "ae3":I
    aget v6, p0, v12

    #@1a
    .local v6, "ae4":I
    aget v7, p0, v13

    #@1c
    .line 139
    .local v7, "ae5":I
    if-le v3, v4, :cond_0

    #@1e
    move/from16 v23, v3

    #@20
    .local v23, "t":I
    move v3, v4

    #@21
    move/from16 v4, v23

    #@23
    .line 140
    .end local v23    # "t":I
    :cond_0
    if-le v6, v7, :cond_1

    #@25
    move/from16 v23, v6

    #@27
    .restart local v23    # "t":I
    move v6, v7

    #@28
    move/from16 v7, v23

    #@2a
    .line 141
    .end local v23    # "t":I
    :cond_1
    if-le v3, v5, :cond_2

    #@2c
    move/from16 v23, v3

    #@2e
    .restart local v23    # "t":I
    move v3, v5

    #@2f
    move/from16 v5, v23

    #@31
    .line 142
    .end local v23    # "t":I
    :cond_2
    if-le v4, v5, :cond_3

    #@33
    move/from16 v23, v4

    #@35
    .restart local v23    # "t":I
    move v4, v5

    #@36
    move/from16 v5, v23

    #@38
    .line 143
    .end local v23    # "t":I
    :cond_3
    if-le v3, v6, :cond_4

    #@3a
    move/from16 v23, v3

    #@3c
    .restart local v23    # "t":I
    move v3, v6

    #@3d
    move/from16 v6, v23

    #@3f
    .line 144
    .end local v23    # "t":I
    :cond_4
    if-le v5, v6, :cond_5

    #@41
    move/from16 v23, v5

    #@43
    .restart local v23    # "t":I
    move v5, v6

    #@44
    move/from16 v6, v23

    #@46
    .line 145
    .end local v23    # "t":I
    :cond_5
    if-le v4, v7, :cond_6

    #@48
    move/from16 v23, v4

    #@4a
    .restart local v23    # "t":I
    move v4, v7

    #@4b
    move/from16 v7, v23

    #@4d
    .line 146
    .end local v23    # "t":I
    :cond_6
    if-le v4, v5, :cond_7

    #@4f
    move/from16 v23, v4

    #@51
    .restart local v23    # "t":I
    move v4, v5

    #@52
    move/from16 v5, v23

    #@54
    .line 147
    .end local v23    # "t":I
    :cond_7
    if-le v6, v7, :cond_8

    #@56
    move/from16 v23, v6

    #@58
    .restart local v23    # "t":I
    move v6, v7

    #@59
    move/from16 v7, v23

    #@5b
    .line 149
    .end local v23    # "t":I
    :cond_8
    aput v3, p0, v9

    #@5d
    aput v5, p0, v11

    #@5f
    aput v7, p0, v13

    #@61
    .line 162
    move/from16 v19, v4

    #@63
    .local v19, "pivot1":I
    aget v24, p0, p1

    #@65
    aput v24, p0, v10

    #@67
    .line 163
    move/from16 v20, v6

    #@69
    .local v20, "pivot2":I
    aget v24, p0, p2

    #@6b
    aput v24, p0, v12

    #@6d
    .line 166
    add-int/lit8 v17, p1, 0x1

    #@6f
    .line 167
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    #@71
    .line 169
    .local v14, "great":I
    move/from16 v0, v19

    #@73
    move/from16 v1, v20

    #@75
    if-eq v0, v1, :cond_a

    #@77
    const/16 v21, 0x1

    #@79
    .line 171
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    #@7b
    .line 192
    move/from16 v16, v17

    #@7d
    .local v16, "k":I
    move/from16 v18, v17

    #@7f
    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    #@81
    if-gt v0, v14, :cond_1f

    #@83
    .line 193
    aget v8, p0, v16

    #@85
    .line 194
    .local v8, "ak":I
    move/from16 v0, v19

    #@87
    if-ge v8, v0, :cond_b

    #@89
    .line 195
    move/from16 v0, v16

    #@8b
    move/from16 v1, v18

    #@8d
    if-eq v0, v1, :cond_9

    #@8f
    .line 196
    aget v24, p0, v18

    #@91
    aput v24, p0, v16

    #@93
    .line 197
    aput v8, p0, v18

    #@95
    .line 199
    :cond_9
    add-int/lit8 v17, v18, 0x1

    #@97
    .line 192
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@99
    move/from16 v18, v17

    #@9b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    #@9c
    .line 169
    .end local v8    # "ak":I
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    #@9e
    .restart local v21    # "pivotsDiffer":Z
    goto :goto_0

    #@9f
    .line 200
    .end local v17    # "less":I
    .restart local v8    # "ak":I
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    :cond_b
    move/from16 v0, v20

    #@a1
    if-le v8, v0, :cond_20

    #@a3
    .line 201
    :goto_3
    aget v24, p0, v14

    #@a5
    move/from16 v0, v24

    #@a7
    move/from16 v1, v20

    #@a9
    if-le v0, v1, :cond_d

    #@ab
    .line 202
    add-int/lit8 v15, v14, -0x1

    #@ad
    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    #@af
    if-ne v14, v0, :cond_c

    #@b1
    move v14, v15

    #@b2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@b4
    .line 271
    .end local v8    # "ak":I
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    #@b6
    aget v24, p0, v24

    #@b8
    aput v24, p0, p1

    #@ba
    add-int/lit8 v24, v17, -0x1

    #@bc
    aput v19, p0, v24

    #@be
    .line 272
    add-int/lit8 v24, v14, 0x1

    #@c0
    aget v24, p0, v24

    #@c2
    aput v24, p0, p2

    #@c4
    add-int/lit8 v24, v14, 0x1

    #@c6
    aput v20, p0, v24

    #@c8
    .line 275
    add-int/lit8 v24, v17, -0x2

    #@ca
    move-object/from16 v0, p0

    #@cc
    move/from16 v1, p1

    #@ce
    move/from16 v2, v24

    #@d0
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    #@d3
    .line 276
    add-int/lit8 v24, v14, 0x2

    #@d5
    move-object/from16 v0, p0

    #@d7
    move/from16 v1, v24

    #@d9
    move/from16 v2, p2

    #@db
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    #@de
    .line 282
    if-nez v21, :cond_15

    #@e0
    .line 283
    return-void

    #@e1
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":I
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_c
    move v14, v15

    #@e2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_3

    #@e3
    .line 206
    :cond_d
    aget v24, p0, v14

    #@e5
    move/from16 v0, v24

    #@e7
    move/from16 v1, v19

    #@e9
    if-ge v0, v1, :cond_e

    #@eb
    .line 207
    aget v24, p0, v18

    #@ed
    aput v24, p0, v16

    #@ef
    .line 208
    add-int/lit8 v17, v18, 0x1

    #@f1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget v24, p0, v14

    #@f3
    aput v24, p0, v18

    #@f5
    .line 209
    add-int/lit8 v15, v14, -0x1

    #@f7
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    #@f9
    move v14, v15

    #@fa
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    #@fb
    .line 211
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    aget v24, p0, v14

    #@fd
    aput v24, p0, v16

    #@ff
    .line 212
    add-int/lit8 v15, v14, -0x1

    #@101
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    #@103
    move v14, v15

    #@104
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@106
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    #@107
    .line 237
    .end local v8    # "ak":I
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    #@109
    .restart local v16    # "k":I
    move/from16 v18, v17

    #@10b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_5
    move/from16 v0, v16

    #@10d
    if-gt v0, v14, :cond_1f

    #@10f
    .line 238
    aget v8, p0, v16

    #@111
    .line 239
    .restart local v8    # "ak":I
    move/from16 v0, v19

    #@113
    if-ne v8, v0, :cond_10

    #@115
    move/from16 v17, v18

    #@117
    .line 237
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@119
    move/from16 v18, v17

    #@11b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_5

    #@11c
    .line 242
    :cond_10
    move/from16 v0, v19

    #@11e
    if-ge v8, v0, :cond_12

    #@120
    .line 243
    move/from16 v0, v16

    #@122
    move/from16 v1, v18

    #@124
    if-eq v0, v1, :cond_11

    #@126
    .line 244
    aget v24, p0, v18

    #@128
    aput v24, p0, v16

    #@12a
    .line 245
    aput v8, p0, v18

    #@12c
    .line 247
    :cond_11
    add-int/lit8 v17, v18, 0x1

    #@12e
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@12f
    .line 255
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_7
    aget v24, p0, v14

    #@131
    move/from16 v0, v24

    #@133
    move/from16 v1, v19

    #@135
    if-le v0, v1, :cond_13

    #@137
    .line 256
    add-int/lit8 v14, v14, -0x1

    #@139
    goto :goto_7

    #@13a
    .line 258
    :cond_13
    aget v24, p0, v14

    #@13c
    move/from16 v0, v24

    #@13e
    move/from16 v1, v19

    #@140
    if-ge v0, v1, :cond_14

    #@142
    .line 259
    aget v24, p0, v18

    #@144
    aput v24, p0, v16

    #@146
    .line 260
    add-int/lit8 v17, v18, 0x1

    #@148
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget v24, p0, v14

    #@14a
    aput v24, p0, v18

    #@14c
    .line 261
    add-int/lit8 v15, v14, -0x1

    #@14e
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    #@150
    move v14, v15

    #@151
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_6

    #@152
    .line 263
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput v19, p0, v16

    #@154
    .line 264
    add-int/lit8 v15, v14, -0x1

    #@156
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    #@158
    move v14, v15

    #@159
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@15b
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@15c
    .line 290
    .end local v8    # "ak":I
    :cond_15
    move/from16 v0, v17

    #@15e
    if-ge v0, v9, :cond_18

    #@160
    if-le v14, v13, :cond_18

    #@162
    .line 291
    :goto_8
    aget v24, p0, v17

    #@164
    move/from16 v0, v24

    #@166
    move/from16 v1, v19

    #@168
    if-ne v0, v1, :cond_16

    #@16a
    .line 292
    add-int/lit8 v17, v17, 0x1

    #@16c
    goto :goto_8

    #@16d
    .line 294
    :cond_16
    :goto_9
    aget v24, p0, v14

    #@16f
    move/from16 v0, v24

    #@171
    move/from16 v1, v20

    #@173
    if-ne v0, v1, :cond_17

    #@175
    .line 295
    add-int/lit8 v14, v14, -0x1

    #@177
    goto :goto_9

    #@178
    .line 318
    :cond_17
    move/from16 v16, v17

    #@17a
    move/from16 v18, v17

    #@17c
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_a
    move/from16 v0, v16

    #@17e
    if-gt v0, v14, :cond_1e

    #@180
    .line 319
    aget v8, p0, v16

    #@182
    .line 320
    .restart local v8    # "ak":I
    move/from16 v0, v20

    #@184
    if-ne v8, v0, :cond_1c

    #@186
    .line 321
    :goto_b
    aget v24, p0, v14

    #@188
    move/from16 v0, v24

    #@18a
    move/from16 v1, v20

    #@18c
    if-ne v0, v1, :cond_1a

    #@18e
    .line 322
    add-int/lit8 v15, v14, -0x1

    #@190
    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    #@192
    if-ne v14, v0, :cond_19

    #@194
    move v14, v15

    #@195
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@197
    .line 341
    .end local v8    # "ak":I
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_c
    move-object/from16 v0, p0

    #@199
    move/from16 v1, v17

    #@19b
    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    #@19e
    .line 127
    return-void

    #@19f
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":I
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_19
    move v14, v15

    #@1a0
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_b

    #@1a1
    .line 326
    :cond_1a
    aget v24, p0, v14

    #@1a3
    move/from16 v0, v24

    #@1a5
    move/from16 v1, v19

    #@1a7
    if-ne v0, v1, :cond_1b

    #@1a9
    .line 327
    aget v24, p0, v18

    #@1ab
    aput v24, p0, v16

    #@1ad
    .line 328
    add-int/lit8 v17, v18, 0x1

    #@1af
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput v19, p0, v18

    #@1b1
    .line 332
    :goto_d
    add-int/lit8 v15, v14, -0x1

    #@1b3
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v20, p0, v14

    #@1b5
    move v14, v15

    #@1b6
    .line 318
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_e
    add-int/lit8 v16, v16, 0x1

    #@1b8
    move/from16 v18, v17

    #@1ba
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_a

    #@1bb
    .line 330
    :cond_1b
    aget v24, p0, v14

    #@1bd
    aput v24, p0, v16

    #@1bf
    move/from16 v17, v18

    #@1c1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    #@1c2
    .line 333
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v0, v19

    #@1c4
    if-ne v8, v0, :cond_1d

    #@1c6
    .line 334
    aget v24, p0, v18

    #@1c8
    aput v24, p0, v16

    #@1ca
    .line 335
    add-int/lit8 v17, v18, 0x1

    #@1cc
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput v19, p0, v18

    #@1ce
    goto :goto_e

    #@1cf
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1d
    move/from16 v17, v18

    #@1d1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    #@1d2
    .end local v8    # "ak":I
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1e
    move/from16 v17, v18

    #@1d4
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_c

    #@1d5
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    #@1d7
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    #@1d9
    .end local v17    # "less":I
    .restart local v8    # "ak":I
    .restart local v18    # "less":I
    :cond_20
    move/from16 v17, v18

    #@1db
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([JII)V
    .locals 36
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 407
    sub-int v34, p2, p1

    #@2
    add-int/lit8 v34, v34, 0x1

    #@4
    div-int/lit8 v31, v34, 0x6

    #@6
    .line 408
    .local v31, "sixth":I
    add-int v16, p1, v31

    #@8
    .line 409
    .local v16, "e1":I
    sub-int v20, p2, v31

    #@a
    .line 410
    .local v20, "e5":I
    add-int v34, p1, p2

    #@c
    ushr-int/lit8 v18, v34, 0x1

    #@e
    .line 411
    .local v18, "e3":I
    add-int v19, v18, v31

    #@10
    .line 412
    .local v19, "e4":I
    sub-int v17, v18, v31

    #@12
    .line 415
    .local v17, "e2":I
    aget-wide v4, p0, v16

    #@14
    .local v4, "ae1":J
    aget-wide v6, p0, v17

    #@16
    .local v6, "ae2":J
    aget-wide v8, p0, v18

    #@18
    .local v8, "ae3":J
    aget-wide v10, p0, v19

    #@1a
    .local v10, "ae4":J
    aget-wide v12, p0, v20

    #@1c
    .line 417
    .local v12, "ae5":J
    cmp-long v34, v4, v6

    #@1e
    if-lez v34, :cond_0

    #@20
    move-wide/from16 v32, v4

    #@22
    .local v32, "t":J
    move-wide v4, v6

    #@23
    move-wide/from16 v6, v32

    #@25
    .line 418
    .end local v32    # "t":J
    :cond_0
    cmp-long v34, v10, v12

    #@27
    if-lez v34, :cond_1

    #@29
    move-wide/from16 v32, v10

    #@2b
    .restart local v32    # "t":J
    move-wide v10, v12

    #@2c
    move-wide/from16 v12, v32

    #@2e
    .line 419
    .end local v32    # "t":J
    :cond_1
    cmp-long v34, v4, v8

    #@30
    if-lez v34, :cond_2

    #@32
    move-wide/from16 v32, v4

    #@34
    .restart local v32    # "t":J
    move-wide v4, v8

    #@35
    move-wide/from16 v8, v32

    #@37
    .line 420
    .end local v32    # "t":J
    :cond_2
    cmp-long v34, v6, v8

    #@39
    if-lez v34, :cond_3

    #@3b
    move-wide/from16 v32, v6

    #@3d
    .restart local v32    # "t":J
    move-wide v6, v8

    #@3e
    move-wide/from16 v8, v32

    #@40
    .line 421
    .end local v32    # "t":J
    :cond_3
    cmp-long v34, v4, v10

    #@42
    if-lez v34, :cond_4

    #@44
    move-wide/from16 v32, v4

    #@46
    .restart local v32    # "t":J
    move-wide v4, v10

    #@47
    move-wide/from16 v10, v32

    #@49
    .line 422
    .end local v32    # "t":J
    :cond_4
    cmp-long v34, v8, v10

    #@4b
    if-lez v34, :cond_5

    #@4d
    move-wide/from16 v32, v8

    #@4f
    .restart local v32    # "t":J
    move-wide v8, v10

    #@50
    move-wide/from16 v10, v32

    #@52
    .line 423
    .end local v32    # "t":J
    :cond_5
    cmp-long v34, v6, v12

    #@54
    if-lez v34, :cond_6

    #@56
    move-wide/from16 v32, v6

    #@58
    .restart local v32    # "t":J
    move-wide v6, v12

    #@59
    move-wide/from16 v12, v32

    #@5b
    .line 424
    .end local v32    # "t":J
    :cond_6
    cmp-long v34, v6, v8

    #@5d
    if-lez v34, :cond_7

    #@5f
    move-wide/from16 v32, v6

    #@61
    .restart local v32    # "t":J
    move-wide v6, v8

    #@62
    move-wide/from16 v8, v32

    #@64
    .line 425
    .end local v32    # "t":J
    :cond_7
    cmp-long v34, v10, v12

    #@66
    if-lez v34, :cond_8

    #@68
    move-wide/from16 v32, v10

    #@6a
    .restart local v32    # "t":J
    move-wide v10, v12

    #@6b
    move-wide/from16 v12, v32

    #@6d
    .line 427
    .end local v32    # "t":J
    :cond_8
    aput-wide v4, p0, v16

    #@6f
    aput-wide v8, p0, v18

    #@71
    aput-wide v12, p0, v20

    #@73
    .line 440
    move-wide/from16 v26, v6

    #@75
    .local v26, "pivot1":J
    aget-wide v34, p0, p1

    #@77
    aput-wide v34, p0, v17

    #@79
    .line 441
    move-wide/from16 v28, v10

    #@7b
    .local v28, "pivot2":J
    aget-wide v34, p0, p2

    #@7d
    aput-wide v34, p0, v19

    #@7f
    .line 444
    add-int/lit8 v24, p1, 0x1

    #@81
    .line 445
    .local v24, "less":I
    add-int/lit8 v21, p2, -0x1

    #@83
    .line 447
    .local v21, "great":I
    cmp-long v34, v26, v28

    #@85
    if-eqz v34, :cond_a

    #@87
    const/16 v30, 0x1

    #@89
    .line 449
    .local v30, "pivotsDiffer":Z
    :goto_0
    if-eqz v30, :cond_f

    #@8b
    .line 470
    move/from16 v23, v24

    #@8d
    .local v23, "k":I
    move/from16 v25, v24

    #@8f
    .end local v24    # "less":I
    .local v25, "less":I
    :goto_1
    move/from16 v0, v23

    #@91
    move/from16 v1, v21

    #@93
    if-gt v0, v1, :cond_1f

    #@95
    .line 471
    aget-wide v14, p0, v23

    #@97
    .line 472
    .local v14, "ak":J
    cmp-long v34, v14, v26

    #@99
    if-gez v34, :cond_b

    #@9b
    .line 473
    move/from16 v0, v23

    #@9d
    move/from16 v1, v25

    #@9f
    if-eq v0, v1, :cond_9

    #@a1
    .line 474
    aget-wide v34, p0, v25

    #@a3
    aput-wide v34, p0, v23

    #@a5
    .line 475
    aput-wide v14, p0, v25

    #@a7
    .line 477
    :cond_9
    add-int/lit8 v24, v25, 0x1

    #@a9
    .line 470
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_2
    add-int/lit8 v23, v23, 0x1

    #@ab
    move/from16 v25, v24

    #@ad
    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_1

    #@ae
    .line 447
    .end local v14    # "ak":J
    .end local v23    # "k":I
    .end local v25    # "less":I
    .end local v30    # "pivotsDiffer":Z
    .restart local v24    # "less":I
    :cond_a
    const/16 v30, 0x0

    #@b0
    .restart local v30    # "pivotsDiffer":Z
    goto :goto_0

    #@b1
    .line 478
    .end local v24    # "less":I
    .restart local v14    # "ak":J
    .restart local v23    # "k":I
    .restart local v25    # "less":I
    :cond_b
    cmp-long v34, v14, v28

    #@b3
    if-lez v34, :cond_20

    #@b5
    .line 479
    :goto_3
    aget-wide v34, p0, v21

    #@b7
    cmp-long v34, v34, v28

    #@b9
    if-lez v34, :cond_d

    #@bb
    .line 480
    add-int/lit8 v22, v21, -0x1

    #@bd
    .end local v21    # "great":I
    .local v22, "great":I
    move/from16 v0, v21

    #@bf
    move/from16 v1, v23

    #@c1
    if-ne v0, v1, :cond_c

    #@c3
    move/from16 v21, v22

    #@c5
    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    #@c7
    .line 549
    .end local v14    # "ak":J
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_4
    add-int/lit8 v34, v24, -0x1

    #@c9
    aget-wide v34, p0, v34

    #@cb
    aput-wide v34, p0, p1

    #@cd
    add-int/lit8 v34, v24, -0x1

    #@cf
    aput-wide v26, p0, v34

    #@d1
    .line 550
    add-int/lit8 v34, v21, 0x1

    #@d3
    aget-wide v34, p0, v34

    #@d5
    aput-wide v34, p0, p2

    #@d7
    add-int/lit8 v34, v21, 0x1

    #@d9
    aput-wide v28, p0, v34

    #@db
    .line 553
    add-int/lit8 v34, v24, -0x2

    #@dd
    move-object/from16 v0, p0

    #@df
    move/from16 v1, p1

    #@e1
    move/from16 v2, v34

    #@e3
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    #@e6
    .line 554
    add-int/lit8 v34, v21, 0x2

    #@e8
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, v34

    #@ec
    move/from16 v2, p2

    #@ee
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    #@f1
    .line 560
    if-nez v30, :cond_15

    #@f3
    .line 561
    return-void

    #@f4
    .end local v21    # "great":I
    .end local v24    # "less":I
    .restart local v14    # "ak":J
    .restart local v22    # "great":I
    .restart local v25    # "less":I
    :cond_c
    move/from16 v21, v22

    #@f6
    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_3

    #@f7
    .line 484
    :cond_d
    aget-wide v34, p0, v21

    #@f9
    cmp-long v34, v34, v26

    #@fb
    if-gez v34, :cond_e

    #@fd
    .line 485
    aget-wide v34, p0, v25

    #@ff
    aput-wide v34, p0, v23

    #@101
    .line 486
    add-int/lit8 v24, v25, 0x1

    #@103
    .end local v25    # "less":I
    .restart local v24    # "less":I
    aget-wide v34, p0, v21

    #@105
    aput-wide v34, p0, v25

    #@107
    .line 487
    add-int/lit8 v22, v21, -0x1

    #@109
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    #@10b
    move/from16 v21, v22

    #@10d
    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_2

    #@10e
    .line 489
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_e
    aget-wide v34, p0, v21

    #@110
    aput-wide v34, p0, v23

    #@112
    .line 490
    add-int/lit8 v22, v21, -0x1

    #@114
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    #@116
    move/from16 v21, v22

    #@118
    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    #@11a
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_2

    #@11b
    .line 515
    .end local v14    # "ak":J
    .end local v23    # "k":I
    :cond_f
    move/from16 v23, v24

    #@11d
    .restart local v23    # "k":I
    move/from16 v25, v24

    #@11f
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :goto_5
    move/from16 v0, v23

    #@121
    move/from16 v1, v21

    #@123
    if-gt v0, v1, :cond_1f

    #@125
    .line 516
    aget-wide v14, p0, v23

    #@127
    .line 517
    .restart local v14    # "ak":J
    cmp-long v34, v14, v26

    #@129
    if-nez v34, :cond_10

    #@12b
    move/from16 v24, v25

    #@12d
    .line 515
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_6
    add-int/lit8 v23, v23, 0x1

    #@12f
    move/from16 v25, v24

    #@131
    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_5

    #@132
    .line 520
    :cond_10
    cmp-long v34, v14, v26

    #@134
    if-gez v34, :cond_12

    #@136
    .line 521
    move/from16 v0, v23

    #@138
    move/from16 v1, v25

    #@13a
    if-eq v0, v1, :cond_11

    #@13c
    .line 522
    aget-wide v34, p0, v25

    #@13e
    aput-wide v34, p0, v23

    #@140
    .line 523
    aput-wide v14, p0, v25

    #@142
    .line 525
    :cond_11
    add-int/lit8 v24, v25, 0x1

    #@144
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_6

    #@145
    .line 533
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_12
    :goto_7
    aget-wide v34, p0, v21

    #@147
    cmp-long v34, v34, v26

    #@149
    if-lez v34, :cond_13

    #@14b
    .line 534
    add-int/lit8 v21, v21, -0x1

    #@14d
    goto :goto_7

    #@14e
    .line 536
    :cond_13
    aget-wide v34, p0, v21

    #@150
    cmp-long v34, v34, v26

    #@152
    if-gez v34, :cond_14

    #@154
    .line 537
    aget-wide v34, p0, v25

    #@156
    aput-wide v34, p0, v23

    #@158
    .line 538
    add-int/lit8 v24, v25, 0x1

    #@15a
    .end local v25    # "less":I
    .restart local v24    # "less":I
    aget-wide v34, p0, v21

    #@15c
    aput-wide v34, p0, v25

    #@15e
    .line 539
    add-int/lit8 v22, v21, -0x1

    #@160
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    #@162
    move/from16 v21, v22

    #@164
    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_6

    #@165
    .line 541
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_14
    aput-wide v26, p0, v23

    #@167
    .line 542
    add-int/lit8 v22, v21, -0x1

    #@169
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    #@16b
    move/from16 v21, v22

    #@16d
    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    #@16f
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_6

    #@170
    .line 568
    .end local v14    # "ak":J
    :cond_15
    move/from16 v0, v24

    #@172
    move/from16 v1, v16

    #@174
    if-ge v0, v1, :cond_18

    #@176
    move/from16 v0, v21

    #@178
    move/from16 v1, v20

    #@17a
    if-le v0, v1, :cond_18

    #@17c
    .line 569
    :goto_8
    aget-wide v34, p0, v24

    #@17e
    cmp-long v34, v34, v26

    #@180
    if-nez v34, :cond_16

    #@182
    .line 570
    add-int/lit8 v24, v24, 0x1

    #@184
    goto :goto_8

    #@185
    .line 572
    :cond_16
    :goto_9
    aget-wide v34, p0, v21

    #@187
    cmp-long v34, v34, v28

    #@189
    if-nez v34, :cond_17

    #@18b
    .line 573
    add-int/lit8 v21, v21, -0x1

    #@18d
    goto :goto_9

    #@18e
    .line 596
    :cond_17
    move/from16 v23, v24

    #@190
    move/from16 v25, v24

    #@192
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :goto_a
    move/from16 v0, v23

    #@194
    move/from16 v1, v21

    #@196
    if-gt v0, v1, :cond_1e

    #@198
    .line 597
    aget-wide v14, p0, v23

    #@19a
    .line 598
    .restart local v14    # "ak":J
    cmp-long v34, v14, v28

    #@19c
    if-nez v34, :cond_1c

    #@19e
    .line 599
    :goto_b
    aget-wide v34, p0, v21

    #@1a0
    cmp-long v34, v34, v28

    #@1a2
    if-nez v34, :cond_1a

    #@1a4
    .line 600
    add-int/lit8 v22, v21, -0x1

    #@1a6
    .end local v21    # "great":I
    .restart local v22    # "great":I
    move/from16 v0, v21

    #@1a8
    move/from16 v1, v23

    #@1aa
    if-ne v0, v1, :cond_19

    #@1ac
    move/from16 v21, v22

    #@1ae
    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    #@1b0
    .line 619
    .end local v14    # "ak":J
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :cond_18
    :goto_c
    move-object/from16 v0, p0

    #@1b2
    move/from16 v1, v24

    #@1b4
    move/from16 v2, v21

    #@1b6
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    #@1b9
    .line 405
    return-void

    #@1ba
    .end local v21    # "great":I
    .end local v24    # "less":I
    .restart local v14    # "ak":J
    .restart local v22    # "great":I
    .restart local v25    # "less":I
    :cond_19
    move/from16 v21, v22

    #@1bc
    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_b

    #@1bd
    .line 604
    :cond_1a
    aget-wide v34, p0, v21

    #@1bf
    cmp-long v34, v34, v26

    #@1c1
    if-nez v34, :cond_1b

    #@1c3
    .line 605
    aget-wide v34, p0, v25

    #@1c5
    aput-wide v34, p0, v23

    #@1c7
    .line 606
    add-int/lit8 v24, v25, 0x1

    #@1c9
    .end local v25    # "less":I
    .restart local v24    # "less":I
    aput-wide v26, p0, v25

    #@1cb
    .line 610
    :goto_d
    add-int/lit8 v22, v21, -0x1

    #@1cd
    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v28, p0, v21

    #@1cf
    move/from16 v21, v22

    #@1d1
    .line 596
    .end local v22    # "great":I
    .restart local v21    # "great":I
    :goto_e
    add-int/lit8 v23, v23, 0x1

    #@1d3
    move/from16 v25, v24

    #@1d5
    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_a

    #@1d6
    .line 608
    :cond_1b
    aget-wide v34, p0, v21

    #@1d8
    aput-wide v34, p0, v23

    #@1da
    move/from16 v24, v25

    #@1dc
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_d

    #@1dd
    .line 611
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1c
    cmp-long v34, v14, v26

    #@1df
    if-nez v34, :cond_1d

    #@1e1
    .line 612
    aget-wide v34, p0, v25

    #@1e3
    aput-wide v34, p0, v23

    #@1e5
    .line 613
    add-int/lit8 v24, v25, 0x1

    #@1e7
    .end local v25    # "less":I
    .restart local v24    # "less":I
    aput-wide v26, p0, v25

    #@1e9
    goto :goto_e

    #@1ea
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1d
    move/from16 v24, v25

    #@1ec
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_e

    #@1ed
    .end local v14    # "ak":J
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1e
    move/from16 v24, v25

    #@1ef
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_c

    #@1f0
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1f
    move/from16 v24, v25

    #@1f2
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto/16 :goto_4

    #@1f4
    .end local v24    # "less":I
    .restart local v14    # "ak":J
    .restart local v25    # "less":I
    :cond_20
    move/from16 v24, v25

    #@1f6
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([SII)V
    .locals 25
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 702
    sub-int v24, p2, p1

    #@2
    add-int/lit8 v24, v24, 0x1

    #@4
    div-int/lit8 v22, v24, 0x6

    #@6
    .line 703
    .local v22, "sixth":I
    add-int v9, p1, v22

    #@8
    .line 704
    .local v9, "e1":I
    sub-int v13, p2, v22

    #@a
    .line 705
    .local v13, "e5":I
    add-int v24, p1, p2

    #@c
    ushr-int/lit8 v11, v24, 0x1

    #@e
    .line 706
    .local v11, "e3":I
    add-int v12, v11, v22

    #@10
    .line 707
    .local v12, "e4":I
    sub-int v10, v11, v22

    #@12
    .line 710
    .local v10, "e2":I
    aget-short v3, p0, v9

    #@14
    .local v3, "ae1":S
    aget-short v4, p0, v10

    #@16
    .local v4, "ae2":S
    aget-short v5, p0, v11

    #@18
    .local v5, "ae3":S
    aget-short v6, p0, v12

    #@1a
    .local v6, "ae4":S
    aget-short v7, p0, v13

    #@1c
    .line 712
    .local v7, "ae5":S
    if-le v3, v4, :cond_0

    #@1e
    move/from16 v23, v3

    #@20
    .local v23, "t":S
    move v3, v4

    #@21
    move/from16 v4, v23

    #@23
    .line 713
    .end local v23    # "t":S
    :cond_0
    if-le v6, v7, :cond_1

    #@25
    move/from16 v23, v6

    #@27
    .restart local v23    # "t":S
    move v6, v7

    #@28
    move/from16 v7, v23

    #@2a
    .line 714
    .end local v23    # "t":S
    :cond_1
    if-le v3, v5, :cond_2

    #@2c
    move/from16 v23, v3

    #@2e
    .restart local v23    # "t":S
    move v3, v5

    #@2f
    move/from16 v5, v23

    #@31
    .line 715
    .end local v23    # "t":S
    :cond_2
    if-le v4, v5, :cond_3

    #@33
    move/from16 v23, v4

    #@35
    .restart local v23    # "t":S
    move v4, v5

    #@36
    move/from16 v5, v23

    #@38
    .line 716
    .end local v23    # "t":S
    :cond_3
    if-le v3, v6, :cond_4

    #@3a
    move/from16 v23, v3

    #@3c
    .restart local v23    # "t":S
    move v3, v6

    #@3d
    move/from16 v6, v23

    #@3f
    .line 717
    .end local v23    # "t":S
    :cond_4
    if-le v5, v6, :cond_5

    #@41
    move/from16 v23, v5

    #@43
    .restart local v23    # "t":S
    move v5, v6

    #@44
    move/from16 v6, v23

    #@46
    .line 718
    .end local v23    # "t":S
    :cond_5
    if-le v4, v7, :cond_6

    #@48
    move/from16 v23, v4

    #@4a
    .restart local v23    # "t":S
    move v4, v7

    #@4b
    move/from16 v7, v23

    #@4d
    .line 719
    .end local v23    # "t":S
    :cond_6
    if-le v4, v5, :cond_7

    #@4f
    move/from16 v23, v4

    #@51
    .restart local v23    # "t":S
    move v4, v5

    #@52
    move/from16 v5, v23

    #@54
    .line 720
    .end local v23    # "t":S
    :cond_7
    if-le v6, v7, :cond_8

    #@56
    move/from16 v23, v6

    #@58
    .restart local v23    # "t":S
    move v6, v7

    #@59
    move/from16 v7, v23

    #@5b
    .line 722
    .end local v23    # "t":S
    :cond_8
    aput-short v3, p0, v9

    #@5d
    aput-short v5, p0, v11

    #@5f
    aput-short v7, p0, v13

    #@61
    .line 735
    move/from16 v19, v4

    #@63
    .local v19, "pivot1":S
    aget-short v24, p0, p1

    #@65
    aput-short v24, p0, v10

    #@67
    .line 736
    move/from16 v20, v6

    #@69
    .local v20, "pivot2":S
    aget-short v24, p0, p2

    #@6b
    aput-short v24, p0, v12

    #@6d
    .line 739
    add-int/lit8 v17, p1, 0x1

    #@6f
    .line 740
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    #@71
    .line 742
    .local v14, "great":I
    move/from16 v0, v19

    #@73
    move/from16 v1, v20

    #@75
    if-eq v0, v1, :cond_a

    #@77
    const/16 v21, 0x1

    #@79
    .line 744
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    #@7b
    .line 765
    move/from16 v16, v17

    #@7d
    .local v16, "k":I
    move/from16 v18, v17

    #@7f
    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    #@81
    if-gt v0, v14, :cond_1f

    #@83
    .line 766
    aget-short v8, p0, v16

    #@85
    .line 767
    .local v8, "ak":S
    move/from16 v0, v19

    #@87
    if-ge v8, v0, :cond_b

    #@89
    .line 768
    move/from16 v0, v16

    #@8b
    move/from16 v1, v18

    #@8d
    if-eq v0, v1, :cond_9

    #@8f
    .line 769
    aget-short v24, p0, v18

    #@91
    aput-short v24, p0, v16

    #@93
    .line 770
    aput-short v8, p0, v18

    #@95
    .line 772
    :cond_9
    add-int/lit8 v17, v18, 0x1

    #@97
    .line 765
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@99
    move/from16 v18, v17

    #@9b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    #@9c
    .line 742
    .end local v8    # "ak":S
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    #@9e
    .restart local v21    # "pivotsDiffer":Z
    goto :goto_0

    #@9f
    .line 773
    .end local v17    # "less":I
    .restart local v8    # "ak":S
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    :cond_b
    move/from16 v0, v20

    #@a1
    if-le v8, v0, :cond_20

    #@a3
    .line 774
    :goto_3
    aget-short v24, p0, v14

    #@a5
    move/from16 v0, v24

    #@a7
    move/from16 v1, v20

    #@a9
    if-le v0, v1, :cond_d

    #@ab
    .line 775
    add-int/lit8 v15, v14, -0x1

    #@ad
    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    #@af
    if-ne v14, v0, :cond_c

    #@b1
    move v14, v15

    #@b2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@b4
    .line 844
    .end local v8    # "ak":S
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    #@b6
    aget-short v24, p0, v24

    #@b8
    aput-short v24, p0, p1

    #@ba
    add-int/lit8 v24, v17, -0x1

    #@bc
    aput-short v19, p0, v24

    #@be
    .line 845
    add-int/lit8 v24, v14, 0x1

    #@c0
    aget-short v24, p0, v24

    #@c2
    aput-short v24, p0, p2

    #@c4
    add-int/lit8 v24, v14, 0x1

    #@c6
    aput-short v20, p0, v24

    #@c8
    .line 848
    add-int/lit8 v24, v17, -0x2

    #@ca
    move-object/from16 v0, p0

    #@cc
    move/from16 v1, p1

    #@ce
    move/from16 v2, v24

    #@d0
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    #@d3
    .line 849
    add-int/lit8 v24, v14, 0x2

    #@d5
    move-object/from16 v0, p0

    #@d7
    move/from16 v1, v24

    #@d9
    move/from16 v2, p2

    #@db
    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    #@de
    .line 855
    if-nez v21, :cond_15

    #@e0
    .line 856
    return-void

    #@e1
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":S
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_c
    move v14, v15

    #@e2
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_3

    #@e3
    .line 779
    :cond_d
    aget-short v24, p0, v14

    #@e5
    move/from16 v0, v24

    #@e7
    move/from16 v1, v19

    #@e9
    if-ge v0, v1, :cond_e

    #@eb
    .line 780
    aget-short v24, p0, v18

    #@ed
    aput-short v24, p0, v16

    #@ef
    .line 781
    add-int/lit8 v17, v18, 0x1

    #@f1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-short v24, p0, v14

    #@f3
    aput-short v24, p0, v18

    #@f5
    .line 782
    add-int/lit8 v15, v14, -0x1

    #@f7
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v8, p0, v14

    #@f9
    move v14, v15

    #@fa
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    #@fb
    .line 784
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    aget-short v24, p0, v14

    #@fd
    aput-short v24, p0, v16

    #@ff
    .line 785
    add-int/lit8 v15, v14, -0x1

    #@101
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v8, p0, v14

    #@103
    move v14, v15

    #@104
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@106
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    #@107
    .line 810
    .end local v8    # "ak":S
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    #@109
    .restart local v16    # "k":I
    move/from16 v18, v17

    #@10b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_5
    move/from16 v0, v16

    #@10d
    if-gt v0, v14, :cond_1f

    #@10f
    .line 811
    aget-short v8, p0, v16

    #@111
    .line 812
    .restart local v8    # "ak":S
    move/from16 v0, v19

    #@113
    if-ne v8, v0, :cond_10

    #@115
    move/from16 v17, v18

    #@117
    .line 810
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@119
    move/from16 v18, v17

    #@11b
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_5

    #@11c
    .line 815
    :cond_10
    move/from16 v0, v19

    #@11e
    if-ge v8, v0, :cond_12

    #@120
    .line 816
    move/from16 v0, v16

    #@122
    move/from16 v1, v18

    #@124
    if-eq v0, v1, :cond_11

    #@126
    .line 817
    aget-short v24, p0, v18

    #@128
    aput-short v24, p0, v16

    #@12a
    .line 818
    aput-short v8, p0, v18

    #@12c
    .line 820
    :cond_11
    add-int/lit8 v17, v18, 0x1

    #@12e
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@12f
    .line 828
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_7
    aget-short v24, p0, v14

    #@131
    move/from16 v0, v24

    #@133
    move/from16 v1, v19

    #@135
    if-le v0, v1, :cond_13

    #@137
    .line 829
    add-int/lit8 v14, v14, -0x1

    #@139
    goto :goto_7

    #@13a
    .line 831
    :cond_13
    aget-short v24, p0, v14

    #@13c
    move/from16 v0, v24

    #@13e
    move/from16 v1, v19

    #@140
    if-ge v0, v1, :cond_14

    #@142
    .line 832
    aget-short v24, p0, v18

    #@144
    aput-short v24, p0, v16

    #@146
    .line 833
    add-int/lit8 v17, v18, 0x1

    #@148
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-short v24, p0, v14

    #@14a
    aput-short v24, p0, v18

    #@14c
    .line 834
    add-int/lit8 v15, v14, -0x1

    #@14e
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v8, p0, v14

    #@150
    move v14, v15

    #@151
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_6

    #@152
    .line 836
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput-short v19, p0, v16

    #@154
    .line 837
    add-int/lit8 v15, v14, -0x1

    #@156
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v8, p0, v14

    #@158
    move v14, v15

    #@159
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@15b
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_6

    #@15c
    .line 863
    .end local v8    # "ak":S
    :cond_15
    move/from16 v0, v17

    #@15e
    if-ge v0, v9, :cond_18

    #@160
    if-le v14, v13, :cond_18

    #@162
    .line 864
    :goto_8
    aget-short v24, p0, v17

    #@164
    move/from16 v0, v24

    #@166
    move/from16 v1, v19

    #@168
    if-ne v0, v1, :cond_16

    #@16a
    .line 865
    add-int/lit8 v17, v17, 0x1

    #@16c
    goto :goto_8

    #@16d
    .line 867
    :cond_16
    :goto_9
    aget-short v24, p0, v14

    #@16f
    move/from16 v0, v24

    #@171
    move/from16 v1, v20

    #@173
    if-ne v0, v1, :cond_17

    #@175
    .line 868
    add-int/lit8 v14, v14, -0x1

    #@177
    goto :goto_9

    #@178
    .line 891
    :cond_17
    move/from16 v16, v17

    #@17a
    move/from16 v18, v17

    #@17c
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_a
    move/from16 v0, v16

    #@17e
    if-gt v0, v14, :cond_1e

    #@180
    .line 892
    aget-short v8, p0, v16

    #@182
    .line 893
    .restart local v8    # "ak":S
    move/from16 v0, v20

    #@184
    if-ne v8, v0, :cond_1c

    #@186
    .line 894
    :goto_b
    aget-short v24, p0, v14

    #@188
    move/from16 v0, v24

    #@18a
    move/from16 v1, v20

    #@18c
    if-ne v0, v1, :cond_1a

    #@18e
    .line 895
    add-int/lit8 v15, v14, -0x1

    #@190
    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    #@192
    if-ne v14, v0, :cond_19

    #@194
    move v14, v15

    #@195
    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    #@197
    .line 914
    .end local v8    # "ak":S
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_c
    move-object/from16 v0, p0

    #@199
    move/from16 v1, v17

    #@19b
    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    #@19e
    .line 700
    return-void

    #@19f
    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":S
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_19
    move v14, v15

    #@1a0
    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_b

    #@1a1
    .line 899
    :cond_1a
    aget-short v24, p0, v14

    #@1a3
    move/from16 v0, v24

    #@1a5
    move/from16 v1, v19

    #@1a7
    if-ne v0, v1, :cond_1b

    #@1a9
    .line 900
    aget-short v24, p0, v18

    #@1ab
    aput-short v24, p0, v16

    #@1ad
    .line 901
    add-int/lit8 v17, v18, 0x1

    #@1af
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-short v19, p0, v18

    #@1b1
    .line 905
    :goto_d
    add-int/lit8 v15, v14, -0x1

    #@1b3
    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v20, p0, v14

    #@1b5
    move v14, v15

    #@1b6
    .line 891
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_e
    add-int/lit8 v16, v16, 0x1

    #@1b8
    move/from16 v18, v17

    #@1ba
    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_a

    #@1bb
    .line 903
    :cond_1b
    aget-short v24, p0, v14

    #@1bd
    aput-short v24, p0, v16

    #@1bf
    move/from16 v17, v18

    #@1c1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    #@1c2
    .line 906
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v0, v19

    #@1c4
    if-ne v8, v0, :cond_1d

    #@1c6
    .line 907
    aget-short v24, p0, v18

    #@1c8
    aput-short v24, p0, v16

    #@1ca
    .line 908
    add-int/lit8 v17, v18, 0x1

    #@1cc
    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-short v19, p0, v18

    #@1ce
    goto :goto_e

    #@1cf
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1d
    move/from16 v17, v18

    #@1d1
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    #@1d2
    .end local v8    # "ak":S
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1e
    move/from16 v17, v18

    #@1d4
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_c

    #@1d5
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    #@1d7
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    #@1d9
    .end local v17    # "less":I
    .restart local v8    # "ak":S
    .restart local v18    # "less":I
    :cond_20
    move/from16 v17, v18

    #@1db
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static findAnyZero([DII)I
    .locals 6
    .param p0, "a"    # [D
    .param p1, "low"    # I
    .param p2, "high"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1986
    :goto_0
    add-int v1, p1, p2

    #@4
    ushr-int/lit8 v0, v1, 0x1

    #@6
    .line 1987
    .local v0, "middle":I
    aget-wide v2, p0, v0

    #@8
    .line 1989
    .local v2, "middleValue":D
    cmpg-double v1, v2, v4

    #@a
    if-gez v1, :cond_0

    #@c
    .line 1990
    add-int/lit8 p1, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1991
    :cond_0
    cmpl-double v1, v2, v4

    #@11
    if-lez v1, :cond_1

    #@13
    .line 1992
    add-int/lit8 p2, v0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 1994
    :cond_1
    return v0
.end method

.method private static findAnyZero([FII)I
    .locals 4
    .param p0, "a"    # [F
    .param p1, "low"    # I
    .param p2, "high"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1613
    :goto_0
    add-int v2, p1, p2

    #@3
    ushr-int/lit8 v0, v2, 0x1

    #@5
    .line 1614
    .local v0, "middle":I
    aget v1, p0, v0

    #@7
    .line 1616
    .local v1, "middleValue":F
    cmpg-float v2, v1, v3

    #@9
    if-gez v2, :cond_0

    #@b
    .line 1617
    add-int/lit8 p1, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 1618
    :cond_0
    cmpl-float v2, v1, v3

    #@10
    if-lez v2, :cond_1

    #@12
    .line 1619
    add-int/lit8 p2, v0, -0x1

    #@14
    goto :goto_0

    #@15
    .line 1621
    :cond_1
    return v0
.end method

.method public static sort([B)V
    .locals 2
    .param p0, "a"    # [B

    #@0
    .prologue
    .line 1216
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    #@7
    .line 1215
    return-void
.end method

.method public static sort([BII)V
    .locals 1
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 1233
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 1234
    add-int/lit8 v0, p2, -0x1

    #@6
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    #@9
    .line 1232
    return-void
.end method

.method public static sort([C)V
    .locals 2
    .param p0, "a"    # [C

    #@0
    .prologue
    .line 923
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    #@7
    .line 922
    return-void
.end method

.method public static sort([CII)V
    .locals 1
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 940
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 941
    add-int/lit8 v0, p2, -0x1

    #@6
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    #@9
    .line 939
    return-void
.end method

.method public static sort([D)V
    .locals 2
    .param p0, "a"    # [D

    #@0
    .prologue
    .line 1892
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([DII)V

    #@7
    .line 1891
    return-void
.end method

.method public static sort([DII)V
    .locals 1
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 1917
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 1918
    add-int/lit8 v0, p2, -0x1

    #@6
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([DII)V

    #@9
    .line 1916
    return-void
.end method

.method public static sort([F)V
    .locals 2
    .param p0, "a"    # [F

    #@0
    .prologue
    .line 1519
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([FII)V

    #@7
    .line 1518
    return-void
.end method

.method public static sort([FII)V
    .locals 1
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 1544
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 1545
    add-int/lit8 v0, p2, -0x1

    #@6
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([FII)V

    #@9
    .line 1543
    return-void
.end method

.method public static sort([I)V
    .locals 2
    .param p0, "a"    # [I

    #@0
    .prologue
    .line 72
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    #@7
    .line 71
    return-void
.end method

.method public static sort([III)V
    .locals 1
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 89
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 90
    add-int/lit8 v0, p2, -0x1

    #@6
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    #@9
    .line 88
    return-void
.end method

.method public static sort([J)V
    .locals 2
    .param p0, "a"    # [J

    #@0
    .prologue
    .line 350
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    #@7
    .line 349
    return-void
.end method

.method public static sort([JII)V
    .locals 1
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 367
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 368
    add-int/lit8 v0, p2, -0x1

    #@6
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    #@9
    .line 366
    return-void
.end method

.method public static sort([S)V
    .locals 2
    .param p0, "a"    # [S

    #@0
    .prologue
    .line 628
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    #@7
    .line 627
    return-void
.end method

.method public static sort([SII)V
    .locals 1
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 645
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 646
    add-int/lit8 v0, p2, -0x1

    #@6
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    #@9
    .line 644
    return-void
.end method

.method private static sortNegZeroAndNaN([DII)V
    .locals 18
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 1935
    const-wide/high16 v14, -0x8000000000000000L

    #@2
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@5
    move-result-wide v2

    #@6
    .line 1936
    .local v2, "NEGATIVE_ZERO":J
    const/4 v12, 0x0

    #@7
    .line 1937
    .local v12, "numNegativeZeros":I
    move/from16 v10, p2

    #@9
    .line 1939
    .local v10, "n":I
    move/from16 v7, p1

    #@b
    .local v7, "k":I
    move v8, v7

    #@c
    .end local v7    # "k":I
    .local v8, "k":I
    move v11, v10

    #@d
    .end local v10    # "n":I
    .local v11, "n":I
    :goto_0
    if-gt v8, v11, :cond_1

    #@f
    .line 1940
    aget-wide v4, p0, v8

    #@11
    .line 1941
    .local v4, "ak":D
    const-wide/16 v14, 0x0

    #@13
    cmpl-double v14, v4, v14

    #@15
    if-nez v14, :cond_0

    #@17
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@1a
    move-result-wide v14

    #@1b
    cmp-long v14, v2, v14

    #@1d
    if-nez v14, :cond_0

    #@1f
    .line 1942
    const-wide/16 v14, 0x0

    #@21
    aput-wide v14, p0, v8

    #@23
    .line 1943
    add-int/lit8 v12, v12, 0x1

    #@25
    move v7, v8

    #@26
    .end local v8    # "k":I
    .restart local v7    # "k":I
    move v10, v11

    #@27
    .line 1939
    .end local v11    # "n":I
    .restart local v10    # "n":I
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@29
    move v8, v7

    #@2a
    .end local v7    # "k":I
    .restart local v8    # "k":I
    move v11, v10

    #@2b
    .end local v10    # "n":I
    .restart local v11    # "n":I
    goto :goto_0

    #@2c
    .line 1944
    :cond_0
    cmpl-double v14, v4, v4

    #@2e
    if-eqz v14, :cond_5

    #@30
    .line 1945
    add-int/lit8 v7, v8, -0x1

    #@32
    .end local v8    # "k":I
    .restart local v7    # "k":I
    aget-wide v14, p0, v11

    #@34
    aput-wide v14, p0, v8

    #@36
    .line 1946
    add-int/lit8 v10, v11, -0x1

    #@38
    .end local v11    # "n":I
    .restart local v10    # "n":I
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    #@3a
    aput-wide v14, p0, v11

    #@3c
    goto :goto_1

    #@3d
    .line 1953
    .end local v4    # "ak":D
    .end local v7    # "k":I
    .end local v10    # "n":I
    .restart local v8    # "k":I
    .restart local v11    # "n":I
    :cond_1
    move-object/from16 v0, p0

    #@3f
    move/from16 v1, p1

    #@41
    invoke-static {v0, v1, v11}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    #@44
    .line 1958
    if-nez v12, :cond_2

    #@46
    .line 1959
    return-void

    #@47
    .line 1963
    :cond_2
    move-object/from16 v0, p0

    #@49
    move/from16 v1, p1

    #@4b
    invoke-static {v0, v1, v11}, Ljava/util/DualPivotQuicksort;->findAnyZero([DII)I

    #@4e
    move-result v13

    #@4f
    .line 1965
    .local v13, "zeroIndex":I
    add-int/lit8 v6, v13, -0x1

    #@51
    .local v6, "i":I
    :goto_2
    move/from16 v0, p1

    #@53
    if-lt v6, v0, :cond_3

    #@55
    aget-wide v14, p0, v6

    #@57
    const-wide/16 v16, 0x0

    #@59
    cmpl-double v14, v14, v16

    #@5b
    if-nez v14, :cond_3

    #@5d
    .line 1966
    move v13, v6

    #@5e
    .line 1965
    add-int/lit8 v6, v6, -0x1

    #@60
    goto :goto_2

    #@61
    .line 1970
    :cond_3
    move v6, v13

    #@62
    add-int v9, v13, v12

    #@64
    .local v9, "m":I
    :goto_3
    if-ge v6, v9, :cond_4

    #@66
    .line 1971
    const-wide/high16 v14, -0x8000000000000000L

    #@68
    aput-wide v14, p0, v6

    #@6a
    .line 1970
    add-int/lit8 v6, v6, 0x1

    #@6c
    goto :goto_3

    #@6d
    .line 1931
    :cond_4
    return-void

    #@6e
    .end local v6    # "i":I
    .end local v9    # "m":I
    .end local v13    # "zeroIndex":I
    .restart local v4    # "ak":D
    :cond_5
    move v7, v8

    #@6f
    .end local v8    # "k":I
    .restart local v7    # "k":I
    move v10, v11

    #@70
    .end local v11    # "n":I
    .restart local v10    # "n":I
    goto :goto_1
.end method

.method private static sortNegZeroAndNaN([FII)V
    .locals 13
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    const/high16 v12, -0x80000000

    #@2
    const/4 v11, 0x0

    #@3
    .line 1562
    invoke-static {v12}, Ljava/lang/Float;->floatToIntBits(F)I

    #@6
    move-result v0

    #@7
    .line 1563
    .local v0, "NEGATIVE_ZERO":I
    const/4 v8, 0x0

    #@8
    .line 1564
    .local v8, "numNegativeZeros":I
    move v6, p2

    #@9
    .line 1566
    .local v6, "n":I
    move v3, p1

    #@a
    .local v3, "k":I
    move v4, v3

    #@b
    .end local v3    # "k":I
    .local v4, "k":I
    move v7, v6

    #@c
    .end local v6    # "n":I
    .local v7, "n":I
    :goto_0
    if-gt v4, v7, :cond_1

    #@e
    .line 1567
    aget v1, p0, v4

    #@10
    .line 1568
    .local v1, "ak":F
    cmpl-float v10, v1, v11

    #@12
    if-nez v10, :cond_0

    #@14
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@17
    move-result v10

    #@18
    if-ne v0, v10, :cond_0

    #@1a
    .line 1569
    aput v11, p0, v4

    #@1c
    .line 1570
    add-int/lit8 v8, v8, 0x1

    #@1e
    move v3, v4

    #@1f
    .end local v4    # "k":I
    .restart local v3    # "k":I
    move v6, v7

    #@20
    .line 1566
    .end local v7    # "n":I
    .restart local v6    # "n":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@22
    move v4, v3

    #@23
    .end local v3    # "k":I
    .restart local v4    # "k":I
    move v7, v6

    #@24
    .end local v6    # "n":I
    .restart local v7    # "n":I
    goto :goto_0

    #@25
    .line 1571
    :cond_0
    cmpl-float v10, v1, v1

    #@27
    if-eqz v10, :cond_5

    #@29
    .line 1572
    add-int/lit8 v3, v4, -0x1

    #@2b
    .end local v4    # "k":I
    .restart local v3    # "k":I
    aget v10, p0, v7

    #@2d
    aput v10, p0, v4

    #@2f
    .line 1573
    add-int/lit8 v6, v7, -0x1

    #@31
    .end local v7    # "n":I
    .restart local v6    # "n":I
    const/high16 v10, 0x7fc00000    # NaNf

    #@33
    aput v10, p0, v7

    #@35
    goto :goto_1

    #@36
    .line 1580
    .end local v1    # "ak":F
    .end local v3    # "k":I
    .end local v6    # "n":I
    .restart local v4    # "k":I
    .restart local v7    # "n":I
    :cond_1
    invoke-static {p0, p1, v7}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    #@39
    .line 1585
    if-nez v8, :cond_2

    #@3b
    .line 1586
    return-void

    #@3c
    .line 1590
    :cond_2
    invoke-static {p0, p1, v7}, Ljava/util/DualPivotQuicksort;->findAnyZero([FII)I

    #@3f
    move-result v9

    #@40
    .line 1592
    .local v9, "zeroIndex":I
    add-int/lit8 v2, v9, -0x1

    #@42
    .local v2, "i":I
    :goto_2
    if-lt v2, p1, :cond_3

    #@44
    aget v10, p0, v2

    #@46
    cmpl-float v10, v10, v11

    #@48
    if-nez v10, :cond_3

    #@4a
    .line 1593
    move v9, v2

    #@4b
    .line 1592
    add-int/lit8 v2, v2, -0x1

    #@4d
    goto :goto_2

    #@4e
    .line 1597
    :cond_3
    move v2, v9

    #@4f
    add-int v5, v9, v8

    #@51
    .local v5, "m":I
    :goto_3
    if-ge v2, v5, :cond_4

    #@53
    .line 1598
    aput v12, p0, v2

    #@55
    .line 1597
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_3

    #@58
    .line 1558
    :cond_4
    return-void

    #@59
    .end local v2    # "i":I
    .end local v5    # "m":I
    .end local v9    # "zeroIndex":I
    .restart local v1    # "ak":F
    :cond_5
    move v3, v4

    #@5a
    .end local v4    # "k":I
    .restart local v3    # "k":I
    move v6, v7

    #@5b
    .end local v7    # "n":I
    .restart local v6    # "n":I
    goto :goto_1
.end method
