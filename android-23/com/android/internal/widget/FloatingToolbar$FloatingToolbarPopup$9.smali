.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;
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

.field final synthetic val$morphUpwards:Z

.field final synthetic val$startHeight:I

.field final synthetic val$startY:F

.field final synthetic val$targetHeight:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIZF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .param p2, "val$targetHeight"    # I
    .param p3, "val$startHeight"    # I
    .param p4, "val$morphUpwards"    # Z
    .param p5, "val$startY"    # F

    #@0
    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$targetHeight:I

    #@4
    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startHeight:I

    #@6
    iput-boolean p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$morphUpwards:Z

    #@8
    iput p5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startY:F

    #@a
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 729
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v1

    #@a
    .line 730
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$targetHeight:I

    #@c
    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startHeight:I

    #@e
    sub-int/2addr v3, v4

    #@f
    int-to-float v3, v3

    #@10
    mul-float/2addr v3, p1

    #@11
    float-to-int v0, v3

    #@12
    .line 731
    .local v0, "deltaHeight":I
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startHeight:I

    #@14
    add-int/2addr v3, v0

    #@15
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@17
    .line 732
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@19
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@20
    .line 733
    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$morphUpwards:Z

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 734
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startY:F

    #@26
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@28
    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    #@2f
    move-result v4

    #@30
    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startHeight:I

    #@32
    sub-int/2addr v4, v5

    #@33
    int-to-float v4, v4

    #@34
    sub-float v2, v3, v4

    #@36
    .line 735
    .local v2, "y":F
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@38
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setY(F)V

    #@3f
    .line 728
    .end local v2    # "y":F
    :cond_0
    return-void
.end method
