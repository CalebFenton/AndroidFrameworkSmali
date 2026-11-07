.class public Landroid/graphics/drawable/ColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private blacklist mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private greylist-max-o mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "state_"
    .end annotation
.end field

.field private greylist-max-o mMutated:Z

.field private final greylist-max-r mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 71
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "color"    # I

    .line 78
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 81
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 82
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 393
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 394
    iput-object p1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 396
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 397
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 405
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v2, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/ColorDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 407
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 303
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 306
    .local v0, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    iget v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 309
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    .line 311
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 312
    iget v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 313
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 322
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 324
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 325
    .local v0, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    if-nez v0, :cond_8

    .line 326
    return-void

    .line 329
    :cond_8
    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    if-eqz v1, :cond_1a

    .line 330
    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->ColorDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 331
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 332
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1a
    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 336
    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 339
    :cond_2e
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 340
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 317
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 108
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    .line 110
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 114
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 115
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v1, v1, 0x18

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    if-eqz v1, :cond_34

    .line 117
    :cond_14
    if-nez v0, :cond_1d

    .line 118
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 121
    :cond_1d
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v2, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 125
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 127
    :cond_34
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 86
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable$ColorState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColor()I
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .registers 3

    .line 268
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    const/4 v1, -0x3

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_1c

    .line 272
    :cond_e
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_1e

    .line 278
    return v1

    .line 274
    :sswitch_18
    const/4 v0, -0x1

    return v0

    .line 276
    :sswitch_1a
    const/4 v0, -0x2

    return v0

    .line 269
    :cond_1c
    :goto_1c
    return v1

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1a
        0xff -> :sswitch_18
    .end sparse-switch
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 4
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 283
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 284
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 285
    return-void
.end method

.method public blacklist getXfermode()Landroid/graphics/Xfermode;
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 292
    sget-object v0, Lcom/android/internal/R$styleable;->ColorDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/ColorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 294
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 297
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 97
    iget-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    .line 98
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    .line 101
    :cond_16
    return-object p0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 6
    .param p1, "stateSet"    # [I

    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 229
    .local v0, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz v1, :cond_18

    .line 230
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/ColorDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 232
    const/4 v1, 0x1

    return v1

    .line 234
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAlpha(I)V
    .registers 6
    .param p1, "alpha"    # I

    .line 176
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    .line 177
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    ushr-int/lit8 v0, v0, 0x18

    .line 178
    .local v0, "baseAlpha":I
    mul-int v1, v0, p1

    shr-int/lit8 v1, v1, 0x8

    .line 179
    .local v1, "useAlpha":I
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v2, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v2, v2, 0x8

    shl-int/lit8 v3, v1, 0x18

    or-int/2addr v2, v3

    .line 180
    .local v2, "useColor":I
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    if-eq v3, v2, :cond_25

    .line 181
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput v2, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 182
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 184
    :cond_25
    return-void
.end method

.method public whitelist setColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    if-ne v0, p1, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    if-eq v0, p1, :cond_17

    .line 148
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput p1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 151
    :cond_17
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 197
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 220
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 221
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/ColorDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 223
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 224
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 212
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 213
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/ColorDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 216
    return-void
.end method

.method public greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 253
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 254
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 255
    return-void
.end method
