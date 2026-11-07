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
.field private static final blacklist FADE_DURATION:I = 0xc8

.field private static final blacklist sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected blacklist mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field protected blacklist mContentHeight:I

.field private blacklist mEatingHover:Z

.field private blacklist mEatingTouch:Z

.field protected blacklist mMenuView:Landroid/widget/ActionMenuView;

.field protected final blacklist mPopupContext:Landroid/content/Context;

.field protected blacklist mSplitActionBar:Z

.field protected blacklist mSplitView:Landroid/view/ViewGroup;

.field protected blacklist mSplitWhenNarrow:Z

.field protected final blacklist mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected blacklist mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 77
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 78
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101048d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_2b

    .line 80
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_2d

    .line 82
    :cond_2b
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 84
    :goto_2d
    return-void
.end method

.method protected static blacklist next(IIZ)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .line 317
    if-eqz p2, :cond_5

    sub-int v0, p0, p1

    goto :goto_7

    :cond_5
    add-int v0, p0, p1

    :goto_7
    return v0
.end method


# virtual methods
.method public blacklist animateToVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 240
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 241
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 242
    return-void
.end method

.method public blacklist canShowOverflowMenu()Z
    .registers 2

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-r dismissPopupMenus()V
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 303
    :cond_9
    return-void
.end method

.method public blacklist getAnimatedVisibility()I
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return v0

    .line 192
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public blacklist getContentHeight()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public blacklist hideOverflowMenu()Z
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 273
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverflowMenuShowPending()Z
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    .line 287
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverflowMenuShowing()Z
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 280
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverflowReserved()Z
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected blacklist measureChildView(Landroid/view/View;III)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .line 307
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 311
    sub-int/2addr p2, p4

    .line 313
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 88
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const v3, 0x10102ce

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_33

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11102cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 100
    :cond_33
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v1, :cond_3c

    .line 101
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    :cond_3c
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 137
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    .line 138
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    .line 141
    :cond_b
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    .line 142
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 143
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1a

    if-nez v3, :cond_1a

    .line 144
    iput-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    .line 148
    .end local v3    # "handled":Z
    :cond_1a
    const/16 v2, 0xa

    if-eq v0, v2, :cond_21

    const/4 v2, 0x3

    if-ne v0, v2, :cond_23

    .line 150
    :cond_21
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    .line 153
    :cond_23
    return v4
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 113
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 114
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    .line 117
    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_18

    .line 118
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 119
    .local v2, "handled":Z
    if-nez v0, :cond_18

    if-nez v2, :cond_18

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    .line 124
    .end local v2    # "handled":Z
    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1f

    .line 125
    :cond_1d
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    .line 128
    :cond_1f
    return v3
.end method

.method protected blacklist positionChild(Landroid/view/View;IIIZ)I
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 322
    .local v0, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 323
    .local v1, "childHeight":I
    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 325
    .local v2, "childTop":I
    if-eqz p5, :cond_17

    .line 326
    sub-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, v3, v2, p2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1e

    .line 328
    :cond_17
    add-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 331
    :goto_1e
    if-eqz p5, :cond_22

    neg-int v3, v0

    goto :goto_23

    :cond_22
    move v3, v0

    :goto_23
    return v3
.end method

.method public blacklist postShowOverflowMenu()V
    .registers 2

    .line 262
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$1;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public blacklist setContentHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 173
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->requestLayout()V

    .line 175
    return-void
.end method

.method public blacklist setSplitToolbar(Z)V
    .registers 2
    .param p1, "split"    # Z

    .line 161
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 162
    return-void
.end method

.method public blacklist setSplitView(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .line 182
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 183
    return-void
.end method

.method public blacklist setSplitWhenNarrow(Z)V
    .registers 2
    .param p1, "splitWhenNarrow"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 170
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_12

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 250
    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 252
    :cond_12
    return-void
.end method

.method public blacklist setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .registers 11
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 200
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_6f

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_24

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setAlpha(F)V

    .line 203
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_24

    .line 204
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v1}, Landroid/widget/ActionMenuView;->setAlpha(F)V

    .line 207
    :cond_24
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 208
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 209
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_65

    .line 211
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 212
    .local v3, "set":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v4, v2, v0

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 213
    .local v0, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 214
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 216
    return-object v3

    .line 218
    .end local v0    # "splitAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_65
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    return-object v1

    .line 222
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6f
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    aput v1, v4, v0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 223
    .local v3, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    sget-object v4, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_ae

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_ae

    .line 226
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    .local v4, "set":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v1, v2, v0

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 228
    .restart local v0    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 231
    return-object v4

    .line 233
    .end local v0    # "splitAnim":Landroid/animation/ObjectAnimator;
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    :cond_ae
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    return-object v3
.end method

.method public blacklist showOverflowMenu()Z
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 258
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
