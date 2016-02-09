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
.field private mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "state_"
    .end annotation
.end field

.field private mMutated:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/graphics/Paint;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@b
    .line 58
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@d
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>()V

    #@10
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@12
    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/graphics/Paint;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@b
    .line 67
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@d
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>()V

    #@10
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@12
    .line 69
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@15
    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 335
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/graphics/Paint;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@b
    .line 336
    iput-object p1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@d
    .line 338
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@10
    .line 335
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@4
    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@8
    iget-object v2, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/ColorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 346
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    .line 249
    .local v0, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    iget v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v2

    #@8
    or-int/2addr v1, v2

    #@9
    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    #@b
    .line 252
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    #@11
    .line 254
    iget v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@17
    move-result v1

    #@18
    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@1a
    .line 255
    iget v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@1c
    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@1e
    .line 245
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 267
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@5
    .line 268
    .local v1, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    if-nez v1, :cond_0

    #@7
    .line 269
    return-void

    #@8
    .line 272
    :cond_0
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 273
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    #@e
    sget-object v3, Lcom/android/internal/R$styleable;->ColorDrawable:[I

    #@10
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 274
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@17
    .line 275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 278
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@1c
    if-eqz v2, :cond_2

    #@1e
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 279
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@28
    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@2e
    .line 282
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v2

    #@32
    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@35
    .line 264
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;->canApplyTheme()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 97
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    #@6
    .line 95
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@5
    move-result-object v0

    #@6
    .line 103
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@8
    iget v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@a
    ushr-int/lit8 v1, v1, 0x18

    #@c
    if-nez v1, :cond_0

    #@e
    if-eqz v0, :cond_3

    #@10
    .line 104
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    #@12
    .line 105
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@14
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@16
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@19
    .line 108
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@1b
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@1d
    iget v2, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@1f
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@22
    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@28
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@2b
    .line 112
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@2d
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@30
    .line 101
    :cond_2
    return-void

    #@31
    .line 103
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@33
    if-eqz v1, :cond_2

    #@35
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@4
    ushr-int/lit8 v0, v0, 0x18

    #@6
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 74
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable$ColorState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getColor()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@4
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x3

    #@1
    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 212
    :cond_0
    return v1

    #@e
    .line 215
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@10
    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@12
    ushr-int/lit8 v0, v0, 0x18

    #@14
    sparse-switch v0, :sswitch_data_0

    #@17
    .line 221
    return v1

    #@18
    .line 217
    :sswitch_0
    const/4 v0, -0x1

    #@19
    return v0

    #@1a
    .line 219
    :sswitch_1
    const/4 v0, -0x2

    #@1b
    return v0

    #@1c
    .line 215
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    #@7
    .line 227
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    #@a
    move-result v0

    #@b
    int-to-float v0, v0

    #@c
    const/high16 v1, 0x437f0000    # 255.0f

    #@e
    div-float/2addr v0, v1

    #@f
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    #@12
    .line 225
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
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

    #@0
    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 235
    sget-object v1, Lcom/android/internal/R$styleable;->ColorDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/ColorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 236
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 237
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@f
    .line 239
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@12
    .line 232
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 86
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@13
    .line 87
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    #@16
    .line 89
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    .line 197
    .local v0, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 198
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@c
    iget-object v2, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    iget-object v3, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/ColorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@16
    .line 199
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 201
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public setAlpha(I)V
    .locals 5
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 157
    shr-int/lit8 v3, p1, 0x7

    #@2
    add-int/2addr p1, v3

    #@3
    .line 158
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@5
    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@7
    ushr-int/lit8 v0, v3, 0x18

    #@9
    .line 159
    .local v0, "baseAlpha":I
    mul-int v3, v0, p1

    #@b
    shr-int/lit8 v1, v3, 0x8

    #@d
    .line 160
    .local v1, "useAlpha":I
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@f
    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@11
    shl-int/lit8 v3, v3, 0x8

    #@13
    ushr-int/lit8 v3, v3, 0x8

    #@15
    shl-int/lit8 v4, v1, 0x18

    #@17
    or-int v2, v3, v4

    #@19
    .line 161
    .local v2, "useColor":I
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@1b
    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@1d
    if-eq v3, v2, :cond_0

    #@1f
    .line 162
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@21
    iput v2, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@23
    .line 163
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    #@26
    .line 156
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@4
    if-ne v0, p1, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@8
    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@a
    if-eq v0, p1, :cond_1

    #@c
    .line 135
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@e
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@10
    iput p1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    #@12
    iput p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    #@14
    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    #@17
    .line 133
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    .line 176
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    .line 183
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/ColorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 184
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    #@13
    .line 181
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/ColorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 191
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    #@13
    .line 188
    return-void
.end method
