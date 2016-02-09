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
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x18

    #@2
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 373
    new-array v0, v1, [F

    #@7
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    #@9
    .line 374
    new-array v0, v1, [J

    #@b
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    #@d
    .line 378
    const/16 v0, 0xc

    #@f
    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@11
    .line 377
    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 25
    .param p1, "time"    # J
    .param p3, "in"    # F

    #@0
    .prologue
    .line 382
    move/from16 v16, p3

    #@2
    .line 383
    .local v16, "v":F
    const v15, 0x3089705f    # 1.0E-9f

    #@5
    .line 384
    .local v15, "ns":F
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    #@9
    move-object/from16 v18, v0

    #@b
    move-object/from16 v0, p0

    #@d
    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@f
    move/from16 v19, v0

    #@11
    aget v17, v18, v19

    #@13
    .line 385
    .local v17, "v1":F
    sub-float v18, v16, v17

    #@15
    const/high16 v19, 0x43340000    # 180.0f

    #@17
    cmpl-float v18, v18, v19

    #@19
    if-lez v18, :cond_2

    #@1b
    .line 386
    const/high16 v18, 0x43b40000    # 360.0f

    #@1d
    sub-float v16, v16, v18

    #@1f
    .line 394
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@21
    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@23
    move/from16 v18, v0

    #@25
    add-int/lit8 v18, v18, 0x1

    #@27
    move/from16 v0, v18

    #@29
    move-object/from16 v1, p0

    #@2b
    iput v0, v1, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@2d
    .line 395
    move-object/from16 v0, p0

    #@2f
    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@31
    move/from16 v18, v0

    #@33
    const/16 v19, 0x18

    #@35
    move/from16 v0, v18

    #@37
    move/from16 v1, v19

    #@39
    if-lt v0, v1, :cond_1

    #@3b
    .line 396
    const/16 v18, 0xc

    #@3d
    move/from16 v0, v18

    #@3f
    move-object/from16 v1, p0

    #@41
    iput v0, v1, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@43
    .line 397
    :cond_1
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    #@47
    move-object/from16 v18, v0

    #@49
    move-object/from16 v0, p0

    #@4b
    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@4d
    move/from16 v19, v0

    #@4f
    aput v16, v18, v19

    #@51
    .line 398
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    #@55
    move-object/from16 v18, v0

    #@57
    move-object/from16 v0, p0

    #@59
    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@5b
    move/from16 v19, v0

    #@5d
    aput-wide p1, v18, v19

    #@5f
    .line 399
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    #@63
    move-object/from16 v18, v0

    #@65
    move-object/from16 v0, p0

    #@67
    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@69
    move/from16 v19, v0

    #@6b
    add-int/lit8 v19, v19, -0xc

    #@6d
    aput v16, v18, v19

    #@6f
    .line 400
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    #@73
    move-object/from16 v18, v0

    #@75
    move-object/from16 v0, p0

    #@77
    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@79
    move/from16 v19, v0

    #@7b
    add-int/lit8 v19, v19, -0xc

    #@7d
    aput-wide p1, v18, v19

    #@7f
    .line 406
    const/4 v6, 0x0

    #@80
    .local v6, "E":F
    const/4 v5, 0x0

    #@81
    .local v5, "D":F
    const/4 v4, 0x0

    #@82
    .local v4, "C":F
    const/4 v3, 0x0

    #@83
    .local v3, "B":F
    const/4 v2, 0x0

    #@84
    .line 407
    .local v2, "A":F
    const/4 v13, 0x0

    #@85
    .local v13, "i":I
    :goto_1
    const/16 v18, 0xb

    #@87
    move/from16 v0, v18

    #@89
    if-ge v13, v0, :cond_3

    #@8b
    .line 408
    move-object/from16 v0, p0

    #@8d
    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    #@8f
    move/from16 v18, v0

    #@91
    add-int/lit8 v18, v18, -0x1

    #@93
    sub-int v14, v18, v13

    #@95
    .line 409
    .local v14, "j":I
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    #@99
    move-object/from16 v18, v0

    #@9b
    aget v8, v18, v14

    #@9d
    .line 410
    .local v8, "Z":F
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    #@a1
    move-object/from16 v18, v0

    #@a3
    aget-wide v18, v18, v14

    #@a5
    const-wide/16 v20, 0x2

    #@a7
    div-long v18, v18, v20

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    #@ad
    move-object/from16 v20, v0

    #@af
    add-int/lit8 v21, v14, 0x1

    #@b1
    aget-wide v20, v20, v21

    #@b3
    const-wide/16 v22, 0x2

    #@b5
    div-long v20, v20, v22

    #@b7
    add-long v18, v18, v20

    #@b9
    sub-long v18, v18, p1

    #@bb
    move-wide/from16 v0, v18

    #@bd
    long-to-float v0, v0

    #@be
    move/from16 v18, v0

    #@c0
    const v19, 0x3089705f    # 1.0E-9f

    #@c3
    mul-float v7, v18, v19

    #@c5
    .line 411
    .local v7, "T":F
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    #@c9
    move-object/from16 v18, v0

    #@cb
    aget-wide v18, v18, v14

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    #@d1
    move-object/from16 v20, v0

    #@d3
    add-int/lit8 v21, v14, 0x1

    #@d5
    aget-wide v20, v20, v21

    #@d7
    sub-long v18, v18, v20

    #@d9
    move-wide/from16 v0, v18

    #@db
    long-to-float v0, v0

    #@dc
    move/from16 v18, v0

    #@de
    const v19, 0x3089705f    # 1.0E-9f

    #@e1
    mul-float v11, v18, v19

    #@e3
    .line 412
    .local v11, "dT":F
    mul-float/2addr v11, v11

    #@e4
    .line 413
    mul-float v18, v8, v11

    #@e6
    add-float v2, v2, v18

    #@e8
    .line 414
    mul-float v18, v7, v11

    #@ea
    mul-float v18, v18, v7

    #@ec
    add-float v3, v3, v18

    #@ee
    .line 415
    mul-float v18, v7, v11

    #@f0
    add-float v4, v4, v18

    #@f2
    .line 416
    mul-float v18, v7, v11

    #@f4
    mul-float v18, v18, v8

    #@f6
    add-float v5, v5, v18

    #@f8
    .line 417
    add-float/2addr v6, v11

    #@f9
    .line 407
    add-int/lit8 v13, v13, 0x1

    #@fb
    goto :goto_1

    #@fc
    .line 387
    .end local v2    # "A":F
    .end local v3    # "B":F
    .end local v4    # "C":F
    .end local v5    # "D":F
    .end local v6    # "E":F
    .end local v7    # "T":F
    .end local v8    # "Z":F
    .end local v11    # "dT":F
    .end local v13    # "i":I
    .end local v14    # "j":I
    :cond_2
    sub-float v18, v17, v16

    #@fe
    const/high16 v19, 0x43340000    # 180.0f

    #@100
    cmpl-float v18, v18, v19

    #@102
    if-lez v18, :cond_0

    #@104
    .line 388
    const/high16 v18, 0x43b40000    # 360.0f

    #@106
    add-float v16, v16, v18

    #@108
    goto/16 :goto_0

    #@10a
    .line 419
    .restart local v2    # "A":F
    .restart local v3    # "B":F
    .restart local v4    # "C":F
    .restart local v5    # "D":F
    .restart local v6    # "E":F
    .restart local v13    # "i":I
    :cond_3
    mul-float v18, v2, v3

    #@10c
    mul-float v19, v4, v5

    #@10e
    add-float v18, v18, v19

    #@110
    mul-float v19, v6, v3

    #@112
    mul-float v20, v4, v4

    #@114
    add-float v19, v19, v20

    #@116
    div-float v10, v18, v19

    #@118
    .line 420
    .local v10, "b":F
    mul-float v18, v6, v10

    #@11a
    sub-float v18, v18, v2

    #@11c
    div-float v9, v18, v4

    #@11e
    .line 421
    .local v9, "a":F
    const v18, 0x3da3d70a    # 0.08f

    #@121
    mul-float v18, v18, v9

    #@123
    add-float v12, v10, v18

    #@125
    .line 424
    .local v12, "f":F
    const v18, 0x3b360b61

    #@128
    mul-float v12, v12, v18

    #@12a
    .line 425
    const/16 v18, 0x0

    #@12c
    cmpl-float v18, v12, v18

    #@12e
    if-ltz v18, :cond_6

    #@130
    move/from16 v18, v12

    #@132
    :goto_2
    const/high16 v19, 0x3f000000    # 0.5f

    #@134
    cmpl-float v18, v18, v19

    #@136
    if-ltz v18, :cond_4

    #@138
    .line 426
    const/high16 v18, 0x3f000000    # 0.5f

    #@13a
    add-float v18, v18, v12

    #@13c
    move/from16 v0, v18

    #@13e
    float-to-double v0, v0

    #@13f
    move-wide/from16 v18, v0

    #@141
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    #@144
    move-result-wide v18

    #@145
    move-wide/from16 v0, v18

    #@147
    double-to-float v0, v0

    #@148
    move/from16 v18, v0

    #@14a
    sub-float v18, v12, v18

    #@14c
    const/high16 v19, 0x3f800000    # 1.0f

    #@14e
    add-float v12, v18, v19

    #@150
    .line 427
    :cond_4
    const/16 v18, 0x0

    #@152
    cmpg-float v18, v12, v18

    #@154
    if-gez v18, :cond_5

    #@156
    .line 428
    const/high16 v18, 0x3f800000    # 1.0f

    #@158
    add-float v12, v12, v18

    #@15a
    .line 429
    :cond_5
    const/high16 v18, 0x43b40000    # 360.0f

    #@15c
    mul-float v12, v12, v18

    #@15e
    .line 430
    return v12

    #@15f
    .line 425
    :cond_6
    neg-float v0, v12

    #@160
    move/from16 v18, v0

    #@162
    goto :goto_2
.end method
