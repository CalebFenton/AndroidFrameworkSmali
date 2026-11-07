.class public Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private greylist-max-o mCanceled:Z

.field private greylist-max-o mFinalVisibility:I

.field final synthetic blacklist this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 555
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 582
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 573
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_5

    return-void

    .line 575
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 576
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 577
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 586
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 566
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iput-object p1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 568
    iput-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 569
    return-void
.end method

.method public greylist-max-o withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .registers 2
    .param p1, "visibility"    # I

    .line 560
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 561
    return-object p0
.end method
