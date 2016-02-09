.class Landroid/support/v4/view/ViewCompatICS;
.super Ljava/lang/Object;
.source "ViewCompatICS.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 46
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@5
    .line 50
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 42
    return-void
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "delegate"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 39
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    #@2
    .end local p1    # "delegate":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@5
    .line 38
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fitSystemWindows"    # Z

    #@0
    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    #@3
    .line 54
    return-void
.end method
