.class Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;
.super Ljava/lang/Object;
.source "KeyboardLayoutPreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceProvider"
.end annotation


# instance fields
.field private final blacklist mBackgroundPaint:Landroid/graphics/Paint;

.field private final blacklist mBackgroundRadius:F

.field private final blacklist mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final blacklist mKeyPadding:I

.field private final blacklist mKeyRadius:F

.field private final blacklist mKeyboardPadding:I

.field private final blacklist mPrimaryGlyphPaint:Landroid/graphics/Paint;

.field private final blacklist mSecondaryGlyphPaint:Landroid/graphics/Paint;

.field private final blacklist mSpToPxMultiplier:F

.field private final blacklist mSpecialKeyPaint:Landroid/graphics/Paint;

.field private final blacklist mTextPadding:F

.field private final blacklist mTypingKeyPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcalculateBestTextSizeForKey(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->calculateBestTextSizeForKey(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundRadius(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getBackgroundRadius()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetKeyPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)I
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getKeyPadding()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetKeyRadius(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getKeyRadius()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetKeyboardPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)I
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getKeyboardPadding()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPrimaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getPrimaryGlyphPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSecondaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getSecondaryGlyphPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getSpecialKeyPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getTextPadding()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTypingKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->getTypingKeyPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    nop

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 420
    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mKeyPadding:I

    .line 422
    nop

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 422
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mKeyboardPadding:I

    .line 424
    nop

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 424
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mKeyRadius:F

    .line 426
    nop

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 426
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mBackgroundRadius:F

    .line 428
    nop

    .line 429
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 428
    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSpToPxMultiplier:F

    .line 430
    nop

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 430
    invoke-static {v1, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mTextPadding:F

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-ne v0, v3, :cond_80

    move v0, v1

    goto :goto_81

    :cond_80
    move v0, v4

    .line 434
    .local v0, "isDark":Z
    :goto_81
    nop

    .line 435
    if-eqz v0, :cond_88

    const v3, 0x10600c1

    goto :goto_8b

    .line 436
    :cond_88
    const v3, 0x106006f

    .line 434
    :goto_8b
    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 437
    .local v3, "typingKeyColor":I
    if-eqz v0, :cond_95

    const v5, 0x1060027

    goto :goto_98

    .line 438
    :cond_95
    const v5, 0x1060062

    .line 437
    :goto_98
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 439
    .local v5, "specialKeyColor":I
    if-eqz v0, :cond_a2

    const v6, 0x1060098

    goto :goto_a5

    .line 440
    :cond_a2
    const v6, 0x106006d

    .line 439
    :goto_a5
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 441
    .local v6, "primaryGlyphColor":I
    if-eqz v0, :cond_af

    const v7, 0x10600a2

    goto :goto_b2

    .line 442
    :cond_af
    const v7, 0x1060077

    .line 441
    :goto_b2
    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 443
    .local v7, "secondaryGlyphColor":I
    nop

    .line 444
    if-eqz v0, :cond_bd

    const v8, 0x106009b

    goto :goto_c0

    .line 445
    :cond_bd
    const v8, 0x1060070

    .line 443
    :goto_c0
    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 446
    .local v8, "backgroundColor":I
    iget v9, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSpToPxMultiplier:F

    mul-float/2addr v9, v2

    sget-object v10, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 448
    invoke-static {v10, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 446
    invoke-static {v6, v9, v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->-$$Nest$smcreateTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mPrimaryGlyphPaint:Landroid/graphics/Paint;

    .line 449
    iget v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSpToPxMultiplier:F

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 451
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 449
    invoke-static {v7, v1, v2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->-$$Nest$smcreateTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSecondaryGlyphPaint:Landroid/graphics/Paint;

    .line 452
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mPrimaryGlyphPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 453
    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->-$$Nest$smcreateFillPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mTypingKeyPaint:Landroid/graphics/Paint;

    .line 454
    invoke-static {v5}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->-$$Nest$smcreateFillPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSpecialKeyPaint:Landroid/graphics/Paint;

    .line 455
    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->-$$Nest$smcreateFillPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 456
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private blacklist calculateBestTextSizeForKey(F)V
    .registers 6
    .param p1, "keyHeight"    # F

    .line 459
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSpToPxMultiplier:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 460
    .local v0, "textSize":I
    :goto_8
    int-to-float v1, v0

    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSpToPxMultiplier:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_33

    .line 461
    int-to-float v1, v0

    invoke-direct {p0, v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->updateTextSize(F)V

    .line 462
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mTextPadding:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_30

    .line 463
    add-int/lit8 v0, v0, -0x1

    .line 464
    goto :goto_33

    .line 466
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 468
    :cond_33
    :goto_33
    int-to-float v1, v0

    invoke-direct {p0, v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->updateTextSize(F)V

    .line 469
    return-void
.end method

.method private blacklist getBackgroundPaint()Landroid/graphics/Paint;
    .registers 2

    .line 478
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private blacklist getBackgroundRadius()F
    .registers 2

    .line 514
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mBackgroundRadius:F

    return v0
.end method

.method private blacklist getKeyPadding()I
    .registers 2

    .line 498
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mKeyPadding:I

    return v0
.end method

.method private blacklist getKeyRadius()F
    .registers 2

    .line 510
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mKeyRadius:F

    return v0
.end method

.method private blacklist getKeyboardPadding()I
    .registers 2

    .line 502
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mKeyboardPadding:I

    return v0
.end method

.method private blacklist getPrimaryGlyphPaint()Landroid/graphics/Paint;
    .registers 2

    .line 490
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mPrimaryGlyphPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private blacklist getSecondaryGlyphPaint()Landroid/graphics/Paint;
    .registers 2

    .line 494
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSecondaryGlyphPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private blacklist getSpecialKeyPaint()Landroid/graphics/Paint;
    .registers 2

    .line 486
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSpecialKeyPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private blacklist getTextPadding()F
    .registers 2

    .line 506
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mTextPadding:F

    return v0
.end method

.method private blacklist getTypingKeyPaint()Landroid/graphics/Paint;
    .registers 2

    .line 482
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mTypingKeyPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private blacklist updateTextSize(F)V
    .registers 4
    .param p1, "textSize"    # F

    .line 472
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mPrimaryGlyphPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 473
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mSecondaryGlyphPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 474
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mPrimaryGlyphPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 475
    return-void
.end method
