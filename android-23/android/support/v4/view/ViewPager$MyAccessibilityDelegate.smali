.class Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/ViewPager;

    #@0
    .prologue
    .line 2848
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@2
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    #@5
    return-void
.end method

.method private canScroll()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2900
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@4
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->-get1(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    #@7
    move-result-object v2

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@c
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->-get1(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@13
    move-result v2

    #@14
    if-le v2, v0, :cond_0

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 2852
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 2853
    const-class v1, Landroid/support/v4/view/ViewPager;

    #@5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 2854
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    #@f
    move-result-object v0

    #@10
    .line 2855
    .local v0, "recordCompat":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    #@17
    .line 2856
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@1a
    move-result v1

    #@1b
    const/16 v2, 0x1000

    #@1d
    if-ne v1, v2, :cond_0

    #@1f
    .line 2857
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@21
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->-get1(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    #@24
    move-result-object v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 2858
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@29
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->-get1(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@30
    move-result v1

    #@31
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    #@34
    .line 2859
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@36
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->-get2(Landroid/support/v4/view/ViewPager;)I

    #@39
    move-result v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    #@3d
    .line 2860
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@3f
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->-get2(Landroid/support/v4/view/ViewPager;)I

    #@42
    move-result v1

    #@43
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    #@46
    .line 2851
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@0
    .prologue
    .line 2866
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 2867
    const-class v0, Landroid/support/v4/view/ViewPager;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 2868
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    #@f
    move-result v0

    #@10
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    #@13
    .line 2869
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 2870
    const/16 v0, 0x1000

    #@1e
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@21
    .line 2872
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@23
    const/4 v1, -0x1

    #@24
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 2873
    const/16 v0, 0x2000

    #@2c
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@2f
    .line 2865
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 2879
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2880
    return v2

    #@9
    .line 2882
    :cond_0
    sparse-switch p2, :sswitch_data_0

    #@c
    .line 2896
    return v3

    #@d
    .line 2884
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@f
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2885
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@17
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@19
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->-get2(Landroid/support/v4/view/ViewPager;)I

    #@1c
    move-result v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    #@22
    .line 2886
    return v2

    #@23
    .line 2888
    :cond_1
    return v3

    #@24
    .line 2890
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@26
    const/4 v1, -0x1

    #@27
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 2891
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@2f
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #@31
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->-get2(Landroid/support/v4/view/ViewPager;)I

    #@34
    move-result v1

    #@35
    add-int/lit8 v1, v1, -0x1

    #@37
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    #@3a
    .line 2892
    return v2

    #@3b
    .line 2894
    :cond_2
    return v3

    #@3c
    .line 2882
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
