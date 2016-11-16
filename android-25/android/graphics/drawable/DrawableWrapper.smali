.class public abstract Landroid/graphics/drawable/DrawableWrapper;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapper.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    }
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@6
    .line 67
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    .line 65
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@5
    .line 57
    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;->updateLocalState(Landroid/content/res/Resources;)V

    #@8
    .line 54
    return-void
.end method

.method private inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
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
    .line 430
    const/4 v0, 0x0

    #@1
    .line 432
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 433
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v2

    #@9
    .local v2, "type":I
    const/4 v3, 0x1

    #@a
    if-eq v2, v3, :cond_2

    #@c
    .line 434
    const/4 v3, 0x3

    #@d
    if-ne v2, v3, :cond_1

    #@f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v3

    #@13
    if-le v3, v1, :cond_2

    #@15
    .line 435
    :cond_1
    const/4 v3, 0x2

    #@16
    if-ne v2, v3, :cond_0

    #@18
    .line 436
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v0

    #@1c
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@1d
    .line 440
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v0, :cond_3

    #@1f
    .line 441
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 428
    :cond_3
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 76
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@6
    iget-object v1, v1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 77
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@c
    iget-object v1, v1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@e
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    .line 78
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@15
    .line 75
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 180
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@3
    .line 181
    .local v0, "state":Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    if-nez v0, :cond_0

    #@5
    .line 182
    return-void

    #@6
    .line 186
    :cond_0
    iget v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    #@8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@b
    move-result v2

    #@c
    or-int/2addr v1, v2

    #@d
    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    #@f
    .line 189
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@12
    move-result-object v1

    #@13
    invoke-static {v0, v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-set0(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;[I)[I

    #@16
    .line 191
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 192
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@23
    .line 179
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 151
    iget-object v4, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v4, :cond_0

    #@7
    iget-object v4, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 152
    iget-object v4, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@14
    .line 155
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@16
    .line 156
    .local v3, "state":Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    if-nez v3, :cond_1

    #@18
    .line 157
    return-void

    #@19
    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@20
    move-result-object v4

    #@21
    iget v2, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    #@23
    .line 161
    .local v2, "densityDpi":I
    if-nez v2, :cond_3

    #@25
    const/16 v1, 0xa0

    #@27
    .line 162
    .local v1, "density":I
    :goto_0
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->setDensity(I)V

    #@2a
    .line 164
    invoke-static {v3}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-get0(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I

    #@2d
    move-result-object v4

    #@2e
    if-eqz v4, :cond_2

    #@30
    .line 166
    invoke-static {v3}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-get0(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I

    #@33
    move-result-object v4

    #@34
    sget-object v5, Lcom/android/internal/R$styleable;->DrawableWrapper:[I

    #@36
    .line 165
    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@39
    move-result-object v0

    #@3a
    .line 167
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@3d
    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@40
    .line 145
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void

    #@41
    .end local v1    # "density":I
    :cond_3
    move v1, v2

    #@42
    .line 161
    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 414
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 415
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 416
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@c
    .line 418
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    #@f
    .line 413
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@9
    .line 226
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/16 v0, 0xff

    #@d
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 234
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v1

    #@4
    .line 235
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->getChangingConfigurations()I

    #@d
    move-result v0

    #@e
    .line 234
    :goto_0
    or-int/2addr v0, v1

    #@f
    .line 236
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@14
    move-result v1

    #@15
    .line 234
    or-int/2addr v0, v1

    #@16
    return v0

    #@17
    .line 235
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 374
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canConstantState()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 375
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@f
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getChangingConfigurations()I

    #@12
    move-result v1

    #@13
    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    #@15
    .line 376
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@17
    return-object v0

    #@18
    .line 378
    :cond_0
    return-object v1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 267
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    #@9
    .line 265
    :goto_0
    return-void

    #@a
    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@11
    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, -0x1

    #@c
    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, -0x1

    #@c
    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, -0x2

    #@c
    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@d
    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 365
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@9
    .line 363
    :goto_0
    return-void

    #@a
    .line 367
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@d
    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
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
    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 126
    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@5
    .line 127
    .local v2, "state":Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    if-nez v2, :cond_0

    #@7
    .line 128
    return-void

    #@8
    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v4

    #@c
    iget v1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    #@e
    .line 134
    .local v1, "densityDpi":I
    if-nez v1, :cond_1

    #@10
    const/16 v3, 0xa0

    #@12
    .line 135
    .local v3, "targetDensity":I
    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->setDensity(I)V

    #@15
    .line 137
    sget-object v4, Lcom/android/internal/R$styleable;->DrawableWrapper:[I

    #@17
    invoke-static {p1, p4, p3, v4}, Landroid/graphics/drawable/DrawableWrapper;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1a
    move-result-object v0

    #@1b
    .line 138
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@1e
    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@21
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@24
    .line 123
    return-void

    #@25
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "targetDensity":I
    :cond_1
    move v3, v1

    #@26
    .line 134
    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 204
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 205
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 202
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 384
    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    #@3
    if-nez v1, :cond_3

    #@5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v1

    #@9
    if-ne v1, p0, :cond_3

    #@b
    .line 385
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@11
    .line 386
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 387
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1a
    .line 389
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 390
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@20
    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    if-eqz v2, :cond_1

    #@24
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@29
    move-result-object v0

    #@2a
    :cond_1
    iput-object v0, v1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@2c
    .line 392
    :cond_2
    const/4 v0, 0x1

    #@2d
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    #@2f
    .line 394
    :cond_3
    return-object p0
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 1

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@2
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 348
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@9
    .line 346
    :cond_0
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 330
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 331
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@11
    move-result v0

    #@12
    .line 332
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    #@14
    .line 333
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    #@1b
    .line 335
    :cond_0
    return v0

    #@1c
    .line 337
    .end local v0    # "changed":Z
    :cond_1
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 212
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 213
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@9
    .line 210
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 283
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@9
    .line 281
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 295
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@9
    .line 293
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 89
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 92
    :cond_0
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 94
    if-eqz p1, :cond_1

    #@e
    .line 95
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@11
    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->isVisible()Z

    #@14
    move-result v0

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@19
    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getState()[I

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@20
    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    #@23
    move-result v0

    #@24
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@27
    .line 101
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@2e
    .line 102
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLayoutDirection()I

    #@31
    move-result v0

    #@32
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@35
    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 105
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@3b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@41
    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    #@44
    .line 87
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 253
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@9
    .line 251
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@9
    .line 258
    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@9
    .line 300
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 309
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@9
    .line 307
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3
    move-result v1

    #@4
    .line 276
    .local v1, "superChanged":Z
    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@d
    move-result v0

    #@e
    .line 277
    .local v0, "changed":Z
    :goto_0
    or-int v2, v1, v0

    #@10
    return v2

    #@11
    .line 276
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 220
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 221
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@9
    .line 218
    :cond_0
    return-void
.end method
