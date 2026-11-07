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
.field private greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMutated:Z

.field private greylist-max-r mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 69
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 56
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 59
    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;->updateLocalState(Landroid/content/res/Resources;)V

    .line 60
    return-void
.end method

.method private greylist-max-o inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 10
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

    .line 463
    const/4 v0, 0x0

    .line 465
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 466
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_22

    const/4 v2, 0x3

    if-ne v3, v2, :cond_16

    .line 467
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_22

    .line 468
    :cond_16
    const/4 v2, 0x2

    if-ne v3, v2, :cond_5

    .line 469
    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget v2, v2, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    invoke-static {p1, p2, p3, v2, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5

    .line 474
    :cond_22
    if-eqz v0, :cond_27

    .line 475
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    :cond_27
    return-void
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 78
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_15

    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_15
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 194
    .local v0, "state":Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    if-nez v0, :cond_5

    .line 195
    return-void

    .line 199
    :cond_5
    iget v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    .line 202
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;[I)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 205
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_23
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 159
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 168
    :cond_14
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 169
    .local v0, "state":Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    if-nez v0, :cond_19

    .line 170
    return-void

    .line 173
    :cond_19
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 174
    .local v1, "densityDpi":I
    if-nez v1, :cond_28

    const/16 v2, 0xa0

    goto :goto_29

    :cond_28
    move v2, v1

    .line 175
    .local v2, "density":I
    :goto_29
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->setDensity(I)V

    .line 177
    invoke-static {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I

    move-result-object v3

    if-eqz v3, :cond_42

    .line 178
    invoke-static {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->DrawableWrapper:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 180
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v3}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 181
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    .end local v3    # "a":Landroid/content/res/TypedArray;
    :cond_42
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 447
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 448
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 449
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 451
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    .line 452
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    :cond_9
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_d

    :cond_b
    const/16 v0, 0xff

    :goto_d
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 247
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 248
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->getChangingConfigurations()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 249
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 247
    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 3

    .line 313
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_b

    .line 315
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    return-object v1

    .line 317
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 407
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 408
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    .line 409
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    return-object v0

    .line 411
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 278
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 279
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_11

    .line 281
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    :goto_11
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 392
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x2

    :goto_c
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_d

    :cond_b
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_d
    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 397
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 398
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_d

    .line 400
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 402
    :goto_d
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 254
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 351
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 9
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

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 138
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 139
    .local v0, "state":Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    if-nez v0, :cond_8

    .line 140
    return-void

    .line 145
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 146
    .local v1, "densityDpi":I
    if-nez v1, :cond_13

    const/16 v2, 0xa0

    goto :goto_14

    :cond_13
    move v2, v1

    .line 147
    .local v2, "targetDensity":I
    :goto_14
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->setDensity(I)V

    .line 148
    iget v3, p0, Landroid/graphics/drawable/DrawableWrapper;->mSrcDensityOverride:I

    iput v3, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    .line 150
    sget-object v3, Lcom/android/internal/R$styleable;->DrawableWrapper:[I

    invoke-static {p1, p4, p3, v3}, Landroid/graphics/drawable/DrawableWrapper;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 151
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v3}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 152
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 155
    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 216
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 217
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 218
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_9
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 2

    .line 368
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 369
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 371
    :cond_9
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 417
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    if-nez v0, :cond_30

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_30

    .line 418
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 419
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 420
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 422
    :cond_19
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_2d

    .line 423
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    iput-object v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 425
    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    .line 427
    :cond_30
    return-object p0
.end method

.method greylist-max-o mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 2

    .line 440
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    return-object v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 380
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 383
    :cond_9
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 336
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 375
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 4
    .param p1, "state"    # [I

    .line 356
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 358
    .local v0, "changed":Z
    if-eqz v0, :cond_1b

    .line 359
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 361
    :cond_1b
    return v0

    .line 363
    .end local v0    # "changed":Z
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 224
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 225
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 226
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 228
    :cond_9
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 295
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 297
    :cond_9
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 306
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 309
    :cond_9
    return-void
.end method

.method public whitelist setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 104
    :cond_a
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    if-eqz p1, :cond_41

    .line 107
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 111
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 112
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 116
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_41

    .line 117
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 121
    :cond_41
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    .line 122
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 264
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 267
    :cond_9
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 271
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 272
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 274
    :cond_9
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 329
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 330
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 332
    :cond_9
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 322
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 325
    :cond_9
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 287
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 288
    .local v0, "superChanged":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 289
    .local v1, "changed":Z
    :goto_13
    or-int v2, v0, v1

    return v2
.end method

.method public blacklist setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 89
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 92
    :cond_9
    return-void
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 232
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 233
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 234
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 236
    :cond_9
    return-void
.end method
