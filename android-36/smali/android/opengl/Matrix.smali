.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field private static final blacklist ThreadTmp:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/opengl/Matrix$1;

    invoke-direct {v0}, Landroid/opengl/Matrix$1;-><init>()V

    sput-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist frustumM([FIFFFFFF)V
    .registers 20
    .param p0, "m"    # [F
    .param p1, "offset"    # I
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    .line 500
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_9d

    .line 503
    cmpl-float v0, p5, p4

    if-eqz v0, :cond_94

    .line 506
    cmpl-float v0, p6, p7

    if-eqz v0, :cond_8b

    .line 509
    const/4 v0, 0x0

    cmpg-float v1, p6, v0

    if-lez v1, :cond_82

    .line 512
    cmpg-float v1, p7, v0

    if-lez v1, :cond_7a

    .line 515
    sub-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 516
    .local v1, "r_width":F
    sub-float v3, p5, p4

    div-float v3, v2, v3

    .line 517
    .local v3, "r_height":F
    sub-float v4, p6, p7

    div-float/2addr v2, v4

    .line 518
    .local v2, "r_depth":F
    mul-float v4, p6, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    .line 519
    .local v4, "x":F
    mul-float v6, p6, v3

    mul-float/2addr v6, v5

    .line 520
    .local v6, "y":F
    add-float v7, p3, p2

    mul-float/2addr v7, v1

    .line 521
    .local v7, "A":F
    add-float v8, p5, p4

    mul-float/2addr v8, v3

    .line 522
    .local v8, "B":F
    add-float v9, p7, p6

    mul-float/2addr v9, v2

    .line 523
    .local v9, "C":F
    mul-float v10, p7, p6

    mul-float/2addr v10, v2

    mul-float/2addr v10, v5

    .line 524
    .local v10, "D":F
    add-int/lit8 v5, p1, 0x0

    aput v4, p0, v5

    .line 525
    add-int/lit8 v5, p1, 0x5

    aput v6, p0, v5

    .line 526
    add-int/lit8 v5, p1, 0x8

    aput v7, p0, v5

    .line 527
    add-int/lit8 v5, p1, 0x9

    aput v8, p0, v5

    .line 528
    add-int/lit8 v5, p1, 0xa

    aput v9, p0, v5

    .line 529
    add-int/lit8 v5, p1, 0xe

    aput v10, p0, v5

    .line 530
    add-int/lit8 v5, p1, 0xb

    const/high16 v11, -0x40800000    # -1.0f

    aput v11, p0, v5

    .line 531
    add-int/lit8 v5, p1, 0x1

    aput v0, p0, v5

    .line 532
    add-int/lit8 v5, p1, 0x2

    aput v0, p0, v5

    .line 533
    add-int/lit8 v5, p1, 0x3

    aput v0, p0, v5

    .line 534
    add-int/lit8 v5, p1, 0x4

    aput v0, p0, v5

    .line 535
    add-int/lit8 v5, p1, 0x6

    aput v0, p0, v5

    .line 536
    add-int/lit8 v5, p1, 0x7

    aput v0, p0, v5

    .line 537
    add-int/lit8 v5, p1, 0xc

    aput v0, p0, v5

    .line 538
    add-int/lit8 v5, p1, 0xd

    aput v0, p0, v5

    .line 539
    add-int/lit8 v5, p1, 0xf

    aput v0, p0, v5

    .line 540
    return-void

    .line 513
    .end local v1    # "r_width":F
    .end local v2    # "r_depth":F
    .end local v3    # "r_height":F
    .end local v4    # "x":F
    .end local v6    # "y":F
    .end local v7    # "A":F
    .end local v8    # "B":F
    .end local v9    # "C":F
    .end local v10    # "D":F
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "far <= 0.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near <= 0.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near == far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "top == bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "left == right"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist invertM([FI[FI)Z
    .registers 64
    .param p0, "mInv"    # [F
    .param p1, "mInvOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I

    .line 314
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    .line 315
    .local v0, "src0":F
    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    .line 316
    .local v1, "src4":F
    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    .line 317
    .local v2, "src8":F
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    .line 319
    .local v3, "src12":F
    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    .line 320
    .local v4, "src1":F
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    .line 321
    .local v5, "src5":F
    add-int/lit8 v6, p3, 0x6

    aget v6, p2, v6

    .line 322
    .local v6, "src9":F
    add-int/lit8 v7, p3, 0x7

    aget v7, p2, v7

    .line 324
    .local v7, "src13":F
    add-int/lit8 v8, p3, 0x8

    aget v8, p2, v8

    .line 325
    .local v8, "src2":F
    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    .line 326
    .local v9, "src6":F
    add-int/lit8 v10, p3, 0xa

    aget v10, p2, v10

    .line 327
    .local v10, "src10":F
    add-int/lit8 v11, p3, 0xb

    aget v11, p2, v11

    .line 329
    .local v11, "src14":F
    add-int/lit8 v12, p3, 0xc

    aget v12, p2, v12

    .line 330
    .local v12, "src3":F
    add-int/lit8 v13, p3, 0xd

    aget v13, p2, v13

    .line 331
    .local v13, "src7":F
    add-int/lit8 v14, p3, 0xe

    aget v14, p2, v14

    .line 332
    .local v14, "src11":F
    add-int/lit8 v15, p3, 0xf

    aget v15, p2, v15

    .line 335
    .local v15, "src15":F
    mul-float v16, v10, v15

    .line 336
    .local v16, "atmp0":F
    mul-float v17, v14, v11

    .line 337
    .local v17, "atmp1":F
    mul-float v18, v6, v15

    .line 338
    .local v18, "atmp2":F
    mul-float v19, v14, v7

    .line 339
    .local v19, "atmp3":F
    mul-float v20, v6, v11

    .line 340
    .local v20, "atmp4":F
    mul-float v21, v10, v7

    .line 341
    .local v21, "atmp5":F
    mul-float v22, v2, v15

    .line 342
    .local v22, "atmp6":F
    mul-float v23, v14, v3

    .line 343
    .local v23, "atmp7":F
    mul-float v24, v2, v11

    .line 344
    .local v24, "atmp8":F
    mul-float v25, v10, v3

    .line 345
    .local v25, "atmp9":F
    mul-float v26, v2, v7

    .line 346
    .local v26, "atmp10":F
    mul-float v27, v6, v3

    .line 349
    .local v27, "atmp11":F
    mul-float v28, v16, v5

    mul-float v29, v19, v9

    add-float v28, v28, v29

    mul-float v29, v20, v13

    add-float v28, v28, v29

    mul-float v29, v17, v5

    mul-float v30, v18, v9

    add-float v29, v29, v30

    mul-float v30, v21, v13

    add-float v29, v29, v30

    sub-float v28, v28, v29

    .line 351
    .local v28, "dst0":F
    mul-float v29, v17, v1

    mul-float v30, v22, v9

    add-float v29, v29, v30

    mul-float v30, v25, v13

    add-float v29, v29, v30

    mul-float v30, v16, v1

    mul-float v31, v23, v9

    add-float v30, v30, v31

    mul-float v31, v24, v13

    add-float v30, v30, v31

    sub-float v29, v29, v30

    .line 353
    .local v29, "dst1":F
    mul-float v30, v18, v1

    mul-float v31, v23, v5

    add-float v30, v30, v31

    mul-float v31, v26, v13

    add-float v30, v30, v31

    mul-float v31, v19, v1

    mul-float v32, v22, v5

    add-float v31, v31, v32

    mul-float v32, v27, v13

    add-float v31, v31, v32

    sub-float v30, v30, v31

    .line 355
    .local v30, "dst2":F
    mul-float v31, v21, v1

    mul-float v32, v24, v5

    add-float v31, v31, v32

    mul-float v32, v27, v9

    add-float v31, v31, v32

    mul-float v32, v20, v1

    mul-float v33, v25, v5

    add-float v32, v32, v33

    mul-float v33, v26, v9

    add-float v32, v32, v33

    sub-float v31, v31, v32

    .line 357
    .local v31, "dst3":F
    mul-float v32, v17, v4

    mul-float v33, v18, v8

    add-float v32, v32, v33

    mul-float v33, v21, v12

    add-float v32, v32, v33

    mul-float v33, v16, v4

    mul-float v34, v19, v8

    add-float v33, v33, v34

    mul-float v34, v20, v12

    add-float v33, v33, v34

    sub-float v32, v32, v33

    .line 359
    .local v32, "dst4":F
    mul-float v33, v16, v0

    mul-float v34, v23, v8

    add-float v33, v33, v34

    mul-float v34, v24, v12

    add-float v33, v33, v34

    mul-float v34, v17, v0

    mul-float v35, v22, v8

    add-float v34, v34, v35

    mul-float v35, v25, v12

    add-float v34, v34, v35

    sub-float v33, v33, v34

    .line 361
    .local v33, "dst5":F
    mul-float v34, v19, v0

    mul-float v35, v22, v4

    add-float v34, v34, v35

    mul-float v35, v27, v12

    add-float v34, v34, v35

    mul-float v35, v18, v0

    mul-float v36, v23, v4

    add-float v35, v35, v36

    mul-float v36, v26, v12

    add-float v35, v35, v36

    sub-float v34, v34, v35

    .line 363
    .local v34, "dst6":F
    mul-float v35, v20, v0

    mul-float v36, v25, v4

    add-float v35, v35, v36

    mul-float v36, v26, v8

    add-float v35, v35, v36

    mul-float v36, v21, v0

    mul-float v37, v24, v4

    add-float v36, v36, v37

    mul-float v37, v27, v8

    add-float v36, v36, v37

    sub-float v35, v35, v36

    .line 367
    .local v35, "dst7":F
    mul-float v36, v8, v13

    .line 368
    .local v36, "btmp0":F
    mul-float v37, v12, v9

    .line 369
    .local v37, "btmp1":F
    mul-float v38, v4, v13

    .line 370
    .local v38, "btmp2":F
    mul-float v39, v12, v5

    .line 371
    .local v39, "btmp3":F
    mul-float v40, v4, v9

    .line 372
    .local v40, "btmp4":F
    mul-float v41, v8, v5

    .line 373
    .local v41, "btmp5":F
    mul-float v42, v0, v13

    .line 374
    .local v42, "btmp6":F
    mul-float v43, v12, v1

    .line 375
    .local v43, "btmp7":F
    mul-float v44, v0, v9

    .line 376
    .local v44, "btmp8":F
    mul-float v45, v8, v1

    .line 377
    .local v45, "btmp9":F
    mul-float v46, v0, v5

    .line 378
    .local v46, "btmp10":F
    mul-float v47, v4, v1

    .line 381
    .local v47, "btmp11":F
    mul-float v48, v36, v7

    mul-float v49, v39, v11

    add-float v48, v48, v49

    mul-float v49, v40, v15

    add-float v48, v48, v49

    mul-float v49, v37, v7

    mul-float v50, v38, v11

    add-float v49, v49, v50

    mul-float v50, v41, v15

    add-float v49, v49, v50

    sub-float v48, v48, v49

    .line 383
    .local v48, "dst8":F
    mul-float v49, v37, v3

    mul-float v50, v42, v11

    add-float v49, v49, v50

    mul-float v50, v45, v15

    add-float v49, v49, v50

    mul-float v50, v36, v3

    mul-float v51, v43, v11

    add-float v50, v50, v51

    mul-float v51, v44, v15

    add-float v50, v50, v51

    sub-float v49, v49, v50

    .line 385
    .local v49, "dst9":F
    mul-float v50, v38, v3

    mul-float v51, v43, v7

    add-float v50, v50, v51

    mul-float v51, v46, v15

    add-float v50, v50, v51

    mul-float v51, v39, v3

    mul-float v52, v42, v7

    add-float v51, v51, v52

    mul-float v52, v47, v15

    add-float v51, v51, v52

    sub-float v50, v50, v51

    .line 387
    .local v50, "dst10":F
    mul-float v51, v41, v3

    mul-float v52, v44, v7

    add-float v51, v51, v52

    mul-float v52, v47, v11

    add-float v51, v51, v52

    mul-float v52, v40, v3

    mul-float v53, v45, v7

    add-float v52, v52, v53

    mul-float v53, v46, v11

    add-float v52, v52, v53

    sub-float v51, v51, v52

    .line 389
    .local v51, "dst11":F
    mul-float v52, v38, v10

    mul-float v53, v41, v14

    add-float v52, v52, v53

    mul-float v53, v37, v6

    add-float v52, v52, v53

    mul-float v53, v40, v14

    mul-float v54, v36, v6

    add-float v53, v53, v54

    mul-float v54, v39, v10

    add-float v53, v53, v54

    sub-float v52, v52, v53

    .line 391
    .local v52, "dst12":F
    mul-float v53, v44, v14

    mul-float v54, v36, v2

    add-float v53, v53, v54

    mul-float v54, v43, v10

    add-float v53, v53, v54

    mul-float v54, v42, v10

    mul-float v55, v45, v14

    add-float v54, v54, v55

    mul-float v55, v37, v2

    add-float v54, v54, v55

    sub-float v53, v53, v54

    .line 393
    .local v53, "dst13":F
    mul-float v54, v42, v6

    mul-float v55, v47, v14

    add-float v54, v54, v55

    mul-float v55, v39, v2

    add-float v54, v54, v55

    mul-float v55, v46, v14

    mul-float v56, v38, v2

    add-float v55, v55, v56

    mul-float v56, v43, v6

    add-float v55, v55, v56

    sub-float v54, v54, v55

    .line 395
    .local v54, "dst14":F
    mul-float v55, v46, v10

    mul-float v56, v40, v2

    add-float v55, v55, v56

    mul-float v56, v45, v6

    add-float v55, v55, v56

    mul-float v56, v44, v6

    mul-float v57, v47, v10

    add-float v56, v56, v57

    mul-float v57, v41, v2

    add-float v56, v56, v57

    sub-float v55, v55, v56

    .line 399
    .local v55, "dst15":F
    mul-float v56, v0, v28

    mul-float v57, v4, v29

    add-float v56, v56, v57

    mul-float v57, v8, v30

    add-float v56, v56, v57

    mul-float v57, v12, v31

    add-float v56, v56, v57

    .line 402
    .local v56, "det":F
    const/16 v57, 0x0

    cmpl-float v57, v56, v57

    if-nez v57, :cond_1e7

    .line 403
    const/16 v57, 0x0

    return v57

    .line 407
    :cond_1e7
    const/high16 v57, 0x3f800000    # 1.0f

    div-float v57, v57, v56

    .line 408
    .local v57, "invdet":F
    mul-float v58, v28, v57

    aput v58, p0, p1

    .line 409
    add-int/lit8 v58, p1, 0x1

    mul-float v59, v29, v57

    aput v59, p0, v58

    .line 410
    add-int/lit8 v58, p1, 0x2

    mul-float v59, v30, v57

    aput v59, p0, v58

    .line 411
    add-int/lit8 v58, p1, 0x3

    mul-float v59, v31, v57

    aput v59, p0, v58

    .line 413
    add-int/lit8 v58, p1, 0x4

    mul-float v59, v32, v57

    aput v59, p0, v58

    .line 414
    add-int/lit8 v58, p1, 0x5

    mul-float v59, v33, v57

    aput v59, p0, v58

    .line 415
    add-int/lit8 v58, p1, 0x6

    mul-float v59, v34, v57

    aput v59, p0, v58

    .line 416
    add-int/lit8 v58, p1, 0x7

    mul-float v59, v35, v57

    aput v59, p0, v58

    .line 418
    add-int/lit8 v58, p1, 0x8

    mul-float v59, v48, v57

    aput v59, p0, v58

    .line 419
    add-int/lit8 v58, p1, 0x9

    mul-float v59, v49, v57

    aput v59, p0, v58

    .line 420
    add-int/lit8 v58, p1, 0xa

    mul-float v59, v50, v57

    aput v59, p0, v58

    .line 421
    add-int/lit8 v58, p1, 0xb

    mul-float v59, v51, v57

    aput v59, p0, v58

    .line 423
    add-int/lit8 v58, p1, 0xc

    mul-float v59, v52, v57

    aput v59, p0, v58

    .line 424
    add-int/lit8 v58, p1, 0xd

    mul-float v59, v53, v57

    aput v59, p0, v58

    .line 425
    add-int/lit8 v58, p1, 0xe

    mul-float v59, v54, v57

    aput v59, p0, v58

    .line 426
    add-int/lit8 v58, p1, 0xf

    mul-float v59, v55, v57

    aput v59, p0, v58

    .line 428
    const/16 v58, 0x1

    return v58
.end method

.method public static whitelist length(FFF)F
    .registers 5
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .line 589
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static whitelist multiplyMM([FI[FI[FI)V
    .registers 17
    .param p0, "result"    # [F
    .param p1, "resultOffset"    # I
    .param p2, "lhs"    # [F
    .param p3, "lhsOffset"    # I
    .param p4, "rhs"    # [F
    .param p5, "rhsOffset"    # I

    .line 118
    if-eqz p0, :cond_174

    .line 121
    if-eqz p2, :cond_16b

    .line 124
    if-eqz p4, :cond_162

    .line 127
    if-ltz p1, :cond_159

    .line 130
    if-ltz p3, :cond_150

    .line 133
    if-ltz p5, :cond_147

    .line 136
    array-length v0, p0

    add-int/lit8 v1, p1, 0x10

    if-lt v0, v1, :cond_13e

    .line 139
    array-length v0, p2

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_135

    .line 142
    array-length v0, p4

    add-int/lit8 v1, p5, 0x10

    if-lt v0, v1, :cond_12c

    .line 147
    const/16 v4, 0x10

    const/16 v7, 0x10

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->overlap([FII[FII)Z

    move-result v0

    const/4 v7, 0x4

    if-nez v0, :cond_a9

    .line 148
    const/16 v3, 0x10

    const/16 v6, 0x10

    move-object v1, p0

    move v2, p1

    move-object v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->overlap([FII[FII)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_a9

    .line 175
    :cond_3a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    if-ge v0, v7, :cond_12b

    .line 176
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    add-int v1, v1, p5

    aget v1, p4, v1

    .line 177
    .local v1, "rhs_i0":F
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    mul-float/2addr v2, v1

    .line 178
    .local v2, "ri0":F
    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    mul-float/2addr v3, v1

    .line 179
    .local v3, "ri1":F
    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    mul-float/2addr v4, v1

    .line 180
    .local v4, "ri2":F
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    mul-float/2addr v5, v1

    .line 181
    .local v5, "ri3":F
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_5a
    if-ge v6, v7, :cond_8a

    .line 182
    mul-int/lit8 v8, v0, 0x4

    add-int/2addr v8, v6

    add-int v8, v8, p5

    aget v8, p4, v8

    .line 183
    .local v8, "rhs_ij":F
    mul-int/lit8 v9, v6, 0x4

    add-int/lit8 v9, v9, 0x0

    add-int/2addr v9, p3

    aget v9, p2, v9

    mul-float/2addr v9, v8

    add-float/2addr v2, v9

    .line 184
    mul-int/lit8 v9, v6, 0x4

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v9, p3

    aget v9, p2, v9

    mul-float/2addr v9, v8

    add-float/2addr v3, v9

    .line 185
    mul-int/lit8 v9, v6, 0x4

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v9, p3

    aget v9, p2, v9

    mul-float/2addr v9, v8

    add-float/2addr v4, v9

    .line 186
    mul-int/lit8 v9, v6, 0x4

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v9, p3

    aget v9, p2, v9

    mul-float/2addr v9, v8

    add-float/2addr v5, v9

    .line 181
    .end local v8    # "rhs_ij":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    .line 188
    .end local v6    # "j":I
    :cond_8a
    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x0

    add-int/2addr v6, p1

    aput v2, p0, v6

    .line 189
    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, p1

    aput v3, p0, v6

    .line 190
    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p1

    aput v4, p0, v6

    .line 191
    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v6, p1

    aput v5, p0, v6

    .line 175
    .end local v1    # "rhs_i0":F
    .end local v2    # "ri0":F
    .end local v3    # "ri1":F
    .end local v4    # "ri2":F
    .end local v5    # "ri3":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 149
    .end local v0    # "i":I
    :cond_a9
    :goto_a9
    sget-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 150
    .local v0, "tmp":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b2
    if-ge v1, v7, :cond_11c

    .line 151
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x0

    add-int v2, v2, p5

    aget v2, p4, v2

    .line 152
    .local v2, "rhs_i0":F
    add-int/lit8 v3, p3, 0x0

    aget v3, p2, v3

    mul-float/2addr v3, v2

    .line 153
    .local v3, "ri0":F
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    mul-float/2addr v4, v2

    .line 154
    .local v4, "ri1":F
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    mul-float/2addr v5, v2

    .line 155
    .local v5, "ri2":F
    add-int/lit8 v6, p3, 0x3

    aget v6, p2, v6

    mul-float/2addr v6, v2

    .line 156
    .local v6, "ri3":F
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_d1
    if-ge v8, v7, :cond_101

    .line 157
    mul-int/lit8 v9, v1, 0x4

    add-int/2addr v9, v8

    add-int v9, v9, p5

    aget v9, p4, v9

    .line 158
    .local v9, "rhs_ij":F
    mul-int/lit8 v10, v8, 0x4

    add-int/lit8 v10, v10, 0x0

    add-int/2addr v10, p3

    aget v10, p2, v10

    mul-float/2addr v10, v9

    add-float/2addr v3, v10

    .line 159
    mul-int/lit8 v10, v8, 0x4

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, p3

    aget v10, p2, v10

    mul-float/2addr v10, v9

    add-float/2addr v4, v10

    .line 160
    mul-int/lit8 v10, v8, 0x4

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v10, p3

    aget v10, p2, v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 161
    mul-int/lit8 v10, v8, 0x4

    add-int/lit8 v10, v10, 0x3

    add-int/2addr v10, p3

    aget v10, p2, v10

    mul-float/2addr v10, v9

    add-float/2addr v6, v10

    .line 156
    .end local v9    # "rhs_ij":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_d1

    .line 163
    .end local v8    # "j":I
    :cond_101
    mul-int/lit8 v8, v1, 0x4

    add-int/lit8 v8, v8, 0x0

    aput v3, v0, v8

    .line 164
    mul-int/lit8 v8, v1, 0x4

    add-int/lit8 v8, v8, 0x1

    aput v4, v0, v8

    .line 165
    mul-int/lit8 v8, v1, 0x4

    add-int/lit8 v8, v8, 0x2

    aput v5, v0, v8

    .line 166
    mul-int/lit8 v8, v1, 0x4

    add-int/lit8 v8, v8, 0x3

    aput v6, v0, v8

    .line 150
    .end local v2    # "rhs_i0":F
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    .end local v5    # "ri2":F
    .end local v6    # "ri3":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 170
    .end local v1    # "i":I
    :cond_11c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11d
    const/16 v2, 0x10

    if-ge v1, v2, :cond_12a

    .line 171
    add-int v2, v1, p1

    aget v3, v0, v1

    aput v3, p0, v2

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_11d

    .line 174
    .end local v0    # "tmp":[F
    .end local v1    # "i":I
    :cond_12a
    nop

    .line 194
    :cond_12b
    return-void

    .line 143
    :cond_12c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhs.length < rhsOffset + 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhs.length < lhsOffset + 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_13e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "result.length < resultOffset + 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhsOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhsOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_16b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist multiplyMV([FI[FI[FI)V
    .registers 12
    .param p0, "resultVec"    # [F
    .param p1, "resultVecOffset"    # I
    .param p2, "lhsMat"    # [F
    .param p3, "lhsMatOffset"    # I
    .param p4, "rhsVec"    # [F
    .param p5, "rhsVecOffset"    # I

    .line 224
    if-eqz p0, :cond_110

    .line 227
    if-eqz p2, :cond_107

    .line 230
    if-eqz p4, :cond_fe

    .line 233
    if-ltz p1, :cond_f5

    .line 236
    if-ltz p3, :cond_ec

    .line 239
    if-ltz p5, :cond_e3

    .line 242
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_da

    .line 245
    array-length v0, p2

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_d1

    .line 248
    array-length v0, p4

    add-int/lit8 v1, p5, 0x4

    if-lt v0, v1, :cond_c8

    .line 252
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    add-int/lit8 v1, p5, 0x0

    aget v1, p4, v1

    mul-float/2addr v0, v1

    add-int/lit8 v1, p3, 0x4

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x1

    aget v2, p4, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int/lit8 v1, p3, 0x8

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x2

    aget v2, p4, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int/lit8 v1, p3, 0xc

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x3

    aget v2, p4, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 256
    .local v0, "tmp0":F
    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x0

    aget v2, p4, v2

    mul-float/2addr v1, v2

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x1

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v2, p3, 0x9

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x2

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v2, p3, 0xd

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x3

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 260
    .local v1, "tmp1":F
    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x0

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x1

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0xa

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x2

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0xe

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x3

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 264
    .local v2, "tmp2":F
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x0

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, p3, 0x7

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v4, p3, 0xb

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v4, p3, 0xf

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 269
    .local v3, "tmp3":F
    add-int/lit8 v4, p1, 0x0

    aput v0, p0, v4

    .line 270
    add-int/lit8 v4, p1, 0x1

    aput v1, p0, v4

    .line 271
    add-int/lit8 v4, p1, 0x2

    aput v2, p0, v4

    .line 272
    add-int/lit8 v4, p1, 0x3

    aput v3, p0, v4

    .line 273
    return-void

    .line 249
    .end local v0    # "tmp0":F
    .end local v1    # "tmp1":F
    .end local v2    # "tmp2":F
    .end local v3    # "tmp3":F
    :cond_c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhsVec.length < rhsVecOffset + 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhsMat.length < lhsMatOffset + 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_da
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultVec.length < resultVecOffset + 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_e3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhsVecOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_ec
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhsMatOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultVecOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_fe
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhsVec == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhsMat == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultVec == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist orthoM([FIFFFFFF)V
    .registers 19
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    .line 446
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_81

    .line 449
    cmpl-float v0, p4, p5

    if-eqz v0, :cond_79

    .line 452
    cmpl-float v0, p6, p7

    if-eqz v0, :cond_70

    .line 456
    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 457
    .local v0, "r_width":F
    sub-float v2, p5, p4

    div-float v2, v1, v2

    .line 458
    .local v2, "r_height":F
    sub-float v3, p7, p6

    div-float v3, v1, v3

    .line 459
    .local v3, "r_depth":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    .line 460
    .local v5, "x":F
    mul-float/2addr v4, v2

    .line 461
    .local v4, "y":F
    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v3

    .line 462
    .local v6, "z":F
    add-float v7, p3, p2

    neg-float v7, v7

    mul-float/2addr v7, v0

    .line 463
    .local v7, "tx":F
    add-float v8, p5, p4

    neg-float v8, v8

    mul-float/2addr v8, v2

    .line 464
    .local v8, "ty":F
    add-float v9, p7, p6

    neg-float v9, v9

    mul-float/2addr v9, v3

    .line 465
    .local v9, "tz":F
    add-int/lit8 v10, p1, 0x0

    aput v5, p0, v10

    .line 466
    add-int/lit8 v10, p1, 0x5

    aput v4, p0, v10

    .line 467
    add-int/lit8 v10, p1, 0xa

    aput v6, p0, v10

    .line 468
    add-int/lit8 v10, p1, 0xc

    aput v7, p0, v10

    .line 469
    add-int/lit8 v10, p1, 0xd

    aput v8, p0, v10

    .line 470
    add-int/lit8 v10, p1, 0xe

    aput v9, p0, v10

    .line 471
    add-int/lit8 v10, p1, 0xf

    aput v1, p0, v10

    .line 472
    add-int/lit8 v1, p1, 0x1

    const/4 v10, 0x0

    aput v10, p0, v1

    .line 473
    add-int/lit8 v1, p1, 0x2

    aput v10, p0, v1

    .line 474
    add-int/lit8 v1, p1, 0x3

    aput v10, p0, v1

    .line 475
    add-int/lit8 v1, p1, 0x4

    aput v10, p0, v1

    .line 476
    add-int/lit8 v1, p1, 0x6

    aput v10, p0, v1

    .line 477
    add-int/lit8 v1, p1, 0x7

    aput v10, p0, v1

    .line 478
    add-int/lit8 v1, p1, 0x8

    aput v10, p0, v1

    .line 479
    add-int/lit8 v1, p1, 0x9

    aput v10, p0, v1

    .line 480
    add-int/lit8 v1, p1, 0xb

    aput v10, p0, v1

    .line 481
    return-void

    .line 453
    .end local v0    # "r_width":F
    .end local v2    # "r_height":F
    .end local v3    # "r_depth":F
    .end local v4    # "y":F
    .end local v5    # "x":F
    .end local v6    # "z":F
    .end local v7    # "tx":F
    .end local v8    # "ty":F
    .end local v9    # "tz":F
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near == far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom == top"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "left == right"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist overlap([FII[FII)Z
    .registers 10
    .param p0, "a"    # [F
    .param p1, "aStart"    # I
    .param p2, "aLength"    # I
    .param p3, "b"    # [F
    .param p4, "bStart"    # I
    .param p5, "bLength"    # I

    .line 57
    const/4 v0, 0x0

    if-eq p0, p3, :cond_4

    .line 58
    return v0

    .line 61
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p4, :cond_8

    .line 62
    return v1

    .line 65
    :cond_8
    add-int v2, p1, p2

    .line 66
    .local v2, "aEnd":I
    add-int v3, p4, p5

    .line 68
    .local v3, "bEnd":I
    if-ne v2, v3, :cond_f

    .line 69
    return v1

    .line 72
    :cond_f
    if-ge p1, p4, :cond_14

    if-ge p4, v2, :cond_14

    .line 73
    return v1

    .line 75
    :cond_14
    if-ge p1, v3, :cond_19

    if-ge v3, v2, :cond_19

    .line 76
    return v1

    .line 79
    :cond_19
    if-ge p4, p1, :cond_1e

    if-ge p1, v3, :cond_1e

    .line 80
    return v1

    .line 82
    :cond_1e
    if-ge p4, v2, :cond_23

    if-ge v2, v3, :cond_23

    .line 83
    return v1

    .line 86
    :cond_23
    return v0
.end method

.method public static whitelist perspectiveM([FIFFFF)V
    .registers 11
    .param p0, "m"    # [F
    .param p1, "offset"    # I
    .param p2, "fovy"    # F
    .param p3, "aspect"    # F
    .param p4, "zNear"    # F
    .param p5, "zFar"    # F

    .line 556
    float-to-double v0, p2

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 557
    .local v0, "f":F
    sub-float v2, p4, p5

    div-float/2addr v1, v2

    .line 559
    .local v1, "rangeReciprocal":F
    add-int/lit8 v2, p1, 0x0

    div-float v3, v0, p3

    aput v3, p0, v2

    .line 560
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    aput v3, p0, v2

    .line 561
    add-int/lit8 v2, p1, 0x2

    aput v3, p0, v2

    .line 562
    add-int/lit8 v2, p1, 0x3

    aput v3, p0, v2

    .line 564
    add-int/lit8 v2, p1, 0x4

    aput v3, p0, v2

    .line 565
    add-int/lit8 v2, p1, 0x5

    aput v0, p0, v2

    .line 566
    add-int/lit8 v2, p1, 0x6

    aput v3, p0, v2

    .line 567
    add-int/lit8 v2, p1, 0x7

    aput v3, p0, v2

    .line 569
    add-int/lit8 v2, p1, 0x8

    aput v3, p0, v2

    .line 570
    add-int/lit8 v2, p1, 0x9

    aput v3, p0, v2

    .line 571
    add-int/lit8 v2, p1, 0xa

    add-float v4, p5, p4

    mul-float/2addr v4, v1

    aput v4, p0, v2

    .line 572
    add-int/lit8 v2, p1, 0xb

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, p0, v2

    .line 574
    add-int/lit8 v2, p1, 0xc

    aput v3, p0, v2

    .line 575
    add-int/lit8 v2, p1, 0xd

    aput v3, p0, v2

    .line 576
    add-int/lit8 v2, p1, 0xe

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p5

    mul-float/2addr v4, p4

    mul-float/2addr v4, v1

    aput v4, p0, v2

    .line 577
    add-int/lit8 v2, p1, 0xf

    aput v3, p0, v2

    .line 578
    return-void
.end method

.method public static whitelist rotateM([FIFFFF)V
    .registers 14
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "a"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .line 732
    move-object v2, p0

    move v3, p1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p0    # "m":[F
    .end local p1    # "mOffset":I
    .end local p2    # "a":F
    .end local p3    # "x":F
    .end local p4    # "y":F
    .end local p5    # "z":F
    .local v0, "m":[F
    .local v1, "mOffset":I
    .local v4, "a":F
    .local v5, "x":F
    .local v6, "y":F
    .local v7, "z":F
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->rotateM([FI[FIFFFF)V

    .line 733
    return-void
.end method

.method public static whitelist rotateM([FI[FIFFFF)V
    .registers 15
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "a"    # F
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "z"    # F

    .line 714
    sget-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [F

    .line 715
    .local v1, "tmp":[F
    const/16 v2, 0x10

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .end local p4    # "a":F
    .end local p5    # "x":F
    .end local p6    # "y":F
    .end local p7    # "z":F
    .local v3, "a":F
    .local v4, "x":F
    .local v5, "y":F
    .local v6, "z":F
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 716
    move-object p4, v1

    .end local v1    # "tmp":[F
    .local p4, "tmp":[F
    const/16 p5, 0x10

    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 717
    return-void
.end method

.method public static whitelist scaleM([FIFFF)V
    .registers 9
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1c

    .line 645
    add-int v1, p1, v0

    .line 646
    .local v1, "mi":I
    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, p0, v1

    .line 647
    add-int/lit8 v2, v1, 0x4

    aget v3, p0, v2

    mul-float/2addr v3, p3

    aput v3, p0, v2

    .line 648
    add-int/lit8 v2, v1, 0x8

    aget v3, p0, v2

    mul-float/2addr v3, p4

    aput v3, p0, v2

    .line 644
    .end local v1    # "mi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public static whitelist scaleM([FI[FIFFF)V
    .registers 12
    .param p0, "sm"    # [F
    .param p1, "smOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2a

    .line 624
    add-int v1, p1, v0

    .line 625
    .local v1, "smi":I
    add-int v2, p3, v0

    .line 626
    .local v2, "mi":I
    aget v3, p2, v2

    mul-float/2addr v3, p4

    aput v3, p0, v1

    .line 627
    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v2, 0x4

    aget v4, p2, v4

    mul-float/2addr v4, p5

    aput v4, p0, v3

    .line 628
    add-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v2, 0x8

    aget v4, p2, v4

    mul-float/2addr v4, p6

    aput v4, p0, v3

    .line 629
    add-int/lit8 v3, v1, 0xc

    add-int/lit8 v4, v2, 0xc

    aget v4, p2, v4

    aput v4, p0, v3

    .line 623
    .end local v1    # "smi":I
    .end local v2    # "mi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 631
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method public static whitelist setIdentityM([FI)V
    .registers 6
    .param p0, "sm"    # [F
    .param p1, "smOffset"    # I

    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_d

    .line 600
    add-int v1, p1, v0

    const/4 v2, 0x0

    aput v2, p0, v1

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 602
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_e
    if-ge v0, v1, :cond_19

    .line 603
    add-int v2, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p0, v2

    .line 602
    add-int/lit8 v0, v0, 0x5

    goto :goto_e

    .line 605
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static whitelist setLookAtM([FIFFFFFFFFF)V
    .registers 31
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "eyeX"    # F
    .param p3, "eyeY"    # F
    .param p4, "eyeZ"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F
    .param p7, "centerZ"    # F
    .param p8, "upX"    # F
    .param p9, "upY"    # F
    .param p10, "upZ"    # F

    .line 937
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sub-float v5, p5, v2

    .line 938
    .local v5, "fx":F
    sub-float v6, p6, v3

    .line 939
    .local v6, "fy":F
    sub-float v7, p7, v4

    .line 942
    .local v7, "fz":F
    invoke-static {v5, v6, v7}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v8, v9, v8

    .line 943
    .local v8, "rlf":F
    mul-float/2addr v5, v8

    .line 944
    mul-float/2addr v6, v8

    .line 945
    mul-float/2addr v7, v8

    .line 948
    mul-float v10, v6, p10

    mul-float v11, v7, p9

    sub-float/2addr v10, v11

    .line 949
    .local v10, "sx":F
    mul-float v11, v7, p8

    mul-float v12, v5, p10

    sub-float/2addr v11, v12

    .line 950
    .local v11, "sy":F
    mul-float v12, v5, p9

    mul-float v13, v6, p8

    sub-float/2addr v12, v13

    .line 953
    .local v12, "sz":F
    invoke-static {v10, v11, v12}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v13

    div-float v13, v9, v13

    .line 954
    .local v13, "rls":F
    mul-float/2addr v10, v13

    .line 955
    mul-float/2addr v11, v13

    .line 956
    mul-float/2addr v12, v13

    .line 959
    mul-float v14, v11, v7

    mul-float v15, v12, v6

    sub-float/2addr v14, v15

    .line 960
    .local v14, "ux":F
    mul-float v15, v12, v5

    mul-float v16, v10, v7

    sub-float v15, v15, v16

    .line 961
    .local v15, "uy":F
    mul-float v16, v10, v6

    mul-float v17, v11, v5

    sub-float v16, v16, v17

    .line 963
    .local v16, "uz":F
    add-int/lit8 v17, v1, 0x0

    aput v10, v0, v17

    .line 964
    add-int/lit8 v17, v1, 0x1

    aput v14, v0, v17

    .line 965
    add-int/lit8 v17, v1, 0x2

    move/from16 v18, v9

    neg-float v9, v5

    aput v9, v0, v17

    .line 966
    add-int/lit8 v9, v1, 0x3

    const/16 v17, 0x0

    aput v17, v0, v9

    .line 968
    add-int/lit8 v9, v1, 0x4

    aput v11, v0, v9

    .line 969
    add-int/lit8 v9, v1, 0x5

    aput v15, v0, v9

    .line 970
    add-int/lit8 v9, v1, 0x6

    move/from16 v19, v5

    .end local v5    # "fx":F
    .local v19, "fx":F
    neg-float v5, v6

    aput v5, v0, v9

    .line 971
    add-int/lit8 v5, v1, 0x7

    aput v17, v0, v5

    .line 973
    add-int/lit8 v5, v1, 0x8

    aput v12, v0, v5

    .line 974
    add-int/lit8 v5, v1, 0x9

    aput v16, v0, v5

    .line 975
    add-int/lit8 v5, v1, 0xa

    neg-float v9, v7

    aput v9, v0, v5

    .line 976
    add-int/lit8 v5, v1, 0xb

    aput v17, v0, v5

    .line 978
    add-int/lit8 v5, v1, 0xc

    aput v17, v0, v5

    .line 979
    add-int/lit8 v5, v1, 0xd

    aput v17, v0, v5

    .line 980
    add-int/lit8 v5, v1, 0xe

    aput v17, v0, v5

    .line 981
    add-int/lit8 v5, v1, 0xf

    aput v18, v0, v5

    .line 983
    neg-float v5, v2

    neg-float v9, v3

    neg-float v2, v4

    invoke-static {v0, v1, v5, v9, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 984
    return-void
.end method

.method public static whitelist setRotateEulerM([FIFFF)V
    .registers 20
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 822
    const v0, 0x3c8efa35

    mul-float v1, p2, v0

    .line 823
    .end local p2    # "x":F
    .local v1, "x":F
    mul-float v2, p3, v0

    .line 824
    .end local p3    # "y":F
    .local v2, "y":F
    mul-float v0, v0, p4

    .line 825
    .end local p4    # "z":F
    .local v0, "z":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 826
    .local v3, "cx":F
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 827
    .local v4, "sx":F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 828
    .local v5, "cy":F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 829
    .local v6, "sy":F
    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 830
    .local v7, "cz":F
    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 831
    .local v8, "sz":F
    mul-float v9, v3, v6

    .line 832
    .local v9, "cxsy":F
    mul-float v10, v4, v6

    .line 834
    .local v10, "sxsy":F
    add-int/lit8 v11, p1, 0x0

    mul-float v12, v5, v7

    aput v12, p0, v11

    .line 835
    add-int/lit8 v11, p1, 0x1

    neg-float v12, v5

    mul-float/2addr v12, v8

    aput v12, p0, v11

    .line 836
    add-int/lit8 v11, p1, 0x2

    aput v6, p0, v11

    .line 837
    add-int/lit8 v11, p1, 0x3

    const/4 v12, 0x0

    aput v12, p0, v11

    .line 839
    add-int/lit8 v11, p1, 0x4

    mul-float v13, v9, v7

    mul-float v14, v3, v8

    add-float/2addr v13, v14

    aput v13, p0, v11

    .line 840
    add-int/lit8 v11, p1, 0x5

    neg-float v13, v9

    mul-float/2addr v13, v8

    mul-float v14, v3, v7

    add-float/2addr v13, v14

    aput v13, p0, v11

    .line 841
    add-int/lit8 v11, p1, 0x6

    neg-float v13, v4

    mul-float/2addr v13, v5

    aput v13, p0, v11

    .line 842
    add-int/lit8 v11, p1, 0x7

    aput v12, p0, v11

    .line 844
    add-int/lit8 v11, p1, 0x8

    neg-float v13, v10

    mul-float/2addr v13, v7

    mul-float v14, v4, v8

    add-float/2addr v13, v14

    aput v13, p0, v11

    .line 845
    add-int/lit8 v11, p1, 0x9

    mul-float v13, v10, v8

    mul-float v14, v4, v7

    add-float/2addr v13, v14

    aput v13, p0, v11

    .line 846
    add-int/lit8 v11, p1, 0xa

    mul-float v13, v3, v5

    aput v13, p0, v11

    .line 847
    add-int/lit8 v11, p1, 0xb

    aput v12, p0, v11

    .line 849
    add-int/lit8 v11, p1, 0xc

    aput v12, p0, v11

    .line 850
    add-int/lit8 v11, p1, 0xd

    aput v12, p0, v11

    .line 851
    add-int/lit8 v11, p1, 0xe

    aput v12, p0, v11

    .line 852
    add-int/lit8 v11, p1, 0xf

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, p0, v11

    .line 853
    return-void
.end method

.method public static whitelist setRotateEulerM2([FIFFF)V
    .registers 21
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 870
    move-object/from16 v0, p0

    if-eqz v0, :cond_ae

    .line 873
    if-ltz p1, :cond_a5

    .line 876
    array-length v1, v0

    add-int/lit8 v2, p1, 0x10

    if-lt v1, v2, :cond_9c

    .line 880
    const v1, 0x3c8efa35

    mul-float v2, p2, v1

    .line 881
    .end local p2    # "x":F
    .local v2, "x":F
    mul-float v3, p3, v1

    .line 882
    .end local p3    # "y":F
    .local v3, "y":F
    mul-float v1, v1, p4

    .line 883
    .end local p4    # "z":F
    .local v1, "z":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 884
    .local v4, "cx":F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 885
    .local v5, "sx":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 886
    .local v6, "cy":F
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 887
    .local v7, "sy":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 888
    .local v8, "cz":F
    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 889
    .local v9, "sz":F
    mul-float v10, v4, v7

    .line 890
    .local v10, "cxsy":F
    mul-float v11, v5, v7

    .line 892
    .local v11, "sxsy":F
    add-int/lit8 v12, p1, 0x0

    mul-float v13, v6, v8

    aput v13, v0, v12

    .line 893
    add-int/lit8 v12, p1, 0x1

    neg-float v13, v6

    mul-float/2addr v13, v9

    aput v13, v0, v12

    .line 894
    add-int/lit8 v12, p1, 0x2

    aput v7, v0, v12

    .line 895
    add-int/lit8 v12, p1, 0x3

    const/4 v13, 0x0

    aput v13, v0, v12

    .line 897
    add-int/lit8 v12, p1, 0x4

    mul-float v14, v11, v8

    mul-float v15, v4, v9

    add-float/2addr v14, v15

    aput v14, v0, v12

    .line 898
    add-int/lit8 v12, p1, 0x5

    neg-float v14, v11

    mul-float/2addr v14, v9

    mul-float v15, v4, v8

    add-float/2addr v14, v15

    aput v14, v0, v12

    .line 899
    add-int/lit8 v12, p1, 0x6

    neg-float v14, v5

    mul-float/2addr v14, v6

    aput v14, v0, v12

    .line 900
    add-int/lit8 v12, p1, 0x7

    aput v13, v0, v12

    .line 902
    add-int/lit8 v12, p1, 0x8

    neg-float v14, v10

    mul-float/2addr v14, v8

    mul-float v15, v5, v9

    add-float/2addr v14, v15

    aput v14, v0, v12

    .line 903
    add-int/lit8 v12, p1, 0x9

    mul-float v14, v10, v9

    mul-float v15, v5, v8

    add-float/2addr v14, v15

    aput v14, v0, v12

    .line 904
    add-int/lit8 v12, p1, 0xa

    mul-float v14, v4, v6

    aput v14, v0, v12

    .line 905
    add-int/lit8 v12, p1, 0xb

    aput v13, v0, v12

    .line 907
    add-int/lit8 v12, p1, 0xc

    aput v13, v0, v12

    .line 908
    add-int/lit8 v12, p1, 0xd

    aput v13, v0, v12

    .line 909
    add-int/lit8 v12, p1, 0xe

    aput v13, v0, v12

    .line 910
    add-int/lit8 v12, p1, 0xf

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v0, v12

    .line 911
    return-void

    .line 877
    .end local v1    # "z":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "cx":F
    .end local v5    # "sx":F
    .end local v6    # "cy":F
    .end local v7    # "sy":F
    .end local v8    # "cz":F
    .end local v9    # "sz":F
    .end local v10    # "cxsy":F
    .end local v11    # "sxsy":F
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    .restart local p4    # "z":F
    :cond_9c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rm.length < rmOffset + 16"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 874
    :cond_a5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rmOffset < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    :cond_ae
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rm == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist setRotateM([FIFFFF)V
    .registers 22
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "a"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .line 751
    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 752
    add-int/lit8 v0, p1, 0x7

    aput v1, p0, v0

    .line 753
    add-int/lit8 v0, p1, 0xb

    aput v1, p0, v0

    .line 754
    add-int/lit8 v0, p1, 0xc

    aput v1, p0, v0

    .line 755
    add-int/lit8 v0, p1, 0xd

    aput v1, p0, v0

    .line 756
    add-int/lit8 v0, p1, 0xe

    aput v1, p0, v0

    .line 757
    add-int/lit8 v0, p1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p0, v0

    .line 758
    const v0, 0x3c8efa35

    mul-float v0, v0, p2

    .line 759
    .end local p2    # "a":F
    .local v0, "a":F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 760
    .local v3, "s":F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 761
    .local v4, "c":F
    cmpl-float v5, v2, p3

    if-nez v5, :cond_62

    cmpl-float v5, v1, p4

    if-nez v5, :cond_62

    cmpl-float v5, v1, p5

    if-nez v5, :cond_62

    .line 762
    add-int/lit8 v5, p1, 0x5

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0xa

    aput v4, p0, v5

    .line 763
    add-int/lit8 v5, p1, 0x6

    aput v3, p0, v5

    add-int/lit8 v5, p1, 0x9

    neg-float v6, v3

    aput v6, p0, v5

    .line 764
    add-int/lit8 v5, p1, 0x1

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x2

    aput v1, p0, v5

    .line 765
    add-int/lit8 v5, p1, 0x4

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x8

    aput v1, p0, v5

    .line 766
    add-int/lit8 v1, p1, 0x0

    aput v2, p0, v1

    goto :goto_c5

    .line 767
    :cond_62
    cmpl-float v5, v1, p3

    if-nez v5, :cond_94

    cmpl-float v5, v2, p4

    if-nez v5, :cond_94

    cmpl-float v5, v1, p5

    if-nez v5, :cond_94

    .line 768
    add-int/lit8 v5, p1, 0x0

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0xa

    aput v4, p0, v5

    .line 769
    add-int/lit8 v5, p1, 0x8

    aput v3, p0, v5

    add-int/lit8 v5, p1, 0x2

    neg-float v6, v3

    aput v6, p0, v5

    .line 770
    add-int/lit8 v5, p1, 0x1

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x4

    aput v1, p0, v5

    .line 771
    add-int/lit8 v5, p1, 0x6

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x9

    aput v1, p0, v5

    .line 772
    add-int/lit8 v1, p1, 0x5

    aput v2, p0, v1

    goto :goto_c5

    .line 773
    :cond_94
    cmpl-float v5, v1, p3

    if-nez v5, :cond_cc

    cmpl-float v5, v1, p4

    if-nez v5, :cond_cc

    cmpl-float v5, v2, p5

    if-nez v5, :cond_cc

    .line 774
    add-int/lit8 v5, p1, 0x0

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0x5

    aput v4, p0, v5

    .line 775
    add-int/lit8 v5, p1, 0x1

    aput v3, p0, v5

    add-int/lit8 v5, p1, 0x4

    neg-float v6, v3

    aput v6, p0, v5

    .line 776
    add-int/lit8 v5, p1, 0x2

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x6

    aput v1, p0, v5

    .line 777
    add-int/lit8 v5, p1, 0x8

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x9

    aput v1, p0, v5

    .line 778
    add-int/lit8 v1, p1, 0xa

    aput v2, p0, v1

    .line 804
    :goto_c5
    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    goto :goto_132

    .line 780
    :cond_cc
    invoke-static/range {p3 .. p5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    .line 781
    .local v1, "len":F
    cmpl-float v5, v2, v1

    if-eqz v5, :cond_dd

    .line 782
    div-float v5, v2, v1

    .line 783
    .local v5, "recipLen":F
    mul-float v6, p3, v5

    .line 784
    .end local p3    # "x":F
    .local v6, "x":F
    mul-float v7, p4, v5

    .line 785
    .end local p4    # "y":F
    .local v7, "y":F
    mul-float v8, p5, v5

    .end local p5    # "z":F
    .local v8, "z":F
    goto :goto_e3

    .line 781
    .end local v5    # "recipLen":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "z":F
    .restart local p3    # "x":F
    .restart local p4    # "y":F
    .restart local p5    # "z":F
    :cond_dd
    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 787
    .end local p3    # "x":F
    .end local p4    # "y":F
    .end local p5    # "z":F
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    .restart local v8    # "z":F
    :goto_e3
    sub-float/2addr v2, v4

    .line 788
    .local v2, "nc":F
    mul-float v5, v6, v7

    .line 789
    .local v5, "xy":F
    mul-float v9, v7, v8

    .line 790
    .local v9, "yz":F
    mul-float v10, v8, v6

    .line 791
    .local v10, "zx":F
    mul-float v11, v6, v3

    .line 792
    .local v11, "xs":F
    mul-float v12, v7, v3

    .line 793
    .local v12, "ys":F
    mul-float v13, v8, v3

    .line 794
    .local v13, "zs":F
    add-int/lit8 v14, p1, 0x0

    mul-float v15, v6, v6

    mul-float/2addr v15, v2

    add-float/2addr v15, v4

    aput v15, p0, v14

    .line 795
    add-int/lit8 v14, p1, 0x4

    mul-float v15, v5, v2

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 796
    add-int/lit8 v14, p1, 0x8

    mul-float v15, v10, v2

    add-float/2addr v15, v12

    aput v15, p0, v14

    .line 797
    add-int/lit8 v14, p1, 0x1

    mul-float v15, v5, v2

    add-float/2addr v15, v13

    aput v15, p0, v14

    .line 798
    add-int/lit8 v14, p1, 0x5

    mul-float v15, v7, v7

    mul-float/2addr v15, v2

    add-float/2addr v15, v4

    aput v15, p0, v14

    .line 799
    add-int/lit8 v14, p1, 0x9

    mul-float v15, v9, v2

    sub-float/2addr v15, v11

    aput v15, p0, v14

    .line 800
    add-int/lit8 v14, p1, 0x2

    mul-float v15, v10, v2

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 801
    add-int/lit8 v14, p1, 0x6

    mul-float v15, v9, v2

    add-float/2addr v15, v11

    aput v15, p0, v14

    .line 802
    add-int/lit8 v14, p1, 0xa

    mul-float v15, v8, v8

    mul-float/2addr v15, v2

    add-float/2addr v15, v4

    aput v15, p0, v14

    .line 804
    .end local v1    # "len":F
    .end local v2    # "nc":F
    .end local v5    # "xy":F
    .end local v9    # "yz":F
    .end local v10    # "zx":F
    .end local v11    # "xs":F
    .end local v12    # "ys":F
    .end local v13    # "zs":F
    :goto_132
    return-void
.end method

.method public static whitelist translateM([FIFFF)V
    .registers 11
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1f

    .line 692
    add-int v1, p1, v0

    .line 693
    .local v1, "mi":I
    add-int/lit8 v2, v1, 0xc

    aget v3, p0, v2

    aget v4, p0, v1

    mul-float/2addr v4, p2

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, 0x8

    aget v5, p0, v5

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, p0, v2

    .line 691
    .end local v1    # "mi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 695
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public static whitelist translateM([FI[FIFFF)V
    .registers 13
    .param p0, "tm"    # [F
    .param p1, "tmOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    .line 668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_10

    .line 669
    add-int v1, p1, v0

    add-int v2, p3, v0

    aget v2, p2, v2

    aput v2, p0, v1

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 671
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    const/4 v1, 0x4

    if-ge v0, v1, :cond_33

    .line 672
    add-int v1, p1, v0

    .line 673
    .local v1, "tmi":I
    add-int v2, p3, v0

    .line 674
    .local v2, "mi":I
    add-int/lit8 v3, v1, 0xc

    aget v4, p2, v2

    mul-float/2addr v4, p4

    add-int/lit8 v5, v2, 0x4

    aget v5, p2, v5

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    add-int/lit8 v5, v2, 0x8

    aget v5, p2, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/lit8 v5, v2, 0xc

    aget v5, p2, v5

    add-float/2addr v4, v5

    aput v4, p0, v3

    .line 671
    .end local v1    # "tmi":I
    .end local v2    # "mi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 677
    .end local v0    # "i":I
    :cond_33
    return-void
.end method

.method public static whitelist transposeM([FI[FI)V
    .registers 8
    .param p0, "mTrans"    # [F
    .param p1, "mTransOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2b

    .line 289
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    .line 290
    .local v1, "mBase":I
    add-int v2, v0, p1

    aget v3, p2, v1

    aput v3, p0, v2

    .line 291
    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aput v3, p0, v2

    .line 292
    add-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    aput v3, p0, v2

    .line 293
    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x3

    aget v3, p2, v3

    aput v3, p0, v2

    .line 288
    .end local v1    # "mBase":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method
