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
.field final synthetic blacklist val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic blacklist val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 590
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$3;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object p3, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 593
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 594
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 595
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 597
    :cond_e
    return-void
.end method
