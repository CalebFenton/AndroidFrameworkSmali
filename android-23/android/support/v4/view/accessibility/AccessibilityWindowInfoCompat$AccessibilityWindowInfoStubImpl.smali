.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoStubImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>()V

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
    .line 83
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 79
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getLayer(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 64
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 59
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 98
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isActive(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 88
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 93
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 112
    return-void
.end method
