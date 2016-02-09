.class Lcom/android/internal/widget/LockPatternView$4;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .param p2, "val$cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;

    #@0
    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$4;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@4
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-get4(Lcom/android/internal/widget/LockPatternView;)I

    #@7
    move-result v0

    #@8
    div-int/lit8 v0, v0, 0x2

    #@a
    int-to-float v2, v0

    #@b
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@d
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-get3(Lcom/android/internal/widget/LockPatternView;)I

    #@10
    move-result v0

    #@11
    div-int/lit8 v0, v0, 0x2

    #@13
    int-to-float v3, v0

    #@14
    const-wide/16 v4, 0xc0

    #@16
    .line 729
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@18
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-get5(Lcom/android/internal/widget/LockPatternView;)Landroid/view/animation/Interpolator;

    #@1b
    move-result-object v6

    #@1c
    .line 730
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$4;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    #@1e
    const/4 v8, 0x0

    #@1f
    .line 728
    invoke-static/range {v1 .. v8}, Lcom/android/internal/widget/LockPatternView;->-wrap4(Lcom/android/internal/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    #@22
    .line 727
    return-void
.end method
