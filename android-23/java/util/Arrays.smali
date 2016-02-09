.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$ArrayList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .prologue
    .line 155
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static binarySearch([BB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    #@0
    .prologue
    .line 169
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch([BIIB)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([BIIB)I
    .locals 5
    .param p0, "array"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # B

    #@0
    .prologue
    .line 189
    array-length v4, p0

    #@1
    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@4
    .line 190
    move v1, p1

    #@5
    .line 191
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@7
    .line 193
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@9
    .line 194
    add-int v4, v1, v0

    #@b
    ushr-int/lit8 v2, v4, 0x1

    #@d
    .line 195
    .local v2, "mid":I
    aget-byte v3, p0, v2

    #@f
    .line 197
    .local v3, "midVal":B
    if-ge v3, p3, :cond_0

    #@11
    .line 198
    add-int/lit8 v1, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 199
    :cond_0
    if-le v3, p3, :cond_1

    #@16
    .line 200
    add-int/lit8 v0, v2, -0x1

    #@18
    goto :goto_0

    #@19
    .line 202
    :cond_1
    return v2

    #@1a
    .line 205
    .end local v2    # "mid":I
    .end local v3    # "midVal":B
    :cond_2
    not-int v4, v1

    #@1b
    return v4
.end method

.method public static binarySearch([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    #@0
    .prologue
    .line 219
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch([CIIC)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([CIIC)I
    .locals 5
    .param p0, "array"    # [C
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # C

    #@0
    .prologue
    .line 239
    array-length v4, p0

    #@1
    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@4
    .line 240
    move v1, p1

    #@5
    .line 241
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@7
    .line 243
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@9
    .line 244
    add-int v4, v1, v0

    #@b
    ushr-int/lit8 v2, v4, 0x1

    #@d
    .line 245
    .local v2, "mid":I
    aget-char v3, p0, v2

    #@f
    .line 247
    .local v3, "midVal":C
    if-ge v3, p3, :cond_0

    #@11
    .line 248
    add-int/lit8 v1, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 249
    :cond_0
    if-le v3, p3, :cond_1

    #@16
    .line 250
    add-int/lit8 v0, v2, -0x1

    #@18
    goto :goto_0

    #@19
    .line 252
    :cond_1
    return v2

    #@1a
    .line 255
    .end local v2    # "mid":I
    .end local v3    # "midVal":C
    :cond_2
    not-int v4, v1

    #@1b
    return v4
.end method

.method public static binarySearch([DD)I
    .locals 3
    .param p0, "array"    # [D
    .param p1, "value"    # D

    #@0
    .prologue
    .line 269
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DIID)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([DIID)I
    .locals 13
    .param p0, "array"    # [D
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # D

    #@0
    .prologue
    .line 289
    array-length v3, p0

    #@1
    invoke-static {p1, p2, v3}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@4
    .line 290
    move v1, p1

    #@5
    .line 291
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@7
    .line 293
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_5

    #@9
    .line 294
    add-int v3, v1, v0

    #@b
    ushr-int/lit8 v2, v3, 0x1

    #@d
    .line 295
    .local v2, "mid":I
    aget-wide v4, p0, v2

    #@f
    .line 297
    .local v4, "midVal":D
    cmpg-double v3, v4, p3

    #@11
    if-gez v3, :cond_0

    #@13
    .line 298
    add-int/lit8 v1, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 299
    :cond_0
    cmpl-double v3, v4, p3

    #@18
    if-lez v3, :cond_1

    #@1a
    .line 300
    add-int/lit8 v0, v2, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 301
    :cond_1
    const-wide/16 v10, 0x0

    #@1f
    cmpl-double v3, v4, v10

    #@21
    if-eqz v3, :cond_2

    #@23
    cmpl-double v3, v4, p3

    #@25
    if-nez v3, :cond_2

    #@27
    .line 302
    return v2

    #@28
    .line 304
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@2b
    move-result-wide v6

    #@2c
    .line 305
    .local v6, "midValBits":J
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@2f
    move-result-wide v8

    #@30
    .line 307
    .local v8, "valueBits":J
    cmp-long v3, v6, v8

    #@32
    if-gez v3, :cond_3

    #@34
    .line 308
    add-int/lit8 v1, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 309
    :cond_3
    cmp-long v3, v6, v8

    #@39
    if-lez v3, :cond_4

    #@3b
    .line 310
    add-int/lit8 v0, v2, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 312
    :cond_4
    return v2

    #@3f
    .line 316
    .end local v2    # "mid":I
    .end local v4    # "midVal":D
    .end local v6    # "midValBits":J
    .end local v8    # "valueBits":J
    :cond_5
    not-int v3, v1

    #@40
    return v3
.end method

.method public static binarySearch([FF)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "value"    # F

    #@0
    .prologue
    .line 330
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch([FIIF)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([FIIF)I
    .locals 7
    .param p0, "array"    # [F
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # F

    #@0
    .prologue
    .line 350
    array-length v6, p0

    #@1
    invoke-static {p1, p2, v6}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@4
    .line 351
    move v1, p1

    #@5
    .line 352
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@7
    .line 354
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_5

    #@9
    .line 355
    add-int v6, v1, v0

    #@b
    ushr-int/lit8 v2, v6, 0x1

    #@d
    .line 356
    .local v2, "mid":I
    aget v3, p0, v2

    #@f
    .line 358
    .local v3, "midVal":F
    cmpg-float v6, v3, p3

    #@11
    if-gez v6, :cond_0

    #@13
    .line 359
    add-int/lit8 v1, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 360
    :cond_0
    cmpl-float v6, v3, p3

    #@18
    if-lez v6, :cond_1

    #@1a
    .line 361
    add-int/lit8 v0, v2, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 362
    :cond_1
    const/4 v6, 0x0

    #@1e
    cmpl-float v6, v3, v6

    #@20
    if-eqz v6, :cond_2

    #@22
    cmpl-float v6, v3, p3

    #@24
    if-nez v6, :cond_2

    #@26
    .line 363
    return v2

    #@27
    .line 365
    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@2a
    move-result v4

    #@2b
    .line 366
    .local v4, "midValBits":I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@2e
    move-result v5

    #@2f
    .line 368
    .local v5, "valueBits":I
    if-ge v4, v5, :cond_3

    #@31
    .line 369
    add-int/lit8 v1, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 370
    :cond_3
    if-le v4, v5, :cond_4

    #@36
    .line 371
    add-int/lit8 v0, v2, -0x1

    #@38
    goto :goto_0

    #@39
    .line 373
    :cond_4
    return v2

    #@3a
    .line 377
    .end local v2    # "mid":I
    .end local v3    # "midVal":F
    .end local v4    # "midValBits":I
    .end local v5    # "valueBits":I
    :cond_5
    not-int v6, v1

    #@3b
    return v6
.end method

.method public static binarySearch([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 391
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([IIII)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 411
    array-length v4, p0

    #@1
    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@4
    .line 412
    move v1, p1

    #@5
    .line 413
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@7
    .line 415
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@9
    .line 416
    add-int v4, v1, v0

    #@b
    ushr-int/lit8 v2, v4, 0x1

    #@d
    .line 417
    .local v2, "mid":I
    aget v3, p0, v2

    #@f
    .line 419
    .local v3, "midVal":I
    if-ge v3, p3, :cond_0

    #@11
    .line 420
    add-int/lit8 v1, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 421
    :cond_0
    if-le v3, p3, :cond_1

    #@16
    .line 422
    add-int/lit8 v0, v2, -0x1

    #@18
    goto :goto_0

    #@19
    .line 424
    :cond_1
    return v2

    #@1a
    .line 427
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    not-int v4, v1

    #@1b
    return v4
.end method

.method public static binarySearch([JIIJ)I
    .locals 7
    .param p0, "array"    # [J
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # J

    #@0
    .prologue
    .line 461
    array-length v3, p0

    #@1
    invoke-static {p1, p2, v3}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@4
    .line 462
    move v1, p1

    #@5
    .line 463
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@7
    .line 465
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@9
    .line 466
    add-int v3, v1, v0

    #@b
    ushr-int/lit8 v2, v3, 0x1

    #@d
    .line 467
    .local v2, "mid":I
    aget-wide v4, p0, v2

    #@f
    .line 469
    .local v4, "midVal":J
    cmp-long v3, v4, p3

    #@11
    if-gez v3, :cond_0

    #@13
    .line 470
    add-int/lit8 v1, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 471
    :cond_0
    cmp-long v3, v4, p3

    #@18
    if-lez v3, :cond_1

    #@1a
    .line 472
    add-int/lit8 v0, v2, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 474
    :cond_1
    return v2

    #@1e
    .line 477
    .end local v2    # "mid":I
    .end local v4    # "midVal":J
    :cond_2
    not-int v3, v1

    #@1f
    return v3
.end method

.method public static binarySearch([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    #@0
    .prologue
    .line 441
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 517
    array-length v4, p0

    #@1
    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@4
    .line 518
    move v1, p1

    #@5
    .line 519
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@7
    .line 521
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@9
    .line 522
    add-int v4, v1, v0

    #@b
    ushr-int/lit8 v2, v4, 0x1

    #@d
    .line 524
    .local v2, "mid":I
    aget-object v4, p0, v2

    #@f
    check-cast v4, Ljava/lang/Comparable;

    #@11
    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@14
    move-result v3

    #@15
    .line 526
    .local v3, "midValCmp":I
    if-gez v3, :cond_0

    #@17
    .line 527
    add-int/lit8 v1, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 528
    :cond_0
    if-lez v3, :cond_1

    #@1c
    .line 529
    add-int/lit8 v0, v2, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 531
    :cond_1
    return v2

    #@20
    .line 534
    .end local v2    # "mid":I
    .end local v3    # "midValCmp":I
    :cond_2
    not-int v4, v1

    #@21
    return v4
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 579
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_0

    #@2
    .line 580
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    #@5
    move-result v4

    #@6
    return v4

    #@7
    .line 583
    :cond_0
    array-length v4, p0

    #@8
    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@b
    .line 584
    move v1, p1

    #@c
    .line 585
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@e
    .line 587
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_3

    #@10
    .line 588
    add-int v4, v1, v0

    #@12
    ushr-int/lit8 v2, v4, 0x1

    #@14
    .line 589
    .local v2, "mid":I
    aget-object v4, p0, v2

    #@16
    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@19
    move-result v3

    #@1a
    .line 591
    .local v3, "midValCmp":I
    if-gez v3, :cond_1

    #@1c
    .line 592
    add-int/lit8 v1, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 593
    :cond_1
    if-lez v3, :cond_2

    #@21
    .line 594
    add-int/lit8 v0, v2, -0x1

    #@23
    goto :goto_0

    #@24
    .line 596
    :cond_2
    return v2

    #@25
    .line 599
    .end local v2    # "mid":I
    .end local v3    # "midValCmp":I
    :cond_3
    not-int v4, v1

    #@26
    return v4
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 494
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 553
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([SIIS)I
    .locals 5
    .param p0, "array"    # [S
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # S

    #@0
    .prologue
    .line 633
    array-length v4, p0

    #@1
    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    #@4
    .line 634
    move v1, p1

    #@5
    .line 635
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    #@7
    .line 637
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@9
    .line 638
    add-int v4, v1, v0

    #@b
    ushr-int/lit8 v2, v4, 0x1

    #@d
    .line 639
    .local v2, "mid":I
    aget-short v3, p0, v2

    #@f
    .line 641
    .local v3, "midVal":S
    if-ge v3, p3, :cond_0

    #@11
    .line 642
    add-int/lit8 v1, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 643
    :cond_0
    if-le v3, p3, :cond_1

    #@16
    .line 644
    add-int/lit8 v0, v2, -0x1

    #@18
    goto :goto_0

    #@19
    .line 646
    :cond_1
    return v2

    #@1a
    .line 649
    .end local v2    # "mid":I
    .end local v3    # "midVal":S
    :cond_2
    not-int v4, v1

    #@1b
    return v4
.end method

.method public static binarySearch([SS)I
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    #@0
    .prologue
    .line 613
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch([SIIS)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static checkBinarySearchBounds(III)V
    .locals 1
    .param p0, "startIndex"    # I
    .param p1, "endIndex"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 653
    if-le p0, p1, :cond_0

    #@2
    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 656
    :cond_0
    if-ltz p0, :cond_1

    #@a
    if-le p1, p2, :cond_2

    #@c
    .line 657
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 652
    :cond_2
    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .locals 1
    .param p0, "arrayLength"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 1718
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    if-le p1, p0, :cond_1

    #@6
    .line 1719
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    #@b
    throw v0

    #@c
    .line 1718
    :cond_1
    sub-int v0, p0, p1

    #@e
    if-lt v0, p2, :cond_0

    #@10
    .line 1717
    return-void
.end method

.method public static checkStartAndEnd(III)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1731
    if-ltz p1, :cond_0

    #@2
    if-le p2, p0, :cond_1

    #@4
    .line 1732
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "start < 0 || end > len. start="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 1733
    const-string/jumbo v2, ", end="

    #@19
    .line 1732
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 1733
    const-string/jumbo v2, ", len="

    #@24
    .line 1732
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1735
    :cond_1
    if-le p1, p2, :cond_2

    #@36
    .line 1736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "start > end: "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v2, " > "

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 1730
    :cond_2
    return-void
.end method

.method public static copyOf([BI)[B
    .locals 2
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2452
    if-gez p1, :cond_0

    #@3
    .line 2453
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2455
    :cond_0
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 2
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2471
    if-gez p1, :cond_0

    #@3
    .line 2472
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2474
    :cond_0
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 2
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2490
    if-gez p1, :cond_0

    #@3
    .line 2491
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2493
    :cond_0
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([DII)[D

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOf([FI)[F
    .locals 2
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2509
    if-gez p1, :cond_0

    #@3
    .line 2510
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2512
    :cond_0
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([FII)[F

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 2
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2528
    if-gez p1, :cond_0

    #@3
    .line 2529
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2531
    :cond_0
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 2
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2547
    if-gez p1, :cond_0

    #@3
    .line 2548
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2550
    :cond_0
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    #@1
    .line 2585
    if-nez p0, :cond_0

    #@3
    .line 2586
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "original == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 2588
    :cond_0
    if-gez p1, :cond_1

    #@e
    .line 2589
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 2591
    :cond_1
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v0, 0x0

    #@1
    .line 2610
    if-gez p1, :cond_0

    #@3
    .line 2611
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2613
    :cond_0
    invoke-static {p0, v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOf([SI)[S
    .locals 2
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2566
    if-gez p1, :cond_0

    #@3
    .line 2567
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2569
    :cond_0
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([SII)[S

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 2
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2433
    if-gez p1, :cond_0

    #@3
    .line 2434
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2436
    :cond_0
    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 6
    .param p0, "original"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2662
    if-le p1, p2, :cond_0

    #@3
    .line 2663
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2665
    :cond_0
    array-length v1, p0

    #@a
    .line 2666
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2667
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2669
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2670
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2671
    .local v0, "copyLength":I
    new-array v2, v3, [B

    #@1e
    .line 2672
    .local v2, "result":[B
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@21
    .line 2673
    return-object v2
.end method

.method public static copyOfRange([CII)[C
    .locals 6
    .param p0, "original"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2692
    if-le p1, p2, :cond_0

    #@3
    .line 2693
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2695
    :cond_0
    array-length v1, p0

    #@a
    .line 2696
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2697
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2699
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2700
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2701
    .local v0, "copyLength":I
    new-array v2, v3, [C

    #@1e
    .line 2702
    .local v2, "result":[C
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@21
    .line 2703
    return-object v2
.end method

.method public static copyOfRange([DII)[D
    .locals 6
    .param p0, "original"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2722
    if-le p1, p2, :cond_0

    #@3
    .line 2723
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2725
    :cond_0
    array-length v1, p0

    #@a
    .line 2726
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2727
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2729
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2730
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2731
    .local v0, "copyLength":I
    new-array v2, v3, [D

    #@1e
    .line 2732
    .local v2, "result":[D
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@21
    .line 2733
    return-object v2
.end method

.method public static copyOfRange([FII)[F
    .locals 6
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2752
    if-le p1, p2, :cond_0

    #@3
    .line 2753
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2755
    :cond_0
    array-length v1, p0

    #@a
    .line 2756
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2757
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2759
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2760
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2761
    .local v0, "copyLength":I
    new-array v2, v3, [F

    #@1e
    .line 2762
    .local v2, "result":[F
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@21
    .line 2763
    return-object v2
.end method

.method public static copyOfRange([III)[I
    .locals 6
    .param p0, "original"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2782
    if-le p1, p2, :cond_0

    #@3
    .line 2783
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2785
    :cond_0
    array-length v1, p0

    #@a
    .line 2786
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2787
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2789
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2790
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2791
    .local v0, "copyLength":I
    new-array v2, v3, [I

    #@1e
    .line 2792
    .local v2, "result":[I
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 2793
    return-object v2
.end method

.method public static copyOfRange([JII)[J
    .locals 6
    .param p0, "original"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2812
    if-le p1, p2, :cond_0

    #@3
    .line 2813
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2815
    :cond_0
    array-length v1, p0

    #@a
    .line 2816
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2817
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2819
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2820
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2821
    .local v0, "copyLength":I
    new-array v2, v3, [J

    #@1e
    .line 2822
    .local v2, "result":[J
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@21
    .line 2823
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    #@1
    .line 2873
    array-length v1, p0

    #@2
    .line 2874
    .local v1, "originalLength":I
    if-le p1, p2, :cond_0

    #@4
    .line 2875
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v4

    #@a
    .line 2877
    :cond_0
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2878
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2880
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2881
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2882
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@23
    move-result-object v4

    #@24
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, [Ljava/lang/Object;

    #@2a
    .line 2883
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2d
    .line 2884
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v5, 0x0

    #@1
    .line 2905
    if-le p1, p2, :cond_0

    #@3
    .line 2906
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2908
    :cond_0
    array-length v1, p0

    #@a
    .line 2909
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2910
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2912
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2913
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2914
    .local v0, "copyLength":I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, [Ljava/lang/Object;

    #@26
    .line 2915
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    .line 2916
    return-object v2
.end method

.method public static copyOfRange([SII)[S
    .locals 6
    .param p0, "original"    # [S
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2842
    if-le p1, p2, :cond_0

    #@3
    .line 2843
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2845
    :cond_0
    array-length v1, p0

    #@a
    .line 2846
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2847
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2849
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2850
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2851
    .local v0, "copyLength":I
    new-array v2, v3, [S

    #@1e
    .line 2852
    .local v2, "result":[S
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@21
    .line 2853
    return-object v2
.end method

.method public static copyOfRange([ZII)[Z
    .locals 6
    .param p0, "original"    # [Z
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2632
    if-le p1, p2, :cond_0

    #@3
    .line 2633
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v4

    #@9
    .line 2635
    :cond_0
    array-length v1, p0

    #@a
    .line 2636
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    #@c
    if-le p1, v1, :cond_2

    #@e
    .line 2637
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@13
    throw v4

    #@14
    .line 2639
    :cond_2
    sub-int v3, p2, p1

    #@16
    .line 2640
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    #@18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 2641
    .local v0, "copyLength":I
    new-array v2, v3, [Z

    #@1e
    .line 2642
    .local v2, "result":[Z
    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@21
    .line 2643
    return-object v2
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1621
    if-ne p0, p1, :cond_0

    #@4
    .line 1622
    return v6

    #@5
    .line 1624
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1625
    :cond_1
    return v5

    #@a
    .line 1624
    :cond_2
    array-length v3, p0

    #@b
    array-length v4, p1

    #@c
    if-ne v3, v4, :cond_1

    #@e
    .line 1627
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    array-length v3, p0

    #@10
    if-ge v2, v3, :cond_4

    #@12
    .line 1628
    aget-object v0, p0, v2

    #@14
    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v2

    #@16
    .line 1630
    .local v1, "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_3

    #@1c
    .line 1631
    return v5

    #@1d
    .line 1627
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1634
    .end local v0    # "e1":Ljava/lang/Object;
    .end local v1    # "e2":Ljava/lang/Object;
    :cond_4
    return v6
.end method

.method private static deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1640
    if-ne p0, p1, :cond_0

    #@3
    .line 1641
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 1644
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1645
    :cond_1
    return v3

    #@a
    .line 1648
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 1649
    .local v0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@19
    move-result-object v1

    #@1a
    .line 1651
    .local v1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_3

    #@1c
    .line 1652
    return v3

    #@1d
    .line 1655
    :cond_3
    if-nez v0, :cond_4

    #@1f
    .line 1656
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 1662
    :cond_4
    instance-of v2, p0, [Ljava/lang/Object;

    #@26
    if-eqz v2, :cond_5

    #@28
    .line 1663
    check-cast p0, [Ljava/lang/Object;

    #@2a
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    #@2c
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    return v2

    #@31
    .line 1664
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@33
    if-ne v0, v2, :cond_6

    #@35
    .line 1665
    check-cast p0, [I

    #@37
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [I

    #@39
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@3c
    move-result v2

    #@3d
    return v2

    #@3e
    .line 1666
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_6
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@40
    if-ne v0, v2, :cond_7

    #@42
    .line 1667
    check-cast p0, [C

    #@44
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [C

    #@46
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    #@49
    move-result v2

    #@4a
    return v2

    #@4b
    .line 1668
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@4d
    if-ne v0, v2, :cond_8

    #@4f
    .line 1669
    check-cast p0, [Z

    #@51
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [Z

    #@53
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@56
    move-result v2

    #@57
    return v2

    #@58
    .line 1670
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_8
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@5a
    if-ne v0, v2, :cond_9

    #@5c
    .line 1671
    check-cast p0, [B

    #@5e
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [B

    #@60
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@63
    move-result v2

    #@64
    return v2

    #@65
    .line 1672
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_9
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@67
    if-ne v0, v2, :cond_a

    #@69
    .line 1673
    check-cast p0, [J

    #@6b
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [J

    #@6d
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    #@70
    move-result v2

    #@71
    return v2

    #@72
    .line 1674
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_a
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@74
    if-ne v0, v2, :cond_b

    #@76
    .line 1675
    check-cast p0, [F

    #@78
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [F

    #@7a
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    #@7d
    move-result v2

    #@7e
    return v2

    #@7f
    .line 1676
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@81
    if-ne v0, v2, :cond_c

    #@83
    .line 1677
    check-cast p0, [D

    #@85
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [D

    #@87
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    #@8a
    move-result v2

    #@8b
    return v2

    #@8c
    .line 1679
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_c
    check-cast p0, [S

    #@8e
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [S

    #@90
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    #@93
    move-result v2

    #@94
    return v2
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1296
    if-nez p0, :cond_0

    #@3
    .line 1297
    return v3

    #@4
    .line 1299
    :cond_0
    const/4 v2, 0x1

    #@5
    .line 1300
    .local v2, "hashCode":I
    array-length v4, p0

    #@6
    :goto_0
    if-ge v3, v4, :cond_1

    #@8
    aget-object v0, p0, v3

    #@a
    .line 1301
    .local v0, "element":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCodeElement(Ljava/lang/Object;)I

    #@d
    move-result v1

    #@e
    .line 1302
    .local v1, "elementHashCode":I
    mul-int/lit8 v5, v2, 0x1f

    #@10
    add-int v2, v5, v1

    #@12
    .line 1300
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1304
    .end local v0    # "element":Ljava/lang/Object;
    .end local v1    # "elementHashCode":I
    :cond_1
    return v2
.end method

.method private static deepHashCodeElement(Ljava/lang/Object;)I
    .locals 2
    .param p0, "element"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1309
    if-nez p0, :cond_0

    #@2
    .line 1310
    const/4 v1, 0x0

    #@3
    return v1

    #@4
    .line 1313
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    .line 1315
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    #@e
    .line 1316
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 1322
    :cond_1
    instance-of v1, p0, [Ljava/lang/Object;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 1323
    check-cast p0, [Ljava/lang/Object;

    #@19
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    #@1c
    move-result v1

    #@1d
    return v1

    #@1e
    .line 1324
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    if-ne v0, v1, :cond_3

    #@22
    .line 1325
    check-cast p0, [I

    #@24
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    #@27
    move-result v1

    #@28
    return v1

    #@29
    .line 1326
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@2b
    if-ne v0, v1, :cond_4

    #@2d
    .line 1327
    check-cast p0, [C

    #@2f
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    #@32
    move-result v1

    #@33
    return v1

    #@34
    .line 1328
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@36
    if-ne v0, v1, :cond_5

    #@38
    .line 1329
    check-cast p0, [Z

    #@3a
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    #@3d
    move-result v1

    #@3e
    return v1

    #@3f
    .line 1330
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@41
    if-ne v0, v1, :cond_6

    #@43
    .line 1331
    check-cast p0, [B

    #@45
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    #@48
    move-result v1

    #@49
    return v1

    #@4a
    .line 1332
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@4c
    if-ne v0, v1, :cond_7

    #@4e
    .line 1333
    check-cast p0, [J

    #@50
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    #@53
    move-result v1

    #@54
    return v1

    #@55
    .line 1334
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@57
    if-ne v0, v1, :cond_8

    #@59
    .line 1335
    check-cast p0, [F

    #@5b
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    #@5e
    move-result v1

    #@5f
    return v1

    #@60
    .line 1336
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@62
    if-ne v0, v1, :cond_9

    #@64
    .line 1337
    check-cast p0, [D

    #@66
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    #@69
    move-result v1

    #@6a
    return v1

    #@6b
    .line 1339
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_9
    check-cast p0, [S

    #@6d
    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    #@70
    move-result v1

    #@71
    return v1
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2302
    if-nez p0, :cond_0

    #@2
    .line 2303
    const-string/jumbo v1, "null"

    #@5
    return-object v1

    #@6
    .line 2306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    array-length v1, p0

    #@9
    mul-int/lit8 v1, v1, 0x9

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 2307
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@f
    new-array v1, v1, [Ljava/lang/Object;

    #@11
    const/4 v2, 0x0

    #@12
    aput-object p0, v1, v2

    #@14
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@17
    .line 2308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method private static deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "origArrays"    # [Ljava/lang/Object;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2327
    if-nez p0, :cond_0

    #@3
    .line 2328
    const-string/jumbo v6, "null"

    #@6
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 2329
    return-void

    #@a
    .line 2332
    :cond_0
    const/16 v6, 0x5b

    #@c
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    .line 2334
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    array-length v6, p0

    #@11
    if-ge v3, v6, :cond_e

    #@13
    .line 2335
    if-eqz v3, :cond_1

    #@15
    .line 2336
    const-string/jumbo v6, ", "

    #@18
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 2339
    :cond_1
    aget-object v0, p0, v3

    #@1d
    .line 2340
    .local v0, "elem":Ljava/lang/Object;
    if-nez v0, :cond_2

    #@1f
    .line 2342
    const-string/jumbo v6, "null"

    #@22
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 2334
    .end local v0    # "elem":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2345
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v1

    #@2c
    .line 2346
    .local v1, "elemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_d

    #@32
    .line 2350
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@35
    move-result-object v2

    #@36
    .line 2351
    .local v2, "elemElemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_b

    #@3c
    .line 2353
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@3e
    invoke-virtual {v6, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_3

    #@44
    .line 2354
    check-cast v0, [Z

    #@46
    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_1

    #@4e
    .line 2355
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_3
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@50
    invoke-virtual {v6, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_4

    #@56
    .line 2356
    check-cast v0, [B

    #@58
    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    goto :goto_1

    #@60
    .line 2357
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_4
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@62
    invoke-virtual {v6, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v6

    #@66
    if-eqz v6, :cond_5

    #@68
    .line 2358
    check-cast v0, [C

    #@6a
    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    goto :goto_1

    #@72
    .line 2359
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_5
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@74
    invoke-virtual {v6, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v6

    #@78
    if-eqz v6, :cond_6

    #@7a
    .line 2360
    check-cast v0, [D

    #@7c
    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    goto :goto_1

    #@84
    .line 2361
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_6
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@86
    invoke-virtual {v6, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v6

    #@8a
    if-eqz v6, :cond_7

    #@8c
    .line 2362
    check-cast v0, [F

    #@8e
    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    goto :goto_1

    #@96
    .line 2363
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_7
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@98
    invoke-virtual {v6, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v6

    #@9c
    if-eqz v6, :cond_8

    #@9e
    .line 2364
    check-cast v0, [I

    #@a0
    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@a3
    move-result-object v6

    #@a4
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    goto/16 :goto_1

    #@a9
    .line 2365
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_8
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@ab
    invoke-virtual {v6, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v6

    #@af
    if-eqz v6, :cond_9

    #@b1
    .line 2366
    check-cast v0, [J

    #@b3
    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@b6
    move-result-object v6

    #@b7
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    goto/16 :goto_1

    #@bc
    .line 2367
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_9
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@be
    invoke-virtual {v6, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v6

    #@c2
    if-eqz v6, :cond_a

    #@c4
    .line 2368
    check-cast v0, [S

    #@c6
    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    goto/16 :goto_1

    #@cf
    .line 2371
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_a
    new-instance v6, Ljava/lang/AssertionError;

    #@d1
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@d4
    throw v6

    #@d5
    .line 2376
    :cond_b
    invoke-static {p1, v0}, Ljava/util/Arrays;->deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d8
    move-result v6

    #@d9
    if-eqz v6, :cond_c

    #@db
    .line 2377
    const-string/jumbo v6, "[...]"

    #@de
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    goto/16 :goto_1

    #@e3
    :cond_c
    move-object v4, v0

    #@e4
    .line 2379
    check-cast v4, [Ljava/lang/Object;

    #@e6
    .line 2380
    .local v4, "newArray":[Ljava/lang/Object;
    array-length v6, p1

    #@e7
    add-int/lit8 v6, v6, 0x1

    #@e9
    new-array v5, v6, [Ljava/lang/Object;

    #@eb
    .line 2382
    .local v5, "newOrigArrays":[Ljava/lang/Object;
    array-length v6, p1

    #@ec
    .line 2381
    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@ef
    .line 2383
    array-length v6, p1

    #@f0
    aput-object v4, v5, v6

    #@f2
    .line 2385
    invoke-static {v4, v5, p2}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@f5
    goto/16 :goto_1

    #@f7
    .line 2389
    .end local v2    # "elemElemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "newArray":[Ljava/lang/Object;
    .end local v5    # "newOrigArrays":[Ljava/lang/Object;
    :cond_d
    aget-object v6, p0, v3

    #@f9
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fc
    goto/16 :goto_1

    #@fe
    .line 2393
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v1    # "elemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    const/16 v6, 0x5d

    #@100
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@103
    .line 2326
    return-void
.end method

.method private static deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "origArrays"    # [Ljava/lang/Object;
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2409
    if-eqz p0, :cond_0

    #@3
    array-length v1, p0

    #@4
    if-nez v1, :cond_1

    #@6
    .line 2410
    :cond_0
    return v2

    #@7
    .line 2412
    :cond_1
    array-length v3, p0

    #@8
    move v1, v2

    #@9
    :goto_0
    if-ge v1, v3, :cond_3

    #@b
    aget-object v0, p0, v1

    #@d
    .line 2413
    .local v0, "element":Ljava/lang/Object;
    if-ne v0, p1, :cond_2

    #@f
    .line 2414
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 2412
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2417
    .end local v0    # "element":Ljava/lang/Object;
    :cond_3
    return v2
.end method

.method public static equals([B[B)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1355
    if-ne p0, p1, :cond_0

    #@4
    .line 1356
    return v4

    #@5
    .line 1358
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1359
    :cond_1
    return v3

    #@a
    .line 1358
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1361
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_4

    #@12
    .line 1362
    aget-byte v1, p0, v0

    #@14
    aget-byte v2, p1, v0

    #@16
    if-eq v1, v2, :cond_3

    #@18
    .line 1363
    return v3

    #@19
    .line 1361
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1366
    :cond_4
    return v4
.end method

.method public static equals([C[C)Z
    .locals 5
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1407
    if-ne p0, p1, :cond_0

    #@4
    .line 1408
    return v4

    #@5
    .line 1410
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1411
    :cond_1
    return v3

    #@a
    .line 1410
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1413
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_4

    #@12
    .line 1414
    aget-char v1, p0, v0

    #@14
    aget-char v2, p1, v0

    #@16
    if-eq v1, v2, :cond_3

    #@18
    .line 1415
    return v3

    #@19
    .line 1413
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1418
    :cond_4
    return v4
.end method

.method public static equals([D[D)Z
    .locals 8
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1516
    if-ne p0, p1, :cond_0

    #@4
    .line 1517
    return v7

    #@5
    .line 1519
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1520
    :cond_1
    return v6

    #@a
    .line 1519
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1522
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_4

    #@12
    .line 1523
    aget-wide v2, p0, v0

    #@14
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@17
    move-result-wide v2

    #@18
    .line 1524
    aget-wide v4, p1, v0

    #@1a
    .line 1523
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1d
    move-result-wide v4

    #@1e
    cmp-long v1, v2, v4

    #@20
    if-eqz v1, :cond_3

    #@22
    .line 1525
    return v6

    #@23
    .line 1522
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1528
    :cond_4
    return v7
.end method

.method public static equals([F[F)Z
    .locals 5
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1487
    if-ne p0, p1, :cond_0

    #@4
    .line 1488
    return v4

    #@5
    .line 1490
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1491
    :cond_1
    return v3

    #@a
    .line 1490
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1493
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_4

    #@12
    .line 1494
    aget v1, p0, v0

    #@14
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@17
    move-result v1

    #@18
    .line 1495
    aget v2, p1, v0

    #@1a
    .line 1494
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1d
    move-result v2

    #@1e
    if-eq v1, v2, :cond_3

    #@20
    .line 1496
    return v3

    #@21
    .line 1493
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1499
    :cond_4
    return v4
.end method

.method public static equals([I[I)Z
    .locals 5
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1433
    if-ne p0, p1, :cond_0

    #@4
    .line 1434
    return v4

    #@5
    .line 1436
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1437
    :cond_1
    return v3

    #@a
    .line 1436
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1439
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_4

    #@12
    .line 1440
    aget v1, p0, v0

    #@14
    aget v2, p1, v0

    #@16
    if-eq v1, v2, :cond_3

    #@18
    .line 1441
    return v3

    #@19
    .line 1439
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1444
    :cond_4
    return v4
.end method

.method public static equals([J[J)Z
    .locals 8
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1459
    if-ne p0, p1, :cond_0

    #@4
    .line 1460
    return v7

    #@5
    .line 1462
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1463
    :cond_1
    return v6

    #@a
    .line 1462
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1465
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_4

    #@12
    .line 1466
    aget-wide v2, p0, v0

    #@14
    aget-wide v4, p1, v0

    #@16
    cmp-long v1, v2, v4

    #@18
    if-eqz v1, :cond_3

    #@1a
    .line 1467
    return v6

    #@1b
    .line 1465
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1470
    :cond_4
    return v7
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1569
    if-ne p0, p1, :cond_0

    #@4
    .line 1570
    return v4

    #@5
    .line 1572
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1573
    :cond_1
    return v5

    #@a
    .line 1572
    :cond_2
    array-length v3, p0

    #@b
    array-length v6, p1

    #@c
    if-ne v3, v6, :cond_1

    #@e
    .line 1575
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    array-length v3, p0

    #@10
    if-ge v2, v3, :cond_6

    #@12
    .line 1576
    aget-object v0, p0, v2

    #@14
    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v2

    #@16
    .line 1577
    .local v1, "e2":Ljava/lang/Object;
    if-nez v0, :cond_4

    #@18
    if-nez v1, :cond_3

    #@1a
    move v3, v4

    #@1b
    :goto_1
    if-nez v3, :cond_5

    #@1d
    .line 1578
    return v5

    #@1e
    :cond_3
    move v3, v5

    #@1f
    .line 1577
    goto :goto_1

    #@20
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    goto :goto_1

    #@25
    .line 1575
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1581
    .end local v0    # "e1":Ljava/lang/Object;
    .end local v1    # "e2":Ljava/lang/Object;
    :cond_6
    return v4
.end method

.method public static equals([S[S)Z
    .locals 5
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1381
    if-ne p0, p1, :cond_0

    #@4
    .line 1382
    return v4

    #@5
    .line 1384
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1385
    :cond_1
    return v3

    #@a
    .line 1384
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1387
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_4

    #@12
    .line 1388
    aget-short v1, p0, v0

    #@14
    aget-short v2, p1, v0

    #@16
    if-eq v1, v2, :cond_3

    #@18
    .line 1389
    return v3

    #@19
    .line 1387
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1392
    :cond_4
    return v4
.end method

.method public static equals([Z[Z)Z
    .locals 5
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1543
    if-ne p0, p1, :cond_0

    #@4
    .line 1544
    return v4

    #@5
    .line 1546
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1547
    :cond_1
    return v3

    #@a
    .line 1546
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1549
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_4

    #@12
    .line 1550
    aget-boolean v1, p0, v0

    #@14
    aget-boolean v2, p1, v0

    #@16
    if-eq v1, v2, :cond_3

    #@18
    .line 1551
    return v3

    #@19
    .line 1549
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1554
    :cond_4
    return v4
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    #@0
    .prologue
    .line 670
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 671
    aput-byte p1, p0, v0

    #@6
    .line 670
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 669
    :cond_0
    return-void
.end method

.method public static fill([BIIB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # B

    #@0
    .prologue
    .line 692
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 693
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 694
    aput-byte p3, p0, v0

    #@9
    .line 693
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 691
    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    #@0
    .prologue
    .line 744
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 745
    aput-char p1, p0, v0

    #@6
    .line 744
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 743
    :cond_0
    return-void
.end method

.method public static fill([CIIC)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # C

    #@0
    .prologue
    .line 766
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 767
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 768
    aput-char p3, p0, v0

    #@9
    .line 767
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 765
    :cond_0
    return-void
.end method

.method public static fill([DD)V
    .locals 3
    .param p0, "array"    # [D
    .param p1, "value"    # D

    #@0
    .prologue
    .line 892
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 893
    aput-wide p1, p0, v0

    #@6
    .line 892
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 891
    :cond_0
    return-void
.end method

.method public static fill([DIID)V
    .locals 3
    .param p0, "array"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # D

    #@0
    .prologue
    .line 914
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 915
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 916
    aput-wide p3, p0, v0

    #@9
    .line 915
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 913
    :cond_0
    return-void
.end method

.method public static fill([FF)V
    .locals 2
    .param p0, "array"    # [F
    .param p1, "value"    # F

    #@0
    .prologue
    .line 855
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 856
    aput p1, p0, v0

    #@6
    .line 855
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 854
    :cond_0
    return-void
.end method

.method public static fill([FIIF)V
    .locals 2
    .param p0, "array"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # F

    #@0
    .prologue
    .line 877
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 878
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 879
    aput p3, p0, v0

    #@9
    .line 878
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 876
    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 781
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 782
    aput p1, p0, v0

    #@6
    .line 781
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 780
    :cond_0
    return-void
.end method

.method public static fill([IIII)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 803
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 804
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 805
    aput p3, p0, v0

    #@9
    .line 804
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 802
    :cond_0
    return-void
.end method

.method public static fill([JIIJ)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # J

    #@0
    .prologue
    .line 840
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 841
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 842
    aput-wide p3, p0, v0

    #@9
    .line 841
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 839
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    #@0
    .prologue
    .line 818
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 819
    aput-wide p1, p0, v0

    #@6
    .line 818
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 817
    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 988
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 989
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 990
    aput-object p3, p0, v0

    #@9
    .line 989
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 987
    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 966
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 967
    aput-object p1, p0, v0

    #@6
    .line 966
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 965
    :cond_0
    return-void
.end method

.method public static fill([SIIS)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # S

    #@0
    .prologue
    .line 729
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 730
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 731
    aput-short p3, p0, v0

    #@9
    .line 730
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 728
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    #@0
    .prologue
    .line 707
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 708
    aput-short p1, p0, v0

    #@6
    .line 707
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 706
    :cond_0
    return-void
.end method

.method public static fill([ZIIZ)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    #@0
    .prologue
    .line 951
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 952
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 953
    aput-boolean p3, p0, v0

    #@9
    .line 952
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 950
    :cond_0
    return-void
.end method

.method public static fill([ZZ)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 929
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 930
    aput-boolean p1, p0, v0

    #@6
    .line 929
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 928
    :cond_0
    return-void
.end method

.method public static hashCode([B)I
    .locals 5
    .param p0, "array"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1123
    if-nez p0, :cond_0

    #@3
    .line 1124
    return v2

    #@4
    .line 1126
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 1127
    .local v1, "hashCode":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget-byte v0, p0, v2

    #@a
    .line 1129
    .local v0, "element":B
    mul-int/lit8 v4, v1, 0x1f

    #@c
    add-int v1, v4, v0

    #@e
    .line 1127
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1131
    .end local v0    # "element":B
    :cond_1
    return v1
.end method

.method public static hashCode([C)I
    .locals 5
    .param p0, "array"    # [C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1095
    if-nez p0, :cond_0

    #@3
    .line 1096
    return v2

    #@4
    .line 1098
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 1099
    .local v1, "hashCode":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget-char v0, p0, v2

    #@a
    .line 1101
    .local v0, "element":C
    mul-int/lit8 v4, v1, 0x1f

    #@c
    add-int v1, v4, v0

    #@e
    .line 1099
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1103
    .end local v0    # "element":C
    :cond_1
    return v1
.end method

.method public static hashCode([D)I
    .locals 10
    .param p0, "array"    # [D

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1214
    if-nez p0, :cond_0

    #@3
    .line 1215
    return v3

    #@4
    .line 1217
    :cond_0
    const/4 v2, 0x1

    #@5
    .line 1219
    .local v2, "hashCode":I
    array-length v6, p0

    #@6
    :goto_0
    if-ge v3, v6, :cond_1

    #@8
    aget-wide v0, p0, v3

    #@a
    .line 1220
    .local v0, "element":D
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@d
    move-result-wide v4

    #@e
    .line 1225
    .local v4, "v":J
    mul-int/lit8 v7, v2, 0x1f

    #@10
    const/16 v8, 0x20

    #@12
    ushr-long v8, v4, v8

    #@14
    xor-long/2addr v8, v4

    #@15
    long-to-int v8, v8

    #@16
    add-int v2, v7, v8

    #@18
    .line 1219
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1227
    .end local v0    # "element":D
    .end local v4    # "v":J
    :cond_1
    return v2
.end method

.method public static hashCode([F)I
    .locals 6
    .param p0, "array"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1183
    if-nez p0, :cond_0

    #@3
    .line 1184
    return v2

    #@4
    .line 1186
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 1187
    .local v1, "hashCode":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget v0, p0, v2

    #@a
    .line 1192
    .local v0, "element":F
    mul-int/lit8 v4, v1, 0x1f

    #@c
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@f
    move-result v5

    #@10
    add-int v1, v4, v5

    #@12
    .line 1187
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1194
    .end local v0    # "element":F
    :cond_1
    return v1
.end method

.method public static hashCode([I)I
    .locals 5
    .param p0, "array"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1039
    if-nez p0, :cond_0

    #@3
    .line 1040
    return v2

    #@4
    .line 1042
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 1043
    .local v1, "hashCode":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget v0, p0, v2

    #@a
    .line 1045
    .local v0, "element":I
    mul-int/lit8 v4, v1, 0x1f

    #@c
    add-int v1, v4, v0

    #@e
    .line 1043
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1047
    .end local v0    # "element":I
    :cond_1
    return v1
.end method

.method public static hashCode([J)I
    .locals 8
    .param p0, "array"    # [J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1151
    if-nez p0, :cond_0

    #@3
    .line 1152
    return v3

    #@4
    .line 1154
    :cond_0
    const/4 v2, 0x1

    #@5
    .line 1155
    .local v2, "hashCode":I
    array-length v4, p0

    #@6
    :goto_0
    if-ge v3, v4, :cond_1

    #@8
    aget-wide v0, p0, v3

    #@a
    .line 1160
    .local v0, "elementValue":J
    mul-int/lit8 v5, v2, 0x1f

    #@c
    .line 1161
    const/16 v6, 0x20

    #@e
    ushr-long v6, v0, v6

    #@10
    xor-long/2addr v6, v0

    #@11
    long-to-int v6, v6

    #@12
    .line 1160
    add-int v2, v5, v6

    #@14
    .line 1155
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1163
    .end local v0    # "elementValue":J
    :cond_1
    return v2
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1251
    if-nez p0, :cond_0

    #@3
    .line 1252
    return v3

    #@4
    .line 1254
    :cond_0
    const/4 v2, 0x1

    #@5
    .line 1255
    .local v2, "hashCode":I
    array-length v4, p0

    #@6
    :goto_0
    if-ge v3, v4, :cond_2

    #@8
    aget-object v0, p0, v3

    #@a
    .line 1258
    .local v0, "element":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@c
    .line 1259
    const/4 v1, 0x0

    #@d
    .line 1263
    .local v1, "elementHashCode":I
    :goto_1
    mul-int/lit8 v5, v2, 0x1f

    #@f
    add-int v2, v5, v1

    #@11
    .line 1255
    add-int/lit8 v3, v3, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1261
    .end local v1    # "elementHashCode":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v1

    #@18
    .restart local v1    # "elementHashCode":I
    goto :goto_1

    #@19
    .line 1265
    .end local v0    # "element":Ljava/lang/Object;
    .end local v1    # "elementHashCode":I
    :cond_2
    return v2
.end method

.method public static hashCode([S)I
    .locals 5
    .param p0, "array"    # [S

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1067
    if-nez p0, :cond_0

    #@3
    .line 1068
    return v2

    #@4
    .line 1070
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 1071
    .local v1, "hashCode":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget-short v0, p0, v2

    #@a
    .line 1073
    .local v0, "element":S
    mul-int/lit8 v4, v1, 0x1f

    #@c
    add-int v1, v4, v0

    #@e
    .line 1071
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1075
    .end local v0    # "element":S
    :cond_1
    return v1
.end method

.method public static hashCode([Z)I
    .locals 6
    .param p0, "array"    # [Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1011
    if-nez p0, :cond_0

    #@3
    .line 1012
    return v2

    #@4
    .line 1014
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 1015
    .local v1, "hashCode":I
    array-length v4, p0

    #@6
    move v3, v2

    #@7
    :goto_0
    if-ge v3, v4, :cond_2

    #@9
    aget-boolean v0, p0, v3

    #@b
    .line 1017
    .local v0, "element":Z
    mul-int/lit8 v5, v1, 0x1f

    #@d
    if-eqz v0, :cond_1

    #@f
    const/16 v2, 0x4cf

    #@11
    :goto_1
    add-int v1, v5, v2

    #@13
    .line 1015
    add-int/lit8 v2, v3, 0x1

    #@15
    move v3, v2

    #@16
    goto :goto_0

    #@17
    .line 1017
    :cond_1
    const/16 v2, 0x4d5

    #@19
    goto :goto_1

    #@1a
    .line 1019
    .end local v0    # "element":Z
    :cond_2
    return v1
.end method

.method public static sort([B)V
    .locals 0
    .param p0, "array"    # [B

    #@0
    .prologue
    .line 1690
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([B)V

    #@3
    .line 1689
    return-void
.end method

.method public static sort([BII)V
    .locals 0
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1708
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    #@3
    .line 1707
    return-void
.end method

.method public static sort([C)V
    .locals 0
    .param p0, "array"    # [C

    #@0
    .prologue
    .line 1747
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([C)V

    #@3
    .line 1746
    return-void
.end method

.method public static sort([CII)V
    .locals 0
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1765
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    #@3
    .line 1764
    return-void
.end method

.method public static sort([D)V
    .locals 0
    .param p0, "array"    # [D

    #@0
    .prologue
    .line 1776
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([D)V

    #@3
    .line 1775
    return-void
.end method

.method public static sort([DII)V
    .locals 0
    .param p0, "array"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1796
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([DII)V

    #@3
    .line 1795
    return-void
.end method

.method public static sort([F)V
    .locals 0
    .param p0, "array"    # [F

    #@0
    .prologue
    .line 1807
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([F)V

    #@3
    .line 1806
    return-void
.end method

.method public static sort([FII)V
    .locals 0
    .param p0, "array"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1827
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([FII)V

    #@3
    .line 1826
    return-void
.end method

.method public static sort([I)V
    .locals 0
    .param p0, "array"    # [I

    #@0
    .prologue
    .line 1837
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([I)V

    #@3
    .line 1836
    return-void
.end method

.method public static sort([III)V
    .locals 0
    .param p0, "array"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1855
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([III)V

    #@3
    .line 1854
    return-void
.end method

.method public static sort([J)V
    .locals 0
    .param p0, "array"    # [J

    #@0
    .prologue
    .line 1865
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([J)V

    #@3
    .line 1864
    return-void
.end method

.method public static sort([JII)V
    .locals 0
    .param p0, "array"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1883
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([JII)V

    #@3
    .line 1882
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .locals 0
    .param p0, "array"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1957
    invoke-static {p0}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;)V

    #@3
    .line 1956
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .locals 0
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1975
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    #@3
    .line 1974
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1998
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@3
    .line 1997
    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2010
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@3
    .line 2009
    return-void
.end method

.method public static sort([S)V
    .locals 0
    .param p0, "array"    # [S

    #@0
    .prologue
    .line 1893
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([S)V

    #@3
    .line 1892
    return-void
.end method

.method public static sort([SII)V
    .locals 0
    .param p0, "array"    # [S
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1911
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    #@3
    .line 1910
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2056
    if-nez p0, :cond_0

    #@3
    .line 2057
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2059
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2060
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2062
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x6

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2063
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2064
    aget-byte v2, p0, v3

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 2065
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2066
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2067
    aget-byte v2, p0, v0

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 2065
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2069
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2070
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [C

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2086
    if-nez p0, :cond_0

    #@3
    .line 2087
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2089
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2090
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2092
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x3

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2093
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2094
    aget-char v2, p0, v3

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 2095
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2096
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2097
    aget-char v2, p0, v0

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 2095
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2099
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public static toString([D)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [D

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2116
    if-nez p0, :cond_0

    #@3
    .line 2117
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2119
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2120
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2122
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x7

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2123
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2124
    aget-wide v2, p0, v3

    #@1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@20
    .line 2125
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2126
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2127
    aget-wide v2, p0, v0

    #@2c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@2f
    .line 2125
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2129
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2146
    if-nez p0, :cond_0

    #@3
    .line 2147
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2149
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2150
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2152
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x7

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2153
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2154
    aget v2, p0, v3

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@20
    .line 2155
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2156
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2157
    aget v2, p0, v0

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2f
    .line 2155
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2159
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2176
    if-nez p0, :cond_0

    #@3
    .line 2177
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2179
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2180
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2182
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x6

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2183
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2184
    aget v2, p0, v3

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 2185
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2186
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2187
    aget v2, p0, v0

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 2185
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2189
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2206
    if-nez p0, :cond_0

    #@3
    .line 2207
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2209
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2210
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2212
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x6

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2213
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2214
    aget-wide v2, p0, v3

    #@1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    .line 2215
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2216
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2217
    aget-wide v2, p0, v0

    #@2c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    .line 2215
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2219
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2266
    if-nez p0, :cond_0

    #@3
    .line 2267
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2269
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2270
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2272
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x7

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2273
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2274
    aget-object v2, p0, v3

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    .line 2275
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2276
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2277
    aget-object v2, p0, v0

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    .line 2275
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2279
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public static toString([S)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [S

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2236
    if-nez p0, :cond_0

    #@3
    .line 2237
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2239
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2240
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x6

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2243
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2244
    aget-short v2, p0, v3

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 2245
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2246
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2247
    aget-short v2, p0, v0

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 2245
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2249
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public static toString([Z)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2026
    if-nez p0, :cond_0

    #@3
    .line 2027
    const-string/jumbo v2, "null"

    #@6
    return-object v2

    #@7
    .line 2029
    :cond_0
    array-length v2, p0

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2030
    const-string/jumbo v2, "[]"

    #@d
    return-object v2

    #@e
    .line 2032
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    array-length v2, p0

    #@11
    mul-int/lit8 v2, v2, 0x7

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2033
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 2034
    aget-boolean v2, p0, v3

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    .line 2035
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@22
    if-ge v0, v2, :cond_2

    #@24
    .line 2036
    const-string/jumbo v2, ", "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2037
    aget-boolean v2, p0, v0

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    .line 2035
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2039
    :cond_2
    const/16 v2, 0x5d

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2040
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method
