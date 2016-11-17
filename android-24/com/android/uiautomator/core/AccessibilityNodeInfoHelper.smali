.class Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoHelper.java"


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

.method static getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;
    .locals 4
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 36
    if-nez p0, :cond_0

    #@4
    .line 37
    return-object v3

    #@5
    .line 40
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@a
    .line 41
    .local v1, "nodeRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@d
    .line 43
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    .line 44
    .local v0, "displayRect":Landroid/graphics/Rect;
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@14
    .line 45
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@16
    .line 46
    iput p1, v0, Landroid/graphics/Rect;->right:I

    #@18
    .line 47
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    #@1a
    .line 49
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 50
    return-object v1

    #@21
    .line 52
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    #@23
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@26
    return-object v2
.end method
