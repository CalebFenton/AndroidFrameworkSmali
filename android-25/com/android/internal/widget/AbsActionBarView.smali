.class public abstract Lcom/android/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroid/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected mSplitActionBar:Z

.field protected mSplitView:Landroid/view/ViewGroup;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 43
    new-instance v1, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@5
    invoke-direct {v1, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    #@8
    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@a
    .line 76
    new-instance v0, Landroid/util/TypedValue;

    #@c
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@f
    .line 77
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@12
    move-result-object v1

    #@13
    const v2, 0x101048d

    #@16
    const/4 v3, 0x1

    #@17
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 78
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 79
    new-instance v1, Landroid/view/ContextThemeWrapper;

    #@23
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    #@25
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@28
    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@2a
    .line 73
    :goto_0
    return-void

    #@2b
    .line 81
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@2d
    goto :goto_0
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    #@0
    .prologue
    .line 315
    if-eqz p2, :cond_0

    #@2
    sub-int v0, p0, p1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    add-int v0, p0, p1

    #@7
    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 239
    const-wide/16 v2, 0xc8

    #@2
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    #@5
    move-result-object v0

    #@6
    .line 240
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@9
    .line 238
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@9
    .line 297
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@6
    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    #@8
    return v0

    #@9
    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getContentHeight()I
    .locals 1

    #@0
    .prologue
    .line 177
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@2
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 272
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 286
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 279
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowReserved()Z

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

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    #@0
    .prologue
    .line 305
    const/high16 v0, -0x80000000

    #@2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    #@9
    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@c
    move-result v0

    #@d
    sub-int/2addr p2, v0

    #@e
    .line 309
    sub-int/2addr p2, p4

    #@f
    .line 311
    const/4 v0, 0x0

    #@10
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 87
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@5
    .line 91
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    #@b
    .line 92
    const v3, 0x10102ce

    #@e
    .line 91
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@11
    move-result-object v0

    #@12
    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    #@13
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@16
    move-result v1

    #@17
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    #@1a
    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    .line 95
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 96
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@28
    move-result-object v1

    #@29
    .line 97
    const v2, 0x1120004

    #@2c
    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@2f
    move-result v1

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    #@33
    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 100
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@39
    invoke-virtual {v1, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3c
    .line 86
    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/16 v5, 0x9

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v0

    #@8
    .line 136
    .local v0, "action":I
    if-ne v0, v5, :cond_0

    #@a
    .line 137
    iput-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    #@c
    .line 140
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    #@e
    if-nez v2, :cond_1

    #@10
    .line 141
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 142
    .local v1, "handled":Z
    if-ne v0, v5, :cond_1

    #@16
    if-eqz v1, :cond_4

    #@18
    .line 147
    .end local v1    # "handled":Z
    :cond_1
    :goto_0
    const/16 v2, 0xa

    #@1a
    if-eq v0, v2, :cond_2

    #@1c
    .line 148
    const/4 v2, 0x3

    #@1d
    if-ne v0, v2, :cond_3

    #@1f
    .line 149
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    #@21
    .line 152
    :cond_3
    return v4

    #@22
    .line 143
    .restart local v1    # "handled":Z
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    #@24
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 112
    .local v0, "action":I
    if-nez v0, :cond_0

    #@8
    .line 113
    iput-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    #@a
    .line 116
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    #@c
    if-nez v2, :cond_1

    #@e
    .line 117
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result v1

    #@12
    .line 118
    .local v1, "handled":Z
    if-nez v0, :cond_1

    #@14
    if-eqz v1, :cond_4

    #@16
    .line 123
    .end local v1    # "handled":Z
    :cond_1
    :goto_0
    if-eq v0, v4, :cond_2

    #@18
    const/4 v2, 0x3

    #@19
    if-ne v0, v2, :cond_3

    #@1b
    .line 124
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    #@1d
    .line 127
    :cond_3
    return v4

    #@1e
    .line 119
    .restart local v1    # "handled":Z
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    #@20
    goto :goto_0
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    #@0
    .prologue
    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v2

    #@4
    .line 320
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@7
    move-result v0

    #@8
    .line 321
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    #@a
    div-int/lit8 v3, v3, 0x2

    #@c
    add-int v1, p3, v3

    #@e
    .line 323
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    #@10
    .line 324
    sub-int v3, p2, v2

    #@12
    add-int v4, v1, v0

    #@14
    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    #@17
    .line 329
    :goto_0
    if-eqz p5, :cond_0

    #@19
    neg-int v2, v2

    #@1a
    .end local v2    # "childWidth":I
    :cond_0
    return v2

    #@1b
    .line 326
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    #@1d
    add-int v4, v1, v0

    #@1f
    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    #@22
    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    #@0
    .prologue
    .line 261
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$1;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    #@8
    .line 260
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 172
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@2
    .line 173
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->requestLayout()V

    #@5
    .line 171
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    #@0
    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    #@2
    .line 159
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@2
    .line 180
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    #@0
    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    #@2
    .line 167
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-eq p1, v0, :cond_1

    #@6
    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@c
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@f
    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@12
    .line 244
    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 10
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    #@0
    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    .line 195
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 196
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@b
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    #@e
    .line 199
    :cond_0
    if-nez p1, :cond_3

    #@10
    .line 200
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 201
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/AbsActionBarView;->setAlpha(F)V

    #@19
    .line 202
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@1b
    if-eqz v3, :cond_1

    #@1d
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 203
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@23
    invoke-virtual {v3, v7}, Landroid/widget/ActionMenuView;->setAlpha(F)V

    #@26
    .line 206
    :cond_1
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@28
    new-array v4, v5, [F

    #@2a
    aput v8, v4, v6

    #@2c
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@2f
    move-result-object v0

    #@30
    .line 207
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@33
    .line 208
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@35
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@38
    .line 209
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@3a
    if-eqz v3, :cond_2

    #@3c
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@3e
    if-eqz v3, :cond_2

    #@40
    .line 210
    new-instance v1, Landroid/animation/AnimatorSet;

    #@42
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@45
    .line 211
    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@47
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@49
    new-array v5, v5, [F

    #@4b
    aput v8, v5, v6

    #@4d
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@50
    move-result-object v2

    #@51
    .line 212
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@54
    .line 213
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@56
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@5d
    .line 214
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@64
    .line 215
    return-object v1

    #@65
    .line 217
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@67
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@6e
    .line 218
    return-object v0

    #@6f
    .line 221
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@71
    new-array v4, v5, [F

    #@73
    aput v7, v4, v6

    #@75
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@78
    move-result-object v0

    #@79
    .line 222
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@7c
    .line 223
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@7e
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@81
    .line 224
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@83
    if-eqz v3, :cond_4

    #@85
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@87
    if-eqz v3, :cond_4

    #@89
    .line 225
    new-instance v1, Landroid/animation/AnimatorSet;

    #@8b
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@8e
    .line 226
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@90
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@92
    new-array v5, v5, [F

    #@94
    aput v7, v5, v6

    #@96
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@99
    move-result-object v2

    #@9a
    .line 227
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@9d
    .line 228
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@9f
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@a6
    .line 229
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@ad
    .line 230
    return-object v1

    #@ae
    .line 232
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@b0
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@b7
    .line 233
    return-object v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 257
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method
