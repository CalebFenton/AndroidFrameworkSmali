.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatApi22.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 28
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 44
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    #@5
    .line 43
    return-void
.end method

.method public static setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 48
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    #@5
    .line 47
    return-void
.end method

.method public static setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 32
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    #@5
    .line 31
    return-void
.end method

.method public static setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 36
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    #@5
    .line 35
    return-void
.end method
