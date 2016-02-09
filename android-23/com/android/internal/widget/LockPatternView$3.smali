.class Lcom/android/internal/widget/LockPatternView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .param p2, "val$cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p3, "val$finishRunnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$3;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$3;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    #@4
    iput-object p3, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    #@6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    #@2
    const/4 v1, 0x0

    #@3
    iput-boolean v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    #@5
    .line 499
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 500
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    #@b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@e
    .line 497
    :cond_0
    return-void
.end method
