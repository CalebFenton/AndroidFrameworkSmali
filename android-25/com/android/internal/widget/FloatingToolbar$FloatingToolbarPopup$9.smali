.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;
.super Landroid/view/animation/Animation;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$left:F

.field final synthetic val$right:F

.field final synthetic val$startWidth:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .param p2, "val$targetWidth"    # I
    .param p3, "val$startWidth"    # I
    .param p4, "val$left"    # F
    .param p5, "val$right"    # F

    #@0
    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$targetWidth:I

    #@4
    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startWidth:I

    #@6
    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$left:F

    #@8
    iput p5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$right:F

    #@a
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 813
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$targetWidth:I

    #@3
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startWidth:I

    #@5
    sub-int/2addr v1, v2

    #@6
    int-to-float v1, v1

    #@7
    mul-float/2addr v1, p1

    #@8
    float-to-int v0, v1

    #@9
    .line 814
    .local v0, "deltaWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@b
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startWidth:I

    #@11
    add-int/2addr v2, v0

    #@12
    invoke-static {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap8(Landroid/view/View;I)V

    #@15
    .line 815
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@17
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 816
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@1f
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@22
    move-result-object v1

    #@23
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$left:F

    #@25
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    #@28
    .line 819
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2a
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    #@31
    .line 820
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@33
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get9(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    #@3a
    .line 812
    :goto_0
    return-void

    #@3b
    .line 822
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@3d
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@40
    move-result-object v1

    #@41
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$right:F

    #@43
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@45
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@4c
    move-result v3

    #@4d
    int-to-float v3, v3

    #@4e
    sub-float/2addr v2, v3

    #@4f
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    #@52
    .line 826
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@54
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@57
    move-result-object v1

    #@58
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@5a
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@61
    move-result v2

    #@62
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$targetWidth:I

    #@64
    sub-int/2addr v2, v3

    #@65
    int-to-float v2, v2

    #@66
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    #@69
    .line 827
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@6b
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get9(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@6e
    move-result-object v1

    #@6f
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@71
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@78
    move-result v2

    #@79
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startWidth:I

    #@7b
    sub-int/2addr v2, v3

    #@7c
    int-to-float v2, v2

    #@7d
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    #@80
    goto :goto_0
.end method
