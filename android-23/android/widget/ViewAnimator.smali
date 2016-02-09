.class public Landroid/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field mAnimateFirstTime:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/view/animation/Animation;

.field mOutAnimation:Landroid/view/animation/Animation;

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@4
    .line 39
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@7
    .line 40
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    #@9
    .line 42
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    #@b
    .line 49
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, p1, v0}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@f
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 39
    iput v4, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@7
    .line 40
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    #@9
    .line 42
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    #@b
    .line 55
    sget-object v3, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    #@d
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14
    move-result v2

    #@15
    .line 57
    .local v2, "resource":I
    if-lez v2, :cond_0

    #@17
    .line 58
    invoke-virtual {p0, p1, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    #@1a
    .line 61
    :cond_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1d
    move-result v2

    #@1e
    .line 62
    if-lez v2, :cond_1

    #@20
    .line 63
    invoke-virtual {p0, p1, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    #@23
    .line 66
    :cond_1
    const/4 v3, 0x2

    #@24
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@27
    move-result v1

    #@28
    .line 67
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setAnimateFirstView(Z)V

    #@2b
    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2e
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@31
    .line 52
    return-void
.end method

.method private initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 79
    if-nez p2, :cond_0

    #@3
    .line 81
    iput-boolean v3, p0, Landroid/widget/ViewAnimator;->mMeasureAllChildren:Z

    #@5
    .line 82
    return-void

    #@6
    .line 88
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    #@8
    .line 87
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    #@d
    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@10
    move-result v1

    #@11
    .line 91
    .local v1, "measureAllChildren":Z
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setMeasureAllChildren(Z)V

    #@14
    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@17
    .line 78
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@4
    .line 184
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 185
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    #@e
    .line 189
    :goto_0
    if-ltz p2, :cond_0

    #@10
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@12
    if-lt v0, p2, :cond_0

    #@14
    .line 191
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    #@1b
    .line 182
    :cond_0
    return-void

    #@1c
    .line 187
    :cond_1
    const/16 v0, 0x8

    #@1e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@21
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 361
    const-class v0, Landroid/widget/ViewAnimator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAnimateFirstView()Z
    .locals 1

    #@0
    .prologue
    .line 340
    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    #@2
    return v0
.end method

.method public getBaseline()I
    .locals 1

    #@0
    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    #@12
    move-result v0

    #@13
    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 253
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayedChild()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@2
    return v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    #@2
    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    #@2
    return-object v0
.end method

.method public removeAllViews()V
    .locals 1

    #@0
    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@3
    .line 198
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@6
    .line 199
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    #@9
    .line 196
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 204
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->indexOfChild(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 205
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 206
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    #@9
    .line 203
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 212
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    #@4
    .line 213
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    #@7
    move-result v0

    #@8
    .line 214
    .local v0, "childCount":I
    if-nez v0, :cond_1

    #@a
    .line 215
    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@c
    .line 216
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    #@f
    .line 211
    :cond_0
    :goto_0
    return-void

    #@10
    .line 217
    :cond_1
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@12
    if-lt v1, v0, :cond_2

    #@14
    .line 219
    add-int/lit8 v1, v0, -0x1

    #@16
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    #@19
    goto :goto_0

    #@1a
    .line 220
    :cond_2
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@1c
    if-ne v1, p1, :cond_0

    #@1e
    .line 222
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@20
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    #@23
    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 227
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    #@3
    .line 226
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 231
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    #@4
    .line 232
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 233
    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@c
    .line 234
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    #@f
    .line 230
    :cond_0
    :goto_0
    return-void

    #@10
    .line 235
    :cond_1
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@12
    if-lt v0, p1, :cond_0

    #@14
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@16
    add-int v1, p1, p2

    #@18
    if-ge v0, v1, :cond_0

    #@1a
    .line 237
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@1c
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    #@1f
    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->removeViews(II)V

    #@3
    .line 241
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 351
    iput-boolean p1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    #@2
    .line 350
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 3
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 102
    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@3
    .line 103
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    #@6
    move-result v1

    #@7
    if-lt p1, v1, :cond_2

    #@9
    .line 104
    iput v2, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@b
    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getFocusedChild()Landroid/view/View;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_3

    #@11
    const/4 v0, 0x1

    #@12
    .line 110
    .local v0, "hasFocus":Z
    :goto_1
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@14
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->showOnly(I)V

    #@17
    .line 111
    if-eqz v0, :cond_1

    #@19
    .line 113
    const/4 v1, 0x2

    #@1a
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->requestFocus(I)Z

    #@1d
    .line 101
    :cond_1
    return-void

    #@1e
    .line 105
    .end local v0    # "hasFocus":Z
    :cond_2
    if-gez p1, :cond_0

    #@20
    .line 106
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    #@23
    move-result v1

    #@24
    add-int/lit8 v1, v1, -0x1

    #@26
    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@28
    goto :goto_0

    #@29
    .line 108
    :cond_3
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "hasFocus":Z
    goto :goto_1
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    #@0
    .prologue
    .line 314
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    #@7
    .line 313
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 277
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    #@2
    .line 276
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    #@0
    .prologue
    .line 327
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    #@7
    .line 326
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 301
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    #@2
    .line 300
    return-void
.end method

.method public showNext()V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    #@7
    .line 128
    return-void
.end method

.method showOnly(I)V
    .locals 2
    .param p1, "childIndex"    # I

    #@0
    .prologue
    .line 177
    iget-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    #@6
    .line 178
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/ViewAnimator;->showOnly(IZ)V

    #@9
    .line 176
    return-void

    #@a
    .line 177
    :cond_0
    const/4 v0, 0x1

    #@b
    .local v0, "animate":Z
    goto :goto_0
.end method

.method showOnly(IZ)V
    .locals 6
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 151
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 152
    .local v1, "count":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    #@8
    .line 153
    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 154
    .local v0, "child":Landroid/view/View;
    if-ne v2, p1, :cond_1

    #@e
    .line 155
    if-eqz p2, :cond_0

    #@10
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 156
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    #@16
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@19
    .line 158
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    #@1c
    .line 159
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    #@1e
    .line 152
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 161
    :cond_1
    if-eqz p2, :cond_3

    #@23
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    #@25
    if-eqz v3, :cond_3

    #@27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_3

    #@2d
    .line 162
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    #@2f
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@32
    .line 165
    :cond_2
    :goto_2
    const/16 v3, 0x8

    #@34
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@37
    goto :goto_1

    #@38
    .line 163
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@3b
    move-result-object v3

    #@3c
    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    #@3e
    if-ne v3, v4, :cond_2

    #@40
    .line 164
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@43
    goto :goto_2

    #@44
    .line 150
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public showPrevious()V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 137
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    #@7
    .line 136
    return-void
.end method
