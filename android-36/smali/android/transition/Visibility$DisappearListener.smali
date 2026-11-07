.class Landroid/transition/Visibility$DisappearListener;
.super Landroid/transition/TransitionListenerAdapter;
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
.field greylist-max-o mCanceled:Z

.field private final greylist-max-o mFinalVisibility:I

.field private greylist-max-o mLayoutSuppressed:Z

.field private final greylist-max-o mParent:Landroid/view/ViewGroup;

.field private final greylist-max-o mSuppressLayout:Z

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;IZ)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "suppressLayout"    # Z

    .line 559
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 560
    iput-object p1, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 561
    iput p2, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    .line 563
    iput-boolean p3, p0, Landroid/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    .line 565
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 566
    return-void
.end method

.method private greylist-max-o hideViewWhenNotCanceled()V
    .registers 3

    .line 617
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_14

    .line 619
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 620
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    .line 621
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 625
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 626
    return-void
.end method

.method private greylist-max-o suppressLayout(Z)V
    .registers 3
    .param p1, "suppress"    # Z

    .line 629
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_13

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 630
    iput-boolean p1, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 631
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 633
    :cond_13
    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 585
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 597
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 598
    return-void
.end method

.method public whitelist onAnimationPause(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 570
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_b

    .line 571
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 573
    :cond_b
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 589
    return-void
.end method

.method public whitelist onAnimationResume(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 577
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_a

    .line 578
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 580
    :cond_a
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 593
    return-void
.end method

.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 602
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 603
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 604
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 609
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 613
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 614
    return-void
.end method
