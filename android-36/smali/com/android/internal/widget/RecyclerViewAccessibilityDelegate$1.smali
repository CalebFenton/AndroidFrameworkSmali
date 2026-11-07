.class Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 87
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 92
    :cond_20
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 100
    return v0

    .line 103
    :cond_27
    const/4 v0, 0x0

    return v0
.end method
