.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final greylist-max-o COUNT:I = 0xc

.field private static final greylist-max-o PREDICTION_RATIO:F = 0.33333334f

.field private static final greylist-max-o PREDICTION_TIME:F = 0.08f

.field private static final greylist-max-o SENSORS_RATE_MS:I = 0x14


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-o mT:[J

.field private greylist-max-o mV:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 376
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    .line 380
    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 381
    return-void
.end method


# virtual methods
.method public greylist-max-o filter(JF)F
    .registers 25
    .param p1, "time"    # J
    .param p3, "in"    # F

    .line 384
    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 385
    .local v1, "v":F
    const v2, 0x3089705f    # 1.0E-9f

    .line 386
    .local v2, "ns":F
    iget-object v3, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v3, v3, v4

    .line 387
    .local v3, "v1":F
    sub-float v4, v1, v3

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v4, v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    if-lez v4, :cond_19

    .line 388
    sub-float/2addr v1, v6

    goto :goto_20

    .line 389
    :cond_19
    sub-float v4, v3, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_20

    .line 390
    add-float/2addr v1, v6

    .line 396
    :cond_20
    :goto_20
    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 397
    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v5, 0x18

    const/16 v7, 0xc

    if-lt v4, v5, :cond_30

    .line 398
    iput v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 400
    :cond_30
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v1, v4, v5

    .line 401
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput-wide p1, v4, v5

    .line 402
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v5, v7

    aput v1, v4, v5

    .line 403
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v5, v7

    aput-wide p1, v4, v5

    .line 409
    const/4 v4, 0x0

    move v5, v4

    .local v5, "E":F
    move v7, v4

    .local v7, "D":F
    move v8, v4

    .local v8, "C":F
    move v9, v4

    .local v9, "B":F
    move v10, v4

    .line 410
    .local v10, "A":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_51
    const/16 v12, 0xb

    if-ge v11, v12, :cond_a1

    .line 411
    iget v12, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v11

    .line 412
    .local v12, "j":I
    iget-object v13, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v13, v13, v12

    .line 413
    .local v13, "Z":F
    iget-object v14, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v14, v14, v12

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    move/from16 v18, v4

    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v19, v12, 0x1

    aget-wide v19, v4, v19

    div-long v19, v19, v16

    add-long v14, v14, v19

    sub-long v14, v14, p1

    long-to-float v4, v14

    const v14, 0x3089705f    # 1.0E-9f

    mul-float/2addr v4, v14

    .line 414
    .local v4, "T":F
    iget-object v15, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v15, v15, v12

    move/from16 v17, v6

    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v19, v12, 0x1

    aget-wide v19, v6, v19

    move v6, v14

    sub-long v14, v15, v19

    long-to-float v14, v14

    mul-float/2addr v14, v6

    .line 415
    .local v14, "dT":F
    mul-float/2addr v14, v14

    .line 416
    mul-float v6, v13, v14

    add-float/2addr v10, v6

    .line 417
    mul-float v6, v4, v14

    mul-float/2addr v6, v4

    add-float/2addr v9, v6

    .line 418
    mul-float v6, v4, v14

    add-float/2addr v8, v6

    .line 419
    mul-float v6, v4, v14

    mul-float/2addr v6, v13

    add-float/2addr v7, v6

    .line 420
    add-float/2addr v5, v14

    .line 410
    .end local v4    # "T":F
    .end local v12    # "j":I
    .end local v13    # "Z":F
    .end local v14    # "dT":F
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v17

    move/from16 v4, v18

    goto :goto_51

    .line 422
    :cond_a1
    move/from16 v18, v4

    move/from16 v17, v6

    mul-float v4, v10, v9

    mul-float v6, v8, v7

    add-float/2addr v4, v6

    mul-float v6, v5, v9

    mul-float v12, v8, v8

    add-float/2addr v6, v12

    div-float/2addr v4, v6

    .line 423
    .local v4, "b":F
    mul-float v6, v5, v4

    sub-float/2addr v6, v10

    div-float/2addr v6, v8

    .line 424
    .local v6, "a":F
    const v12, 0x3da3d70a    # 0.08f

    mul-float/2addr v12, v6

    add-float/2addr v12, v4

    .line 427
    .local v12, "f":F
    const v13, 0x3b360b61

    mul-float/2addr v12, v13

    .line 428
    cmpl-float v13, v12, v18

    if-ltz v13, :cond_c3

    move v13, v12

    goto :goto_c4

    :cond_c3
    neg-float v13, v12

    :goto_c4
    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v13, v13, v14

    const/high16 v15, 0x3f800000    # 1.0f

    if-ltz v13, :cond_d7

    .line 429
    add-float/2addr v14, v12

    float-to-double v13, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v13, v13

    sub-float v13, v12, v13

    add-float v12, v13, v15

    .line 431
    :cond_d7
    cmpg-float v13, v12, v18

    if-gez v13, :cond_dc

    .line 432
    add-float/2addr v12, v15

    .line 434
    :cond_dc
    mul-float v12, v12, v17

    .line 435
    return v12
.end method
