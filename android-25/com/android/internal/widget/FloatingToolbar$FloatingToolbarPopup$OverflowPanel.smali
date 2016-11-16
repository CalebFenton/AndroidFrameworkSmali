.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
.super Landroid/widget/ListView;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanel"
.end annotation


# instance fields
.field private final mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 1
    .param p1, "popup"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@0
    .prologue
    .line 1470
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@6
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    #@d
    .line 1471
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@f
    .line 1472
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    #@12
    move-result v0

    #@13
    mul-int/lit8 v0, v0, 0x3

    #@15
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setScrollBarDefaultDelayBeforeFade(I)V

    #@18
    .line 1473
    const/4 v0, 0x3

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setScrollIndicators(I)V

    #@1c
    .line 1469
    return-void
.end method


# virtual methods
.method protected awakenScrollBars()Z
    .locals 1

    #@0
    .prologue
    .line 1497
    invoke-super {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1490
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1492
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1480
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get10(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    #@9
    move-result v1

    #@a
    .line 1481
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@c
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get8(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@13
    move-result v2

    #@14
    .line 1480
    sub-int v0, v1, v2

    #@16
    .line 1482
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    #@18
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1b
    move-result p2

    #@1c
    .line 1483
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    #@1f
    .line 1477
    return-void
.end method
