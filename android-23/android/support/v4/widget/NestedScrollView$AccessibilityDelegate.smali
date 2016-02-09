.class Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1794
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1851
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    move-object v0, p1

    #@4
    .line 1852
    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    #@6
    .line 1853
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    const-class v3, Landroid/widget/ScrollView;

    #@8
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@f
    .line 1854
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    #@12
    move-result-object v1

    #@13
    .line 1855
    .local v1, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-static {v0}, Landroid/support/v4/widget/NestedScrollView;->-wrap0(Landroid/support/v4/widget/NestedScrollView;)I

    #@16
    move-result v3

    #@17
    if-lez v3, :cond_0

    #@19
    const/4 v2, 0x1

    #@1a
    .line 1856
    .local v2, "scrollable":Z
    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    #@1d
    .line 1857
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@20
    move-result v3

    #@21
    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollX(I)V

    #@24
    .line 1858
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@27
    move-result v3

    #@28
    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollY(I)V

    #@2b
    .line 1859
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(I)V

    #@32
    .line 1860
    invoke-static {v0}, Landroid/support/v4/widget/NestedScrollView;->-wrap0(Landroid/support/v4/widget/NestedScrollView;)I

    #@35
    move-result v3

    #@36
    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(I)V

    #@39
    .line 1850
    return-void

    #@3a
    .line 1855
    .end local v2    # "scrollable":Z
    :cond_0
    const/4 v2, 0x0

    #@3b
    .restart local v2    # "scrollable":Z
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@0
    .prologue
    .line 1832
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    move-object v0, p1

    #@4
    .line 1833
    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    #@6
    .line 1834
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    const-class v2, Landroid/widget/ScrollView;

    #@8
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    #@f
    .line 1835
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 1836
    invoke-static {v0}, Landroid/support/v4/widget/NestedScrollView;->-wrap0(Landroid/support/v4/widget/NestedScrollView;)I

    #@18
    move-result v1

    #@19
    .line 1837
    .local v1, "scrollRange":I
    if-lez v1, :cond_1

    #@1b
    .line 1838
    const/4 v2, 0x1

    #@1c
    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    #@1f
    .line 1839
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@22
    move-result v2

    #@23
    if-lez v2, :cond_0

    #@25
    .line 1840
    const/16 v2, 0x2000

    #@27
    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@2a
    .line 1842
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@2d
    move-result v2

    #@2e
    if-ge v2, v1, :cond_1

    #@30
    .line 1843
    const/16 v2, 0x1000

    #@32
    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@35
    .line 1831
    .end local v1    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1797
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1798
    return v6

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 1800
    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    #@c
    .line 1801
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    .line 1802
    return v5

    #@13
    .line 1804
    :cond_1
    sparse-switch p2, :sswitch_data_0

    #@16
    .line 1827
    return v5

    #@17
    .line 1806
    :sswitch_0
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@1e
    move-result v4

    #@1f
    sub-int/2addr v3, v4

    #@20
    .line 1807
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@23
    move-result v4

    #@24
    .line 1806
    sub-int v2, v3, v4

    #@26
    .line 1808
    .local v2, "viewportHeight":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@29
    move-result v3

    #@2a
    add-int/2addr v3, v2

    #@2b
    .line 1809
    invoke-static {v0}, Landroid/support/v4/widget/NestedScrollView;->-wrap0(Landroid/support/v4/widget/NestedScrollView;)I

    #@2e
    move-result v4

    #@2f
    .line 1808
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@32
    move-result v1

    #@33
    .line 1810
    .local v1, "targetScrollY":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@36
    move-result v3

    #@37
    if-eq v1, v3, :cond_2

    #@39
    .line 1811
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    #@3c
    .line 1812
    return v6

    #@3d
    .line 1815
    :cond_2
    return v5

    #@3e
    .line 1817
    .end local v1    # "targetScrollY":I
    .end local v2    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@41
    move-result v3

    #@42
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@45
    move-result v4

    #@46
    sub-int/2addr v3, v4

    #@47
    .line 1818
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@4a
    move-result v4

    #@4b
    .line 1817
    sub-int v2, v3, v4

    #@4d
    .line 1819
    .restart local v2    # "viewportHeight":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@50
    move-result v3

    #@51
    sub-int/2addr v3, v2

    #@52
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@55
    move-result v1

    #@56
    .line 1820
    .restart local v1    # "targetScrollY":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@59
    move-result v3

    #@5a
    if-eq v1, v3, :cond_3

    #@5c
    .line 1821
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    #@5f
    .line 1822
    return v6

    #@60
    .line 1825
    :cond_3
    return v5

    #@61
    .line 1804
    nop

    #@62
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
