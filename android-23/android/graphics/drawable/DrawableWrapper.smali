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
    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 61
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@6
    .line 62
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    .line 60
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@5
    .line 52
    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;->updateLocalState(Landroid/content/res/Resources;)V

    #@8
    .line 49
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 71
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
    .line 72
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@c
    iget-object v1, v1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@e
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    .line 73
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@15
    .line 70
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 134
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@5
    .line 135
    .local v0, "state":Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    if-nez v0, :cond_0

    #@7
    .line 136
    return-void

    #@8
    .line 139
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 140
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@19
    .line 131
    :cond_1
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 146
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
    .line 362
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 363
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 364
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@c
    .line 366
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    #@f
    .line 361
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@9
    .line 174
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 237
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
    .line 182
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v1

    #@4
    .line 183
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
    .line 182
    :goto_0
    or-int/2addr v0, v1

    #@f
    .line 184
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@14
    move-result v1

    #@15
    .line 182
    or-int/2addr v0, v1

    #@16
    return v0

    #@17
    .line 183
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
    .line 322
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
    .line 323
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@f
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getChangingConfigurations()I

    #@12
    move-result v1

    #@13
    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    #@15
    .line 324
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@17
    return-object v0

    #@18
    .line 326
    :cond_0
    return-object v1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 215
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    #@9
    .line 213
    :goto_0
    return-void

    #@a
    .line 217
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
    .line 307
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
    .line 302
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
    .line 268
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
    .line 195
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
    .line 312
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 313
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@9
    .line 311
    :goto_0
    return-void

    #@a
    .line 315
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
    .line 189
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

.method inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
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
    .line 377
    const/4 v0, 0x0

    #@1
    .line 379
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 380
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
    .line 381
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
    .line 382
    :cond_1
    const/4 v3, 0x2

    #@16
    if-ne v2, v3, :cond_0

    #@18
    .line 383
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v0

    #@1c
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@1d
    .line 387
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v0, :cond_3

    #@1f
    .line 388
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 375
    :cond_3
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 152
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 153
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 150
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 273
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
    .line 332
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
    .line 333
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@11
    .line 334
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 335
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1a
    .line 337
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 338
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
    .line 340
    :cond_2
    const/4 v0, 0x1

    #@2d
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    #@2f
    .line 342
    :cond_3
    return-object p0
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 1

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@2
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@9
    .line 294
    :cond_0
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 263
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
    .line 290
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
    .line 278
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
    .line 279
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@11
    move-result v0

    #@12
    .line 280
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    #@14
    .line 281
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    #@1b
    .line 283
    :cond_0
    return v0

    #@1c
    .line 285
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
    .line 159
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 160
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 161
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@9
    .line 158
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@9
    .line 229
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@9
    .line 241
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
    .line 83
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 84
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 87
    :cond_0
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 89
    if-eqz p1, :cond_1

    #@e
    .line 90
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@11
    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->isVisible()Z

    #@14
    move-result v0

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@19
    .line 94
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getState()[I

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@20
    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    #@23
    move-result v0

    #@24
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@27
    .line 96
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@2e
    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLayoutDirection()I

    #@31
    move-result v0

    #@32
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@35
    .line 99
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 100
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@3b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@41
    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    #@44
    .line 82
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 201
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@9
    .line 199
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
    .line 207
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@9
    .line 206
    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@9
    .line 248
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 257
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@9
    .line 255
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3
    move-result v1

    #@4
    .line 224
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
    .line 225
    :goto_0
    or-int v2, v1, v0

    #@10
    return v2

    #@11
    .line 224
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "changed":Z
    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 168
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 169
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@9
    .line 166
    :cond_0
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    #@2
    .line 117
    .local v0, "state":Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    if-nez v0, :cond_0

    #@4
    .line 118
    return-void

    #@5
    .line 122
    :cond_0
    iget v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    #@7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@a
    move-result v2

    #@b
    or-int/2addr v1, v2

    #@c
    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    #@e
    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@11
    move-result-object v1

    #@12
    iput-object v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    #@14
    .line 115
    return-void
.end method
