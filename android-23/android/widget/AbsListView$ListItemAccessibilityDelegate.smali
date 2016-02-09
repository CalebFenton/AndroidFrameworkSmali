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
    .line 2403
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
    .line 2406
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 2408
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@5
    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    #@8
    move-result v0

    #@9
    .line 2409
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@b
    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    #@e
    .line 2405
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 2414
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 2415
    return v6

    #@a
    .line 2418
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@c
    invoke-virtual {v4, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    #@f
    move-result v1

    #@10
    .line 2419
    .local v1, "position":I
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@12
    invoke-virtual {v4}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/widget/ListAdapter;

    #@18
    .line 2421
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eq v1, v7, :cond_1

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 2423
    :cond_1
    return v5

    #@1d
    .line 2426
    :cond_2
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@1f
    invoke-virtual {v4}, Landroid/widget/AbsListView;->isEnabled()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_3

    #@25
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 2431
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@2d
    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    #@30
    move-result-wide v2

    #@31
    .line 2433
    .local v2, "id":J
    sparse-switch p2, :sswitch_data_0

    #@34
    .line 2458
    return v5

    #@35
    .line 2428
    .end local v2    # "id":J
    :cond_3
    return v5

    #@36
    .line 2435
    .restart local v2    # "id":J
    :sswitch_0
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@38
    invoke-virtual {v4}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    #@3b
    move-result v4

    #@3c
    if-ne v4, v1, :cond_4

    #@3e
    .line 2436
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@40
    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->setSelection(I)V

    #@43
    .line 2437
    return v6

    #@44
    .line 2439
    :cond_4
    return v5

    #@45
    .line 2441
    :sswitch_1
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@47
    invoke-virtual {v4}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    #@4a
    move-result v4

    #@4b
    if-eq v4, v1, :cond_5

    #@4d
    .line 2442
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@4f
    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    #@52
    .line 2443
    return v6

    #@53
    .line 2445
    :cond_5
    return v5

    #@54
    .line 2447
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@56
    invoke-virtual {v4}, Landroid/widget/AbsListView;->isClickable()Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_6

    #@5c
    .line 2448
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@5e
    invoke-virtual {v4, p1, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    #@61
    move-result v4

    #@62
    return v4

    #@63
    .line 2450
    :cond_6
    return v5

    #@64
    .line 2452
    :sswitch_3
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@66
    invoke-virtual {v4}, Landroid/widget/AbsListView;->isLongClickable()Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_7

    #@6c
    .line 2453
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    #@6e
    invoke-virtual {v4, p1, v1, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    #@71
    move-result v4

    #@72
    return v4

    #@73
    .line 2455
    :cond_7
    return v5

    #@74
    .line 2433
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
