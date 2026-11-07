.class final Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private final blacklist mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V
    .registers 6
    .param p2, "forView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1771
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 1772
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1761
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1762
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    .line 1773
    const/4 p1, 0x1

    .local p1, "i":I
    :goto_14
    const/16 v0, 0xa

    if-ge p1, v0, :cond_29

    .line 1774
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1773
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 1776
    .end local p1    # "i":I
    :cond_29
    return-void
.end method

.method private blacklist getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .registers 10
    .param p1, "virtualViewId"    # I

    .line 1892
    add-int/lit8 v0, p1, -0x1

    .line 1893
    .local v0, "ordinal":I
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1894
    .local v1, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v2, v0, 0x3

    .line 1895
    .local v2, "row":I
    rem-int/lit8 v3, v0, 0x3

    .line 1896
    .local v3, "col":I
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v4, v3}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$mgetCenterXForColumn(Lcom/android/internal/widget/LockPatternView;I)F

    move-result v4

    .line 1897
    .local v4, "centerX":F
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v5, v2}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$mgetCenterYForRow(Lcom/android/internal/widget/LockPatternView;I)F

    move-result v5

    .line 1898
    .local v5, "centerY":F
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v6}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmDotHitRadius(Lcom/android/internal/widget/LockPatternView;)F

    move-result v6

    .line 1899
    .local v6, "cellHitRadius":F
    sub-float v7, v4, v6

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1900
    add-float v7, v4, v6

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1901
    sub-float v7, v5, v6

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 1902
    add-float v7, v5, v6

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1903
    return-object v1
.end method

.method private blacklist getTextForVirtualView(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "virtualViewId"    # I

    .line 1907
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1908
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 1909
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1908
    const v2, 0x10405a0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getVirtualViewIdForHit(FF)I
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1921
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$mdetectCellHit(Lcom/android/internal/widget/LockPatternView;FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 1922
    .local v0, "cellHit":Lcom/android/internal/widget/LockPatternView$Cell;
    const/high16 v1, -0x80000000

    if-nez v0, :cond_b

    .line 1923
    return v1

    .line 1925
    :cond_b
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternDrawLookup(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v2

    iget v3, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v2, v2, v3

    iget v3, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v2, v2, v3

    .line 1926
    .local v2, "dotAvailable":Z
    iget v3, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    mul-int/lit8 v3, v3, 0x3

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 1927
    .local v3, "dotId":I
    if-eqz v2, :cond_25

    move v1, v3

    .line 1930
    .local v1, "view":I
    :cond_25
    return v1
.end method

.method private blacklist isClickable(I)Z
    .registers 5
    .param p1, "virtualViewId"    # I

    .line 1845
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1a

    .line 1846
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x3

    div-int/2addr v0, v1

    .line 1847
    .local v0, "row":I
    add-int/lit8 v2, p1, -0x1

    rem-int/2addr v2, v1

    .line 1848
    .local v2, "col":I
    if-ge v0, v1, :cond_1a

    .line 1849
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternDrawLookup(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v1

    aget-object v1, v1, v0

    aget-boolean v1, v1, v2

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 1852
    .end local v0    # "row":I
    .end local v2    # "col":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected blacklist getVirtualViewAt(FF)I
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1782
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result v0

    return v0
.end method

.method protected blacklist getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 4
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .line 1788
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1789
    return-void

    .line 1791
    :cond_9
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    const/16 v1, 0xa

    if-ge v0, v1, :cond_14

    .line 1794
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 1791
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1796
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method blacklist onItemClicked(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 1881
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 1886
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1888
    return v0
.end method

.method protected blacklist onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1860
    packed-switch p2, :pswitch_data_a

    .line 1871
    const/4 v0, 0x0

    return v0

    .line 1865
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result v0

    return v0

    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method

.method public whitelist onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1810
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1811
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1812
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104059e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1814
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1816
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_1b
    return-void
.end method

.method protected blacklist onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1802
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    .line 1803
    .local v0, "container":Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    if-eqz v0, :cond_13

    .line 1804
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1806
    :cond_13
    return-void
.end method

.method protected blacklist onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1824
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1825
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1827
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1828
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1830
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1832
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1833
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1838
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1840
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1841
    return-void
.end method
