.class Landroid/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$DropDownListView$1;
    }
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static synthetic -set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1506
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$1;

    #@2
    const-string/jumbo v1, "alpha"

    #@5
    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    #@8
    .line 1505
    sput-object v0, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    #@a
    .line 1497
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    #@0
    .prologue
    .line 1568
    const/4 v0, 0x0

    #@1
    const v1, 0x101006d

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@7
    .line 1569
    iput-boolean p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    #@9
    .line 1571
    const/4 v0, 0x0

    #@a
    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    #@d
    .line 1567
    return-void
.end method

.method private clearPressedItem()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1661
    iput-boolean v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    #@4
    .line 1662
    invoke-virtual {p0, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    #@7
    .line 1663
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->updateSelectorState()V

    #@a
    .line 1665
    iget v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    #@c
    iget v2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mFirstPosition:I

    #@e
    sub-int/2addr v1, v2

    #@f
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 1666
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@15
    .line 1667
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    #@18
    .line 1670
    :cond_0
    iget-object v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1671
    iget-object v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@1e
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    #@21
    .line 1672
    iput-object v4, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@23
    .line 1660
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    #@0
    .prologue
    const/16 v3, 0xff

    #@2
    .line 1641
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    #@5
    move-result-wide v4

    #@6
    .line 1643
    .local v4, "id":J
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@8
    sget-object v1, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    #@a
    const/16 v2, 0x80

    #@c
    .line 1642
    filled-new-array {v3, v2, v3}, [I

    #@f
    move-result-object v2

    #@10
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    #@13
    move-result-object v6

    #@14
    .line 1644
    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    #@16
    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@19
    .line 1645
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@1b
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@1e
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@21
    .line 1646
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$2;

    #@23
    move-object v1, p0

    #@24
    move-object v2, p1

    #@25
    move v3, p2

    #@26
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListPopupWindow$DropDownListView$2;-><init>(Landroid/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    #@29
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@2c
    .line 1652
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    #@2f
    .line 1654
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 1655
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@35
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@38
    .line 1657
    :cond_0
    iput-object v6, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@3a
    .line 1640
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 1677
    iput-boolean v5, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    #@4
    .line 1680
    invoke-virtual {p0, p3, p4}, Landroid/widget/ListPopupWindow$DropDownListView;->drawableHotspotChanged(FF)V

    #@7
    .line 1681
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->isPressed()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 1682
    invoke-virtual {p0, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    #@10
    .line 1686
    :cond_0
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDataChanged:Z

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 1687
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->layoutChildren()V

    #@17
    .line 1692
    :cond_1
    iget v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    #@19
    iget v4, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mFirstPosition:I

    #@1b
    sub-int/2addr v3, v4

    #@1c
    invoke-virtual {p0, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v2

    #@20
    .line 1693
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2

    #@22
    if-eq v2, p1, :cond_2

    #@24
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 1694
    const/4 v3, 0x0

    #@2b
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    #@2e
    .line 1696
    :cond_2
    iput p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    #@30
    .line 1699
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@33
    move-result v3

    #@34
    int-to-float v3, v3

    #@35
    sub-float v0, p3, v3

    #@37
    .line 1700
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3a
    move-result v3

    #@3b
    int-to-float v3, v3

    #@3c
    sub-float v1, p4, v3

    #@3e
    .line 1701
    .local v1, "childY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@41
    .line 1702
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_3

    #@47
    .line 1703
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    #@4a
    .line 1707
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelectedPositionInt(I)V

    #@4d
    .line 1708
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/ListPopupWindow$DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    #@50
    .line 1712
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->refreshDrawableState()V

    #@53
    .line 1714
    iget-object v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@55
    if-eqz v3, :cond_4

    #@57
    .line 1715
    iget-object v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@59
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    #@5c
    .line 1716
    iput-object v6, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    #@5e
    .line 1676
    :cond_4
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    #@0
    .prologue
    .line 1776
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    #@0
    .prologue
    .line 1756
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    #@0
    .prologue
    .line 1766
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    #@0
    .prologue
    .line 1746
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    #@6
    if-nez v0, :cond_1

    #@8
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_1
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    #@0
    .prologue
    .line 1734
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1736
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    #@6
    if-eqz v1, :cond_0

    #@8
    move-object v1, v0

    #@9
    .line 1737
    check-cast v1, Landroid/widget/TextView;

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    #@f
    .line 1740
    :cond_0
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1581
    const/4 v4, 0x1

    #@3
    .line 1582
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    #@4
    .line 1584
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v0

    #@8
    .line 1585
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    #@b
    .line 1618
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 1619
    :cond_1
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->clearPressedItem()V

    #@12
    .line 1623
    :cond_2
    if-eqz v4, :cond_7

    #@14
    .line 1624
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@16
    if-nez v8, :cond_3

    #@18
    .line 1625
    new-instance v8, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@1a
    invoke-direct {v8, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    #@1d
    iput-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@1f
    .line 1627
    :cond_3
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@21
    invoke-virtual {v8, v11}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    #@24
    .line 1628
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@26
    invoke-virtual {v8, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@29
    .line 1633
    :cond_4
    :goto_1
    return v4

    #@2a
    .line 1587
    :pswitch_0
    const/4 v4, 0x0

    #@2b
    .line 1588
    goto :goto_0

    #@2c
    .line 1590
    :pswitch_1
    const/4 v4, 0x0

    #@2d
    .line 1593
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@30
    move-result v1

    #@31
    .line 1594
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    #@33
    .line 1595
    const/4 v4, 0x0

    #@34
    .line 1596
    goto :goto_0

    #@35
    .line 1599
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@38
    move-result v8

    #@39
    float-to-int v6, v8

    #@3a
    .line 1600
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@3d
    move-result v8

    #@3e
    float-to-int v7, v8

    #@3f
    .line 1601
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/ListPopupWindow$DropDownListView;->pointToPosition(II)I

    #@42
    move-result v5

    #@43
    .line 1602
    .local v5, "position":I
    const/4 v8, -0x1

    #@44
    if-ne v5, v8, :cond_6

    #@46
    .line 1603
    const/4 v3, 0x1

    #@47
    .line 1604
    goto :goto_0

    #@48
    .line 1607
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    #@4b
    move-result v8

    #@4c
    sub-int v8, v5, v8

    #@4e
    invoke-virtual {p0, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    #@51
    move-result-object v2

    #@52
    .line 1608
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    #@53
    int-to-float v9, v7

    #@54
    invoke-direct {p0, v2, v5, v8, v9}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    #@57
    .line 1609
    const/4 v4, 0x1

    #@58
    .line 1611
    if-ne v0, v11, :cond_0

    #@5a
    .line 1612
    invoke-direct {p0, v2, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    #@5d
    goto :goto_0

    #@5e
    .line 1629
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@60
    if-eqz v8, :cond_4

    #@62
    .line 1630
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@64
    invoke-virtual {v8, v10}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    #@67
    goto :goto_1

    #@68
    .line 1585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 1722
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method
