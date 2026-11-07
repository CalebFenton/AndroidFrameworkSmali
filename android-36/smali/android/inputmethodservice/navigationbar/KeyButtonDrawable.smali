.class final Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;
    }
.end annotation


# static fields
.field public static final blacklist KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mAnimatedDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final blacklist mIconPaint:Landroid/graphics/Paint;

.field private final blacklist mShadowPaint:Landroid/graphics/Paint;

.field private final blacklist mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;

    const-string v1, "KeyButtonRotation"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    .line 69
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$2;

    const-string v1, "KeyButtonTranslateY"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V
    .registers 12
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I
    .param p4, "horizontalFlip"    # Z
    .param p5, "ovalBackgroundColor"    # Landroid/graphics/Color;

    .line 105
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    instance-of v3, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move v1, p2

    move v2, p3

    move v4, p4

    move-object v5, p5

    .end local p2    # "lightColor":I
    .end local p3    # "darkColor":I
    .end local p4    # "horizontalFlip":Z
    .end local p5    # "ovalBackgroundColor":Landroid/graphics/Color;
    .local v1, "lightColor":I
    .local v2, "darkColor":I
    .local v4, "horizontalFlip":Z
    .local v5, "ovalBackgroundColor":Landroid/graphics/Color;
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;-><init>(IIZZLandroid/graphics/Color;)V

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V

    .line 107
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V
    .registers 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    .line 109
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 110
    iput-object p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    .line 111
    if-eqz p1, :cond_3d

    .line 112
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    .line 113
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    .line 114
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 115
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 117
    :cond_3d
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 118
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 119
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_5f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lightColor"    # I
    .param p2, "darkColor"    # I
    .param p3, "iconResId"    # I
    .param p4, "hasShadow"    # Z
    .param p5, "ovalBackgroundColor"    # Landroid/graphics/Color;

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 470
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    .line 471
    .local v1, "isRtl":Z
    :goto_13
    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 472
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_23

    .line 473
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_23

    move v8, v3

    goto :goto_24

    :cond_23
    move v8, v2

    :goto_24
    move v6, p1

    move v7, p2

    move-object v9, p5

    .end local p1    # "lightColor":I
    .end local p2    # "darkColor":I
    .end local p5    # "ovalBackgroundColor":Landroid/graphics/Color;
    .local v6, "lightColor":I
    .local v7, "darkColor":I
    .local v9, "ovalBackgroundColor":Landroid/graphics/Color;
    invoke-direct/range {v4 .. v9}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V

    .line 474
    .local v4, "drawable":Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    if-eqz p4, :cond_42

    .line 475
    const/4 p1, 0x0

    invoke-static {p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    .line 476
    .local p1, "offsetX":I
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p2

    .line 477
    .local p2, "offsetY":I
    const/high16 p5, 0x3f000000    # 0.5f

    invoke-static {p5, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p5

    .line 478
    .local p5, "radius":I
    const/high16 v2, 0x30000000

    .line 479
    .local v2, "color":I
    invoke-virtual {v4, p1, p2, p5, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setShadowProperties(IIII)V

    .line 481
    .end local v2    # "color":I
    .end local p1    # "offsetX":I
    .end local p2    # "offsetY":I
    .end local p5    # "radius":I
    :cond_42
    return-object v4
.end method

.method private blacklist regenerateBitmapIconCache()V
    .registers 10

    .line 331
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 332
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 333
    .local v1, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 334
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .local v3, "canvas":Landroid/graphics/Canvas;
    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v4, v4, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 338
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 339
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 340
    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v5, :cond_38

    .line 341
    int-to-float v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    int-to-float v7, v1

    mul-float/2addr v7, v6

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6, v8, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 343
    :cond_38
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 346
    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v5, :cond_4b

    .line 347
    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 349
    :cond_4b
    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v2, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    .line 350
    return-void
.end method

.method private blacklist regenerateBitmapShadowCache()V
    .registers 12

    .line 353
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 355
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    .line 356
    return-void

    .line 359
    :cond_c
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 360
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 361
    .local v2, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 362
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 365
    .local v4, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 366
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 367
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 368
    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v6, v6, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v6, :cond_44

    .line 369
    int-to-float v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    int-to-float v8, v2

    mul-float/2addr v8, v7

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7, v9, v6, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 371
    :cond_44
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 375
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 376
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v8, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v8, v8

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 377
    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 378
    .local v7, "offset":[I
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 379
    .local v8, "shadow":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 380
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 381
    aget v9, v7, v1

    int-to-float v9, v9

    const/4 v10, 0x1

    aget v10, v7, v10

    int-to-float v10, v10

    invoke-virtual {v4, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 383
    iget-object v9, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v9, v9, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v9, :cond_83

    .line 384
    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v9, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 386
    :cond_83
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v3, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    .line 387
    return-void
.end method

.method private blacklist setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 405
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    .local v0, "offsetX":I
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 407
    .local v1, "offsetY":I
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v2, v0

    .line 408
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v3, v1

    .line 407
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    return-void
.end method

.method private blacklist updateShadowAlpha()V
    .registers 6

    .line 395
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 396
    .local v0, "alpha":I
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    .line 397
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 396
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    return-void
.end method


# virtual methods
.method public blacklist canAnimate()Z
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    return v0
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 319
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public blacklist clearAnimationCallbacks()V
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 273
    :cond_9
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 277
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 278
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 279
    return-void

    .line 282
    :cond_b
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_16

    .line 283
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ce

    .line 287
    :cond_16
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eq v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 288
    .local v1, "hwBitmapChanged":Z
    :goto_23
    if-eqz v1, :cond_2d

    .line 289
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    iput-boolean v3, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    .line 291
    :cond_2d
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_35

    if-eqz v1, :cond_38

    .line 292
    :cond_35
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->regenerateBitmapIconCache()V

    .line 294
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 295
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 298
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-lez v2, :cond_c1

    .line 299
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_69

    if-eqz v1, :cond_6c

    .line 300
    :cond_69
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->regenerateBitmapShadowCache()V

    .line 304
    :cond_6c
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 305
    .local v2, "radians":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    float-to-double v5, v2

    .line 306
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v7, v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v4, v4, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    sub-float/2addr v3, v4

    .line 307
    .local v3, "shadowOffsetX":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v6, v6, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    float-to-double v6, v2

    .line 308
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v8, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    sub-float/2addr v4, v5

    .line 309
    .local v4, "shadowOffsetY":F
    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 312
    .end local v2    # "radians":F
    .end local v3    # "shadowOffsetX":F
    .end local v4    # "shadowOffsetY":F
    :cond_c1
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 315
    .end local v1    # "hwBitmapChanged":Z
    :goto_ce
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    return-object v0
.end method

.method public blacklist getDarkIntensity()F
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    return v0
.end method

.method blacklist getDrawableBackgroundColor()I
    .registers 2

    .line 323
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    return v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 4

    .line 245
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 4

    .line 250
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 240
    const/4 v0, -0x3

    return v0
.end method

.method public blacklist getRotation()F
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    return v0
.end method

.method public blacklist getTranslationX()F
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    return v0
.end method

.method public blacklist getTranslationY()F
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    return v0
.end method

.method blacklist hasOvalBg()Z
    .registers 2

    .line 327
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 2

    .line 189
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 190
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_c

    .line 191
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->jumpToCurrentState()V

    .line 193
    :cond_c
    return-void
.end method

.method public blacklist resetAnimation()V
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 267
    :cond_9
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 197
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    .line 198
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 199
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    .line 200
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    .line 201
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 6
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 205
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 206
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_25

    .line 207
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 208
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_25

    .line 211
    :cond_20
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 214
    :cond_25
    :goto_25
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    .line 215
    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .registers 5
    .param p1, "intensity"    # F

    .line 125
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    .line 126
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    .local v0, "color":I
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    .line 129
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 130
    return-void
.end method

.method public blacklist setRotation(F)V
    .registers 3
    .param p1, "degrees"    # F

    .line 133
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    return-void

    .line 137
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_16

    .line 138
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    .line 139
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    .line 141
    :cond_16
    return-void
.end method

.method public blacklist setShadowProperties(IIII)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # I
    .param p4, "color"    # I

    .line 160
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    return-void

    .line 164
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    if-ne v0, p2, :cond_1f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-ne v0, p3, :cond_1f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    if-eq v0, p4, :cond_45

    .line 166
    :cond_1f
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    .line 167
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    .line 168
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    .line 169
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p4, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    .line 170
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 172
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    .line 173
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    .line 175
    :cond_45
    return-void
.end method

.method public blacklist setTranslation(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 152
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1b

    .line 153
    :cond_10
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    .line 154
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    .line 155
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    .line 157
    :cond_1b
    return-void
.end method

.method public blacklist setTranslationX(F)V
    .registers 3
    .param p1, "x"    # F

    .line 144
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setTranslation(FF)V

    .line 145
    return-void
.end method

.method public blacklist setTranslationY(F)V
    .registers 3
    .param p1, "y"    # F

    .line 148
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    invoke-virtual {p0, v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setTranslation(FF)V

    .line 149
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 179
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 180
    .local v0, "changed":Z
    if-eqz v0, :cond_9

    .line 182
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->jumpToCurrentState()V

    .line 184
    :cond_9
    return v0
.end method

.method public blacklist startAnimation()V
    .registers 2

    .line 258
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_9

    .line 259
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 261
    :cond_9
    return-void
.end method
