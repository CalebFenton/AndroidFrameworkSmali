.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;
.super Landroid/view/animation/Animation;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$startHeight:I

.field final synthetic val$startY:F

.field final synthetic val$targetHeight:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .param p2, "val$targetHeight"    # I
    .param p3, "val$startHeight"    # I
    .param p4, "val$startY"    # F

    #@0
    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->val$targetHeight:I

    #@4
    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->val$startHeight:I

    #@6
    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->val$startY:F

    #@8
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 759
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->val$targetHeight:I

    #@2
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->val$startHeight:I

    #@4
    sub-int/2addr v1, v2

    #@5
    int-to-float v1, v1

    #@6
    mul-float/2addr v1, p1

    #@7
    float-to-int v0, v1

    #@8
    .line 760
    .local v0, "deltaHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@a
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->val$startHeight:I

    #@10
    add-int/2addr v2, v0

    #@11
    invoke-static {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap6(Landroid/view/View;I)V

    #@14
    .line 761
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@16
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 762
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@1e
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@21
    move-result-object v1

    #@22
    .line 763
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->val$startY:F

    #@24
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@26
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@2d
    move-result v3

    #@2e
    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->val$startHeight:I

    #@30
    sub-int/2addr v3, v4

    #@31
    int-to-float v3, v3

    #@32
    sub-float/2addr v2, v3

    #@33
    .line 762
    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    #@36
    .line 764
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@38
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@3b
    .line 758
    :cond_0
    return-void
.end method
