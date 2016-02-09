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
    .line 38
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 64
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
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 42
    new-instance v1, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@5
    invoke-direct {v1, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    #@8
    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@a
    .line 72
    new-instance v0, Landroid/util/TypedValue;

    #@c
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@f
    .line 73
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
    .line 74
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 75
    new-instance v1, Landroid/view/ContextThemeWrapper;

    #@23
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    #@25
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@28
    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@2a
    .line 69
    :goto_0
    return-void

    #@2b
    .line 77
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
    .line 260
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
    .line 184
    const-wide/16 v2, 0xc8

    #@2
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    #@5
    move-result-object v0

    #@6
    .line 185
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@9
    .line 183
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 239
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
    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@9
    .line 242
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@6
    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    #@8
    return v0

    #@9
    .line 136
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
    .line 122
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@2
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 217
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 231
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 224
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    #@0
    .prologue
    .line 235
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
    .line 250
    const/high16 v0, -0x80000000

    #@2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    #@9
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@c
    move-result v0

    #@d
    sub-int/2addr p2, v0

    #@e
    .line 254
    sub-int/2addr p2, p4

    #@f
    .line 256
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
    .line 83
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@5
    .line 87
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    #@b
    .line 88
    const v3, 0x10102ce

    #@e
    .line 87
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@11
    move-result-object v0

    #@12
    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    #@13
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@16
    move-result v1

    #@17
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    #@1a
    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    .line 91
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@28
    move-result-object v1

    #@29
    .line 93
    const v2, 0x1120005

    #@2c
    .line 92
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@2f
    move-result v1

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    #@33
    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 96
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@39
    invoke-virtual {v1, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3c
    .line 82
    :cond_1
    return-void
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
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v2

    #@4
    .line 265
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@7
    move-result v0

    #@8
    .line 266
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    #@a
    div-int/lit8 v3, v3, 0x2

    #@c
    add-int v1, p3, v3

    #@e
    .line 268
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    #@10
    .line 269
    sub-int v3, p2, v2

    #@12
    add-int v4, v1, v0

    #@14
    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    #@17
    .line 274
    :goto_0
    if-eqz p5, :cond_0

    #@19
    neg-int v2, v2

    #@1a
    .end local v2    # "childWidth":I
    :cond_0
    return v2

    #@1b
    .line 271
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
    .line 206
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$1;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    #@8
    .line 205
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 117
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@2
    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->requestLayout()V

    #@5
    .line 116
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    #@0
    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    #@2
    .line 104
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@2
    .line 125
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    #@0
    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    #@2
    .line 112
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-eq p1, v0, :cond_1

    #@6
    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@c
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@f
    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@12
    .line 189
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
    .line 140
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 141
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@b
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    #@e
    .line 144
    :cond_0
    if-nez p1, :cond_3

    #@10
    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 146
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/AbsActionBarView;->setAlpha(F)V

    #@19
    .line 147
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@1b
    if-eqz v3, :cond_1

    #@1d
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 148
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@23
    invoke-virtual {v3, v7}, Landroid/widget/ActionMenuView;->setAlpha(F)V

    #@26
    .line 151
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
    .line 152
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@33
    .line 153
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@35
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@38
    .line 154
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@3a
    if-eqz v3, :cond_2

    #@3c
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@3e
    if-eqz v3, :cond_2

    #@40
    .line 155
    new-instance v1, Landroid/animation/AnimatorSet;

    #@42
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@45
    .line 156
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
    .line 157
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@54
    .line 158
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@56
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@5d
    .line 159
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@64
    .line 160
    return-object v1

    #@65
    .line 162
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
    .line 163
    return-object v0

    #@6f
    .line 166
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
    .line 167
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@7c
    .line 168
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@7e
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@81
    .line 169
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@83
    if-eqz v3, :cond_4

    #@85
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@87
    if-eqz v3, :cond_4

    #@89
    .line 170
    new-instance v1, Landroid/animation/AnimatorSet;

    #@8b
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@8e
    .line 171
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
    .line 172
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@9d
    .line 173
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@9f
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@a6
    .line 174
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@ad
    .line 175
    return-object v1

    #@ae
    .line 177
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
    .line 178
    return-object v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 202
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method
