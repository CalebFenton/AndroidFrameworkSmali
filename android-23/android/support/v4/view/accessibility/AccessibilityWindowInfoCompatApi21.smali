.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompatApi21.java"


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

.method public static getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 57
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@5
    .line 56
    return-void
.end method

.method public static getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 77
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getChildCount(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getId(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 53
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getLayer(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 41
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 49
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getParent()Landroid/view/accessibility/AccessibilityWindowInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 45
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 37
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isActive(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 61
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 65
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 32
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 81
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    #@5
    .line 80
    return-void
.end method
