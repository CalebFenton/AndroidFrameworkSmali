.class Lcom/android/internal/app/PlatLogoActivity$Starfield;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Starfield"
.end annotation


# static fields
.field private static final blacklist NUM_PLANES:I = 0x4

.field private static final blacklist NUM_STARS:I = 0x80

.field private static final blacklist ROTATION:F = 45.0f

.field private static final blacklist sSrgbExt:Landroid/graphics/ColorSpace;


# instance fields
.field private blacklist mBuffer:F

.field private blacklist mDt:J

.field private blacklist mRadius:F

.field private final blacklist mRng:Ljava/util/Random;

.field private final blacklist mSize:F

.field private final blacklist mStarPaint:Landroid/graphics/Paint;

.field private final blacklist mStars:[F

.field private blacklist mVx:F

.field private blacklist mVy:F

.field private blacklist mWarp:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 528
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->sSrgbExt:Landroid/graphics/ColorSpace;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Random;F)V
    .registers 5
    .param p1, "rng"    # Ljava/util/Random;
    .param p2, "size"    # F

    .line 429
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 408
    const/16 v0, 0x200

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    .line 417
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    .line 430
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    .line 431
    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    .line 432
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    .line 433
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    return-void
.end method

.method public static blacklist packHdrColor(FF)J
    .registers 4
    .param p0, "value"    # F
    .param p1, "alpha"    # F

    .line 530
    sget-object v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->sSrgbExt:Landroid/graphics/ColorSpace;

    invoke-static {p0, p0, p0, p1, v0}, Landroid/graphics/Color;->valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->pack()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 461
    .local v2, "dtSec":F
    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVx:F

    mul-float/2addr v3, v2

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v3, v4

    .line 462
    .local v3, "dx":F
    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVy:F

    mul-float/2addr v4, v2

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v4, v5

    .line 464
    .local v4, "dy":F
    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_20

    const/4 v5, 0x1

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    .line 466
    .local v5, "inWarp":Z
    :goto_21
    iget v9, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    .line 467
    .local v9, "diameter":F
    iget v11, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    const/high16 v12, 0x40400000    # 3.0f

    mul-float/2addr v11, v12

    .line 469
    .local v11, "triameter":F
    const/high16 v13, -0x1000000

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    .line 472
    .local v13, "cx":F
    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    .line 473
    .local v14, "cy":F
    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 475
    const/high16 v15, 0x42340000    # 45.0f

    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 477
    const/4 v15, 0x0

    const/16 v16, 0x1

    iget-wide v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    const-wide/16 v17, 0x0

    cmp-long v7, v7, v17

    if-lez v7, :cond_109

    iget-wide v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    const-wide/16 v17, 0x3e8

    cmp-long v7, v7, v17

    if-gez v7, :cond_109

    .line 478
    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    .line 479
    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    iget v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v8, v6

    mul-float/2addr v7, v8

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    .line 480
    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    move/from16 v17, v12

    iget v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v12, v6

    mul-float/2addr v8, v12

    .line 478
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 482
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_79
    const/16 v8, 0x80

    if-ge v7, v8, :cond_104

    .line 483
    int-to-float v8, v7

    const/high16 v12, 0x43000000    # 128.0f

    div-float/2addr v8, v12

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v8, v12

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    .line 484
    .local v8, "plane":I
    iget-object v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v18, v7, 0x4

    add-int/lit8 v18, v18, 0x2

    move/from16 v19, v15

    iget-object v15, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v20, v7, 0x4

    add-int/lit8 v20, v20, 0x2

    aget v15, v15, v20

    int-to-float v10, v8

    mul-float/2addr v10, v3

    add-float/2addr v15, v10

    add-float/2addr v15, v11

    rem-float/2addr v15, v9

    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float/2addr v15, v10

    aput v15, v12, v18

    .line 486
    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v12, v7, 0x4

    add-int/lit8 v12, v12, 0x3

    iget-object v15, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v18, v7, 0x4

    add-int/lit8 v18, v18, 0x3

    aget v15, v15, v18

    move/from16 v18, v6

    int-to-float v6, v8

    mul-float/2addr v6, v4

    add-float/2addr v15, v6

    add-float/2addr v15, v11

    rem-float/2addr v15, v9

    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float/2addr v15, v6

    aput v15, v10, v12

    .line 488
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v10, v7, 0x4

    add-int/lit8 v10, v10, 0x0

    if-eqz v5, :cond_d4

    iget-object v15, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v21, v7, 0x4

    add-int/lit8 v21, v21, 0x2

    aget v15, v15, v21

    iget v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v12, v3

    move/from16 v22, v2

    .end local v2    # "dtSec":F
    .local v22, "dtSec":F
    int-to-float v2, v8

    mul-float/2addr v12, v2

    sub-float/2addr v15, v12

    goto :goto_d9

    .end local v22    # "dtSec":F
    .restart local v2    # "dtSec":F
    :cond_d4
    move/from16 v22, v2

    .end local v2    # "dtSec":F
    .restart local v22    # "dtSec":F
    const v15, -0x39e3c000    # -10000.0f

    :goto_d9
    aput v15, v6, v10

    .line 489
    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v6, v7, 0x4

    add-int/lit8 v6, v6, 0x1

    if-eqz v5, :cond_f3

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v12, v7, 0x4

    add-int/lit8 v12, v12, 0x3

    aget v10, v10, v12

    iget v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v12, v4

    int-to-float v15, v8

    mul-float/2addr v12, v15

    sub-float v12, v10, v12

    goto :goto_f6

    :cond_f3
    const v12, -0x39e3c000    # -10000.0f

    :goto_f6
    aput v12, v2, v6

    .line 482
    .end local v8    # "plane":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v18

    move/from16 v15, v19

    move/from16 v2, v22

    const/high16 v10, 0x40000000    # 2.0f

    goto/16 :goto_79

    .end local v22    # "dtSec":F
    .restart local v2    # "dtSec":F
    :cond_104
    move/from16 v22, v2

    move/from16 v18, v6

    .end local v2    # "dtSec":F
    .restart local v22    # "dtSec":F
    goto :goto_10f

    .line 477
    .end local v7    # "i":I
    .end local v22    # "dtSec":F
    .restart local v2    # "dtSec":F
    :cond_109
    move/from16 v22, v2

    move/from16 v18, v6

    move/from16 v17, v12

    .line 492
    .end local v2    # "dtSec":F
    .restart local v22    # "dtSec":F
    :goto_10f
    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    array-length v2, v2

    const/4 v6, 0x4

    div-int/2addr v2, v6

    div-int/2addr v2, v6

    mul-int/2addr v2, v6

    .line 493
    .local v2, "slice":I
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_117
    if-ge v7, v6, :cond_150

    .line 494
    int-to-float v8, v7

    add-float v8, v8, v18

    div-float v8, v8, v17

    .line 495
    .local v8, "value":F
    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    move/from16 v16, v7

    move/from16 v12, v18

    .end local v7    # "p":I
    .local v16, "p":I
    invoke-static {v8, v12}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->packHdrColor(FF)J

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Paint;->setColor(J)V

    .line 496
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    add-int/lit8 v10, v16, 0x1

    int-to-float v10, v10

    mul-float/2addr v7, v10

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 497
    if-eqz v5, :cond_141

    .line 498
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int v7, v16, v2

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v2, v10}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 500
    :cond_141
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int v7, v16, v2

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v2, v10}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 493
    .end local v8    # "value":F
    add-int/lit8 v7, v16, 0x1

    const/4 v6, 0x4

    const/high16 v18, 0x3f800000    # 1.0f

    .end local v16    # "p":I
    .restart local v7    # "p":I
    goto :goto_117

    :cond_150
    move/from16 v16, v7

    .line 503
    .end local v7    # "p":I
    if-eqz v5, :cond_168

    .line 504
    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v6, v6, v18

    const/high16 v7, 0x41700000    # 15.0f

    div-float/2addr v6, v7

    .line 505
    .local v6, "frac":F
    mul-float v7, v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8, v7}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->packHdrColor(FF)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->drawColor(J)V

    .line 507
    .end local v6    # "frac":F
    :cond_168
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 521
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWarp()F
    .registers 2

    .line 426
    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    return v0
.end method

.method public whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 439
    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    const/16 v2, 0x80

    if-ge v0, v2, :cond_70

    .line 445
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v3, v0, 0x4

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 446
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 448
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v5, v0, 0x4

    aget v4, v4, v5

    aput v4, v2, v3

    .line 449
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 451
    .end local v0    # "i":I
    :cond_70
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 512
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 517
    return-void
.end method

.method public blacklist setVelocity(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 454
    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVx:F

    .line 455
    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVy:F

    .line 456
    return-void
.end method

.method public blacklist setWarp(F)V
    .registers 2
    .param p1, "warp"    # F

    .line 422
    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    .line 423
    return-void
.end method

.method public blacklist update(J)V
    .registers 3
    .param p1, "dt"    # J

    .line 525
    iput-wide p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    .line 526
    return-void
.end method
