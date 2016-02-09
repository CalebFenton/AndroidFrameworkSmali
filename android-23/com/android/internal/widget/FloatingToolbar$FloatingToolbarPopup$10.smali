.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;
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
    .line 770
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetWidth:I

    #@4
    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startWidth:I

    #@6
    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$left:F

    #@8
    iput p5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$right:F

    #@a
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 773
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v1

    #@a
    .line 774
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetWidth:I

    #@c
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startWidth:I

    #@e
    sub-int/2addr v2, v3

    #@f
    int-to-float v2, v2

    #@10
    mul-float/2addr v2, p1

    #@11
    float-to-int v0, v2

    #@12
    .line 775
    .local v0, "deltaWidth":I
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startWidth:I

    #@14
    add-int/2addr v2, v0

    #@15
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@17
    .line 776
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@19
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@20
    .line 777
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@22
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 778
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2a
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@2d
    move-result-object v2

    #@2e
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$left:F

    #@30
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    #@33
    .line 772
    :goto_0
    return-void

    #@34
    .line 780
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@36
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@39
    move-result-object v2

    #@3a
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$right:F

    #@3c
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@3e
    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    #@45
    move-result v4

    #@46
    int-to-float v4, v4

    #@47
    sub-float/2addr v3, v4

    #@48
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    #@4b
    goto :goto_0
.end method
