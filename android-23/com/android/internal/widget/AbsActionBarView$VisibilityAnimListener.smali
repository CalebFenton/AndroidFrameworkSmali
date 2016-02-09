.class public Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/widget/AbsActionBarView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/AbsActionBarView;

    #@0
    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 278
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    #@8
    .line 277
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 306
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    #@3
    .line 305
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 295
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    return-void

    #@6
    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    #@8
    iput-object v1, v0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@a
    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    #@c
    iget v1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    #@11
    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    #@13
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@15
    if-eqz v0, :cond_1

    #@17
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    #@19
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    #@1f
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@21
    iget v1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    #@26
    .line 294
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 310
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    #@3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    #@6
    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    #@8
    iput-object p1, v0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    #@a
    .line 290
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    #@c
    .line 287
    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 282
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    #@2
    .line 283
    return-object p0
.end method
