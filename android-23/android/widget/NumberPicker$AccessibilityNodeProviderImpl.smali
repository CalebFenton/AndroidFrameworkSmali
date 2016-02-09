.class Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    #@0
    .prologue
    .line 2299
    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    #@5
    .line 2308
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    #@c
    .line 2310
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    #@11
    .line 2312
    const/high16 v0, -0x80000000

    #@13
    iput v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@15
    .line 2299
    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x1

    #@2
    .line 2655
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v3

    #@6
    .line 2656
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v5, Landroid/widget/NumberPicker;

    #@8
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@f
    .line 2657
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@11
    invoke-static {v5}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    #@1c
    .line 2658
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1e
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    #@21
    .line 2660
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_0

    #@27
    .line 2661
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@29
    const/4 v6, 0x3

    #@2a
    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    #@2d
    .line 2663
    :cond_0
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@2f
    const/4 v6, 0x2

    #@30
    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    #@33
    .line 2664
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    .line 2665
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@3b
    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    #@3e
    .line 2668
    :cond_1
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@40
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Landroid/view/View;

    #@46
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    #@49
    .line 2669
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@4b
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@4e
    move-result v5

    #@4f
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    #@52
    .line 2670
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@55
    .line 2673
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@57
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@62
    move-result-object v5

    #@63
    .line 2672
    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@65
    .line 2675
    .local v0, "applicationScale":F
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    #@67
    .line 2676
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@6a
    .line 2677
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    #@6d
    .line 2678
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@70
    .line 2680
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@72
    invoke-static {v5}, Landroid/widget/NumberPicker;->-wrap0(Landroid/widget/NumberPicker;)Z

    #@75
    move-result v5

    #@76
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    #@79
    .line 2682
    move-object v2, v1

    #@7a
    .line 2683
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    #@7c
    .line 2684
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@7e
    invoke-virtual {v5, v4}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    #@81
    .line 2685
    const/4 v5, 0x0

    #@82
    aget v5, v4, v5

    #@84
    aget v6, v4, v7

    #@86
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    #@89
    .line 2686
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    #@8c
    .line 2687
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@8f
    .line 2689
    iget v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@91
    if-eq v5, v8, :cond_2

    #@93
    .line 2690
    const/16 v5, 0x40

    #@95
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@98
    .line 2692
    :cond_2
    iget v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@9a
    if-ne v5, v8, :cond_3

    #@9c
    .line 2693
    const/16 v5, 0x80

    #@9e
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@a1
    .line 2695
    :cond_3
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@a3
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@a6
    move-result v5

    #@a7
    if-eqz v5, :cond_7

    #@a9
    .line 2696
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@ab
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    #@ae
    move-result v5

    #@af
    if-nez v5, :cond_4

    #@b1
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@b3
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    #@b6
    move-result v5

    #@b7
    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@b9
    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMaxValue()I

    #@bc
    move-result v6

    #@bd
    if-ge v5, v6, :cond_5

    #@bf
    .line 2697
    :cond_4
    const/16 v5, 0x1000

    #@c1
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@c4
    .line 2699
    :cond_5
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@c6
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    #@c9
    move-result v5

    #@ca
    if-nez v5, :cond_6

    #@cc
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@ce
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    #@d1
    move-result v5

    #@d2
    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@d4
    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMinValue()I

    #@d7
    move-result v6

    #@d8
    if-le v5, v6, :cond_7

    #@da
    .line 2700
    :cond_6
    const/16 v5, 0x2000

    #@dc
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@df
    .line 2704
    :cond_7
    return-object v3
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 2621
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4
    move-result-object v2

    #@5
    .line 2622
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    #@7
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@e
    .line 2623
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@10
    invoke-static {v4}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    #@1b
    .line 2624
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1d
    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    #@20
    .line 2625
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@22
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    #@25
    .line 2626
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@28
    .line 2627
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    #@2b
    .line 2628
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    #@2e
    .line 2629
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@30
    invoke-virtual {v4}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@33
    move-result v4

    #@34
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    #@37
    .line 2630
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    #@39
    .line 2631
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    #@3c
    .line 2632
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@3e
    invoke-static {v4, v0}, Landroid/widget/NumberPicker;->-wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    #@41
    move-result v4

    #@42
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    #@45
    .line 2633
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@48
    .line 2634
    move-object v1, v0

    #@49
    .line 2635
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    #@4b
    .line 2636
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@4d
    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    #@50
    .line 2637
    const/4 v4, 0x0

    #@51
    aget v4, v3, v4

    #@53
    aget v5, v3, v5

    #@55
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    #@58
    .line 2638
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@5b
    .line 2640
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@5d
    if-eq v4, p1, :cond_0

    #@5f
    .line 2641
    const/16 v4, 0x40

    #@61
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@64
    .line 2643
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@66
    if-ne v4, p1, :cond_1

    #@68
    .line 2644
    const/16 v4, 0x80

    #@6a
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@6d
    .line 2646
    :cond_1
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@6f
    invoke-virtual {v4}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_2

    #@75
    .line 2647
    const/16 v4, 0x10

    #@77
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@7a
    .line 2650
    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 2599
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@3
    invoke-static {v4}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@a
    move-result-object v2

    #@b
    .line 2600
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@d
    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    #@10
    .line 2601
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@12
    if-eq v4, v5, :cond_0

    #@14
    .line 2602
    const/16 v4, 0x40

    #@16
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@19
    .line 2604
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@1b
    if-ne v4, v5, :cond_1

    #@1d
    .line 2605
    const/16 v4, 0x80

    #@1f
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@22
    .line 2607
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    #@24
    .line 2608
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@27
    .line 2609
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@29
    invoke-static {v4, v0}, Landroid/widget/NumberPicker;->-wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    #@30
    .line 2610
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@33
    .line 2611
    move-object v1, v0

    #@34
    .line 2612
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    #@36
    .line 2613
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@38
    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    #@3b
    .line 2614
    const/4 v4, 0x0

    #@3c
    aget v4, v3, v4

    #@3e
    const/4 v5, 0x1

    #@3f
    aget v5, v3, v5

    #@41
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    #@44
    .line 2615
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@47
    .line 2616
    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 5
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v4, 0x2

    #@1
    .line 2565
    packed-switch p2, :pswitch_data_0

    #@4
    .line 2564
    :cond_0
    return-void

    #@5
    .line 2567
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 2568
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_1

    #@f
    .line 2569
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v3

    #@1b
    .line 2568
    if-eqz v3, :cond_1

    #@1d
    .line 2570
    const/4 v3, 0x3

    #@1e
    invoke-virtual {p0, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@21
    move-result-object v3

    #@22
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 2572
    :cond_1
    return-void

    #@26
    .line 2574
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@28
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@2f
    move-result-object v1

    #@30
    .line 2575
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_2

    #@36
    .line 2576
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@41
    move-result v3

    #@42
    .line 2575
    if-eqz v3, :cond_2

    #@44
    .line 2577
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@47
    move-result-object v3

    #@48
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    .line 2578
    return-void

    #@4c
    .line 2580
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@4e
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@55
    move-result-object v0

    #@56
    .line 2581
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@59
    move-result v3

    #@5a
    if-nez v3, :cond_0

    #@5c
    .line 2582
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@67
    move-result v3

    #@68
    .line 2581
    if-eqz v3, :cond_0

    #@6a
    .line 2583
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6d
    move-result-object v3

    #@6e
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@71
    .line 2584
    return-void

    #@72
    .line 2588
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    .line 2589
    .restart local v2    # "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@79
    move-result v3

    #@7a
    if-nez v3, :cond_3

    #@7c
    .line 2590
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@87
    move-result v3

    #@88
    .line 2589
    if-eqz v3, :cond_3

    #@8a
    .line 2591
    const/4 v3, 0x1

    #@8b
    invoke-virtual {p0, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8e
    move-result-object v3

    #@8f
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@92
    .line 2593
    :cond_3
    return-void

    #@93
    .line 2565
    nop

    #@94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2716
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@3
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .line 2717
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@b
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get19(Landroid/widget/NumberPicker;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 2718
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@13
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap3(Landroid/widget/NumberPicker;I)I

    #@16
    move-result v0

    #@17
    .line 2720
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@19
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    #@1c
    move-result v1

    #@1d
    if-lt v0, v1, :cond_2

    #@1f
    .line 2721
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@21
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    if-nez v1, :cond_1

    #@27
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@29
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    :goto_0
    return-object v1

    #@2e
    .line 2722
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@30
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@36
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    #@39
    move-result v2

    #@3a
    sub-int v2, v0, v2

    #@3c
    aget-object v1, v1, v2

    #@3e
    goto :goto_0

    #@3f
    .line 2724
    :cond_2
    return-object v2
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2728
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@3
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, 0x1

    #@9
    .line 2729
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@b
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get19(Landroid/widget/NumberPicker;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 2730
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@13
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap3(Landroid/widget/NumberPicker;I)I

    #@16
    move-result v0

    #@17
    .line 2732
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@19
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    #@1c
    move-result v1

    #@1d
    if-gt v0, v1, :cond_2

    #@1f
    .line 2733
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@21
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    if-nez v1, :cond_1

    #@27
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@29
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    :goto_0
    return-object v1

    #@2e
    .line 2734
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@30
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@36
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    #@39
    move-result v2

    #@3a
    sub-int v2, v0, v2

    #@3c
    aget-object v1, v1, v2

    #@3e
    goto :goto_0

    #@3f
    .line 2736
    :cond_2
    return-object v2
.end method

.method private hasVirtualDecrementButton()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2708
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@3
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@b
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    #@e
    move-result v1

    #@f
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@11
    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    #@14
    move-result v2

    #@15
    if-le v1, v2, :cond_1

    #@17
    :cond_0
    :goto_0
    return v0

    #@18
    :cond_1
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2712
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@3
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@b
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    #@e
    move-result v1

    #@f
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@11
    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    #@14
    move-result v2

    #@15
    if-ge v1, v2, :cond_1

    #@17
    :cond_0
    :goto_0
    return v0

    #@18
    :cond_1
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2552
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 2553
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@13
    move-result-object v0

    #@14
    .line 2554
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    #@16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@1d
    .line 2555
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1f
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@2a
    .line 2556
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    .line 2557
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@33
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@36
    move-result v1

    #@37
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    #@3a
    .line 2558
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@3c
    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    #@3f
    .line 2559
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@41
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@43
    invoke-virtual {v1, v2, v0}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@46
    .line 2551
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 2541
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 2542
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@13
    move-result-object v0

    #@14
    .line 2543
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@16
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@1d
    .line 2544
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1f
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@26
    .line 2545
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@28
    const/4 v2, 0x2

    #@29
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    #@2c
    .line 2546
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@2e
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@30
    invoke-virtual {v1, v2, v0}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@33
    .line 2540
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 2316
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2336
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 2318
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@a
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    #@d
    move-result v0

    #@e
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@10
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    #@13
    move-result v1

    #@14
    .line 2319
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@16
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    #@19
    move-result v2

    #@1a
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1c
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@1f
    move-result v3

    #@20
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@22
    invoke-static {v4}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    #@25
    move-result v4

    #@26
    sub-int/2addr v3, v4

    #@27
    add-int/2addr v2, v3

    #@28
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@2a
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    #@2d
    move-result v3

    #@2e
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@30
    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    #@33
    move-result v4

    #@34
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@36
    invoke-static {v5}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)I

    #@39
    move-result v5

    #@3a
    sub-int/2addr v4, v5

    #@3b
    add-int/2addr v3, v4

    #@3c
    .line 2318
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 2322
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@47
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    #@4a
    move-result v3

    #@4b
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@4d
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    #@50
    move-result v4

    #@51
    .line 2323
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@53
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    #@56
    move-result v0

    #@57
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@59
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@5c
    move-result v1

    #@5d
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@5f
    invoke-static {v5}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    #@62
    move-result v5

    #@63
    sub-int/2addr v1, v5

    #@64
    add-int v5, v0, v1

    #@66
    .line 2324
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@68
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    #@6b
    move-result v0

    #@6c
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@6e
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    #@71
    move-result v1

    #@72
    add-int v6, v0, v1

    #@74
    .line 2321
    const/4 v1, 0x3

    #@75
    move-object v0, p0

    #@76
    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@79
    move-result-object v0

    #@7a
    return-object v0

    #@7b
    .line 2326
    :pswitch_3
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@7d
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    #@80
    move-result v0

    #@81
    .line 2327
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@83
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    #@86
    move-result v1

    #@87
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@89
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    #@8c
    move-result v2

    #@8d
    add-int/2addr v1, v2

    #@8e
    .line 2328
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@90
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    #@93
    move-result v2

    #@94
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@96
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@99
    move-result v3

    #@9a
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@9c
    invoke-static {v4}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    #@9f
    move-result v4

    #@a0
    sub-int/2addr v3, v4

    #@a1
    add-int/2addr v2, v3

    #@a2
    .line 2329
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@a4
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    #@a7
    move-result v3

    #@a8
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@aa
    invoke-static {v4}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    #@ad
    move-result v4

    #@ae
    sub-int/2addr v3, v4

    #@af
    .line 2326
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@b2
    move-result-object v0

    #@b3
    return-object v0

    #@b4
    .line 2332
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@ba
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    #@bd
    move-result v3

    #@be
    .line 2333
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@c0
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    #@c3
    move-result v0

    #@c4
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@c6
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    #@c9
    move-result v1

    #@ca
    sub-int v4, v0, v1

    #@cc
    .line 2334
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@ce
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    #@d1
    move-result v0

    #@d2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@d4
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@d7
    move-result v1

    #@d8
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@da
    invoke-static {v5}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    #@dd
    move-result v5

    #@de
    sub-int/2addr v1, v5

    #@df
    add-int v5, v0, v1

    #@e1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@e3
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    #@e6
    move-result v0

    #@e7
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@e9
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    #@ec
    move-result v1

    #@ed
    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@ef
    invoke-static {v6}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)I

    #@f2
    move-result v6

    #@f3
    sub-int/2addr v1, v6

    #@f4
    add-int v6, v0, v1

    #@f6
    .line 2331
    const/4 v1, 0x1

    #@f7
    move-object v0, p0

    #@f8
    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@fb
    move-result-object v0

    #@fc
    return-object v0

    #@fd
    .line 2316
    nop

    #@fe
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 2343
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 2345
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 2346
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 2347
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    #@17
    .line 2365
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 2350
    :pswitch_1
    const/4 v2, 0x3

    #@1d
    .line 2349
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    #@20
    .line 2352
    const/4 v2, 0x2

    #@21
    .line 2351
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    #@24
    .line 2354
    const/4 v2, 0x1

    #@25
    .line 2353
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    #@28
    .line 2355
    return-object v0

    #@29
    .line 2360
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    #@2c
    .line 2362
    return-object v0

    #@2d
    .line 2347
    nop

    #@2e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/high16 v4, 0x10000

    #@2
    const v3, 0x8000

    #@5
    const/high16 v2, -0x80000000

    #@7
    const/4 v6, 0x1

    #@8
    const/4 v5, 0x0

    #@9
    .line 2370
    packed-switch p1, :pswitch_data_0

    #@c
    .line 2517
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 2372
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    #@14
    goto :goto_0

    #@15
    .line 2374
    :sswitch_0
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@17
    if-eq v1, p1, :cond_0

    #@19
    .line 2375
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@1b
    .line 2376
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1d
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->requestAccessibilityFocus()Z

    #@20
    .line 2377
    return v6

    #@21
    .line 2379
    :cond_0
    return v5

    #@22
    .line 2381
    :sswitch_1
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@24
    if-ne v1, p1, :cond_1

    #@26
    .line 2382
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@28
    .line 2383
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@2a
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->clearAccessibilityFocus()V

    #@2d
    .line 2384
    return v6

    #@2e
    .line 2386
    :cond_1
    return v5

    #@2f
    .line 2389
    :sswitch_2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@31
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 2390
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@39
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_2

    #@3f
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@41
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    #@44
    move-result v1

    #@45
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@47
    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    #@4a
    move-result v2

    #@4b
    if-ge v1, v2, :cond_3

    #@4d
    .line 2391
    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@4f
    invoke-static {v1, v6}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    #@52
    .line 2392
    return v6

    #@53
    .line 2394
    :cond_3
    return v5

    #@54
    .line 2396
    :sswitch_3
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@56
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@59
    move-result v1

    #@5a
    if-eqz v1, :cond_5

    #@5c
    .line 2397
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@5e
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    #@61
    move-result v1

    #@62
    if-nez v1, :cond_4

    #@64
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@66
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    #@69
    move-result v1

    #@6a
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@6c
    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    #@6f
    move-result v2

    #@70
    if-le v1, v2, :cond_5

    #@72
    .line 2398
    :cond_4
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@74
    invoke-static {v1, v5}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    #@77
    .line 2399
    return v6

    #@78
    .line 2401
    :cond_5
    return v5

    #@79
    .line 2405
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    #@7c
    .line 2451
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@7e
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    #@85
    move-result v1

    #@86
    return v1

    #@87
    .line 2407
    :sswitch_4
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@89
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_6

    #@8f
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@91
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    #@98
    move-result v1

    #@99
    if-eqz v1, :cond_7

    #@9b
    .line 2454
    :cond_6
    return v5

    #@9c
    .line 2408
    :cond_7
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@9e
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    #@a5
    move-result v1

    #@a6
    return v1

    #@a7
    .line 2412
    :sswitch_5
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@a9
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@ac
    move-result v1

    #@ad
    if-eqz v1, :cond_8

    #@af
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@b1
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    #@b8
    move-result v1

    #@b9
    if-eqz v1, :cond_8

    #@bb
    .line 2413
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@bd
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@c0
    move-result-object v1

    #@c1
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    #@c4
    .line 2414
    return v6

    #@c5
    .line 2416
    :cond_8
    return v5

    #@c6
    .line 2419
    :sswitch_6
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@c8
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@cb
    move-result v1

    #@cc
    if-eqz v1, :cond_9

    #@ce
    .line 2420
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@d0
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->performClick()Z

    #@d3
    .line 2421
    return v6

    #@d4
    .line 2423
    :cond_9
    return v5

    #@d5
    .line 2426
    :sswitch_7
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@d7
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@da
    move-result v1

    #@db
    if-eqz v1, :cond_a

    #@dd
    .line 2427
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@df
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->performLongClick()Z

    #@e2
    .line 2428
    return v6

    #@e3
    .line 2430
    :cond_a
    return v5

    #@e4
    .line 2433
    :sswitch_8
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@e6
    if-eq v1, p1, :cond_b

    #@e8
    .line 2434
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@ea
    .line 2435
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@ed
    .line 2437
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@ef
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@f2
    move-result-object v1

    #@f3
    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    #@f6
    .line 2438
    return v6

    #@f7
    .line 2440
    :cond_b
    return v5

    #@f8
    .line 2442
    :sswitch_9
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@fa
    if-ne v1, p1, :cond_c

    #@fc
    .line 2443
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@fe
    .line 2444
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@101
    .line 2446
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@103
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@106
    move-result-object v1

    #@107
    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    #@10a
    .line 2447
    return v6

    #@10b
    .line 2449
    :cond_c
    return v5

    #@10c
    .line 2456
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    #@10f
    .line 2484
    return v5

    #@110
    .line 2458
    :sswitch_a
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@112
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@115
    move-result v1

    #@116
    if-eqz v1, :cond_d

    #@118
    .line 2459
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@11a
    invoke-static {v1, v6}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    #@11d
    .line 2460
    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@120
    .line 2462
    return v6

    #@121
    .line 2464
    :cond_d
    return v5

    #@122
    .line 2466
    :sswitch_b
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@124
    if-eq v1, p1, :cond_e

    #@126
    .line 2467
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@128
    .line 2468
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@12b
    .line 2470
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@12d
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@12f
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    #@132
    move-result v2

    #@133
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@135
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@138
    move-result v3

    #@139
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@13b
    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    #@13e
    move-result v4

    #@13f
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@142
    .line 2471
    return v6

    #@143
    .line 2473
    :cond_e
    return v5

    #@144
    .line 2475
    :sswitch_c
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@146
    if-ne v1, p1, :cond_f

    #@148
    .line 2476
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@14a
    .line 2477
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@14d
    .line 2479
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@14f
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@151
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    #@154
    move-result v2

    #@155
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@157
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@15a
    move-result v3

    #@15b
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@15d
    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    #@160
    move-result v4

    #@161
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@164
    .line 2480
    return v6

    #@165
    .line 2482
    :cond_f
    return v5

    #@166
    .line 2486
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    #@169
    .line 2515
    return v5

    #@16a
    .line 2488
    :sswitch_d
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@16c
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@16f
    move-result v1

    #@170
    if-eqz v1, :cond_11

    #@172
    .line 2489
    if-ne p1, v6, :cond_10

    #@174
    const/4 v0, 0x1

    #@175
    .line 2490
    .local v0, "increment":Z
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@177
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    #@17a
    .line 2491
    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@17d
    .line 2493
    return v6

    #@17e
    .line 2489
    .end local v0    # "increment":Z
    :cond_10
    const/4 v0, 0x0

    #@17f
    .restart local v0    # "increment":Z
    goto :goto_1

    #@180
    .line 2495
    .end local v0    # "increment":Z
    :cond_11
    return v5

    #@181
    .line 2497
    :sswitch_e
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@183
    if-eq v1, p1, :cond_12

    #@185
    .line 2498
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@187
    .line 2499
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@18a
    .line 2501
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@18c
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@18e
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@191
    move-result v2

    #@192
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@194
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    #@197
    move-result v3

    #@198
    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@19b
    .line 2502
    return v6

    #@19c
    .line 2504
    :cond_12
    return v5

    #@19d
    .line 2506
    :sswitch_f
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@19f
    if-ne v1, p1, :cond_13

    #@1a1
    .line 2507
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    #@1a3
    .line 2508
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@1a6
    .line 2510
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1a8
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1aa
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@1ad
    move-result v2

    #@1ae
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    #@1b0
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    #@1b3
    move-result v3

    #@1b4
    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@1b7
    .line 2511
    return v6

    #@1b8
    .line 2513
    :cond_13
    return v5

    #@1b9
    .line 2370
    nop

    #@1ba
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    #@1c8
    .line 2372
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    #@1da
    .line 2405
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_9
    .end sparse-switch

    #@1f4
    .line 2456
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_a
        0x40 -> :sswitch_b
        0x80 -> :sswitch_c
    .end sparse-switch

    #@202
    .line 2486
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_d
        0x40 -> :sswitch_e
        0x80 -> :sswitch_f
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    #@0
    .prologue
    .line 2521
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2520
    :cond_0
    :goto_0
    return-void

    #@4
    .line 2523
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2525
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 2524
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    #@11
    goto :goto_0

    #@12
    .line 2529
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    #@15
    goto :goto_0

    #@16
    .line 2532
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 2534
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 2533
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 2521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
