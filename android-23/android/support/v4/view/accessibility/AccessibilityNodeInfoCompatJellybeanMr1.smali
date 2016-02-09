.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellybeanMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 33
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 45
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "labeled"    # Landroid/view/View;

    #@0
    .prologue
    .line 25
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    #@5
    .line 24
    return-void
.end method

.method public static setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 29
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    #@5
    .line 28
    return-void
.end method

.method public static setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "labeled"    # Landroid/view/View;

    #@0
    .prologue
    .line 37
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    #@5
    .line 36
    return-void
.end method

.method public static setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 41
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    #@5
    .line 40
    return-void
.end method
