.class public Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final blacklist mItemDelegate:Landroid/view/View$AccessibilityDelegate;

.field final blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 34
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 84
    new-instance v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;-><init>(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 35
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getItemDelegate()Landroid/view/View$AccessibilityDelegate;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 65
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    const-class v0, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_26

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    .line 69
    .local v0, "rv":Lcom/android/internal/widget/RecyclerView;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    .end local v0    # "rv":Lcom/android/internal/widget/RecyclerView;
    :cond_26
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 56
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 57
    const-class v0, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 59
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 61
    :cond_23
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 51
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method blacklist shouldIgnore()Z
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
