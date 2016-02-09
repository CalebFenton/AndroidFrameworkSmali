.class Lcom/android/internal/widget/LockPatternView$5;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$startX:F

.field final synthetic val$startY:F

.field final synthetic val$state:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$targetX:F

.field final synthetic val$targetY:F


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .param p2, "val$state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p3, "val$startX"    # F
    .param p4, "val$targetX"    # F
    .param p5, "val$startY"    # F
    .param p6, "val$targetY"    # F

    #@0
    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$5;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$5;->val$state:Lcom/android/internal/widget/LockPatternView$CellState;

    #@4
    iput p3, p0, Lcom/android/internal/widget/LockPatternView$5;->val$startX:F

    #@6
    iput p4, p0, Lcom/android/internal/widget/LockPatternView$5;->val$targetX:F

    #@8
    iput p5, p0, Lcom/android/internal/widget/LockPatternView$5;->val$startY:F

    #@a
    iput p6, p0, Lcom/android/internal/widget/LockPatternView$5;->val$targetY:F

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 743
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/Float;

    #@8
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@b
    move-result v0

    #@c
    .line 744
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$5;->val$state:Lcom/android/internal/widget/LockPatternView$CellState;

    #@e
    sub-float v2, v4, v0

    #@10
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$5;->val$startX:F

    #@12
    mul-float/2addr v2, v3

    #@13
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$5;->val$targetX:F

    #@15
    mul-float/2addr v3, v0

    #@16
    add-float/2addr v2, v3

    #@17
    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    #@19
    .line 745
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$5;->val$state:Lcom/android/internal/widget/LockPatternView$CellState;

    #@1b
    sub-float v2, v4, v0

    #@1d
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$5;->val$startY:F

    #@1f
    mul-float/2addr v2, v3

    #@20
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$5;->val$targetY:F

    #@22
    mul-float/2addr v3, v0

    #@23
    add-float/2addr v2, v3

    #@24
    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    #@26
    .line 746
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$5;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    #@2b
    .line 742
    return-void
.end method
