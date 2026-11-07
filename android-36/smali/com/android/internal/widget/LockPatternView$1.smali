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
.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic blacklist val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic blacklist val$endAlpha:F

.field final synthetic blacklist val$endScale:F

.field final synthetic blacklist val$endTranslationY:F

.field final synthetic blacklist val$startAlpha:F

.field final synthetic blacklist val$startScale:F

.field final synthetic blacklist val$startTranslationY:F


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    iput p3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startAlpha:F

    iput p4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endAlpha:F

    iput p5, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startTranslationY:F

    iput p6, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endTranslationY:F

    iput p7, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startScale:F

    iput p8, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 550
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 551
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v0

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startAlpha:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endAlpha:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 552
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    sub-float v3, v2, v0

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startTranslationY:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endTranslationY:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 553
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmDotSize(Lcom/android/internal/widget/LockPatternView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v0

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startScale:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endScale:F

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    mul-float/2addr v3, v2

    iput v3, v1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 554
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 555
    return-void
.end method
