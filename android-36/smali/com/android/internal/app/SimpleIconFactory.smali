.class public Lcom/android/internal/app/SimpleIconFactory;
.super Ljava/lang/Object;
.source "SimpleIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;,
        Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist AMBIENT_SHADOW_ALPHA:I = 0x7

.field private static final blacklist BLUR_FACTOR:F = 0.03125f

.field private static final blacklist CIRCLE_AREA_BY_RECT:F = 0.7853982f

.field private static final blacklist DEFAULT_WRAPPER_BACKGROUND:I = -0x1

.field private static final blacklist KEY_SHADOW_ALPHA:I = 0xa

.field private static final blacklist KEY_SHADOW_DISTANCE:F = 0.020833334f

.field private static final blacklist LINEAR_SCALE_SLOPE:F = 0.040449437f

.field private static final blacklist MAX_CIRCLE_AREA_FACTOR:F = 0.6597222f

.field private static final blacklist MAX_SQUARE_AREA_FACTOR:F = 0.6510417f

.field private static final blacklist MIN_VISIBLE_ALPHA:I = 0x28

.field private static final blacklist SCALE_NOT_INITIALIZED:F

.field private static final blacklist sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/internal/app/SimpleIconFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPoolEnabled:Z


# instance fields
.field private final blacklist mAdaptiveIconBounds:Landroid/graphics/Rect;

.field private blacklist mAdaptiveIconScale:F

.field private blacklist mBadgeBitmapSize:I

.field private final blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBlurPaint:Landroid/graphics/Paint;

.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mCanvas:Landroid/graphics/Canvas;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private blacklist mDrawPaint:Landroid/graphics/Paint;

.field private blacklist mFillResIconDpi:I

.field private blacklist mIconBitmapSize:I

.field private final blacklist mLeftBorder:[F

.field private final blacklist mMaxSize:I

.field private final blacklist mOldBounds:Landroid/graphics/Rect;

.field private final blacklist mPixels:[B

.field private blacklist mPm:Landroid/content/pm/PackageManager;

.field private final blacklist mRightBorder:[F

.field private final blacklist mScaleCheckCanvas:Landroid/graphics/Canvas;

.field private blacklist mWrapperBackgroundColor:I

.field private blacklist mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic blacklist $r8$lambda$3TdZrHYq4mg-L_5kmC4ODfA27Sg(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->lambda$createIconBitmap$1(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dkL_VkgWXdtrp8LGO2o5ozSoHwU(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->lambda$createIconBitmap$0(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/SimpleIconFactory;->sPoolEnabled:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;III)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillResIconDpi"    # I
    .param p3, "iconBitmapSize"    # I
    .param p4, "badgeBitmapSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 669
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    .line 670
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    .line 162
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 163
    iput p3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    .line 164
    iput p4, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    .line 165
    iput p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    .line 167
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 168
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 172
    mul-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    .line 173
    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    .line 174
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mScaleCheckCanvas:Landroid/graphics/Canvas;

    .line 175
    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    .line 176
    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    .line 177
    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    .line 183
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float v1, p3

    const/high16 v2, 0x3d000000    # 0.03125f

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 185
    return-void
.end method

.method private static blacklist convertToConvexArray([FIII)V
    .registers 16
    .param p0, "xCoordinates"    # [F
    .param p1, "direction"    # I
    .param p2, "topY"    # I
    .param p3, "bottomY"    # I

    .line 619
    array-length v0, p0

    .line 621
    .local v0, "total":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    .line 623
    .local v1, "angles":[F
    move v2, p2

    .line 624
    .local v2, "first":I
    const/4 v3, -0x1

    .line 626
    .local v3, "last":I
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 628
    .local v4, "lastAngle":F
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_c
    if-gt v5, p3, :cond_6f

    .line 629
    aget v6, p0, v5

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_17

    .line 630
    goto :goto_6c

    .line 634
    :cond_17
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v4, v6

    if-nez v6, :cond_20

    .line 635
    move v6, v2

    .local v6, "start":I
    goto :goto_50

    .line 637
    .end local v6    # "start":I
    :cond_20
    aget v6, p0, v5

    aget v7, p0, v3

    sub-float/2addr v6, v7

    sub-int v7, v5, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 638
    .local v6, "currentAngle":F
    move v7, v3

    .line 641
    .local v7, "start":I
    sub-float v8, v6, v4

    int-to-float v9, p1

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4f

    move v11, v7

    move v7, v6

    move v6, v11

    .line 642
    .local v6, "start":I
    .local v7, "currentAngle":F
    :cond_36
    if-le v6, v2, :cond_50

    .line 643
    add-int/lit8 v6, v6, -0x1

    .line 644
    aget v8, p0, v5

    aget v10, p0, v6

    sub-float/2addr v8, v10

    sub-int v10, v5, v6

    int-to-float v10, v10

    div-float v7, v8, v10

    .line 645
    aget v8, v1, v6

    sub-float v8, v7, v8

    int-to-float v10, p1

    mul-float/2addr v8, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_36

    .line 646
    goto :goto_50

    .line 641
    .local v6, "currentAngle":F
    .local v7, "start":I
    :cond_4f
    move v6, v7

    .line 653
    .end local v7    # "start":I
    .local v6, "start":I
    :cond_50
    :goto_50
    aget v7, p0, v5

    aget v8, p0, v6

    sub-float/2addr v7, v8

    sub-int v8, v5, v6

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 655
    .end local v4    # "lastAngle":F
    .local v7, "lastAngle":F
    move v4, v6

    .local v4, "j":I
    :goto_5a
    if-ge v4, v5, :cond_6a

    .line 656
    aput v7, v1, v4

    .line 657
    aget v8, p0, v6

    sub-int v9, v4, v6

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p0, v4

    .line 655
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 659
    .end local v4    # "j":I
    :cond_6a
    move v3, v5

    move v4, v7

    .line 628
    .end local v6    # "start":I
    .end local v7    # "lastAngle":F
    .local v4, "lastAngle":F
    :goto_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 661
    .end local v5    # "i":I
    :cond_6f
    return-void
.end method

.method private blacklist createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F

    .line 329
    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local p2    # "scale":F
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    .local v2, "scale":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private blacklist createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;
    .registers 23
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F
    .param p3, "size"    # I
    .param p4, "insetAdiForShadow"    # Z
    .param p5, "ignoreAdiMask"    # Z

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 346
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    instance-of v5, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_aa

    .line 350
    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 355
    .local v5, "adi":Landroid/graphics/drawable/AdaptiveIconDrawable;
    int-to-float v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v2

    mul-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 356
    .local v6, "offset":I
    if-eqz p4, :cond_40

    .line 357
    const/high16 v9, 0x3d000000    # 0.03125f

    int-to-float v10, v3

    mul-float/2addr v10, v9

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 359
    :cond_40
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v3, v6

    sub-int v11, v3, v6

    invoke-direct {v9, v6, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    .local v9, "bounds":Landroid/graphics/Rect;
    if-eqz p5, :cond_9f

    .line 364
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 365
    .local v10, "cX":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    .line 366
    .local v11, "cY":I
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    div-float/2addr v7, v12

    .line 367
    .local v7, "portScale":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float v13, v7, v8

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 368
    .local v12, "insetWidth":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v8, v7

    div-float/2addr v13, v8

    float-to-int v8, v13

    .line 370
    .local v8, "insetHeight":I
    new-instance v13, Landroid/graphics/Rect;

    sub-int v14, v10, v12

    sub-int v15, v11, v8

    add-int v3, v10, v12

    move-object/from16 v16, v4

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    add-int v4, v11, v8

    invoke-direct {v13, v14, v15, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    .local v13, "childRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v13}, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 376
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v13}, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 380
    .end local v7    # "portScale":F
    .end local v8    # "insetHeight":I
    .end local v10    # "cX":I
    .end local v11    # "cY":I
    .end local v12    # "insetWidth":I
    .end local v13    # "childRect":Landroid/graphics/Rect;
    goto :goto_a9

    .line 381
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9f
    move-object/from16 v16, v4

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 382
    iget-object v3, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    .end local v5    # "adi":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v6    # "offset":I
    .end local v9    # "bounds":Landroid/graphics/Rect;
    :goto_a9
    goto :goto_113

    .line 385
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_aa
    move-object/from16 v16, v4

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_cc

    .line 386
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 387
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 388
    .local v4, "b":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_cc

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    if-nez v5, :cond_cc

    .line 389
    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 392
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "b":Landroid/graphics/Bitmap;
    :cond_cc
    move/from16 v3, p3

    .line 393
    .local v3, "width":I
    move/from16 v4, p3

    .line 395
    .local v4, "height":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 396
    .local v5, "intrinsicWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 397
    .local v6, "intrinsicHeight":I
    if-lez v5, :cond_ea

    if-lez v6, :cond_ea

    .line 399
    int-to-float v7, v5

    int-to-float v8, v6

    div-float/2addr v7, v8

    .line 400
    .local v7, "ratio":F
    if-le v5, v6, :cond_e5

    .line 401
    int-to-float v8, v3

    div-float/2addr v8, v7

    float-to-int v4, v8

    goto :goto_ea

    .line 402
    :cond_e5
    if-le v6, v5, :cond_ea

    .line 403
    int-to-float v8, v4

    mul-float/2addr v8, v7

    float-to-int v3, v8

    .line 406
    .end local v7    # "ratio":F
    :cond_ea
    :goto_ea
    sub-int v7, p3, v3

    div-int/lit8 v7, v7, 0x2

    .line 407
    .local v7, "left":I
    sub-int v8, p3, v4

    div-int/lit8 v8, v8, 0x2

    .line 408
    .local v8, "top":I
    add-int v9, v7, v3

    add-int v10, v8, v4

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    iget-object v9, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 410
    iget-object v9, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    div-int/lit8 v10, p3, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, p3, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v2, v2, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 411
    iget-object v9, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    iget-object v9, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 416
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "intrinsicWidth":I
    .end local v6    # "intrinsicHeight":I
    .end local v7    # "left":I
    .end local v8    # "top":I
    :goto_113
    iget-object v3, v0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 417
    iget-object v3, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    return-object v16
.end method

.method private blacklist createIconBitmapNoInsetOrMask(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F

    .line 333
    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local p2    # "scale":F
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    .local v2, "scale":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 125
    .local v1, "outVal":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 128
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2

    .line 126
    :cond_1b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist getBadgeSizeFromContext(Landroid/content/Context;)I
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 138
    const v0, 0x1120069

    const-string v1, "Expected theme to define iconfactoryBadgeSize."

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "iconDpi"    # I

    .line 324
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getIconSizeFromContext(Landroid/content/Context;)I
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 132
    const v0, 0x112006a

    const-string v1, "Expected theme to define iconfactoryIconSize."

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized blacklist getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F
    .registers 26
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 489
    :try_start_7
    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    .line 490
    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1d

    .line 491
    if-eqz v2, :cond_19

    .line 492
    iget-object v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 494
    .end local p0    # "this":Lcom/android/internal/app/SimpleIconFactory;
    :cond_19
    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1b8

    monitor-exit p0

    return v3

    .line 497
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 498
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 499
    .local v5, "height":I
    if-lez v3, :cond_41

    if-gtz v5, :cond_2a

    goto :goto_41

    .line 502
    :cond_2a
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-gt v3, v6, :cond_32

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v5, v6, :cond_59

    .line 503
    :cond_32
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 504
    .local v6, "max":I
    iget v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int/2addr v7, v3

    div-int/2addr v7, v6

    move v3, v7

    .line 505
    iget v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int/2addr v7, v5

    div-int/2addr v7, v6

    move v5, v7

    goto :goto_59

    .line 500
    .end local v6    # "max":I
    :cond_41
    :goto_41
    if-lez v3, :cond_4a

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v3, v6, :cond_48

    goto :goto_4a

    :cond_48
    move v6, v3

    goto :goto_4c

    :cond_4a
    :goto_4a
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    :goto_4c
    move v3, v6

    .line 501
    if-lez v5, :cond_56

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v5, v6, :cond_54

    goto :goto_56

    :cond_54
    move v6, v5

    goto :goto_58

    :cond_56
    :goto_56
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    :goto_58
    move v5, v6

    .line 508
    :cond_59
    :goto_59
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 509
    invoke-virtual {v0, v7, v7, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mScaleCheckCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 513
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 514
    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 517
    const/4 v7, -0x1

    .line 518
    .local v7, "topY":I
    const/4 v8, -0x1

    .line 519
    .local v8, "bottomY":I
    iget v9, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 520
    .local v9, "leftX":I
    const/4 v11, -0x1

    .line 527
    .local v11, "rightX":I
    const/4 v12, 0x0

    .line 529
    .local v12, "index":I
    iget v13, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    sub-int/2addr v13, v3

    .line 533
    .local v13, "rowSizeDiff":I
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_81
    const/4 v15, -0x1

    if-ge v14, v5, :cond_d8

    .line 534
    move/from16 v16, v15

    .local v16, "lastX":I
    move/from16 v17, v15

    .line 535
    .local v17, "firstX":I
    const/16 v18, 0x0

    move/from16 v10, v16

    move/from16 v16, v4

    move v4, v10

    move/from16 v10, v17

    move/from16 v15, v18

    .end local v16    # "lastX":I
    .end local v17    # "firstX":I
    .local v4, "lastX":I
    .local v10, "firstX":I
    .local v15, "x":I
    :goto_93
    if-ge v15, v3, :cond_af

    .line 536
    move-object/from16 v19, v6

    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .local v19, "buffer":Ljava/nio/ByteBuffer;
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    move/from16 v20, v12

    .end local v12    # "index":I
    .local v20, "index":I
    const/16 v12, 0x28

    if-le v6, v12, :cond_a8

    .line 537
    const/4 v6, -0x1

    if-ne v10, v6, :cond_a7

    .line 538
    move v10, v15

    .line 540
    :cond_a7
    move v4, v15

    .line 542
    :cond_a8
    add-int/lit8 v12, v20, 0x1

    .line 535
    .end local v20    # "index":I
    .restart local v12    # "index":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v19

    goto :goto_93

    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_af
    move-object/from16 v19, v6

    move/from16 v20, v12

    .line 544
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v12    # "index":I
    .end local v15    # "x":I
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "index":I
    add-int v12, v20, v13

    .line 546
    .end local v20    # "index":I
    .restart local v12    # "index":I
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    int-to-float v15, v10

    aput v15, v6, v14

    .line 547
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    int-to-float v15, v4

    aput v15, v6, v14

    .line 550
    const/4 v6, -0x1

    if-eq v10, v6, :cond_d0

    .line 551
    move v8, v14

    .line 552
    if-ne v7, v6, :cond_c6

    .line 553
    move v7, v14

    .line 556
    :cond_c6
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 557
    .end local v9    # "leftX":I
    .local v6, "leftX":I
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v11, v9

    move v9, v6

    .line 533
    .end local v6    # "leftX":I
    .restart local v9    # "leftX":I
    :cond_d0
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v16

    move-object/from16 v6, v19

    const/4 v10, 0x1

    goto :goto_81

    .end local v4    # "lastX":I
    .end local v10    # "firstX":I
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :cond_d8
    move/from16 v16, v4

    move-object/from16 v19, v6

    .line 561
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "y":I
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    if-eq v7, v6, :cond_1b0

    if-ne v11, v6, :cond_eb

    move/from16 v21, v3

    move/from16 v17, v4

    move/from16 v20, v7

    goto/16 :goto_1b6

    .line 566
    :cond_eb
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    const/4 v10, 0x1

    invoke-static {v6, v10, v7, v8}, Lcom/android/internal/app/SimpleIconFactory;->convertToConvexArray([FIII)V

    .line 567
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    const/4 v10, -0x1

    invoke-static {v6, v10, v7, v8}, Lcom/android/internal/app/SimpleIconFactory;->convertToConvexArray([FIII)V

    .line 570
    const/4 v6, 0x0

    .line 571
    .local v6, "area":F
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_f9
    if-ge v10, v5, :cond_114

    .line 572
    iget-object v14, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    aget v14, v14, v10

    const/high16 v15, -0x40800000    # -1.0f

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_106

    .line 573
    goto :goto_111

    .line 575
    :cond_106
    iget-object v14, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    aget v14, v14, v10

    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    aget v15, v15, v10

    sub-float/2addr v14, v15

    add-float/2addr v14, v4

    add-float/2addr v6, v14

    .line 571
    :goto_111
    add-int/lit8 v10, v10, 0x1

    goto :goto_f9

    .line 579
    .end local v10    # "y":I
    :cond_114
    add-int/lit8 v10, v8, 0x1

    sub-int/2addr v10, v7

    add-int/lit8 v14, v11, 0x1

    sub-int/2addr v14, v9

    mul-int/2addr v10, v14

    int-to-float v10, v10

    .line 580
    .local v10, "rectArea":F
    div-float v14, v6, v10

    .line 583
    .local v14, "hullByRect":F
    const v15, 0x3f490fdb

    cmpg-float v15, v14, v15

    if-gez v15, :cond_129

    .line 584
    const v15, 0x3f28e38e

    .local v15, "scaleRequired":F
    goto :goto_137

    .line 586
    .end local v15    # "scaleRequired":F
    :cond_129
    const v15, 0x3d25ae4f

    sub-float v17, v4, v14

    mul-float v17, v17, v15

    const v15, 0x3f26aaab

    add-float v17, v17, v15

    move/from16 v15, v17

    .line 588
    .restart local v15    # "scaleRequired":F
    :goto_137
    move/from16 v17, v4

    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 589
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v11, v4, Landroid/graphics/Rect;->right:I

    .line 591
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 592
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 594
    if-eqz v2, :cond_181

    .line 595
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move/from16 v18, v4

    int-to-float v4, v3

    div-float v4, v18, v4

    move/from16 v18, v6

    .end local v6    # "area":F
    .local v18, "area":F
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move/from16 v20, v6

    int-to-float v6, v5

    div-float v6, v20, v6

    move/from16 v20, v7

    .end local v7    # "topY":I
    .local v20, "topY":I
    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    move/from16 v21, v7

    int-to-float v7, v3

    div-float v7, v21, v7

    sub-float v7, v17, v7

    move/from16 v21, v3

    .end local v3    # "width":I
    .local v21, "width":I
    iget-object v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    move/from16 v22, v3

    int-to-float v3, v5

    div-float v3, v22, v3

    sub-float v3, v17, v3

    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_187

    .line 594
    .end local v18    # "area":F
    .end local v20    # "topY":I
    .end local v21    # "width":I
    .restart local v3    # "width":I
    .restart local v6    # "area":F
    .restart local v7    # "topY":I
    :cond_181
    move/from16 v21, v3

    move/from16 v18, v6

    move/from16 v20, v7

    .line 599
    .end local v3    # "width":I
    .end local v6    # "area":F
    .end local v7    # "topY":I
    .restart local v18    # "area":F
    .restart local v20    # "topY":I
    .restart local v21    # "width":I
    :goto_187
    mul-int v3, v21, v5

    int-to-float v3, v3

    div-float v6, v18, v3

    .line 601
    .local v6, "areaScale":F
    cmpl-float v3, v6, v15

    if-lez v3, :cond_199

    div-float v3, v15, v6

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v4, v3

    goto :goto_19b

    :cond_199
    move/from16 v4, v17

    .line 602
    .local v4, "scale":F
    :goto_19b
    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_1ae

    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    cmpl-float v3, v3, v16

    if-nez v3, :cond_1ae

    .line 603
    iput v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    .line 604
    iget-object v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1ae
    .catchall {:try_start_1d .. :try_end_1ae} :catchall_1b8

    .line 606
    :cond_1ae
    monitor-exit p0

    return v4

    .line 561
    .end local v4    # "scale":F
    .end local v6    # "areaScale":F
    .end local v10    # "rectArea":F
    .end local v14    # "hullByRect":F
    .end local v15    # "scaleRequired":F
    .end local v18    # "area":F
    .end local v20    # "topY":I
    .end local v21    # "width":I
    .restart local v3    # "width":I
    .restart local v7    # "topY":I
    :cond_1b0
    move/from16 v21, v3

    move/from16 v17, v4

    move/from16 v20, v7

    .line 563
    .end local v3    # "width":I
    .end local v7    # "topY":I
    .restart local v20    # "topY":I
    .restart local v21    # "width":I
    :goto_1b6
    monitor-exit p0

    return v17

    .line 488
    .end local v5    # "height":I
    .end local v8    # "bottomY":I
    .end local v9    # "leftX":I
    .end local v11    # "rightX":I
    .end local v12    # "index":I
    .end local v13    # "rowSizeDiff":I
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v20    # "topY":I
    .end local v21    # "width":I
    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    .end local p2    # "outBounds":Landroid/graphics/RectF;
    :catchall_1b8
    move-exception v0

    :try_start_1b9
    monitor-exit p0
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1b8

    throw v0
.end method

.method private synthetic blacklist lambda$createIconBitmap$0(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 373
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    return-void
.end method

.method private synthetic blacklist lambda$createIconBitmap$1(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 377
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 379
    return-void
.end method

.method private blacklist maskBitmapToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 297
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 304
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 305
    .local v3, "size":I
    const/high16 v4, 0x3d000000    # 0.03125f

    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 308
    .local v4, "offset":I
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    int-to-float v7, v4

    sub-float/2addr v9, v7

    .line 310
    invoke-virtual {v1, v6, v8, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 316
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 317
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 318
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 320
    return-object v0
.end method

.method private blacklist normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outIconBounds"    # Landroid/graphics/RectF;
    .param p3, "outScale"    # [F

    .line 423
    const/high16 v0, 0x3f800000    # 1.0f

    .line 425
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_15

    .line 426
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    const v2, 0x108063c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 430
    :cond_15
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 431
    .local v1, "dr":Landroid/graphics/drawable/AdaptiveIconDrawable;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v0

    .line 433
    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v3, :cond_42

    .line 434
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;

    .line 435
    .local v3, "fsd":Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
    invoke-virtual {v3, p1}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    invoke-virtual {v3, v0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->setScale(F)V

    .line 437
    move-object p1, v1

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v0

    .line 440
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 443
    .end local v3    # "fsd":Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
    :cond_42
    aput v0, p3, v2

    .line 444
    return-object p1
.end method

.method public static blacklist obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    sget-boolean v0, Lcom/android/internal/app/SimpleIconFactory;->sPoolEnabled:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SimpleIconFactory;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 98
    .local v0, "instance":Lcom/android/internal/app/SimpleIconFactory;
    :goto_e
    if-nez v0, :cond_32

    .line 99
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 100
    .local v1, "am":Landroid/app/ActivityManager;
    if-nez v1, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    .line 102
    .local v2, "iconDpi":I
    :goto_20
    invoke-static {p0}, Lcom/android/internal/app/SimpleIconFactory;->getIconSizeFromContext(Landroid/content/Context;)I

    move-result v3

    .line 103
    .local v3, "iconSize":I
    invoke-static {p0}, Lcom/android/internal/app/SimpleIconFactory;->getBadgeSizeFromContext(Landroid/content/Context;)I

    move-result v4

    .line 104
    .local v4, "badgeSize":I
    new-instance v5, Lcom/android/internal/app/SimpleIconFactory;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;-><init>(Landroid/content/Context;III)V

    move-object v0, v5

    .line 105
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/internal/app/SimpleIconFactory;->setWrapperBackgroundColor(I)V

    .line 108
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "iconDpi":I
    .end local v3    # "iconSize":I
    .end local v4    # "badgeSize":I
    :cond_32
    return-object v0
.end method

.method private declared-synchronized blacklist recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    .registers 13
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "blurMaskFilter"    # Landroid/graphics/BlurMaskFilter;
    .param p3, "ambientAlpha"    # I
    .param p4, "keyAlpha"    # I
    .param p5, "out"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 679
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [I

    .line 680
    .local v0, "offset":[I
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 681
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 684
    .local v1, "shadow":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 685
    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 688
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 689
    aget v2, v0, v2

    int-to-float v2, v2

    aget v3, v0, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    int-to-float v4, v4

    const v5, 0x3caaaaab

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 693
    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 694
    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p5, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_48

    .line 695
    monitor-exit p0

    return-void

    .line 678
    .end local v0    # "offset":[I
    .end local v1    # "shadow":Landroid/graphics/Bitmap;
    .end local p0    # "this":Lcom/android/internal/app/SimpleIconFactory;
    .end local p1    # "icon":Landroid/graphics/Bitmap;
    .end local p2    # "blurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local p3    # "ambientAlpha":I
    .end local p4    # "keyAlpha":I
    .end local p5    # "out":Landroid/graphics/Canvas;
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method private declared-synchronized blacklist recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "out"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 674
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const/4 v4, 0x7

    const/16 v5, 0xa

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .end local p1    # "icon":Landroid/graphics/Bitmap;
    .end local p2    # "out":Landroid/graphics/Canvas;
    .local v2, "icon":Landroid/graphics/Bitmap;
    .local v6, "out":Landroid/graphics/Canvas;
    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 675
    monitor-exit p0

    return-void

    .line 673
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v6    # "out":Landroid/graphics/Canvas;
    .end local p0    # "this":Lcom/android/internal/app/SimpleIconFactory;
    :catchall_e
    move-exception v0

    goto :goto_12

    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_e

    throw p1
.end method

.method public static blacklist setPoolEnabled(Z)V
    .registers 1
    .param p0, "poolEnabled"    # Z

    .line 119
    sput-boolean p0, Lcom/android/internal/app/SimpleIconFactory;->sPoolEnabled:Z

    .line 120
    return-void
.end method


# virtual methods
.method public blacklist createAppBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "renderedAppIcon"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    if-nez p1, :cond_8

    .line 257
    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    invoke-static {v0}, Lcom/android/internal/app/SimpleIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 262
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 263
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 264
    .local v1, "h":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 265
    .local v2, "scale":F
    if-le v1, v0, :cond_1b

    if-lez v0, :cond_1b

    .line 266
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    goto :goto_23

    .line 267
    :cond_1b
    if-le v0, v1, :cond_23

    if-lez v1, :cond_23

    .line 268
    int-to-float v3, v0

    int-to-float v4, v1

    div-float v2, v3, v4

    .line 270
    :cond_23
    :goto_23
    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmapNoInsetOrMask(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 271
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v3}, Lcom/android/internal/app/SimpleIconFactory;->maskBitmapToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 272
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 275
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    const/4 p1, 0x0

    invoke-direct {p0, v4, p1}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v2

    .line 276
    invoke-direct {p0, v4, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 278
    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 281
    if-eqz p2, :cond_69

    .line 283
    iget v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    iget v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    const/4 v7, 0x0

    invoke-static {p2, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 287
    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    iget v7, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    iget v8, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, p2, v6, v7, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 291
    :cond_69
    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    return-object v3
.end method

.method blacklist createUserBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 214
    .local v0, "scale":[F
    if-nez p1, :cond_b

    .line 215
    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    invoke-static {v1}, Lcom/android/internal/app/SimpleIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 217
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/SimpleIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 218
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 219
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_2e

    .line 220
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 222
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    :cond_2e
    if-eqz p2, :cond_4e

    .line 227
    new-instance v1, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v1, v2}, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 229
    .local v3, "badged":Landroid/graphics/drawable/Drawable;
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_47

    .line 230
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "result":Landroid/graphics/Bitmap;
    goto :goto_4d

    .line 232
    .end local v4    # "result":Landroid/graphics/Bitmap;
    :cond_47
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 234
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "badged":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    :goto_4d
    goto :goto_4f

    .line 235
    .end local v4    # "result":Landroid/graphics/Bitmap;
    :cond_4e
    move-object v4, v2

    .line 238
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    :goto_4f
    return-object v4
.end method

.method public blacklist recycle()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SimpleIconFactory;->setWrapperBackgroundColor(I)V

    .line 152
    sget-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method blacklist setWrapperBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_a

    const/4 v0, -0x1

    goto :goto_b

    :cond_a
    move v0, p1

    :goto_b
    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperBackgroundColor:I

    .line 195
    return-void
.end method
