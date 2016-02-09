.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellybeanMr2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 36
    .local v0, "result":Ljava/lang/Object;
    check-cast v0, Ljava/util/List;

    #@8
    .end local v0    # "result":Ljava/lang/Object;
    return-object v0
.end method

.method public static getTextSelectionEnd(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 48
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionEnd()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getTextSelectionStart(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 44
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 30
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static isEditable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 52
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static refresh(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static setEditable(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "editable"    # Z

    #@0
    .prologue
    .line 56
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    #@5
    .line 55
    return-void
.end method

.method public static setTextSelection(Ljava/lang/Object;II)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 40
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    #@5
    .line 39
    return-void
.end method

.method public static setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "viewId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    #@5
    .line 25
    return-void
.end method
