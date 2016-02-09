.class public final Landroid/gesture/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# static fields
.field private static final NONUNIFORM_SCALE:F

.field private static final SCALING_THRESHOLD:F = 0.26f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 42
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@5
    move-result-wide v0

    #@6
    double-to-float v0, v0

    #@7
    sput v0, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    #@9
    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/Closeable;

    #@0
    .prologue
    .line 53
    if-eqz p0, :cond_0

    #@2
    .line 55
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 52
    :cond_0
    :goto_0
    return-void

    #@6
    .line 56
    :catch_0
    move-exception v0

    #@7
    .line 57
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Gestures"

    #@a
    const-string/jumbo v2, "Could not close stream"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method static computeCentroid([F)[F
    .locals 8
    .param p0, "points"    # [F

    #@0
    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    #@2
    .line 331
    const/4 v1, 0x0

    #@3
    .line 332
    .local v1, "centerX":F
    const/4 v2, 0x0

    #@4
    .line 333
    .local v2, "centerY":F
    array-length v3, p0

    #@5
    .line 334
    .local v3, "count":I
    const/4 v4, 0x0

    #@6
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    #@8
    .line 335
    aget v5, p0, v4

    #@a
    add-float/2addr v1, v5

    #@b
    .line 336
    add-int/lit8 v4, v4, 0x1

    #@d
    .line 337
    aget v5, p0, v4

    #@f
    add-float/2addr v2, v5

    #@10
    .line 334
    add-int/lit8 v4, v4, 0x1

    #@12
    goto :goto_0

    #@13
    .line 339
    :cond_0
    const/4 v5, 0x2

    #@14
    new-array v0, v5, [F

    #@16
    .line 340
    .local v0, "center":[F
    mul-float v5, v7, v1

    #@18
    int-to-float v6, v3

    #@19
    div-float/2addr v5, v6

    #@1a
    const/4 v6, 0x0

    #@1b
    aput v5, v0, v6

    #@1d
    .line 341
    mul-float v5, v7, v2

    #@1f
    int-to-float v6, v3

    #@20
    div-float/2addr v5, v6

    #@21
    const/4 v6, 0x1

    #@22
    aput v5, v0, v6

    #@24
    .line 343
    return-object v0
.end method

.method private static computeCoVariance([F)[[F
    .locals 10
    .param p0, "points"    # [F

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 353
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@6
    filled-new-array {v6, v6}, [I

    #@9
    move-result-object v6

    #@a
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [[F

    #@10
    .line 354
    .local v0, "array":[[F
    aget-object v5, v0, v8

    #@12
    aput v7, v5, v8

    #@14
    .line 355
    aget-object v5, v0, v8

    #@16
    aput v7, v5, v9

    #@18
    .line 356
    aget-object v5, v0, v9

    #@1a
    aput v7, v5, v8

    #@1c
    .line 357
    aget-object v5, v0, v9

    #@1e
    aput v7, v5, v9

    #@20
    .line 358
    array-length v1, p0

    #@21
    .line 359
    .local v1, "count":I
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@24
    .line 360
    aget v3, p0, v2

    #@26
    .line 361
    .local v3, "x":F
    add-int/lit8 v2, v2, 0x1

    #@28
    .line 362
    aget v4, p0, v2

    #@2a
    .line 363
    .local v4, "y":F
    aget-object v5, v0, v8

    #@2c
    aget v6, v5, v8

    #@2e
    mul-float v7, v3, v3

    #@30
    add-float/2addr v6, v7

    #@31
    aput v6, v5, v8

    #@33
    .line 364
    aget-object v5, v0, v8

    #@35
    aget v6, v5, v9

    #@37
    mul-float v7, v3, v4

    #@39
    add-float/2addr v6, v7

    #@3a
    aput v6, v5, v9

    #@3c
    .line 365
    aget-object v5, v0, v9

    #@3e
    aget-object v6, v0, v8

    #@40
    aget v6, v6, v9

    #@42
    aput v6, v5, v8

    #@44
    .line 366
    aget-object v5, v0, v9

    #@46
    aget v6, v5, v9

    #@48
    mul-float v7, v4, v4

    #@4a
    add-float/2addr v6, v7

    #@4b
    aput v6, v5, v9

    #@4d
    .line 359
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 368
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    aget-object v5, v0, v8

    #@52
    aget v6, v5, v8

    #@54
    div-int/lit8 v7, v1, 0x2

    #@56
    int-to-float v7, v7

    #@57
    div-float/2addr v6, v7

    #@58
    aput v6, v5, v8

    #@5a
    .line 369
    aget-object v5, v0, v8

    #@5c
    aget v6, v5, v9

    #@5e
    div-int/lit8 v7, v1, 0x2

    #@60
    int-to-float v7, v7

    #@61
    div-float/2addr v6, v7

    #@62
    aput v6, v5, v9

    #@64
    .line 370
    aget-object v5, v0, v9

    #@66
    aget v6, v5, v8

    #@68
    div-int/lit8 v7, v1, 0x2

    #@6a
    int-to-float v7, v7

    #@6b
    div-float/2addr v6, v7

    #@6c
    aput v6, v5, v8

    #@6e
    .line 371
    aget-object v5, v0, v9

    #@70
    aget v6, v5, v9

    #@72
    div-int/lit8 v7, v1, 0x2

    #@74
    int-to-float v7, v7

    #@75
    div-float/2addr v6, v7

    #@76
    aput v6, v5, v9

    #@78
    .line 373
    return-object v0
.end method

.method private static computeOrientation([[F)[F
    .locals 12
    .param p0, "covarianceMatrix"    # [[F

    #@0
    .prologue
    .line 538
    const/4 v8, 0x2

    #@1
    new-array v6, v8, [F

    #@3
    .line 539
    .local v6, "targetVector":[F
    const/4 v8, 0x0

    #@4
    aget-object v8, p0, v8

    #@6
    const/4 v9, 0x1

    #@7
    aget v8, v8, v9

    #@9
    const/4 v9, 0x0

    #@a
    cmpl-float v8, v8, v9

    #@c
    if-eqz v8, :cond_0

    #@e
    const/4 v8, 0x1

    #@f
    aget-object v8, p0, v8

    #@11
    const/4 v9, 0x0

    #@12
    aget v8, v8, v9

    #@14
    const/4 v9, 0x0

    #@15
    cmpl-float v8, v8, v9

    #@17
    if-nez v8, :cond_1

    #@19
    .line 540
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    #@1b
    const/4 v9, 0x0

    #@1c
    aput v8, v6, v9

    #@1e
    .line 541
    const/4 v8, 0x0

    #@1f
    const/4 v9, 0x1

    #@20
    aput v8, v6, v9

    #@22
    .line 544
    :cond_1
    const/4 v8, 0x0

    #@23
    aget-object v8, p0, v8

    #@25
    const/4 v9, 0x0

    #@26
    aget v8, v8, v9

    #@28
    neg-float v8, v8

    #@29
    const/4 v9, 0x1

    #@2a
    aget-object v9, p0, v9

    #@2c
    const/4 v10, 0x1

    #@2d
    aget v9, v9, v10

    #@2f
    sub-float v0, v8, v9

    #@31
    .line 545
    .local v0, "a":F
    const/4 v8, 0x0

    #@32
    aget-object v8, p0, v8

    #@34
    const/4 v9, 0x0

    #@35
    aget v8, v8, v9

    #@37
    const/4 v9, 0x1

    #@38
    aget-object v9, p0, v9

    #@3a
    const/4 v10, 0x1

    #@3b
    aget v9, v9, v10

    #@3d
    mul-float/2addr v8, v9

    #@3e
    const/4 v9, 0x0

    #@3f
    aget-object v9, p0, v9

    #@41
    const/4 v10, 0x1

    #@42
    aget v9, v9, v10

    #@44
    .line 546
    const/4 v10, 0x1

    #@45
    aget-object v10, p0, v10

    #@47
    const/4 v11, 0x0

    #@48
    aget v10, v10, v11

    #@4a
    .line 545
    mul-float/2addr v9, v10

    #@4b
    sub-float v1, v8, v9

    #@4d
    .line 547
    .local v1, "b":F
    const/high16 v8, 0x40000000    # 2.0f

    #@4f
    div-float v7, v0, v8

    #@51
    .line 548
    .local v7, "value":F
    float-to-double v8, v7

    #@52
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@54
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@57
    move-result-wide v8

    #@58
    float-to-double v10, v1

    #@59
    sub-double/2addr v8, v10

    #@5a
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@5d
    move-result-wide v8

    #@5e
    double-to-float v5, v8

    #@5f
    .line 549
    .local v5, "rightside":F
    neg-float v8, v7

    #@60
    add-float v3, v8, v5

    #@62
    .line 550
    .local v3, "lambda1":F
    neg-float v8, v7

    #@63
    sub-float v4, v8, v5

    #@65
    .line 551
    .local v4, "lambda2":F
    cmpl-float v8, v3, v4

    #@67
    if-nez v8, :cond_2

    #@69
    .line 552
    const/4 v8, 0x0

    #@6a
    const/4 v9, 0x0

    #@6b
    aput v8, v6, v9

    #@6d
    .line 553
    const/4 v8, 0x0

    #@6e
    const/4 v9, 0x1

    #@6f
    aput v8, v6, v9

    #@71
    .line 559
    :goto_0
    return-object v6

    #@72
    .line 555
    :cond_2
    cmpl-float v8, v3, v4

    #@74
    if-lez v8, :cond_3

    #@76
    move v2, v3

    #@77
    .line 556
    .local v2, "lambda":F
    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    #@79
    const/4 v9, 0x0

    #@7a
    aput v8, v6, v9

    #@7c
    .line 557
    const/4 v8, 0x0

    #@7d
    aget-object v8, p0, v8

    #@7f
    const/4 v9, 0x0

    #@80
    aget v8, v8, v9

    #@82
    sub-float v8, v2, v8

    #@84
    const/4 v9, 0x0

    #@85
    aget-object v9, p0, v9

    #@87
    const/4 v10, 0x1

    #@88
    aget v9, v9, v10

    #@8a
    div-float/2addr v8, v9

    #@8b
    const/4 v9, 0x1

    #@8c
    aput v8, v6, v9

    #@8e
    goto :goto_0

    #@8f
    .line 555
    .end local v2    # "lambda":F
    :cond_3
    move v2, v4

    #@90
    .restart local v2    # "lambda":F
    goto :goto_1
.end method

.method public static computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)",
            "Landroid/gesture/OrientedBoundingBox;"
        }
    .end annotation

    #@0
    .prologue
    .line 471
    .local p0, "originalPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 472
    .local v0, "count":I
    mul-int/lit8 v6, v0, 0x2

    #@6
    new-array v5, v6, [F

    #@8
    .line 473
    .local v5, "points":[F
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 474
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/gesture/GesturePoint;

    #@11
    .line 475
    .local v4, "point":Landroid/gesture/GesturePoint;
    mul-int/lit8 v2, v1, 0x2

    #@13
    .line 476
    .local v2, "index":I
    iget v6, v4, Landroid/gesture/GesturePoint;->x:F

    #@15
    aput v6, v5, v2

    #@17
    .line 477
    add-int/lit8 v6, v2, 0x1

    #@19
    iget v7, v4, Landroid/gesture/GesturePoint;->y:F

    #@1b
    aput v7, v5, v6

    #@1d
    .line 473
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 479
    .end local v2    # "index":I
    .end local v4    # "point":Landroid/gesture/GesturePoint;
    :cond_0
    invoke-static {v5}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    #@23
    move-result-object v3

    #@24
    .line 480
    .local v3, "meanVector":[F
    invoke-static {v5, v3}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    #@27
    move-result-object v6

    #@28
    return-object v6
.end method

.method public static computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;
    .locals 5
    .param p0, "originalPoints"    # [F

    #@0
    .prologue
    .line 490
    array-length v3, p0

    #@1
    .line 491
    .local v3, "size":I
    new-array v2, v3, [F

    #@3
    .line 492
    .local v2, "points":[F
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@6
    .line 493
    aget v4, p0, v0

    #@8
    aput v4, v2, v0

    #@a
    .line 492
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 495
    :cond_0
    invoke-static {v2}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    #@10
    move-result-object v1

    #@11
    .line 496
    .local v1, "meanVector":[F
    invoke-static {v2, v1}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    #@14
    move-result-object v4

    #@15
    return-object v4
.end method

.method private static computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;
    .locals 15
    .param p0, "points"    # [F
    .param p1, "centroid"    # [F

    #@0
    .prologue
    .line 500
    const/4 v0, 0x0

    #@1
    aget v0, p1, v0

    #@3
    neg-float v0, v0

    #@4
    const/4 v1, 0x1

    #@5
    aget v1, p1, v1

    #@7
    neg-float v1, v1

    #@8
    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    #@b
    .line 502
    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeCoVariance([F)[[F

    #@e
    move-result-object v7

    #@f
    .line 503
    .local v7, "array":[[F
    invoke-static {v7}, Landroid/gesture/GestureUtils;->computeOrientation([[F)[F

    #@12
    move-result-object v14

    #@13
    .line 506
    .local v14, "targetVector":[F
    const/4 v0, 0x0

    #@14
    aget v0, v14, v0

    #@16
    const/4 v1, 0x0

    #@17
    cmpl-float v0, v0, v1

    #@19
    if-nez v0, :cond_4

    #@1b
    const/4 v0, 0x1

    #@1c
    aget v0, v14, v0

    #@1e
    const/4 v1, 0x0

    #@1f
    cmpl-float v0, v0, v1

    #@21
    if-nez v0, :cond_4

    #@23
    .line 507
    const v6, -0x4036f025

    #@26
    .line 513
    .local v6, "angle":F
    :goto_0
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    #@29
    .line 514
    .local v12, "minx":F
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    #@2c
    .line 515
    .local v13, "miny":F
    const/4 v10, 0x1

    #@2d
    .line 516
    .local v10, "maxx":F
    const/4 v11, 0x1

    #@2e
    .line 517
    .local v11, "maxy":F
    array-length v8, p0

    #@2f
    .line 518
    .local v8, "count":I
    const/4 v9, 0x0

    #@30
    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_5

    #@32
    .line 519
    aget v0, p0, v9

    #@34
    cmpg-float v0, v0, v12

    #@36
    if-gez v0, :cond_0

    #@38
    .line 520
    aget v12, p0, v9

    #@3a
    .line 522
    :cond_0
    aget v0, p0, v9

    #@3c
    cmpl-float v0, v0, v10

    #@3e
    if-lez v0, :cond_1

    #@40
    .line 523
    aget v10, p0, v9

    #@42
    .line 525
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@44
    .line 526
    aget v0, p0, v9

    #@46
    cmpg-float v0, v0, v13

    #@48
    if-gez v0, :cond_2

    #@4a
    .line 527
    aget v13, p0, v9

    #@4c
    .line 529
    :cond_2
    aget v0, p0, v9

    #@4e
    cmpl-float v0, v0, v11

    #@50
    if-lez v0, :cond_3

    #@52
    .line 530
    aget v11, p0, v9

    #@54
    .line 518
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@56
    goto :goto_1

    #@57
    .line 509
    .end local v6    # "angle":F
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v10    # "maxx":F
    .end local v11    # "maxy":F
    .end local v12    # "minx":F
    .end local v13    # "miny":F
    :cond_4
    const/4 v0, 0x1

    #@58
    aget v0, v14, v0

    #@5a
    float-to-double v0, v0

    #@5b
    const/4 v2, 0x0

    #@5c
    aget v2, v14, v2

    #@5e
    float-to-double v2, v2

    #@5f
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@62
    move-result-wide v0

    #@63
    double-to-float v6, v0

    #@64
    .line 510
    .restart local v6    # "angle":F
    neg-float v0, v6

    #@65
    invoke-static {p0, v0}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    #@68
    goto :goto_0

    #@69
    .line 534
    .restart local v8    # "count":I
    .restart local v9    # "i":I
    .restart local v10    # "maxx":F
    .restart local v11    # "maxy":F
    .restart local v12    # "minx":F
    .restart local v13    # "miny":F
    :cond_5
    new-instance v0, Landroid/gesture/OrientedBoundingBox;

    #@6b
    const/high16 v1, 0x43340000    # 180.0f

    #@6d
    mul-float/2addr v1, v6

    #@6e
    float-to-double v2, v1

    #@6f
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    #@74
    div-double/2addr v2, v4

    #@75
    double-to-float v1, v2

    #@76
    const/4 v2, 0x0

    #@77
    aget v2, p1, v2

    #@79
    const/4 v3, 0x1

    #@7a
    aget v3, p1, v3

    #@7c
    sub-float v4, v10, v12

    #@7e
    sub-float v5, v11, v13

    #@80
    invoke-direct/range {v0 .. v5}, Landroid/gesture/OrientedBoundingBox;-><init>(FFFFF)V

    #@83
    return-object v0
.end method

.method static computeStraightness([F)F
    .locals 8
    .param p0, "points"    # [F

    #@0
    .prologue
    .line 388
    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeTotalLength([F)F

    #@3
    move-result v2

    #@4
    .line 389
    .local v2, "totalLen":F
    const/4 v3, 0x2

    #@5
    aget v3, p0, v3

    #@7
    const/4 v4, 0x0

    #@8
    aget v4, p0, v4

    #@a
    sub-float v0, v3, v4

    #@c
    .line 390
    .local v0, "dx":F
    const/4 v3, 0x3

    #@d
    aget v3, p0, v3

    #@f
    const/4 v4, 0x1

    #@10
    aget v4, p0, v4

    #@12
    sub-float v1, v3, v4

    #@14
    .line 391
    .local v1, "dy":F
    float-to-double v4, v0

    #@15
    float-to-double v6, v1

    #@16
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    #@19
    move-result-wide v4

    #@1a
    double-to-float v3, v4

    #@1b
    div-float/2addr v3, v2

    #@1c
    return v3
.end method

.method static computeStraightness([FF)F
    .locals 6
    .param p0, "points"    # [F
    .param p1, "totalLen"    # F

    #@0
    .prologue
    .line 395
    const/4 v2, 0x2

    #@1
    aget v2, p0, v2

    #@3
    const/4 v3, 0x0

    #@4
    aget v3, p0, v3

    #@6
    sub-float v0, v2, v3

    #@8
    .line 396
    .local v0, "dx":F
    const/4 v2, 0x3

    #@9
    aget v2, p0, v2

    #@b
    const/4 v3, 0x1

    #@c
    aget v3, p0, v3

    #@e
    sub-float v1, v2, v3

    #@10
    .line 397
    .local v1, "dy":F
    float-to-double v2, v0

    #@11
    float-to-double v4, v1

    #@12
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    #@15
    move-result-wide v2

    #@16
    double-to-float v2, v2

    #@17
    div-float/2addr v2, p1

    #@18
    return v2
.end method

.method static computeTotalLength([F)F
    .locals 12
    .param p0, "points"    # [F

    #@0
    .prologue
    .line 377
    const/4 v4, 0x0

    #@1
    .line 378
    .local v4, "sum":F
    array-length v5, p0

    #@2
    add-int/lit8 v0, v5, -0x4

    #@4
    .line 379
    .local v0, "count":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@7
    .line 380
    add-int/lit8 v5, v3, 0x2

    #@9
    aget v5, p0, v5

    #@b
    aget v6, p0, v3

    #@d
    sub-float v1, v5, v6

    #@f
    .line 381
    .local v1, "dx":F
    add-int/lit8 v5, v3, 0x3

    #@11
    aget v5, p0, v5

    #@13
    add-int/lit8 v6, v3, 0x1

    #@15
    aget v6, p0, v6

    #@17
    sub-float v2, v5, v6

    #@19
    .line 382
    .local v2, "dy":F
    float-to-double v6, v4

    #@1a
    float-to-double v8, v1

    #@1b
    float-to-double v10, v2

    #@1c
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    #@1f
    move-result-wide v8

    #@20
    add-double/2addr v6, v8

    #@21
    double-to-float v4, v6

    #@22
    .line 379
    add-int/lit8 v3, v3, 0x2

    #@24
    goto :goto_0

    #@25
    .line 384
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_0
    return v4
.end method

.method static cosineDistance([F[F)F
    .locals 6
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F

    #@0
    .prologue
    .line 425
    const/4 v2, 0x0

    #@1
    .line 426
    .local v2, "sum":F
    array-length v1, p0

    #@2
    .line 427
    .local v1, "len":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@5
    .line 428
    aget v3, p0, v0

    #@7
    aget v4, p1, v0

    #@9
    mul-float/2addr v3, v4

    #@a
    add-float/2addr v2, v3

    #@b
    .line 427
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 430
    :cond_0
    float-to-double v4, v2

    #@f
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    #@12
    move-result-wide v4

    #@13
    double-to-float v3, v4

    #@14
    return v3
.end method

.method static minimumCosineDistance([F[FI)F
    .locals 20
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F
    .param p2, "numOrientations"    # I

    #@0
    .prologue
    .line 442
    move-object/from16 v0, p0

    #@2
    array-length v9, v0

    #@3
    .line 443
    .local v9, "len":I
    const/4 v2, 0x0

    #@4
    .line 444
    .local v2, "a":F
    const/4 v3, 0x0

    #@5
    .line 445
    .local v3, "b":F
    const/4 v8, 0x0

    #@6
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    #@8
    .line 446
    aget v13, p0, v8

    #@a
    aget v14, p1, v8

    #@c
    mul-float/2addr v13, v14

    #@d
    add-int/lit8 v14, v8, 0x1

    #@f
    aget v14, p0, v14

    #@11
    add-int/lit8 v15, v8, 0x1

    #@13
    aget v15, p1, v15

    #@15
    mul-float/2addr v14, v15

    #@16
    add-float/2addr v13, v14

    #@17
    add-float/2addr v2, v13

    #@18
    .line 447
    aget v13, p0, v8

    #@1a
    add-int/lit8 v14, v8, 0x1

    #@1c
    aget v14, p1, v14

    #@1e
    mul-float/2addr v13, v14

    #@1f
    add-int/lit8 v14, v8, 0x1

    #@21
    aget v14, p0, v14

    #@23
    aget v15, p1, v8

    #@25
    mul-float/2addr v14, v15

    #@26
    sub-float/2addr v13, v14

    #@27
    add-float/2addr v3, v13

    #@28
    .line 445
    add-int/lit8 v8, v8, 0x2

    #@2a
    goto :goto_0

    #@2b
    .line 449
    :cond_0
    const/4 v13, 0x0

    #@2c
    cmpl-float v13, v2, v13

    #@2e
    if-eqz v13, :cond_2

    #@30
    .line 450
    div-float v12, v3, v2

    #@32
    .line 451
    .local v12, "tan":F
    float-to-double v14, v12

    #@33
    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    #@36
    move-result-wide v4

    #@37
    .line 452
    .local v4, "angle":D
    const/4 v13, 0x2

    #@38
    move/from16 v0, p2

    #@3a
    if-le v0, v13, :cond_1

    #@3c
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    #@3f
    move-result-wide v14

    #@40
    move/from16 v0, p2

    #@42
    int-to-double v0, v0

    #@43
    move-wide/from16 v16, v0

    #@45
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    #@4a
    div-double v16, v18, v16

    #@4c
    cmpl-double v13, v14, v16

    #@4e
    if-ltz v13, :cond_1

    #@50
    .line 453
    float-to-double v14, v2

    #@51
    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    #@54
    move-result-wide v14

    #@55
    double-to-float v13, v14

    #@56
    return v13

    #@57
    .line 455
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@5a
    move-result-wide v6

    #@5b
    .line 456
    .local v6, "cosine":D
    float-to-double v14, v12

    #@5c
    mul-double v10, v6, v14

    #@5e
    .line 457
    .local v10, "sine":D
    float-to-double v14, v2

    #@5f
    mul-double/2addr v14, v6

    #@60
    float-to-double v0, v3

    #@61
    move-wide/from16 v16, v0

    #@63
    mul-double v16, v16, v10

    #@65
    add-double v14, v14, v16

    #@67
    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    #@6a
    move-result-wide v14

    #@6b
    double-to-float v13, v14

    #@6c
    return v13

    #@6d
    .line 460
    .end local v4    # "angle":D
    .end local v6    # "cosine":D
    .end local v10    # "sine":D
    .end local v12    # "tan":F
    :cond_2
    const v13, 0x3fc90fdb

    #@70
    return v13
.end method

.method private static plot(FF[FI)V
    .locals 26
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sample"    # [F
    .param p3, "sampleSize"    # I

    #@0
    .prologue
    .line 210
    const/16 v19, 0x0

    #@2
    cmpg-float v19, p0, v19

    #@4
    if-gez v19, :cond_0

    #@6
    const/16 p0, 0x0

    #@8
    .line 211
    :cond_0
    const/16 v19, 0x0

    #@a
    cmpg-float v19, p1, v19

    #@c
    if-gez v19, :cond_1

    #@e
    const/16 p1, 0x0

    #@10
    .line 212
    :cond_1
    move/from16 v0, p0

    #@12
    float-to-double v0, v0

    #@13
    move-wide/from16 v22, v0

    #@15
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    #@18
    move-result-wide v22

    #@19
    move-wide/from16 v0, v22

    #@1b
    double-to-int v12, v0

    #@1c
    .line 213
    .local v12, "xFloor":I
    move/from16 v0, p0

    #@1e
    float-to-double v0, v0

    #@1f
    move-wide/from16 v22, v0

    #@21
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    #@24
    move-result-wide v22

    #@25
    move-wide/from16 v0, v22

    #@27
    double-to-int v9, v0

    #@28
    .line 214
    .local v9, "xCeiling":I
    move/from16 v0, p1

    #@2a
    float-to-double v0, v0

    #@2b
    move-wide/from16 v22, v0

    #@2d
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    #@30
    move-result-wide v22

    #@31
    move-wide/from16 v0, v22

    #@33
    double-to-int v0, v0

    #@34
    move/from16 v18, v0

    #@36
    .line 215
    .local v18, "yFloor":I
    move/from16 v0, p1

    #@38
    float-to-double v0, v0

    #@39
    move-wide/from16 v22, v0

    #@3b
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    #@3e
    move-result-wide v22

    #@3f
    move-wide/from16 v0, v22

    #@41
    double-to-int v13, v0

    #@42
    .line 218
    .local v13, "yCeiling":I
    int-to-float v0, v12

    #@43
    move/from16 v19, v0

    #@45
    cmpl-float v19, p0, v19

    #@47
    if-nez v19, :cond_3

    #@49
    move/from16 v0, v18

    #@4b
    int-to-float v0, v0

    #@4c
    move/from16 v19, v0

    #@4e
    cmpl-float v19, p1, v19

    #@50
    if-nez v19, :cond_3

    #@52
    .line 219
    mul-int v19, v13, p3

    #@54
    add-int v4, v19, v9

    #@56
    .line 220
    .local v4, "index":I
    aget v19, p2, v4

    #@58
    const/high16 v22, 0x3f800000    # 1.0f

    #@5a
    cmpg-float v19, v19, v22

    #@5c
    if-gez v19, :cond_2

    #@5e
    .line 221
    const/high16 v19, 0x3f800000    # 1.0f

    #@60
    aput v19, p2, v4

    #@62
    .line 209
    :cond_2
    :goto_0
    return-void

    #@63
    .line 224
    .end local v4    # "index":I
    :cond_3
    int-to-float v0, v12

    #@64
    move/from16 v19, v0

    #@66
    sub-float v19, v19, p0

    #@68
    move/from16 v0, v19

    #@6a
    float-to-double v0, v0

    #@6b
    move-wide/from16 v22, v0

    #@6d
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@6f
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    #@72
    move-result-wide v14

    #@73
    .line 225
    .local v14, "xFloorSq":D
    move/from16 v0, v18

    #@75
    int-to-float v0, v0

    #@76
    move/from16 v19, v0

    #@78
    sub-float v19, v19, p1

    #@7a
    move/from16 v0, v19

    #@7c
    float-to-double v0, v0

    #@7d
    move-wide/from16 v22, v0

    #@7f
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@81
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    #@84
    move-result-wide v20

    #@85
    .line 226
    .local v20, "yFloorSq":D
    int-to-float v0, v9

    #@86
    move/from16 v19, v0

    #@88
    sub-float v19, v19, p0

    #@8a
    move/from16 v0, v19

    #@8c
    float-to-double v0, v0

    #@8d
    move-wide/from16 v22, v0

    #@8f
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@91
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    #@94
    move-result-wide v10

    #@95
    .line 227
    .local v10, "xCeilingSq":D
    int-to-float v0, v13

    #@96
    move/from16 v19, v0

    #@98
    sub-float v19, v19, p1

    #@9a
    move/from16 v0, v19

    #@9c
    float-to-double v0, v0

    #@9d
    move-wide/from16 v22, v0

    #@9f
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@a1
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    #@a4
    move-result-wide v16

    #@a5
    .line 228
    .local v16, "yCeilingSq":D
    add-double v22, v14, v20

    #@a7
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    #@aa
    move-result-wide v22

    #@ab
    move-wide/from16 v0, v22

    #@ad
    double-to-float v6, v0

    #@ae
    .line 229
    .local v6, "topLeft":F
    add-double v22, v10, v20

    #@b0
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    #@b3
    move-result-wide v22

    #@b4
    move-wide/from16 v0, v22

    #@b6
    double-to-float v7, v0

    #@b7
    .line 230
    .local v7, "topRight":F
    add-double v22, v14, v16

    #@b9
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    #@bc
    move-result-wide v22

    #@bd
    move-wide/from16 v0, v22

    #@bf
    double-to-float v2, v0

    #@c0
    .line 231
    .local v2, "btmLeft":F
    add-double v22, v10, v16

    #@c2
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    #@c5
    move-result-wide v22

    #@c6
    move-wide/from16 v0, v22

    #@c8
    double-to-float v3, v0

    #@c9
    .line 232
    .local v3, "btmRight":F
    add-float v19, v6, v7

    #@cb
    add-float v19, v19, v2

    #@cd
    add-float v5, v19, v3

    #@cf
    .line 234
    .local v5, "sum":F
    div-float v8, v6, v5

    #@d1
    .line 235
    .local v8, "value":F
    mul-int v19, v18, p3

    #@d3
    add-int v4, v19, v12

    #@d5
    .line 236
    .restart local v4    # "index":I
    aget v19, p2, v4

    #@d7
    cmpl-float v19, v8, v19

    #@d9
    if-lez v19, :cond_4

    #@db
    .line 237
    aput v8, p2, v4

    #@dd
    .line 240
    :cond_4
    div-float v8, v7, v5

    #@df
    .line 241
    mul-int v19, v18, p3

    #@e1
    add-int v4, v19, v9

    #@e3
    .line 242
    aget v19, p2, v4

    #@e5
    cmpl-float v19, v8, v19

    #@e7
    if-lez v19, :cond_5

    #@e9
    .line 243
    aput v8, p2, v4

    #@eb
    .line 246
    :cond_5
    div-float v8, v2, v5

    #@ed
    .line 247
    mul-int v19, v13, p3

    #@ef
    add-int v4, v19, v12

    #@f1
    .line 248
    aget v19, p2, v4

    #@f3
    cmpl-float v19, v8, v19

    #@f5
    if-lez v19, :cond_6

    #@f7
    .line 249
    aput v8, p2, v4

    #@f9
    .line 252
    :cond_6
    div-float v8, v3, v5

    #@fb
    .line 253
    mul-int v19, v13, p3

    #@fd
    add-int v4, v19, v9

    #@ff
    .line 254
    aget v19, p2, v4

    #@101
    cmpl-float v19, v8, v19

    #@103
    if-lez v19, :cond_2

    #@105
    .line 255
    aput v8, p2, v4

    #@107
    goto/16 :goto_0
.end method

.method static rotate([FF)[F
    .locals 8
    .param p0, "points"    # [F
    .param p1, "angle"    # F

    #@0
    .prologue
    .line 564
    float-to-double v6, p1

    #@1
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    #@4
    move-result-wide v6

    #@5
    double-to-float v0, v6

    #@6
    .line 565
    .local v0, "cos":F
    float-to-double v6, p1

    #@7
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    #@a
    move-result-wide v6

    #@b
    double-to-float v2, v6

    #@c
    .line 566
    .local v2, "sin":F
    array-length v3, p0

    #@d
    .line 567
    .local v3, "size":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@10
    .line 568
    aget v6, p0, v1

    #@12
    mul-float/2addr v6, v0

    #@13
    add-int/lit8 v7, v1, 0x1

    #@15
    aget v7, p0, v7

    #@17
    mul-float/2addr v7, v2

    #@18
    sub-float v4, v6, v7

    #@1a
    .line 569
    .local v4, "x":F
    aget v6, p0, v1

    #@1c
    mul-float/2addr v6, v2

    #@1d
    add-int/lit8 v7, v1, 0x1

    #@1f
    aget v7, p0, v7

    #@21
    mul-float/2addr v7, v0

    #@22
    add-float v5, v6, v7

    #@24
    .line 570
    .local v5, "y":F
    aput v4, p0, v1

    #@26
    .line 571
    add-int/lit8 v6, v1, 0x1

    #@28
    aput v5, p0, v6

    #@2a
    .line 567
    add-int/lit8 v1, v1, 0x2

    #@2c
    goto :goto_0

    #@2d
    .line 573
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return-object p0
.end method

.method static scale([FFF)[F
    .locals 4
    .param p0, "points"    # [F
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    #@0
    .prologue
    .line 586
    array-length v1, p0

    #@1
    .line 587
    .local v1, "size":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 588
    aget v2, p0, v0

    #@6
    mul-float/2addr v2, p1

    #@7
    aput v2, p0, v0

    #@9
    .line 589
    add-int/lit8 v2, v0, 0x1

    #@b
    aget v3, p0, v2

    #@d
    mul-float/2addr v3, p2

    #@e
    aput v3, p0, v2

    #@10
    .line 587
    add-int/lit8 v0, v0, 0x2

    #@12
    goto :goto_0

    #@13
    .line 591
    :cond_0
    return-object p0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;I)[F
    .locals 1
    .param p0, "gesture"    # Landroid/gesture/Gesture;
    .param p1, "bitmapSize"    # I

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;IZ)[F
    .locals 36
    .param p0, "gesture"    # Landroid/gesture/Gesture;
    .param p1, "bitmapSize"    # I
    .param p2, "keepAspectRatio"    # Z

    #@0
    .prologue
    .line 92
    add-int/lit8 v33, p1, -0x1

    #@2
    move/from16 v0, v33

    #@4
    int-to-float v0, v0

    #@5
    move/from16 v30, v0

    #@7
    .line 93
    .local v30, "targetPatchSize":F
    mul-int v33, p1, p1

    #@9
    move/from16 v0, v33

    #@b
    new-array v0, v0, [F

    #@d
    move-object/from16 v17, v0

    #@f
    .line 94
    .local v17, "sample":[F
    const/16 v33, 0x0

    #@11
    move-object/from16 v0, v17

    #@13
    move/from16 v1, v33

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@18
    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getBoundingBox()Landroid/graphics/RectF;

    #@1b
    move-result-object v16

    #@1c
    .line 97
    .local v16, "rect":Landroid/graphics/RectF;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    #@1f
    move-result v7

    #@20
    .line 98
    .local v7, "gestureWidth":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    #@23
    move-result v6

    #@24
    .line 99
    .local v6, "gestureHeight":F
    div-float v28, v30, v7

    #@26
    .line 100
    .local v28, "sx":F
    div-float v29, v30, v6

    #@28
    .line 102
    .local v29, "sy":F
    if-eqz p2, :cond_2

    #@2a
    .line 103
    cmpg-float v33, v28, v29

    #@2c
    if-gez v33, :cond_1

    #@2e
    move/from16 v18, v28

    #@30
    .line 104
    .local v18, "scale":F
    :goto_0
    move/from16 v28, v18

    #@32
    .line 105
    move/from16 v29, v18

    #@34
    .line 130
    :cond_0
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerX()F

    #@37
    move-result v33

    #@38
    move/from16 v0, v33

    #@3a
    neg-float v13, v0

    #@3b
    .line 131
    .local v13, "preDx":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerY()F

    #@3e
    move-result v33

    #@3f
    move/from16 v0, v33

    #@41
    neg-float v14, v0

    #@42
    .line 132
    .local v14, "preDy":F
    const/high16 v33, 0x40000000    # 2.0f

    #@44
    div-float v11, v30, v33

    #@46
    .line 133
    .local v11, "postDx":F
    const/high16 v33, 0x40000000    # 2.0f

    #@48
    div-float v12, v30, v33

    #@4a
    .line 134
    .local v12, "postDy":F
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    #@4d
    move-result-object v27

    #@4e
    .line 135
    .local v27, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@51
    move-result v5

    #@52
    .line 139
    .local v5, "count":I
    const/4 v9, 0x0

    #@53
    .local v9, "index":I
    :goto_2
    if-ge v9, v5, :cond_11

    #@55
    .line 140
    move-object/from16 v0, v27

    #@57
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5a
    move-result-object v25

    #@5b
    check-cast v25, Landroid/gesture/GestureStroke;

    #@5d
    .line 141
    .local v25, "stroke":Landroid/gesture/GestureStroke;
    move-object/from16 v0, v25

    #@5f
    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    #@61
    move-object/from16 v26, v0

    #@63
    .line 142
    .local v26, "strokepoints":[F
    move-object/from16 v0, v26

    #@65
    array-length v0, v0

    #@66
    move/from16 v23, v0

    #@68
    .line 143
    .local v23, "size":I
    move/from16 v0, v23

    #@6a
    new-array v15, v0, [F

    #@6c
    .line 144
    .local v15, "pts":[F
    const/4 v8, 0x0

    #@6d
    .local v8, "i":I
    :goto_3
    move/from16 v0, v23

    #@6f
    if-ge v8, v0, :cond_7

    #@71
    .line 145
    aget v33, v26, v8

    #@73
    add-float v33, v33, v13

    #@75
    mul-float v33, v33, v28

    #@77
    add-float v33, v33, v11

    #@79
    aput v33, v15, v8

    #@7b
    .line 146
    add-int/lit8 v33, v8, 0x1

    #@7d
    add-int/lit8 v34, v8, 0x1

    #@7f
    aget v34, v26, v34

    #@81
    add-float v34, v34, v14

    #@83
    mul-float v34, v34, v29

    #@85
    add-float v34, v34, v12

    #@87
    aput v34, v15, v33

    #@89
    .line 144
    add-int/lit8 v8, v8, 0x2

    #@8b
    goto :goto_3

    #@8c
    .line 103
    .end local v5    # "count":I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "postDx":F
    .end local v12    # "postDy":F
    .end local v13    # "preDx":F
    .end local v14    # "preDy":F
    .end local v15    # "pts":[F
    .end local v18    # "scale":F
    .end local v23    # "size":I
    .end local v25    # "stroke":Landroid/gesture/GestureStroke;
    .end local v26    # "strokepoints":[F
    .end local v27    # "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    :cond_1
    move/from16 v18, v29

    #@8e
    .restart local v18    # "scale":F
    goto :goto_0

    #@8f
    .line 108
    .end local v18    # "scale":F
    :cond_2
    div-float v4, v7, v6

    #@91
    .line 109
    .local v4, "aspectRatio":F
    const/high16 v33, 0x3f800000    # 1.0f

    #@93
    cmpl-float v33, v4, v33

    #@95
    if-lez v33, :cond_3

    #@97
    .line 110
    const/high16 v33, 0x3f800000    # 1.0f

    #@99
    div-float v4, v33, v4

    #@9b
    .line 112
    :cond_3
    const v33, 0x3e851eb8    # 0.26f

    #@9e
    cmpg-float v33, v4, v33

    #@a0
    if-gez v33, :cond_5

    #@a2
    .line 113
    cmpg-float v33, v28, v29

    #@a4
    if-gez v33, :cond_4

    #@a6
    move/from16 v18, v28

    #@a8
    .line 114
    .restart local v18    # "scale":F
    :goto_4
    move/from16 v28, v18

    #@aa
    .line 115
    move/from16 v29, v18

    #@ac
    goto :goto_1

    #@ad
    .line 113
    .end local v18    # "scale":F
    :cond_4
    move/from16 v18, v29

    #@af
    .restart local v18    # "scale":F
    goto :goto_4

    #@b0
    .line 117
    .end local v18    # "scale":F
    :cond_5
    cmpl-float v33, v28, v29

    #@b2
    if-lez v33, :cond_6

    #@b4
    .line 118
    sget v33, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    #@b6
    mul-float v18, v29, v33

    #@b8
    .line 119
    .restart local v18    # "scale":F
    cmpg-float v33, v18, v28

    #@ba
    if-gez v33, :cond_0

    #@bc
    .line 120
    move/from16 v28, v18

    #@be
    goto/16 :goto_1

    #@c0
    .line 123
    .end local v18    # "scale":F
    :cond_6
    sget v33, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    #@c2
    mul-float v18, v28, v33

    #@c4
    .line 124
    .restart local v18    # "scale":F
    cmpg-float v33, v18, v29

    #@c6
    if-gez v33, :cond_0

    #@c8
    .line 125
    move/from16 v29, v18

    #@ca
    goto/16 :goto_1

    #@cc
    .line 148
    .end local v4    # "aspectRatio":F
    .restart local v5    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v11    # "postDx":F
    .restart local v12    # "postDy":F
    .restart local v13    # "preDx":F
    .restart local v14    # "preDy":F
    .restart local v15    # "pts":[F
    .restart local v23    # "size":I
    .restart local v25    # "stroke":Landroid/gesture/GestureStroke;
    .restart local v26    # "strokepoints":[F
    .restart local v27    # "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    :cond_7
    const/high16 v19, -0x40800000    # -1.0f

    #@ce
    .line 149
    .local v19, "segmentEndX":F
    const/high16 v20, -0x40800000    # -1.0f

    #@d0
    .line 150
    .local v20, "segmentEndY":F
    const/4 v8, 0x0

    #@d1
    :goto_5
    move/from16 v0, v23

    #@d3
    if-ge v8, v0, :cond_10

    #@d5
    .line 151
    aget v33, v15, v8

    #@d7
    const/16 v34, 0x0

    #@d9
    cmpg-float v33, v33, v34

    #@db
    if-gez v33, :cond_a

    #@dd
    const/16 v21, 0x0

    #@df
    .line 152
    .local v21, "segmentStartX":F
    :goto_6
    add-int/lit8 v33, v8, 0x1

    #@e1
    aget v33, v15, v33

    #@e3
    const/16 v34, 0x0

    #@e5
    cmpg-float v33, v33, v34

    #@e7
    if-gez v33, :cond_b

    #@e9
    const/16 v22, 0x0

    #@eb
    .line 153
    .local v22, "segmentStartY":F
    :goto_7
    cmpl-float v33, v21, v30

    #@ed
    if-lez v33, :cond_8

    #@ef
    .line 154
    move/from16 v21, v30

    #@f1
    .line 156
    :cond_8
    cmpl-float v33, v22, v30

    #@f3
    if-lez v33, :cond_9

    #@f5
    .line 157
    move/from16 v22, v30

    #@f7
    .line 159
    :cond_9
    move/from16 v0, v21

    #@f9
    move/from16 v1, v22

    #@fb
    move-object/from16 v2, v17

    #@fd
    move/from16 v3, p1

    #@ff
    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    #@102
    .line 160
    const/high16 v33, -0x40800000    # -1.0f

    #@104
    cmpl-float v33, v19, v33

    #@106
    if-eqz v33, :cond_f

    #@108
    .line 162
    cmpl-float v33, v19, v21

    #@10a
    if-lez v33, :cond_c

    #@10c
    .line 163
    move/from16 v0, v21

    #@10e
    float-to-double v0, v0

    #@10f
    move-wide/from16 v34, v0

    #@111
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    #@114
    move-result-wide v34

    #@115
    move-wide/from16 v0, v34

    #@117
    double-to-float v0, v0

    #@118
    move/from16 v31, v0

    #@11a
    .line 164
    .local v31, "xpos":F
    sub-float v33, v20, v22

    #@11c
    .line 165
    sub-float v34, v19, v21

    #@11e
    .line 164
    div-float v24, v33, v34

    #@120
    .line 166
    .local v24, "slope":F
    :goto_8
    cmpg-float v33, v31, v19

    #@122
    if-gez v33, :cond_d

    #@124
    .line 167
    sub-float v33, v31, v21

    #@126
    mul-float v33, v33, v24

    #@128
    add-float v32, v33, v22

    #@12a
    .line 168
    .local v32, "ypos":F
    move/from16 v0, v31

    #@12c
    move/from16 v1, v32

    #@12e
    move-object/from16 v2, v17

    #@130
    move/from16 v3, p1

    #@132
    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    #@135
    .line 169
    const/high16 v33, 0x3f800000    # 1.0f

    #@137
    add-float v31, v31, v33

    #@139
    goto :goto_8

    #@13a
    .line 151
    .end local v21    # "segmentStartX":F
    .end local v22    # "segmentStartY":F
    .end local v24    # "slope":F
    .end local v31    # "xpos":F
    .end local v32    # "ypos":F
    :cond_a
    aget v21, v15, v8

    #@13c
    .restart local v21    # "segmentStartX":F
    goto :goto_6

    #@13d
    .line 152
    :cond_b
    add-int/lit8 v33, v8, 0x1

    #@13f
    aget v22, v15, v33

    #@141
    .restart local v22    # "segmentStartY":F
    goto :goto_7

    #@142
    .line 171
    :cond_c
    cmpg-float v33, v19, v21

    #@144
    if-gez v33, :cond_d

    #@146
    .line 172
    move/from16 v0, v19

    #@148
    float-to-double v0, v0

    #@149
    move-wide/from16 v34, v0

    #@14b
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    #@14e
    move-result-wide v34

    #@14f
    move-wide/from16 v0, v34

    #@151
    double-to-float v0, v0

    #@152
    move/from16 v31, v0

    #@154
    .line 173
    .restart local v31    # "xpos":F
    sub-float v33, v20, v22

    #@156
    .line 174
    sub-float v34, v19, v21

    #@158
    .line 173
    div-float v24, v33, v34

    #@15a
    .line 175
    .restart local v24    # "slope":F
    :goto_9
    cmpg-float v33, v31, v21

    #@15c
    if-gez v33, :cond_d

    #@15e
    .line 176
    sub-float v33, v31, v21

    #@160
    mul-float v33, v33, v24

    #@162
    add-float v32, v33, v22

    #@164
    .line 177
    .restart local v32    # "ypos":F
    move/from16 v0, v31

    #@166
    move/from16 v1, v32

    #@168
    move-object/from16 v2, v17

    #@16a
    move/from16 v3, p1

    #@16c
    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    #@16f
    .line 178
    const/high16 v33, 0x3f800000    # 1.0f

    #@171
    add-float v31, v31, v33

    #@173
    goto :goto_9

    #@174
    .line 182
    .end local v24    # "slope":F
    .end local v31    # "xpos":F
    .end local v32    # "ypos":F
    :cond_d
    cmpl-float v33, v20, v22

    #@176
    if-lez v33, :cond_e

    #@178
    .line 183
    move/from16 v0, v22

    #@17a
    float-to-double v0, v0

    #@17b
    move-wide/from16 v34, v0

    #@17d
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    #@180
    move-result-wide v34

    #@181
    move-wide/from16 v0, v34

    #@183
    double-to-float v0, v0

    #@184
    move/from16 v32, v0

    #@186
    .line 184
    .restart local v32    # "ypos":F
    sub-float v33, v19, v21

    #@188
    .line 185
    sub-float v34, v20, v22

    #@18a
    .line 184
    div-float v10, v33, v34

    #@18c
    .line 186
    .local v10, "invertSlope":F
    :goto_a
    cmpg-float v33, v32, v20

    #@18e
    if-gez v33, :cond_f

    #@190
    .line 187
    sub-float v33, v32, v22

    #@192
    mul-float v33, v33, v10

    #@194
    add-float v31, v33, v21

    #@196
    .line 188
    .restart local v31    # "xpos":F
    move/from16 v0, v31

    #@198
    move/from16 v1, v32

    #@19a
    move-object/from16 v2, v17

    #@19c
    move/from16 v3, p1

    #@19e
    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    #@1a1
    .line 189
    const/high16 v33, 0x3f800000    # 1.0f

    #@1a3
    add-float v32, v32, v33

    #@1a5
    goto :goto_a

    #@1a6
    .line 191
    .end local v10    # "invertSlope":F
    .end local v31    # "xpos":F
    .end local v32    # "ypos":F
    :cond_e
    cmpg-float v33, v20, v22

    #@1a8
    if-gez v33, :cond_f

    #@1aa
    .line 192
    move/from16 v0, v20

    #@1ac
    float-to-double v0, v0

    #@1ad
    move-wide/from16 v34, v0

    #@1af
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    #@1b2
    move-result-wide v34

    #@1b3
    move-wide/from16 v0, v34

    #@1b5
    double-to-float v0, v0

    #@1b6
    move/from16 v32, v0

    #@1b8
    .line 193
    .restart local v32    # "ypos":F
    sub-float v33, v19, v21

    #@1ba
    .line 194
    sub-float v34, v20, v22

    #@1bc
    .line 193
    div-float v10, v33, v34

    #@1be
    .line 195
    .restart local v10    # "invertSlope":F
    :goto_b
    cmpg-float v33, v32, v22

    #@1c0
    if-gez v33, :cond_f

    #@1c2
    .line 196
    sub-float v33, v32, v22

    #@1c4
    mul-float v33, v33, v10

    #@1c6
    add-float v31, v33, v21

    #@1c8
    .line 197
    .restart local v31    # "xpos":F
    move/from16 v0, v31

    #@1ca
    move/from16 v1, v32

    #@1cc
    move-object/from16 v2, v17

    #@1ce
    move/from16 v3, p1

    #@1d0
    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    #@1d3
    .line 198
    const/high16 v33, 0x3f800000    # 1.0f

    #@1d5
    add-float v32, v32, v33

    #@1d7
    goto :goto_b

    #@1d8
    .line 202
    .end local v10    # "invertSlope":F
    .end local v31    # "xpos":F
    .end local v32    # "ypos":F
    :cond_f
    move/from16 v19, v21

    #@1da
    .line 203
    move/from16 v20, v22

    #@1dc
    .line 150
    add-int/lit8 v8, v8, 0x2

    #@1de
    goto/16 :goto_5

    #@1e0
    .line 139
    .end local v21    # "segmentStartX":F
    .end local v22    # "segmentStartY":F
    :cond_10
    add-int/lit8 v9, v9, 0x1

    #@1e2
    goto/16 :goto_2

    #@1e4
    .line 206
    .end local v8    # "i":I
    .end local v15    # "pts":[F
    .end local v19    # "segmentEndX":F
    .end local v20    # "segmentEndY":F
    .end local v23    # "size":I
    .end local v25    # "stroke":Landroid/gesture/GestureStroke;
    .end local v26    # "strokepoints":[F
    :cond_11
    return-object v17
.end method

.method static squaredEuclideanDistance([F[F)F
    .locals 6
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F

    #@0
    .prologue
    .line 408
    const/4 v3, 0x0

    #@1
    .line 409
    .local v3, "squaredDistance":F
    array-length v2, p0

    #@2
    .line 410
    .local v2, "size":I
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@5
    .line 411
    aget v4, p0, v1

    #@7
    aget v5, p1, v1

    #@9
    sub-float v0, v4, v5

    #@b
    .line 412
    .local v0, "difference":F
    mul-float v4, v0, v0

    #@d
    add-float/2addr v3, v4

    #@e
    .line 410
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 414
    .end local v0    # "difference":F
    :cond_0
    int-to-float v4, v2

    #@12
    div-float v4, v3, v4

    #@14
    return v4
.end method

.method public static temporalSampling(Landroid/gesture/GestureStroke;I)[F
    .locals 24
    .param p0, "stroke"    # Landroid/gesture/GestureStroke;
    .param p1, "numPoints"    # I

    #@0
    .prologue
    .line 269
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/gesture/GestureStroke;->length:F

    #@4
    move/from16 v20, v0

    #@6
    add-int/lit8 v21, p1, -0x1

    #@8
    move/from16 v0, v21

    #@a
    int-to-float v0, v0

    #@b
    move/from16 v21, v0

    #@d
    div-float v10, v20, v21

    #@f
    .line 270
    .local v10, "increment":F
    mul-int/lit8 v19, p1, 0x2

    #@11
    .line 271
    .local v19, "vectorLength":I
    move/from16 v0, v19

    #@13
    new-array v0, v0, [F

    #@15
    move-object/from16 v18, v0

    #@17
    .line 272
    .local v18, "vector":[F
    const/4 v8, 0x0

    #@18
    .line 273
    .local v8, "distanceSoFar":F
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    #@1c
    move-object/from16 v16, v0

    #@1e
    .line 274
    .local v16, "pts":[F
    const/16 v20, 0x0

    #@20
    aget v12, v16, v20

    #@22
    .line 275
    .local v12, "lstPointX":F
    const/16 v20, 0x1

    #@24
    aget v13, v16, v20

    #@26
    .line 276
    .local v13, "lstPointY":F
    const/4 v11, 0x0

    #@27
    .line 277
    .local v11, "index":I
    const/4 v3, 0x1

    #@28
    .line 278
    .local v3, "currentPointX":F
    const/4 v4, 0x1

    #@29
    .line 279
    .local v4, "currentPointY":F
    aput v12, v18, v11

    #@2b
    .line 280
    const/4 v11, 0x1

    #@2c
    .line 281
    aput v13, v18, v11

    #@2e
    .line 282
    add-int/lit8 v11, v11, 0x1

    #@30
    .line 283
    const/4 v9, 0x0

    #@31
    .line 284
    .local v9, "i":I
    move-object/from16 v0, v16

    #@33
    array-length v0, v0

    #@34
    move/from16 v20, v0

    #@36
    div-int/lit8 v2, v20, 0x2

    #@38
    .line 285
    .local v2, "count":I
    :goto_0
    if-ge v9, v2, :cond_0

    #@3a
    .line 286
    const/16 v20, 0x1

    #@3c
    cmpl-float v20, v3, v20

    #@3e
    if-nez v20, :cond_2

    #@40
    .line 287
    add-int/lit8 v9, v9, 0x1

    #@42
    .line 288
    if-lt v9, v2, :cond_1

    #@44
    .line 317
    :cond_0
    move v9, v11

    #@45
    :goto_1
    move/from16 v0, v19

    #@47
    if-ge v9, v0, :cond_4

    #@49
    .line 318
    aput v12, v18, v9

    #@4b
    .line 319
    add-int/lit8 v20, v9, 0x1

    #@4d
    aput v13, v18, v20

    #@4f
    .line 317
    add-int/lit8 v9, v9, 0x2

    #@51
    goto :goto_1

    #@52
    .line 291
    :cond_1
    mul-int/lit8 v20, v9, 0x2

    #@54
    aget v3, v16, v20

    #@56
    .line 292
    mul-int/lit8 v20, v9, 0x2

    #@58
    add-int/lit8 v20, v20, 0x1

    #@5a
    aget v4, v16, v20

    #@5c
    .line 294
    :cond_2
    sub-float v5, v3, v12

    #@5e
    .line 295
    .local v5, "deltaX":F
    sub-float v6, v4, v13

    #@60
    .line 296
    .local v6, "deltaY":F
    float-to-double v0, v5

    #@61
    move-wide/from16 v20, v0

    #@63
    float-to-double v0, v6

    #@64
    move-wide/from16 v22, v0

    #@66
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    #@69
    move-result-wide v20

    #@6a
    move-wide/from16 v0, v20

    #@6c
    double-to-float v7, v0

    #@6d
    .line 297
    .local v7, "distance":F
    add-float v20, v8, v7

    #@6f
    cmpl-float v20, v20, v10

    #@71
    if-ltz v20, :cond_3

    #@73
    .line 298
    sub-float v20, v10, v8

    #@75
    div-float v17, v20, v7

    #@77
    .line 299
    .local v17, "ratio":F
    mul-float v20, v17, v5

    #@79
    add-float v14, v12, v20

    #@7b
    .line 300
    .local v14, "nx":F
    mul-float v20, v17, v6

    #@7d
    add-float v15, v13, v20

    #@7f
    .line 301
    .local v15, "ny":F
    aput v14, v18, v11

    #@81
    .line 302
    add-int/lit8 v11, v11, 0x1

    #@83
    .line 303
    aput v15, v18, v11

    #@85
    .line 304
    add-int/lit8 v11, v11, 0x1

    #@87
    .line 305
    move v12, v14

    #@88
    .line 306
    move v13, v15

    #@89
    .line 307
    const/4 v8, 0x0

    #@8a
    goto :goto_0

    #@8b
    .line 309
    .end local v14    # "nx":F
    .end local v15    # "ny":F
    .end local v17    # "ratio":F
    :cond_3
    move v12, v3

    #@8c
    .line 310
    move v13, v4

    #@8d
    .line 311
    const/4 v3, 0x1

    #@8e
    .line 312
    const/4 v4, 0x1

    #@8f
    .line 313
    add-float/2addr v8, v7

    #@90
    goto :goto_0

    #@91
    .line 321
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distance":F
    :cond_4
    return-object v18
.end method

.method static translate([FFF)[F
    .locals 4
    .param p0, "points"    # [F
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 577
    array-length v1, p0

    #@1
    .line 578
    .local v1, "size":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 579
    aget v2, p0, v0

    #@6
    add-float/2addr v2, p1

    #@7
    aput v2, p0, v0

    #@9
    .line 580
    add-int/lit8 v2, v0, 0x1

    #@b
    aget v3, p0, v2

    #@d
    add-float/2addr v3, p2

    #@e
    aput v3, p0, v2

    #@10
    .line 578
    add-int/lit8 v0, v0, 0x2

    #@12
    goto :goto_0

    #@13
    .line 582
    :cond_0
    return-object p0
.end method
