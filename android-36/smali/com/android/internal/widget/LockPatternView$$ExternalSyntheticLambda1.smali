.class public final synthetic Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/LockPatternView;

.field public final synthetic blacklist f$1:Lcom/android/internal/widget/LockPatternView$CellState;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/widget/LockPatternView$CellState;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v0, v1, p1}, Lcom/android/internal/widget/LockPatternView;->$r8$lambda$MFqzMAhlEv8Tvsad0E1aJPdwdrM(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V

    return-void
.end method
