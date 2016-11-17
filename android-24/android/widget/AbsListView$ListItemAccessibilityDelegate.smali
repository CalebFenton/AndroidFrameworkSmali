.class Landroid/widget/AbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 2420
    iput-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 2423
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 2425
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@5
    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    #@8
    move-result v0

    #@9
    .line 2426
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@b
    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    #@e
    .line 2422
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 2431
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 2432
    return v7

    #@a
    .line 2435
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@c
    invoke-virtual {v5, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    #@f
    move-result v4

    #@10
    .line 2436
    .local v4, "position":I
    if-eq v4, v8, :cond_1

    #@12
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@14
    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@16
    if-nez v5, :cond_2

    #@18
    .line 2438
    :cond_1
    return v6

    #@19
    .line 2441
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@1b
    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1d
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    #@20
    move-result v5

    #@21
    if-lt v4, v5, :cond_3

    #@23
    .line 2448
    return v6

    #@24
    .line 2452
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@27
    move-result-object v3

    #@28
    .line 2453
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v3, Landroid/widget/AbsListView$LayoutParams;

    #@2a
    if-eqz v5, :cond_4

    #@2c
    .line 2454
    nop

    #@2d
    nop

    #@2e
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    #@30
    .line 2459
    :goto_0
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@32
    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_5

    #@38
    if-eqz v2, :cond_5

    #@3a
    .line 2464
    sparse-switch p2, :sswitch_data_0

    #@3d
    .line 2491
    return v6

    #@3e
    .line 2456
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v2, 0x0

    #@3f
    .local v2, "isItemEnabled":Z
    goto :goto_0

    #@40
    .line 2461
    .end local v2    # "isItemEnabled":Z
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    return v6

    #@41
    .line 2466
    :sswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@43
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    #@46
    move-result v5

    #@47
    if-ne v5, v4, :cond_6

    #@49
    .line 2467
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@4b
    invoke-virtual {v5, v8}, Landroid/widget/AdapterView;->setSelection(I)V

    #@4e
    .line 2468
    return v7

    #@4f
    .line 2470
    :cond_6
    return v6

    #@50
    .line 2472
    :sswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@52
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    #@55
    move-result v5

    #@56
    if-eq v5, v4, :cond_7

    #@58
    .line 2473
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@5a
    invoke-virtual {v5, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    #@5d
    .line 2474
    return v7

    #@5e
    .line 2476
    :cond_7
    return v6

    #@5f
    .line 2478
    :sswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@61
    invoke-static {v5, p1}, Landroid/widget/AbsListView;->-wrap2(Landroid/widget/AbsListView;Landroid/view/View;)Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_8

    #@67
    .line 2479
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@69
    invoke-virtual {v5, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    #@6c
    move-result-wide v0

    #@6d
    .line 2480
    .local v0, "id":J
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@6f
    invoke-virtual {v5, p1, v4, v0, v1}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    #@72
    move-result v5

    #@73
    return v5

    #@74
    .line 2482
    .end local v0    # "id":J
    :cond_8
    return v6

    #@75
    .line 2484
    :sswitch_3
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@77
    invoke-virtual {v5}, Landroid/view/View;->isLongClickable()Z

    #@7a
    move-result v5

    #@7b
    if-eqz v5, :cond_9

    #@7d
    .line 2485
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@7f
    invoke-virtual {v5, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    #@82
    move-result-wide v0

    #@83
    .line 2486
    .restart local v0    # "id":J
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@85
    invoke-virtual {v5, p1, v4, v0, v1}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    #@88
    move-result v5

    #@89
    return v5

    #@8a
    .line 2488
    .end local v0    # "id":J
    :cond_9
    return v6

    #@8b
    .line 2464
    nop

    #@8c
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
