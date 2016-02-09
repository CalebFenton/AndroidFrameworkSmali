.class Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;
    }
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/widget/DrawerLayout;
    .param p2, "gravity"    # I

    #@0
    .prologue
    .line 1811
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    #@5
    .line 1805
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;

    #@7
    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V

    #@a
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@c
    .line 1812
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@e
    .line 1811
    return-void
.end method

.method private closeOtherDrawer()V
    .locals 4

    #@0
    .prologue
    .line 1862
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@2
    const/4 v3, 0x3

    #@3
    if-ne v2, v3, :cond_1

    #@5
    const/4 v0, 0x5

    #@6
    .line 1863
    .local v0, "otherGrav":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@8
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    .line 1864
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_0

    #@e
    .line 1865
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@10
    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    #@13
    .line 1861
    :cond_0
    return-void

    #@14
    .line 1862
    .end local v0    # "otherGrav":I
    .end local v1    # "toClose":Landroid/view/View;
    :cond_1
    const/4 v0, 0x3

    #@15
    .restart local v0    # "otherGrav":I
    goto :goto_0
.end method

.method private peekDrawer()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v5, 0x0

    #@2
    .line 1896
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@4
    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    #@7
    move-result v3

    #@8
    .line 1897
    .local v3, "peekDistance":I
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@a
    if-ne v6, v7, :cond_2

    #@c
    const/4 v1, 0x1

    #@d
    .line 1898
    .local v1, "leftEdge":Z
    :goto_0
    if-eqz v1, :cond_3

    #@f
    .line 1899
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@11
    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@14
    move-result-object v4

    #@15
    .line 1900
    .local v4, "toCapture":Landroid/view/View;
    if-eqz v4, :cond_0

    #@17
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@1a
    move-result v5

    #@1b
    neg-int v5, v5

    #@1c
    :cond_0
    add-int v0, v5, v3

    #@1e
    .line 1906
    .local v0, "childLeft":I
    :goto_1
    if-eqz v4, :cond_1

    #@20
    if-eqz v1, :cond_4

    #@22
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@25
    move-result v5

    #@26
    if-ge v5, v0, :cond_4

    #@28
    .line 1908
    :goto_2
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2a
    invoke-virtual {v5, v4}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_1

    #@30
    .line 1909
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@36
    .line 1910
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@38
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@3b
    move-result v6

    #@3c
    invoke-virtual {v5, v4, v0, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@3f
    .line 1911
    const/4 v5, 0x1

    #@40
    iput-boolean v5, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@42
    .line 1912
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@44
    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@47
    .line 1914
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    #@4a
    .line 1916
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@4c
    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->cancelChildViewTouch()V

    #@4f
    .line 1893
    .end local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    return-void

    #@50
    .line 1897
    .end local v0    # "childLeft":I
    .end local v1    # "leftEdge":Z
    .end local v4    # "toCapture":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    #@51
    .restart local v1    # "leftEdge":Z
    goto :goto_0

    #@52
    .line 1902
    :cond_3
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@54
    const/4 v6, 0x5

    #@55
    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@58
    move-result-object v4

    #@59
    .line 1903
    .restart local v4    # "toCapture":Landroid/view/View;
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@5b
    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@5e
    move-result v5

    #@5f
    sub-int v0, v5, v3

    #@61
    .restart local v0    # "childLeft":I
    goto :goto_1

    #@62
    .line 1907
    :cond_4
    if-nez v1, :cond_1

    #@64
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@67
    move-result v5

    #@68
    if-le v5, v0, :cond_1

    #@6a
    goto :goto_2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    #@0
    .prologue
    .line 1953
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1954
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@c
    move-result v1

    #@d
    neg-int v1, v1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v2

    #@13
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 1956
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@1a
    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@1d
    move-result v0

    #@1e
    .line 1957
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@21
    move-result v1

    #@22
    sub-int v1, v0, v1

    #@24
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v2

    #@28
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@2b
    move-result v1

    #@2c
    return v1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    #@0
    .prologue
    .line 1963
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1948
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public onEdgeDragStarted(II)V
    .locals 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    #@0
    .prologue
    .line 1935
    and-int/lit8 v1, p1, 0x1

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_1

    #@5
    .line 1936
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@7
    const/4 v2, 0x3

    #@8
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 1941
    .local v0, "toCapture":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    #@e
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@10
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 1942
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@18
    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    #@1b
    .line 1933
    :cond_0
    return-void

    #@1c
    .line 1938
    .end local v0    # "toCapture":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@1e
    const/4 v2, 0x5

    #@1f
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    .restart local v0    # "toCapture":Landroid/view/View;
    goto :goto_0
.end method

.method public onEdgeLock(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    #@0
    .prologue
    .line 1929
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 4
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    #@0
    .prologue
    .line 1890
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@4
    const-wide/16 v2, 0xa0

    #@6
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    #@9
    .line 1889
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    #@0
    .prologue
    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    .line 1856
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    #@7
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@9
    .line 1858
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    #@c
    .line 1854
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1833
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@4
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@6
    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    #@d
    .line 1832
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    #@0
    .prologue
    .line 1839
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    .line 1842
    .local v0, "childWidth":I
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@6
    const/4 v4, 0x3

    #@7
    invoke-virtual {v3, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 1843
    add-int v3, v0, p2

    #@f
    int-to-float v3, v3

    #@10
    int-to-float v4, v0

    #@11
    div-float v1, v3, v4

    #@13
    .line 1848
    .local v1, "offset":F
    :goto_0
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@15
    invoke-virtual {v3, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@18
    .line 1849
    const/4 v3, 0x0

    #@19
    cmpl-float v3, v1, v3

    #@1b
    if-nez v3, :cond_1

    #@1d
    const/4 v3, 0x4

    #@1e
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    #@21
    .line 1850
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@23
    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@26
    .line 1837
    return-void

    #@27
    .line 1845
    .end local v1    # "offset":F
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@29
    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@2c
    move-result v2

    #@2d
    .line 1846
    .local v2, "width":I
    sub-int v3, v2, p2

    #@2f
    int-to-float v3, v3

    #@30
    int-to-float v4, v0

    #@31
    div-float v1, v3, v4

    #@33
    .restart local v1    # "offset":F
    goto :goto_0

    #@34
    .line 1849
    .end local v2    # "width":I
    :cond_1
    const/4 v3, 0x0

    #@35
    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    #@0
    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    #@2
    const/4 v6, 0x0

    #@3
    .line 1873
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@5
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    #@8
    move-result v2

    #@9
    .line 1874
    .local v2, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@c
    move-result v0

    #@d
    .line 1877
    .local v0, "childWidth":I
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@f
    const/4 v5, 0x3

    #@10
    invoke-virtual {v4, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_2

    #@16
    .line 1878
    cmpl-float v4, p2, v6

    #@18
    if-gtz v4, :cond_0

    #@1a
    cmpl-float v4, p2, v6

    #@1c
    if-nez v4, :cond_1

    #@1e
    cmpl-float v4, v2, v7

    #@20
    if-lez v4, :cond_1

    #@22
    :cond_0
    const/4 v1, 0x0

    #@23
    .line 1884
    .local v1, "left":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@25
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@28
    move-result v5

    #@29
    invoke-virtual {v4, v1, v5}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    #@2c
    .line 1885
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2e
    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@31
    .line 1870
    return-void

    #@32
    .line 1878
    .end local v1    # "left":I
    :cond_1
    neg-int v1, v0

    #@33
    .restart local v1    # "left":I
    goto :goto_0

    #@34
    .line 1880
    .end local v1    # "left":I
    :cond_2
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@36
    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@39
    move-result v3

    #@3a
    .line 1881
    .local v3, "width":I
    cmpg-float v4, p2, v6

    #@3c
    if-ltz v4, :cond_3

    #@3e
    cmpl-float v4, p2, v6

    #@40
    if-nez v4, :cond_4

    #@42
    cmpl-float v4, v2, v7

    #@44
    if-lez v4, :cond_4

    #@46
    :cond_3
    sub-int v1, v3, v0

    #@48
    .restart local v1    # "left":I
    goto :goto_0

    #@49
    .end local v1    # "left":I
    :cond_4
    move v1, v3

    #@4a
    .restart local v1    # "left":I
    goto :goto_0
.end method

.method public removeCallbacks()V
    .locals 2

    #@0
    .prologue
    .line 1820
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    .line 1819
    return-void
.end method

.method public setDragger(Landroid/support/v4/widget/ViewDragHelper;)V
    .locals 0
    .param p1, "dragger"    # Landroid/support/v4/widget/ViewDragHelper;

    #@0
    .prologue
    .line 1816
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@2
    .line 1815
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1827
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@3
    invoke-virtual {v1, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@b
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@d
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 1828
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@15
    invoke-virtual {v1, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 1827
    :cond_0
    return v0
.end method
