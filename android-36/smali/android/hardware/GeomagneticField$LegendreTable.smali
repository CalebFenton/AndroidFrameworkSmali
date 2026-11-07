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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field public final greylist-max-o mP:[[F

.field public final greylist-max-o mPDeriv:[[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 339
    const-class v0, Landroid/hardware/GeomagneticField;

    return-void
.end method

.method public constructor greylist-max-o <init>(IF)V
    .registers 13
    .param p1, "maxN"    # I
    .param p2, "thetaRad"    # F

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 361
    .local v0, "cos":F
    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 363
    .local v1, "sin":F
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [[F

    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 364
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [[F

    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 365
    iget-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    .line 366
    iget-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    .line 367
    const/4 v2, 0x1

    .local v2, "n":I
    :goto_31
    if-gt v2, p1, :cond_102

    .line 368
    iget-object v4, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [F

    aput-object v5, v4, v2

    .line 369
    iget-object v4, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [F

    aput-object v5, v4, v2

    .line 370
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_44
    if-gt v4, v2, :cond_fe

    .line 371
    if-ne v2, v4, :cond_78

    .line 372
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v2

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    mul-float/2addr v6, v1

    aput v6, v5, v4

    .line 373
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v2

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    mul-float/2addr v6, v0

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v4, -0x1

    aget v7, v7, v8

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    aput v6, v5, v4

    goto/16 :goto_fa

    .line 375
    :cond_78
    if-eq v2, v3, :cond_d1

    add-int/lit8 v5, v2, -0x1

    if-ne v4, v5, :cond_7f

    goto :goto_d1

    .line 380
    :cond_7f
    nop

    .line 381
    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v2, -0x1

    mul-int/2addr v5, v6

    mul-int v6, v4, v4

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v6, v3

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, -0x3

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 383
    .local v5, "k":F
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v4

    mul-float/2addr v7, v0

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v9, v2, -0x2

    aget-object v8, v8, v9

    aget v8, v8, v4

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v4

    .line 384
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v2

    neg-float v7, v1

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    aget v8, v8, v4

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    aget v8, v8, v4

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v9, v2, -0x2

    aget-object v8, v8, v9

    aget v8, v8, v4

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v4

    goto :goto_fa

    .line 376
    .end local v5    # "k":F
    :cond_d1
    :goto_d1
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v2

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    aget v6, v6, v4

    mul-float/2addr v6, v0

    aput v6, v5, v4

    .line 377
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v2

    neg-float v6, v1

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v4

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v4

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 370
    :goto_fa
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_44

    .line 367
    .end local v4    # "m":I
    :cond_fe
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_31

    .line 389
    .end local v2    # "n":I
    :cond_102
    return-void
.end method
