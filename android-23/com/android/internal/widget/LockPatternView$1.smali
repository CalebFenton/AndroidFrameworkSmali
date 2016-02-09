.class Lcom/android/internal/widget/LockPatternView$1;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$endAlpha:F

.field final synthetic val$endScale:F

.field final synthetic val$endTranslationY:F

.field final synthetic val$startAlpha:F

.field final synthetic val$startScale:F

.field final synthetic val$startTranslationY:F


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .param p2, "val$cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p3, "val$startAlpha"    # F
    .param p4, "val$endAlpha"    # F
    .param p5, "val$startTranslationY"    # F
    .param p6, "val$endTranslationY"    # F
    .param p7, "val$startScale"    # F
    .param p8, "val$endScale"    # F

    #@0
    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    #@4
    iput p3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startAlpha:F

    #@6
    iput p4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endAlpha:F

    #@8
    iput p5, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startTranslationY:F

    #@a
    iput p6, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endTranslationY:F

    #@c
    iput p7, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startScale:F

    #@e
    iput p8, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endScale:F

    #@10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@13
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
    .line 455
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
    .line 456
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    #@e
    sub-float v2, v4, v0

    #@10
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startAlpha:F

    #@12
    mul-float/2addr v2, v3

    #@13
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endAlpha:F

    #@15
    mul-float/2addr v3, v0

    #@16
    add-float/2addr v2, v3

    #@17
    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    #@19
    .line 457
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    #@1b
    sub-float v2, v4, v0

    #@1d
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startTranslationY:F

    #@1f
    mul-float/2addr v2, v3

    #@20
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endTranslationY:F

    #@22
    mul-float/2addr v3, v0

    #@23
    add-float/2addr v2, v3

    #@24
    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    #@26
    .line 458
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    #@28
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2a
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get3(Lcom/android/internal/widget/LockPatternView;)I

    #@2d
    move-result v2

    #@2e
    div-int/lit8 v2, v2, 0x2

    #@30
    int-to-float v2, v2

    #@31
    sub-float v3, v4, v0

    #@33
    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startScale:F

    #@35
    mul-float/2addr v3, v4

    #@36
    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endScale:F

    #@38
    mul-float/2addr v4, v0

    #@39
    add-float/2addr v3, v4

    #@3a
    mul-float/2addr v2, v3

    #@3b
    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    #@3d
    .line 459
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@3f
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    #@42
    .line 454
    return-void
.end method
