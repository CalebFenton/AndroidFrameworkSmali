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

.field final synthetic val$overflowButtonStartX:F

.field final synthetic val$overflowButtonTargetX:F

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FFI)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .param p2, "val$overflowButtonStartX"    # F
    .param p3, "val$overflowButtonTargetX"    # F
    .param p4, "val$startWidth"    # I

    #@0
    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonStartX:F

    #@4
    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonTargetX:F

    #@6
    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$startWidth:I

    #@8
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 852
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonStartX:F

    #@2
    .line 853
    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonTargetX:F

    #@4
    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonStartX:F

    #@6
    sub-float/2addr v4, v5

    #@7
    mul-float/2addr v4, p1

    #@8
    .line 852
    add-float v2, v3, v4

    #@a
    .line 854
    .local v2, "overflowButtonX":F
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@c
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 855
    const/4 v3, 0x0

    #@13
    .line 854
    :goto_0
    int-to-float v1, v3

    #@14
    .line 857
    .local v1, "deltaContainerWidth":F
    add-float v0, v2, v1

    #@16
    .line 858
    .local v0, "actualOverflowButtonX":F
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@18
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/ImageButton;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    #@1f
    .line 851
    return-void

    #@20
    .line 856
    .end local v0    # "actualOverflowButtonX":F
    .end local v1    # "deltaContainerWidth":F
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@22
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@29
    move-result v3

    #@2a
    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;->val$startWidth:I

    #@2c
    sub-int/2addr v3, v4

    #@2d
    goto :goto_0
.end method
