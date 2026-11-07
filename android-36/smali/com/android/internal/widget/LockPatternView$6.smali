.class Lcom/android/internal/widget/LockPatternView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic blacklist val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 962
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$6;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$6;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 965
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$6;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->deactivationAnimator:Landroid/animation/Animator;

    .line 966
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$6;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 967
    return-void
.end method
