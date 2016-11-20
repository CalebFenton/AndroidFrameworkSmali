.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/hardware/GeomagneticField$LegendreTable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/hardware/GeomagneticField$LegendreTable;->-assertionsDisabled:Z

    #@b
    .line 335
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 11
    .param p1, "maxN"    # I
    .param p2, "thetaRad"    # F

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 356
    float-to-double v8, p2

    #@6
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    #@9
    move-result-wide v8

    #@a
    double-to-float v0, v8

    #@b
    .line 357
    .local v0, "cos":F
    float-to-double v8, p2

    #@c
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    #@f
    move-result-wide v8

    #@10
    double-to-float v4, v8

    #@11
    .line 359
    .local v4, "sin":F
    add-int/lit8 v5, p1, 0x1

    #@13
    new-array v5, v5, [[F

    #@15
    iput-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@17
    .line 360
    add-int/lit8 v5, p1, 0x1

    #@19
    new-array v5, v5, [[F

    #@1b
    iput-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@1d
    .line 361
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@1f
    new-array v8, v6, [F

    #@21
    const/high16 v9, 0x3f800000    # 1.0f

    #@23
    aput v9, v8, v7

    #@25
    aput-object v8, v5, v7

    #@27
    .line 362
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@29
    new-array v8, v6, [F

    #@2b
    const/4 v9, 0x0

    #@2c
    aput v9, v8, v7

    #@2e
    aput-object v8, v5, v7

    #@30
    .line 363
    const/4 v3, 0x1

    #@31
    .local v3, "n":I
    :goto_0
    if-gt v3, p1, :cond_6

    #@33
    .line 364
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@35
    add-int/lit8 v8, v3, 0x1

    #@37
    new-array v8, v8, [F

    #@39
    aput-object v8, v5, v3

    #@3b
    .line 365
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@3d
    add-int/lit8 v8, v3, 0x1

    #@3f
    new-array v8, v8, [F

    #@41
    aput-object v8, v5, v3

    #@43
    .line 366
    const/4 v2, 0x0

    #@44
    .local v2, "m":I
    :goto_1
    if-gt v2, v3, :cond_5

    #@46
    .line 367
    if-ne v3, v2, :cond_0

    #@48
    .line 368
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@4a
    aget-object v5, v5, v3

    #@4c
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@4e
    add-int/lit8 v9, v3, -0x1

    #@50
    aget-object v8, v8, v9

    #@52
    add-int/lit8 v9, v2, -0x1

    #@54
    aget v8, v8, v9

    #@56
    mul-float/2addr v8, v4

    #@57
    aput v8, v5, v2

    #@59
    .line 369
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@5b
    aget-object v5, v5, v3

    #@5d
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@5f
    add-int/lit8 v9, v3, -0x1

    #@61
    aget-object v8, v8, v9

    #@63
    add-int/lit8 v9, v2, -0x1

    #@65
    aget v8, v8, v9

    #@67
    mul-float/2addr v8, v0

    #@68
    .line 370
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@6a
    add-int/lit8 v10, v3, -0x1

    #@6c
    aget-object v9, v9, v10

    #@6e
    add-int/lit8 v10, v2, -0x1

    #@70
    aget v9, v9, v10

    #@72
    mul-float/2addr v9, v4

    #@73
    .line 369
    add-float/2addr v8, v9

    #@74
    aput v8, v5, v2

    #@76
    .line 366
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@78
    goto :goto_1

    #@79
    .line 371
    :cond_0
    if-eq v3, v6, :cond_1

    #@7b
    add-int/lit8 v5, v3, -0x1

    #@7d
    if-ne v2, v5, :cond_2

    #@7f
    .line 372
    :cond_1
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@81
    aget-object v5, v5, v3

    #@83
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@85
    add-int/lit8 v9, v3, -0x1

    #@87
    aget-object v8, v8, v9

    #@89
    aget v8, v8, v2

    #@8b
    mul-float/2addr v8, v0

    #@8c
    aput v8, v5, v2

    #@8e
    .line 373
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@90
    aget-object v5, v5, v3

    #@92
    neg-float v8, v4

    #@93
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@95
    add-int/lit8 v10, v3, -0x1

    #@97
    aget-object v9, v9, v10

    #@99
    aget v9, v9, v2

    #@9b
    mul-float/2addr v8, v9

    #@9c
    .line 374
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@9e
    add-int/lit8 v10, v3, -0x1

    #@a0
    aget-object v9, v9, v10

    #@a2
    aget v9, v9, v2

    #@a4
    mul-float/2addr v9, v0

    #@a5
    .line 373
    add-float/2addr v8, v9

    #@a6
    aput v8, v5, v2

    #@a8
    goto :goto_2

    #@a9
    .line 376
    :cond_2
    sget-boolean v5, Landroid/hardware/GeomagneticField$LegendreTable;->-assertionsDisabled:Z

    #@ab
    if-nez v5, :cond_4

    #@ad
    if-le v3, v6, :cond_3

    #@af
    add-int/lit8 v5, v3, -0x1

    #@b1
    if-ge v2, v5, :cond_3

    #@b3
    move v5, v6

    #@b4
    :goto_3
    if-nez v5, :cond_4

    #@b6
    new-instance v5, Ljava/lang/AssertionError;

    #@b8
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@bb
    throw v5

    #@bc
    :cond_3
    move v5, v7

    #@bd
    goto :goto_3

    #@be
    .line 377
    :cond_4
    add-int/lit8 v5, v3, -0x1

    #@c0
    add-int/lit8 v8, v3, -0x1

    #@c2
    mul-int/2addr v5, v8

    #@c3
    mul-int v8, v2, v2

    #@c5
    sub-int/2addr v5, v8

    #@c6
    int-to-float v5, v5

    #@c7
    .line 378
    mul-int/lit8 v8, v3, 0x2

    #@c9
    add-int/lit8 v8, v8, -0x1

    #@cb
    mul-int/lit8 v9, v3, 0x2

    #@cd
    add-int/lit8 v9, v9, -0x3

    #@cf
    mul-int/2addr v8, v9

    #@d0
    int-to-float v8, v8

    #@d1
    .line 377
    div-float v1, v5, v8

    #@d3
    .line 379
    .local v1, "k":F
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@d5
    aget-object v5, v5, v3

    #@d7
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@d9
    add-int/lit8 v9, v3, -0x1

    #@db
    aget-object v8, v8, v9

    #@dd
    aget v8, v8, v2

    #@df
    mul-float/2addr v8, v0

    #@e0
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@e2
    add-int/lit8 v10, v3, -0x2

    #@e4
    aget-object v9, v9, v10

    #@e6
    aget v9, v9, v2

    #@e8
    mul-float/2addr v9, v1

    #@e9
    sub-float/2addr v8, v9

    #@ea
    aput v8, v5, v2

    #@ec
    .line 380
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@ee
    aget-object v5, v5, v3

    #@f0
    neg-float v8, v4

    #@f1
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@f3
    add-int/lit8 v10, v3, -0x1

    #@f5
    aget-object v9, v9, v10

    #@f7
    aget v9, v9, v2

    #@f9
    mul-float/2addr v8, v9

    #@fa
    .line 381
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@fc
    add-int/lit8 v10, v3, -0x1

    #@fe
    aget-object v9, v9, v10

    #@100
    aget v9, v9, v2

    #@102
    mul-float/2addr v9, v0

    #@103
    .line 380
    add-float/2addr v8, v9

    #@104
    .line 381
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@106
    add-int/lit8 v10, v3, -0x2

    #@108
    aget-object v9, v9, v10

    #@10a
    aget v9, v9, v2

    #@10c
    mul-float/2addr v9, v1

    #@10d
    .line 380
    sub-float/2addr v8, v9

    #@10e
    aput v8, v5, v2

    #@110
    goto/16 :goto_2

    #@112
    .line 363
    .end local v1    # "k":F
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@114
    goto/16 :goto_0

    #@116
    .line 351
    .end local v2    # "m":I
    :cond_6
    return-void
.end method
