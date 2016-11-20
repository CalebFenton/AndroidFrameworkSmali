.class abstract Landroid/widget/Editor$PinnedPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PinnedPopupWindow"
.end annotation


# instance fields
.field mClippingLimitLeft:I

.field mClippingLimitRight:I

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 3011
    iput-object p1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 3016
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->setUp()V

    #@9
    .line 3018
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->createPopupWindow()V

    #@c
    .line 3020
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@e
    .line 3021
    const/16 v2, 0x3ed

    #@10
    .line 3020
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@13
    .line 3022
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@15
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@18
    .line 3023
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@1a
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@1d
    .line 3025
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->initContentView()V

    #@20
    .line 3027
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@22
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@25
    .line 3029
    .local v0, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@27
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2a
    .line 3031
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2c
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@2e
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@31
    .line 3011
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    #@0
    .prologue
    .line 3057
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->measureContent()V

    #@3
    .line 3058
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@8
    move-result v2

    #@9
    .line 3059
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    #@c
    move-result v1

    #@d
    .line 3060
    .local v1, "offset":I
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@1a
    move-result v3

    #@1b
    int-to-float v4, v2

    #@1c
    const/high16 v5, 0x40000000    # 2.0f

    #@1e
    div-float/2addr v4, v5

    #@1f
    sub-float/2addr v3, v4

    #@20
    float-to-int v3, v3

    #@21
    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    #@23
    .line 3061
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    #@25
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@27
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@2e
    move-result v4

    #@2f
    add-int/2addr v3, v4

    #@30
    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    #@32
    .line 3063
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@34
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@3f
    move-result v0

    #@40
    .line 3064
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    #@43
    move-result v3

    #@44
    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    #@46
    .line 3065
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    #@48
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@4a
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@51
    move-result v4

    #@52
    add-int/2addr v3, v4

    #@53
    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    #@55
    .line 3056
    return-void
.end method

.method private updatePosition(II)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 3069
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    #@3
    add-int v1, p1, v4

    #@5
    .line 3070
    .local v1, "positionX":I
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    #@7
    add-int v2, p2, v4

    #@9
    .line 3072
    .local v2, "positionY":I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$PinnedPopupWindow;->clipVertically(I)I

    #@c
    move-result v2

    #@d
    .line 3075
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1a
    move-result-object v0

    #@1b
    .line 3076
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@1d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@20
    move-result v3

    #@21
    .line 3078
    .local v3, "width":I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@23
    sub-int/2addr v4, v3

    #@24
    iget v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mClippingLimitRight:I

    #@26
    add-int/2addr v4, v5

    #@27
    .line 3077
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v1

    #@2b
    .line 3079
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mClippingLimitLeft:I

    #@2d
    neg-int v4, v4

    #@2e
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v1

    #@32
    .line 3081
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_0

    #@38
    .line 3082
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@3a
    invoke-virtual {v4, v1, v2, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    #@3d
    .line 3068
    :goto_0
    return-void

    #@3e
    .line 3084
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@40
    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@42
    invoke-static {v5}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@45
    move-result-object v5

    #@46
    const/4 v6, 0x0

    #@47
    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@4a
    goto :goto_0
.end method


# virtual methods
.method protected abstract clipVertically(I)I
.end method

.method protected abstract createPopupWindow()V
.end method

.method protected abstract getTextOffset()I
.end method

.method protected abstract getVerticalLocalPosition(I)I
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 3090
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3091
    return-void

    #@7
    .line 3093
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@9
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@c
    .line 3094
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@e
    invoke-static {v0}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    #@15
    .line 3089
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 3110
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected measureContent()V
    .locals 5

    #@0
    .prologue
    const/high16 v4, -0x80000000

    #@2
    .line 3044
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@f
    move-result-object v0

    #@10
    .line 3045
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@12
    .line 3046
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@14
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@17
    move-result v2

    #@18
    .line 3048
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1a
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1d
    move-result v3

    #@1e
    .line 3045
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    #@21
    .line 3043
    return-void
.end method

.method protected setUp()V
    .locals 0

    #@0
    .prologue
    .line 3008
    return-void
.end method

.method public show()V
    .locals 3

    #@0
    .prologue
    .line 3035
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v1}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    #@a
    .line 3037
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    #@d
    .line 3039
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v1}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@12
    move-result-object v0

    #@13
    .line 3040
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    #@16
    move-result v1

    #@17
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    #@1a
    move-result v2

    #@1b
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    #@1e
    .line 3034
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    #@0
    .prologue
    .line 3101
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@8
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 3102
    if-eqz p4, :cond_0

    #@14
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    #@17
    .line 3103
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    #@1a
    .line 3099
    :goto_0
    return-void

    #@1b
    .line 3105
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    #@1e
    goto :goto_0
.end method
