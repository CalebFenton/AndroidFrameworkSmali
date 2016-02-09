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
    .line 2542
    iput-object p1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2543
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->createPopupWindow()V

    #@9
    .line 2545
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@b
    .line 2546
    const/16 v2, 0x3ed

    #@d
    .line 2545
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@10
    .line 2547
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@12
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@15
    .line 2548
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@17
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@1a
    .line 2550
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->initContentView()V

    #@1d
    .line 2552
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@1f
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@22
    .line 2554
    .local v0, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@24
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@27
    .line 2556
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@29
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@2b
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@2e
    .line 2542
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    #@0
    .prologue
    .line 2582
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->measureContent()V

    #@3
    .line 2583
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    #@8
    move-result v2

    #@9
    .line 2584
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    #@c
    move-result v1

    #@d
    .line 2585
    .local v1, "offset":I
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

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
    .line 2586
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    #@25
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@27
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

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
    .line 2588
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@34
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

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
    .line 2589
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    #@43
    move-result v3

    #@44
    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    #@46
    .line 2590
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    #@48
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@4a
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

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
    .line 2581
    return-void
.end method

.method private updatePosition(II)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 2594
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    #@4
    add-int v1, p1, v4

    #@6
    .line 2595
    .local v1, "positionX":I
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    #@8
    add-int v2, p2, v4

    #@a
    .line 2597
    .local v2, "positionY":I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$PinnedPopupWindow;->clipVertically(I)I

    #@d
    move-result v2

    #@e
    .line 2600
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@10
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1b
    move-result-object v0

    #@1c
    .line 2601
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@1e
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    #@21
    move-result v3

    #@22
    .line 2602
    .local v3, "width":I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@24
    sub-int/2addr v4, v3

    #@25
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    #@28
    move-result v1

    #@29
    .line 2603
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    #@2c
    move-result v1

    #@2d
    .line 2605
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    .line 2606
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@35
    invoke-virtual {v4, v1, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    #@38
    .line 2593
    :goto_0
    return-void

    #@39
    .line 2608
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@3b
    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@3d
    invoke-static {v5}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@44
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
    .line 2614
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@5
    .line 2615
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@7
    invoke-static {v0}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    #@e
    .line 2613
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 2631
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
    .line 2569
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@f
    move-result-object v0

    #@10
    .line 2570
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@12
    .line 2571
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@14
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@17
    move-result v2

    #@18
    .line 2573
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1a
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1d
    move-result v3

    #@1e
    .line 2570
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    #@21
    .line 2568
    return-void
.end method

.method public show()V
    .locals 3

    #@0
    .prologue
    .line 2560
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
    .line 2562
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    #@d
    .line 2564
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v1}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@12
    move-result-object v0

    #@13
    .line 2565
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
    .line 2559
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
    .line 2622
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
    .line 2623
    if-eqz p4, :cond_0

    #@14
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    #@17
    .line 2624
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    #@1a
    .line 2620
    :goto_0
    return-void

    #@1b
    .line 2626
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    #@1e
    goto :goto_0
.end method
