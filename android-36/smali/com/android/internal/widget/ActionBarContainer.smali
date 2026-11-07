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
.field private blacklist mActionBarView:Landroid/view/View;

.field private blacklist mActionContextView:Landroid/view/View;

.field private blacklist mBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mHeight:I

.field private blacklist mIsSplit:Z

.field private blacklist mIsStacked:Z

.field private blacklist mIsTransitioning:Z

.field private blacklist mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mTabContainer:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionBarView(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSplit(Lcom/android/internal/widget/ActionBarContainer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStacked(Lcom/android/internal/widget/ActionBarContainer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStackedBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisCollapsed(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    sget-object v0, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getId()I

    move-result v1

    const v2, 0x1020544

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3d

    .line 70
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 71
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_3d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4a

    goto :goto_56

    :cond_4a
    move v3, v2

    goto :goto_56

    .line 77
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_55

    goto :goto_56

    :cond_55
    move v3, v2

    .line 76
    :goto_56
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 78
    return-void
.end method

.method private blacklist getMeasuredHeightWithMargins(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 280
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static blacklist isCollapsed(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 275
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .registers 7

    .line 156
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v0

    .line 159
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 161
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 162
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 163
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 166
    :cond_17
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 167
    .local v3, "stackedBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 168
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 171
    :cond_26
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 172
    .local v4, "splitBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 173
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    or-int/2addr v1, v5

    .line 176
    :cond_35
    if-eqz v1, :cond_3a

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 179
    :cond_3a
    return-void
.end method

.method public blacklist getTabContainer()Landroid/view/View;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 183
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 190
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 193
    :cond_1e
    return-void
.end method

.method public whitelist onFinishInflate()V
    .registers 2

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    const v0, 0x10201e3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 84
    const v0, 0x10201e8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    .line 85
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 241
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 228
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 319
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 321
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "b":I
    .local p2, "changed":Z
    .local p3, "l":I
    .local p4, "t":I
    .local p5, "r":I
    iget-object v1, p1, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 322
    .local v1, "tabContainer":Landroid/view/View;
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    move v4, v3

    .line 324
    .local v4, "hasTabs":Z
    :goto_19
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_3b

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v2

    .line 326
    .local v2, "containerHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 327
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 328
    .local v6, "tabHeight":I
    sub-int v7, v2, v6

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v2, v8

    invoke-virtual {v1, p3, v7, p5, v8}, Landroid/view/View;->layout(IIII)V

    .line 332
    .end local v2    # "containerHeight":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "tabHeight":I
    :cond_3b
    const/4 v2, 0x0

    .line 333
    .local v2, "needsInvalidate":Z
    iget-boolean v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v5, :cond_53

    .line 334
    iget-object v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9e

    .line 335
    iget-object v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v3, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 336
    const/4 v2, 0x1

    goto :goto_9e

    .line 339
    :cond_53
    iget-object v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_80

    .line 340
    iget-object v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_72

    iget-object v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    if-eqz v5, :cond_6c

    iget-object v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    .line 341
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6c

    goto :goto_72

    .line 344
    :cond_6c
    iget-object v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_7f

    .line 342
    :cond_72
    :goto_72
    iget-object v5, p1, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v3, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    :goto_7f
    const/4 v2, 0x1

    .line 348
    :cond_80
    iput-boolean v4, p1, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    .line 349
    if-eqz v4, :cond_9e

    iget-object v3, p1, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9e

    .line 350
    iget-object v3, p1, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 351
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 350
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 352
    const/4 v2, 0x1

    .line 356
    :cond_9e
    :goto_9e
    if-eqz v2, :cond_a3

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 359
    :cond_a3
    return-void
.end method

.method public whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1e

    .line 286
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    if-ltz v0, :cond_1e

    .line 287
    iget v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    .line 288
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 287
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 290
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_26

    return-void

    .line 294
    :cond_26
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_83

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 296
    .local v0, "verticalPadding":I
    const/4 v2, 0x0

    .line 297
    .local v2, "nonTabMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    .line 298
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_43
    if-ge v4, v3, :cond_61

    .line 299
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 300
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v5, v6, :cond_4e

    .line 301
    goto :goto_5e

    .line 303
    :cond_4e
    invoke-static {v5}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_56

    const/4 v6, 0x0

    goto :goto_5a

    .line 304
    :cond_56
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    .line 303
    :goto_5a
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 298
    .end local v5    # "child":Landroid/view/View;
    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 306
    .end local v4    # "i":I
    :cond_61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 307
    .local v4, "mode":I
    if-ne v4, v1, :cond_6c

    .line 308
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_6f

    :cond_6c
    const v1, 0x7fffffff

    .line 309
    .local v1, "maxHeight":I
    :goto_6f
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v5

    add-int v6, v0, v2

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 312
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    .line 310
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 309
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 315
    .end local v0    # "verticalPadding":I
    .end local v1    # "maxHeight":I
    .end local v2    # "nonTabMaxHeight":I
    .end local v3    # "childCount":I
    .end local v4    # "mode":I
    :cond_83
    return-void
.end method

.method public blacklist onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onResolveDrawables(I)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 207
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 210
    :cond_1e
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_f
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 93
    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 94
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 95
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v1, :cond_26

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    :cond_26
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3a

    move v0, v2

    goto :goto_3a

    .line 100
    :cond_31
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3a

    move v0, v2

    .line 99
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 102
    return-void
.end method

.method public blacklist setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_f
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 128
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 129
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 130
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2c

    .line 131
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_40

    move v0, v2

    goto :goto_40

    .line 135
    :cond_37
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_40

    move v0, v2

    .line 134
    :cond_40
    :goto_40
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 137
    return-void
.end method

.method public blacklist setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_f
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 110
    if-eqz p1, :cond_3b

    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 112
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 114
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 113
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    :cond_3b
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_46

    goto :goto_52

    :cond_46
    move v1, v2

    goto :goto_52

    .line 118
    :cond_48
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    .line 117
    :goto_52
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 120
    return-void
.end method

.method public blacklist setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 4
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 251
    :cond_9
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 252
    if-eqz p1, :cond_1e

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 254
    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 255
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 256
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 259
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1e
    return-void
.end method

.method public blacklist setTransitioning(Z)V
    .registers 3
    .param p1, "isTransitioning"    # Z

    .line 221
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 222
    if-eqz p1, :cond_7

    const/high16 v0, 0x60000

    goto :goto_9

    .line 223
    :cond_7
    const/high16 v0, 0x40000

    .line 222
    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 224
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 141
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 143
    .local v1, "isVisible":Z
    :goto_9
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 144
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 145
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 146
    :cond_24
    return-void
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 268
    if-eqz p3, :cond_7

    .line 269
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 271
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 150
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1e

    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_1e

    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1e

    .line 151
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 150
    :goto_21
    return v0
.end method
