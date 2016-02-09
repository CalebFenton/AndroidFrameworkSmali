.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
    }
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mActionContextView:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/ActionBarContainer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/ActionBarContainer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 60
    new-instance v3, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;

    #@8
    invoke-direct {v3, p0, v4}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;)V

    #@b
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@e
    .line 63
    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    #@10
    .line 62
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    #@15
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v3

    #@19
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@1b
    .line 66
    const/16 v3, 0x12

    #@1d
    .line 65
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@20
    move-result-object v3

    #@21
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@23
    .line 67
    const/4 v3, 0x4

    #@24
    const/4 v4, -0x1

    #@25
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@28
    move-result v3

    #@29
    iput v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    #@2b
    .line 69
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getId()I

    #@2e
    move-result v3

    #@2f
    const v4, 0x10203b2

    #@32
    if-ne v3, v4, :cond_0

    #@34
    .line 70
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@36
    .line 72
    const/16 v3, 0x13

    #@38
    .line 71
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3b
    move-result-object v3

    #@3c
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3e
    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@41
    .line 76
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@43
    if-eqz v3, :cond_3

    #@45
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@47
    if-nez v3, :cond_2

    #@49
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    #@4c
    .line 56
    return-void

    #@4d
    :cond_2
    move v1, v2

    #@4e
    .line 76
    goto :goto_0

    #@4f
    .line 77
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@51
    if-nez v3, :cond_4

    #@53
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@55
    if-eqz v3, :cond_1

    #@57
    :cond_4
    move v1, v2

    #@58
    goto :goto_0
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@6
    .line 268
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@9
    move-result v1

    #@a
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@c
    add-int/2addr v1, v2

    #@d
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@f
    add-int/2addr v1, v2

    #@10
    return v1
.end method

.method private static isCollapsed(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 263
    if-eqz p0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@7
    move-result v2

    #@8
    const/16 v3, 0x8

    #@a
    if-ne v2, v3, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    move v0, v1

    #@14
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    #@3
    .line 158
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@18
    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@1e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2d
    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@2f
    if-eqz v0, :cond_2

    #@31
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@33
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3b
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@42
    .line 156
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    #@3
    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@15
    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@1e
    .line 170
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    #@3
    .line 83
    const v0, 0x10203b0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@c
    .line 84
    const v0, 0x10203b1

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    #@15
    .line 81
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    .line 232
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 304
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@3
    .line 306
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@5
    .line 307
    .local v4, "tabContainer":Landroid/view/View;
    if-eqz v4, :cond_3

    #@7
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@a
    move-result v6

    #@b
    const/16 v7, 0x8

    #@d
    if-eq v6, v7, :cond_3

    #@f
    const/4 v1, 0x1

    #@10
    .line 309
    .local v1, "hasTabs":Z
    :goto_0
    if-eqz v4, :cond_0

    #@12
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v6

    #@16
    const/16 v7, 0x8

    #@18
    if-eq v6, v7, :cond_0

    #@1a
    .line 310
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    #@1d
    move-result v0

    #@1e
    .line 311
    .local v0, "containerHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    #@24
    .line 312
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@27
    move-result v5

    #@28
    .line 313
    .local v5, "tabHeight":I
    sub-int v6, v0, v5

    #@2a
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@2c
    sub-int/2addr v6, v7

    #@2d
    .line 314
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@2f
    sub-int v7, v0, v7

    #@31
    .line 313
    invoke-virtual {v4, p2, v6, p4, v7}, Landroid/view/View;->layout(IIII)V

    #@34
    .line 317
    .end local v0    # "containerHeight":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "tabHeight":I
    :cond_0
    const/4 v3, 0x0

    #@35
    .line 318
    .local v3, "needsInvalidate":Z
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@37
    if-eqz v6, :cond_4

    #@39
    .line 319
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3b
    if-eqz v6, :cond_1

    #@3d
    .line 320
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3f
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    #@42
    move-result v7

    #@43
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    #@46
    move-result v8

    #@47
    const/4 v9, 0x0

    #@48
    const/4 v10, 0x0

    #@49
    invoke-virtual {v6, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@4c
    .line 321
    const/4 v3, 0x1

    #@4d
    .line 345
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    #@4f
    .line 346
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    #@52
    .line 303
    :cond_2
    return-void

    #@53
    .line 307
    .end local v1    # "hasTabs":Z
    .end local v3    # "needsInvalidate":Z
    :cond_3
    const/4 v1, 0x0

    #@54
    .restart local v1    # "hasTabs":Z
    goto :goto_0

    #@55
    .line 324
    .restart local v3    # "needsInvalidate":Z
    :cond_4
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@57
    if-eqz v6, :cond_5

    #@59
    .line 325
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@5b
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@5e
    move-result v6

    #@5f
    if-nez v6, :cond_6

    #@61
    .line 326
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@63
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@65
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@68
    move-result v7

    #@69
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@6b
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    #@6e
    move-result v8

    #@6f
    .line 327
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@71
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    #@74
    move-result v9

    #@75
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@77
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@7a
    move-result v10

    #@7b
    .line 326
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@7e
    .line 335
    :goto_2
    const/4 v3, 0x1

    #@7f
    .line 337
    :cond_5
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    #@81
    .line 338
    if-eqz v1, :cond_1

    #@83
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@85
    if-eqz v6, :cond_1

    #@87
    .line 339
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@89
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@8c
    move-result v7

    #@8d
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@90
    move-result v8

    #@91
    .line 340
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@94
    move-result v9

    #@95
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@98
    move-result v10

    #@99
    .line 339
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@9c
    .line 341
    const/4 v3, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 328
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    #@a0
    if-eqz v6, :cond_7

    #@a2
    .line 329
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    #@a4
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@a7
    move-result v6

    #@a8
    if-nez v6, :cond_7

    #@aa
    .line 330
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@ac
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    #@ae
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@b1
    move-result v7

    #@b2
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    #@b4
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    #@b7
    move-result v8

    #@b8
    .line 331
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    #@ba
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    #@bd
    move-result v9

    #@be
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    #@c0
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@c3
    move-result v10

    #@c4
    .line 330
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@c7
    goto :goto_2

    #@c8
    .line 333
    :cond_7
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@ca
    const/4 v7, 0x0

    #@cb
    const/4 v8, 0x0

    #@cc
    const/4 v9, 0x0

    #@cd
    const/4 v10, 0x0

    #@ce
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@d1
    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/high16 v9, -0x80000000

    #@3
    .line 273
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@5
    if-nez v6, :cond_0

    #@7
    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@a
    move-result v6

    #@b
    if-ne v6, v9, :cond_0

    #@d
    iget v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    #@f
    if-ltz v6, :cond_0

    #@11
    .line 276
    iget v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    #@13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@16
    move-result v8

    #@17
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v6

    #@1b
    .line 275
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1e
    move-result p2

    #@1f
    .line 278
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@22
    .line 280
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@24
    if-nez v6, :cond_1

    #@26
    return-void

    #@27
    .line 282
    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@29
    if-eqz v6, :cond_5

    #@2b
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@2d
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@30
    move-result v6

    #@31
    const/16 v8, 0x8

    #@33
    if-eq v6, v8, :cond_5

    #@35
    .line 283
    const/4 v5, 0x0

    #@36
    .line 284
    .local v5, "nonTabMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    #@39
    move-result v1

    #@3a
    .line 285
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@3b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    #@3d
    .line 286
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    #@40
    move-result-object v0

    #@41
    .line 287
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@43
    if-ne v0, v6, :cond_2

    #@45
    .line 285
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_0

    #@48
    .line 290
    :cond_2
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    #@4b
    move-result v6

    #@4c
    if-eqz v6, :cond_3

    #@4e
    move v6, v7

    #@4f
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@52
    move-result v5

    #@53
    goto :goto_1

    #@54
    .line 291
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    #@57
    move-result v6

    #@58
    goto :goto_2

    #@59
    .line 293
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@5c
    move-result v4

    #@5d
    .line 294
    .local v4, "mode":I
    if-ne v4, v9, :cond_6

    #@5f
    .line 295
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@62
    move-result v3

    #@63
    .line 296
    .local v3, "maxHeight":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    #@66
    move-result v6

    #@67
    .line 297
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@69
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    #@6c
    move-result v7

    #@6d
    add-int/2addr v7, v5

    #@6e
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    #@71
    move-result v7

    #@72
    .line 296
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    #@75
    .line 272
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "maxHeight":I
    .end local v4    # "mode":I
    .end local v5    # "nonTabMaxHeight":I
    :cond_5
    return-void

    #@76
    .line 295
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "mode":I
    .restart local v5    # "nonTabMaxHeight":I
    :cond_6
    const v3, 0x7fffffff

    #@79
    .restart local v3    # "maxHeight":I
    goto :goto_3
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onResolveDrawables(I)V

    #@3
    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@c
    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@15
    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@1e
    .line 187
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    .line 224
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 88
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 89
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@c
    .line 90
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 92
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@13
    .line 93
    if-eqz p1, :cond_1

    #@15
    .line 94
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@18
    .line 95
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 96
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@1e
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@20
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@23
    move-result v3

    #@24
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@26
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@29
    move-result v4

    #@2a
    .line 97
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@2c
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    #@2f
    move-result v5

    #@30
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@32
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@35
    move-result v6

    #@36
    .line 96
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@39
    .line 100
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@3b
    if-eqz v2, :cond_4

    #@3d
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3f
    if-nez v2, :cond_3

    #@41
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    #@44
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    #@47
    .line 87
    return-void

    #@48
    :cond_3
    move v0, v1

    #@49
    .line 100
    goto :goto_0

    #@4a
    .line 101
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@4c
    if-nez v2, :cond_5

    #@4e
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@50
    if-eqz v2, :cond_2

    #@52
    :cond_5
    move v0, v1

    #@53
    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 124
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 125
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@c
    .line 126
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 128
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@13
    .line 129
    if-eqz p1, :cond_1

    #@15
    .line 130
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@18
    .line 131
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@1a
    if-eqz v2, :cond_1

    #@1c
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 132
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    #@25
    move-result v3

    #@26
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    #@29
    move-result v4

    #@2a
    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2d
    .line 135
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@2f
    if-eqz v2, :cond_4

    #@31
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@33
    if-nez v2, :cond_3

    #@35
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    #@38
    .line 137
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    #@3b
    .line 123
    return-void

    #@3c
    :cond_3
    move v0, v1

    #@3d
    .line 135
    goto :goto_0

    #@3e
    .line 136
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@40
    if-nez v2, :cond_5

    #@42
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@44
    if-eqz v2, :cond_2

    #@46
    :cond_5
    move v0, v1

    #@47
    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 106
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 107
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@c
    .line 108
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@13
    .line 111
    if-eqz p1, :cond_1

    #@15
    .line 112
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@18
    .line 113
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    #@1a
    if-eqz v2, :cond_1

    #@1c
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 114
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@22
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@24
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@27
    move-result v3

    #@28
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@2a
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@2d
    move-result v4

    #@2e
    .line 115
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@30
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    #@33
    move-result v5

    #@34
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@36
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@39
    move-result v6

    #@3a
    .line 114
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3d
    .line 118
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@3f
    if-eqz v2, :cond_4

    #@41
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@43
    if-nez v2, :cond_3

    #@45
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    #@48
    .line 120
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    #@4b
    .line 105
    return-void

    #@4c
    :cond_3
    move v0, v1

    #@4d
    .line 118
    goto :goto_0

    #@4e
    .line 119
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@50
    if-nez v2, :cond_5

    #@52
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@54
    if-eqz v2, :cond_2

    #@56
    :cond_5
    move v0, v1

    #@57
    goto :goto_0
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    #@0
    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 237
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@6
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    #@9
    .line 239
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@b
    .line 240
    if-eqz p1, :cond_1

    #@d
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    #@10
    .line 242
    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v0

    #@14
    .line 243
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    #@15
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@17
    .line 244
    const/4 v1, -0x2

    #@18
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@1a
    .line 245
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    #@1e
    .line 235
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    #@0
    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    #@2
    .line 210
    if-eqz p1, :cond_0

    #@4
    const/high16 v0, 0x60000

    #@6
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    #@9
    .line 208
    return-void

    #@a
    .line 211
    :cond_0
    const/high16 v0, 0x40000

    #@c
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@4
    .line 143
    if-nez p1, :cond_3

    #@6
    const/4 v0, 0x1

    #@7
    .line 144
    .local v0, "isVisible":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@10
    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_1

    #@14
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@19
    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@22
    .line 141
    :cond_2
    return-void

    #@23
    .line 143
    .end local v0    # "isVisible":Z
    :cond_3
    const/4 v0, 0x0

    #@24
    .restart local v0    # "isVisible":Z
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 256
    if-eqz p3, :cond_0

    #@2
    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 259
    :cond_0
    const/4 v0, 0x0

    #@8
    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@6
    if-eqz v0, :cond_3

    #@8
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@a
    if-ne p1, v0, :cond_1

    #@c
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    #@e
    if-nez v0, :cond_3

    #@10
    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@12
    if-ne p1, v0, :cond_2

    #@14
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    #@16
    .line 151
    if-nez v0, :cond_3

    #@18
    .line 152
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@1b
    move-result v0

    #@1c
    .line 151
    :goto_0
    return v0

    #@1d
    :cond_3
    const/4 v0, 0x1

    #@1e
    goto :goto_0
.end method
