.class Landroid/transition/Visibility$DisappearListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/Animator$AnimatorPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mFinalVisibilitySet:Z

.field private final mIsForcedVisibility:Z

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "isForcedVisibility"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 511
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@4
    .line 508
    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibilitySet:Z

    #@6
    .line 509
    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@8
    .line 512
    iput-object p1, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@a
    .line 513
    iput-boolean p3, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    #@c
    .line 514
    iput p2, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@e
    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/ViewGroup;

    #@14
    iput-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@16
    .line 517
    const/4 v0, 0x1

    #@17
    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@1a
    .line 511
    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    #@0
    .prologue
    .line 568
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 569
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 570
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    #@e
    .line 581
    :cond_0
    :goto_0
    const/4 v0, 0x0

    #@f
    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@12
    .line 567
    return-void

    #@13
    .line 571
    :cond_1
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibilitySet:Z

    #@15
    if-nez v0, :cond_0

    #@17
    .line 573
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@19
    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    #@1e
    .line 574
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 575
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    #@27
    .line 577
    :cond_2
    const/4 v0, 0x1

    #@28
    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibilitySet:Z

    #@2a
    goto :goto_0
.end method

.method private suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    #@0
    .prologue
    .line 585
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 584
    :cond_0
    :goto_0
    return-void

    #@d
    .line 586
    :cond_1
    iput-boolean p1, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    #@f
    .line 587
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@14
    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 536
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@3
    .line 535
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 549
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    #@3
    .line 548
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 522
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 521
    :cond_0
    :goto_0
    return-void

    #@9
    .line 523
    :cond_1
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@b
    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@d
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    #@10
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 540
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 529
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 528
    :cond_0
    :goto_0
    return-void

    #@9
    .line 530
    :cond_1
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    #@f
    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 544
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 554
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    #@3
    .line 553
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 559
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@4
    .line 558
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 564
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@4
    .line 563
    return-void
.end method
