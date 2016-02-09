.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;)V

    #@4
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 154
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    #@3
    .line 153
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 179
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 174
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getChildCount(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getId(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 149
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getId(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getLayer(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 134
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getLayer(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 144
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 139
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getRoot(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 129
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getType(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 169
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isAccessibilityFocused(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isActive(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 159
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isActive(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 164
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isFocused(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 119
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->obtain()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 124
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 184
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->recycle(Ljava/lang/Object;)V

    #@3
    .line 183
    return-void
.end method
