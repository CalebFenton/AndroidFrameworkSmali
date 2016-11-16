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

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSuppressLayout:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "suppressLayout"    # Z

    #@0
    .prologue
    .line 501
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@3
    .line 499
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@6
    .line 502
    iput-object p1, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@8
    .line 503
    iput p2, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@a
    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/ViewGroup;

    #@10
    iput-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@12
    .line 505
    iput-boolean p3, p0, Landroid/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    #@14
    .line 507
    const/4 v0, 0x1

    #@15
    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@18
    .line 501
    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    #@0
    .prologue
    .line 558
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 560
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@6
    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    #@b
    .line 561
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 562
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    #@14
    .line 566
    :cond_0
    const/4 v0, 0x0

    #@15
    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@18
    .line 557
    return-void
.end method

.method private suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    #@0
    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    #@6
    if-eq v0, p1, :cond_0

    #@8
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 571
    iput-boolean p1, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    #@e
    .line 572
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@13
    .line 569
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 526
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@3
    .line 525
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 539
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    #@3
    .line 538
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 512
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 513
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@6
    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    #@b
    .line 511
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 530
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 519
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 520
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    #@a
    .line 518
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 534
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 544
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    #@3
    .line 543
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 549
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@4
    .line 548
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 554
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@4
    .line 553
    return-void
.end method
