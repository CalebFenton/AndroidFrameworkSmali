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
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    #@0
    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 570
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    #@8
    .line 569
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 595
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    #@3
    .line 594
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@7
    const/4 v1, 0x0

    #@8
    iput-object v1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    #@a
    .line 590
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@c
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@11
    .line 586
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 599
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 580
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@6
    .line 581
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@8
    iput-object p1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    #@a
    .line 582
    iput-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    #@c
    .line 579
    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 574
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    #@2
    .line 575
    return-object p0
.end method
