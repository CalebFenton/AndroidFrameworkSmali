.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;
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

.field final synthetic val$bottom:F

.field final synthetic val$morphedUpwards:Z

.field final synthetic val$startHeight:I

.field final synthetic val$targetHeight:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIZF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .param p2, "val$targetHeight"    # I
    .param p3, "val$startHeight"    # I
    .param p4, "val$morphedUpwards"    # Z
    .param p5, "val$bottom"    # F

    #@0
    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$targetHeight:I

    #@4
    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$startHeight:I

    #@6
    iput-boolean p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$morphedUpwards:Z

    #@8
    iput p5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$bottom:F

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
    .line 787
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v1

    #@a
    .line 788
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$targetHeight:I

    #@c
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$startHeight:I

    #@e
    sub-int/2addr v2, v3

    #@f
    int-to-float v2, v2

    #@10
    mul-float/2addr v2, p1

    #@11
    float-to-int v0, v2

    #@12
    .line 789
    .local v0, "deltaHeight":I
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$startHeight:I

    #@14
    add-int/2addr v2, v0

    #@15
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@17
    .line 790
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@19
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@20
    .line 791
    iget-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$morphedUpwards:Z

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 792
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@26
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@29
    move-result-object v2

    #@2a
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$bottom:F

    #@2c
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2e
    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    #@35
    move-result v4

    #@36
    int-to-float v4, v4

    #@37
    sub-float/2addr v3, v4

    #@38
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    #@3b
    .line 786
    :cond_0
    return-void
.end method
