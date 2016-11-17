.class Landroid/widget/SearchView$UpdatableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatableTouchDelegate"
.end annotation


# instance fields
.field private final mActualBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private final mDelegateView:Landroid/view/View;

.field private final mSlop:I

.field private final mSlopBounds:Landroid/graphics/Rect;

.field private final mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1
    .param p1, "targetBounds"    # Landroid/graphics/Rect;
    .param p2, "actualBounds"    # Landroid/graphics/Rect;
    .param p3, "delegateView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1839
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    #@3
    .line 1840
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    #@11
    .line 1841
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    #@18
    .line 1842
    new-instance v0, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@1f
    .line 1843
    new-instance v0, Landroid/graphics/Rect;

    #@21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@24
    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@26
    .line 1844
    invoke-virtual {p0, p1, p2}, Landroid/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@29
    .line 1845
    iput-object p3, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    #@2b
    .line 1838
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v5

    #@4
    float-to-int v3, v5

    #@5
    .line 1858
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@8
    move-result v5

    #@9
    float-to-int v4, v5

    #@a
    .line 1859
    .local v4, "y":I
    const/4 v2, 0x0

    #@b
    .line 1860
    .local v2, "sendToDelegate":Z
    const/4 v1, 0x1

    #@c
    .line 1861
    .local v1, "hit":Z
    const/4 v0, 0x0

    #@d
    .line 1863
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@10
    move-result v5

    #@11
    packed-switch v5, :pswitch_data_0

    #@14
    .line 1884
    .end local v2    # "sendToDelegate":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    #@16
    .line 1885
    if-eqz v1, :cond_1

    #@18
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_3

    #@20
    .line 1893
    :cond_1
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@22
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@24
    sub-int v5, v3, v5

    #@26
    int-to-float v5, v5

    #@27
    iget-object v6, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@29
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@2b
    sub-int v6, v4, v6

    #@2d
    int-to-float v6, v6

    #@2e
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@31
    .line 1896
    :goto_1
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    #@33
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@36
    move-result v0

    #@37
    .line 1898
    .end local v0    # "handled":Z
    :cond_2
    return v0

    #@38
    .line 1865
    .restart local v0    # "handled":Z
    .restart local v2    # "sendToDelegate":Z
    :pswitch_0
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    #@3a
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_0

    #@40
    .line 1866
    const/4 v5, 0x1

    #@41
    iput-boolean v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    #@43
    .line 1867
    const/4 v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1872
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    #@47
    .line 1873
    .local v2, "sendToDelegate":Z
    if-eqz v2, :cond_0

    #@49
    .line 1874
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@4b
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    #@4e
    move-result v5

    #@4f
    if-nez v5, :cond_0

    #@51
    .line 1875
    const/4 v1, 0x0

    #@52
    goto :goto_0

    #@53
    .line 1880
    .local v2, "sendToDelegate":Z
    :pswitch_2
    iget-boolean v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    #@55
    .line 1881
    .local v2, "sendToDelegate":Z
    const/4 v5, 0x0

    #@56
    iput-boolean v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    #@58
    goto :goto_0

    #@59
    .line 1889
    .end local v2    # "sendToDelegate":Z
    :cond_3
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    #@5b
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@5e
    move-result v5

    #@5f
    div-int/lit8 v5, v5, 0x2

    #@61
    int-to-float v5, v5

    #@62
    .line 1890
    iget-object v6, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    #@64
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@67
    move-result v6

    #@68
    div-int/lit8 v6, v6, 0x2

    #@6a
    int-to-float v6, v6

    #@6b
    .line 1889
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@6e
    goto :goto_1

    #@6f
    .line 1863
    nop

    #@70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "desiredBounds"    # Landroid/graphics/Rect;
    .param p2, "actualBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1849
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 1850
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a
    .line 1851
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@c
    iget v1, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    #@e
    neg-int v1, v1

    #@f
    iget v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    #@11
    neg-int v2, v2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    #@15
    .line 1852
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1a
    .line 1848
    return-void
.end method
