.class public Lcom/android/uiautomator/core/UiObject;
.super Ljava/lang/Object;
.source "UiObject.java"


# static fields
.field protected static final FINGER_TOUCH_HALF_WIDTH:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final SWIPE_MARGIN_LIMIT:I = 0x5

.field protected static final WAIT_FOR_EVENT_TMEOUT:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final WAIT_FOR_SELECTOR_POLL:J = 0x3e8L

.field protected static final WAIT_FOR_SELECTOR_TIMEOUT:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final WAIT_FOR_WINDOW_TMEOUT:J = 0x157cL


# instance fields
.field private final mConfig:Lcom/android/uiautomator/core/Configurator;

.field private final mSelector:Lcom/android/uiautomator/core/UiSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    const-class v0, Lcom/android/uiautomator/core/UiObject;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@9
    .line 78
    iput-object p1, p0, Lcom/android/uiautomator/core/UiObject;->mSelector:Lcom/android/uiautomator/core/UiSelector;

    #@b
    .line 77
    return-void
.end method

.method private getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 374
    move-object v0, p1

    #@2
    .line 375
    .local v0, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    if-eqz v0, :cond_1

    #@4
    .line 376
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@7
    move-result-object v0

    #@8
    .line 377
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 378
    return-object v0

    #@11
    .line 381
    :cond_1
    return-object v2
.end method

.method private getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 336
    if-nez p1, :cond_0

    #@3
    .line 337
    return-object v5

    #@4
    .line 341
    :cond_0
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiDevice;->getDisplayWidth()I

    #@b
    move-result v4

    #@c
    .line 342
    .local v4, "w":I
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiDevice;->getDisplayHeight()I

    #@13
    move-result v0

    #@14
    .line 343
    .local v0, "h":I
    invoke-static {p1, v4, v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    #@17
    move-result-object v1

    #@18
    .line 346
    .local v1, "nodeRect":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiObject;->getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1b
    move-result-object v3

    #@1c
    .line 347
    .local v3, "scrollableParentNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_1

    #@1e
    .line 349
    return-object v1

    #@1f
    .line 353
    :cond_1
    invoke-static {v3, v4, v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    #@22
    move-result-object v2

    #@23
    .line 356
    .local v2, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 357
    return-object v1

    #@2a
    .line 360
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    #@2c
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@2f
    return-object v5
.end method

.method private safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 907
    if-nez p1, :cond_0

    #@2
    .line 908
    const-string/jumbo v0, ""

    #@5
    return-object v0

    #@6
    .line 909
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method


# virtual methods
.method public clearTextField()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 623
    new-array v3, v6, [Ljava/lang/Object;

    #@3
    invoke-static {v3}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 625
    iget-object v3, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v3}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v4

    #@c
    invoke-virtual {p0, v4, v5}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 626
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 627
    new-instance v3, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v3

    #@20
    .line 629
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@23
    move-result-object v1

    #@24
    .line 630
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@27
    move-result-object v3

    #@28
    iget v4, v1, Landroid/graphics/Rect;->left:I

    #@2a
    add-int/lit8 v4, v4, 0x14

    #@2c
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    #@2f
    move-result v5

    #@30
    invoke-virtual {v3, v4, v5}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    #@33
    .line 632
    new-instance v2, Lcom/android/uiautomator/core/UiObject;

    #@35
    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    #@37
    invoke-direct {v3}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@3a
    const-string/jumbo v4, "Select all"

    #@3d
    invoke-virtual {v3, v4}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    #@40
    move-result-object v3

    #@41
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@44
    .line 633
    .local v2, "selectAll":Lcom/android/uiautomator/core/UiObject;
    const-wide/16 v4, 0x32

    #@46
    invoke-virtual {v2, v4, v5}, Lcom/android/uiautomator/core/UiObject;->waitForExists(J)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_1

    #@4c
    .line 634
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiObject;->click()Z

    #@4f
    .line 636
    :cond_1
    const-wide/16 v4, 0xfa

    #@51
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    #@54
    .line 638
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@57
    move-result-object v3

    #@58
    const/16 v4, 0x43

    #@5a
    invoke-virtual {v3, v4, v6}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    #@5d
    .line 622
    return-void
.end method

.method public click()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 394
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 395
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 396
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 398
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@23
    move-result-object v1

    #@24
    .line 399
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    #@2f
    move-result v4

    #@30
    .line 400
    iget-object v5, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@32
    invoke-virtual {v5}, Lcom/android/uiautomator/core/Configurator;->getActionAcknowledgmentTimeout()J

    #@35
    move-result-wide v6

    #@36
    .line 399
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/uiautomator/core/InteractionController;->clickAndSync(IIJ)Z

    #@39
    move-result v2

    #@3a
    return v2
.end method

.method public clickAndWaitForNewWindow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 413
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 414
    const-wide/16 v0, 0x157c

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->clickAndWaitForNewWindow(J)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public clickAndWaitForNewWindow(J)Z
    .locals 9
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    const/4 v2, 0x1

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6
    move-result-object v3

    #@7
    const/4 v4, 0x0

    #@8
    aput-object v3, v2, v4

    #@a
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 434
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@f
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@12
    move-result-wide v2

    #@13
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    move-result-object v0

    #@17
    .line 435
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@19
    .line 436
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@1b
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 438
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@2a
    move-result-object v1

    #@2b
    .line 439
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    #@32
    move-result v3

    #@33
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    #@36
    move-result v4

    #@37
    .line 440
    iget-object v5, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@39
    invoke-virtual {v5}, Lcom/android/uiautomator/core/Configurator;->getActionAcknowledgmentTimeout()J

    #@3c
    move-result-wide v6

    #@3d
    .line 439
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/uiautomator/core/InteractionController;->clickAndWaitForNewWindow(IIJ)Z

    #@40
    move-result v2

    #@41
    return v2
.end method

.method public clickBottomRight()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 486
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 487
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 488
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 490
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@23
    move-result-object v1

    #@24
    .line 491
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@27
    move-result-object v2

    #@28
    iget v3, v1, Landroid/graphics/Rect;->right:I

    #@2a
    add-int/lit8 v3, v3, -0x5

    #@2c
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    #@2e
    add-int/lit8 v4, v4, -0x5

    #@30
    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    #@33
    move-result v2

    #@34
    return v2
.end method

.method public clickTopLeft()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 452
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 453
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 454
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 456
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@23
    move-result-object v1

    #@24
    .line 457
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@27
    move-result-object v2

    #@28
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@2a
    add-int/lit8 v3, v3, 0x5

    #@2c
    iget v4, v1, Landroid/graphics/Rect;->top:I

    #@2e
    add-int/lit8 v4, v4, 0x5

    #@30
    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    #@33
    move-result v2

    #@34
    return v2
.end method

.method public dragTo(III)Z
    .locals 8
    .param p1, "destX"    # I
    .param p2, "destY"    # I
    .param p3, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v7

    #@4
    .line 217
    .local v7, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    #@f
    move-result v2

    #@10
    .line 218
    const/4 v6, 0x1

    #@11
    move v3, p1

    #@12
    move v4, p2

    #@13
    move v5, p3

    #@14
    .line 217
    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public dragTo(Lcom/android/uiautomator/core/UiObject;I)Z
    .locals 9
    .param p1, "destObj"    # Lcom/android/uiautomator/core/UiObject;
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v8

    #@4
    .line 197
    .local v8, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v7

    #@8
    .line 198
    .local v7, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@13
    move-result v2

    #@14
    .line 199
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    #@17
    move-result v3

    #@18
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    #@1b
    move-result v4

    #@1c
    const/4 v6, 0x1

    #@1d
    move v5, p2

    #@1e
    .line 198
    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public exists()Z
    .locals 2

    #@0
    .prologue
    .line 902
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 903
    const-wide/16 v0, 0x0

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->waitForExists(J)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 164
    const/4 v2, 0x0

    #@1
    .line 165
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 166
    .local v4, "startMills":J
    const-wide/16 v0, 0x0

    #@7
    .line 167
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "currentMills":J
    :cond_0
    :goto_0
    cmp-long v3, v0, p1

    #@9
    if-gtz v3, :cond_1

    #@b
    .line 168
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v3, v6}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    move-result-object v2

    #@17
    .line 169
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_2

    #@19
    .line 180
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    return-object v2

    #@1a
    .line 173
    .restart local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiDevice;->runWatchers()V

    #@21
    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@24
    move-result-wide v6

    #@25
    sub-long v0, v6, v4

    #@27
    .line 176
    const-wide/16 v6, 0x0

    #@29
    cmp-long v3, p1, v6

    #@2b
    if-lez v3, :cond_0

    #@2d
    .line 177
    const-wide/16 v6, 0x3e8

    #@2f
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    #@32
    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 828
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 829
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 830
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 831
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 833
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    #@22
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@25
    .line 834
    .local v1, "nodeRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@28
    .line 836
    return-object v1
.end method

.method public getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@9
    .line 122
    new-instance v0, Lcom/android/uiautomator/core/UiObject;

    #@b
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@16
    return-object v0
.end method

.method public getChildCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 148
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 149
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 150
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 554
    new-array v2, v5, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 555
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 556
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 557
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 559
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    #@23
    move-result-object v2

    #@24
    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 560
    .local v1, "retVal":Ljava/lang/String;
    sget-object v2, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    #@2a
    const-string/jumbo v3, "getClassName() = %s"

    #@2d
    const/4 v4, 0x1

    #@2e
    new-array v4, v4, [Ljava/lang/Object;

    #@30
    aput-object v1, v4, v5

    #@32
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 561
    return-object v1
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 572
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 573
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 574
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 575
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 577
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@23
    move-result-object v1

    #@24
    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method public getFromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@9
    .line 136
    new-instance v0, Lcom/android/uiautomator/core/UiObject;

    #@b
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->fromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@16
    return-object v0
.end method

.method getInteractionController()Lcom/android/uiautomator/core/InteractionController;
    .locals 1

    #@0
    .prologue
    .line 110
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 792
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 793
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 794
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 795
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 797
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    #@23
    move-result-object v1

    #@24
    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method getQueryController()Lcom/android/uiautomator/core/QueryController;
    .locals 1

    #@0
    .prologue
    .line 100
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final getSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 2

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 90
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@8
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mSelector:Lcom/android/uiautomator/core/UiSelector;

    #@a
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@d
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 536
    new-array v2, v5, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 537
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 538
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 539
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 541
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@23
    move-result-object v2

    #@24
    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 542
    .local v1, "retVal":Ljava/lang/String;
    sget-object v2, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    #@2a
    const-string/jumbo v3, "getText() = %s"

    #@2d
    const/4 v4, 0x1

    #@2e
    new-array v4, v4, [Ljava/lang/Object;

    #@30
    aput-object v1, v4, v5

    #@32
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 543
    return-object v1
.end method

.method public getVisibleBounds()Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 813
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 814
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 815
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 817
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

.method public isCheckable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 680
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 681
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 682
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 683
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 685
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public isChecked()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 648
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 649
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 650
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 651
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 653
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public isClickable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 712
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 713
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 714
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 715
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 717
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public isEnabled()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 696
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 697
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 698
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 699
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 701
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public isFocusable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 744
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 745
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 746
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 747
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 749
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public isFocused()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 728
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 729
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 730
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 731
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 733
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public isLongClickable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 776
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 777
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 778
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 779
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 781
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public isScrollable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 760
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 761
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 762
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 763
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 765
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public isSelected()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 664
    const/4 v1, 0x0

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 665
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 666
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 667
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 669
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public longClick()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 502
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 503
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 504
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 505
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 507
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@23
    move-result-object v1

    #@24
    .line 508
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    #@2f
    move-result v4

    #@30
    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    #@33
    move-result v2

    #@34
    return v2
.end method

.method public longClickBottomRight()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 469
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 470
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 471
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 473
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@23
    move-result-object v1

    #@24
    .line 474
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@27
    move-result-object v2

    #@28
    iget v3, v1, Landroid/graphics/Rect;->right:I

    #@2a
    add-int/lit8 v3, v3, -0x5

    #@2c
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    #@2e
    add-int/lit8 v4, v4, -0x5

    #@30
    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    #@33
    move-result v2

    #@34
    return v2
.end method

.method public longClickTopLeft()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 520
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@8
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@f
    move-result-object v0

    #@10
    .line 521
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@12
    .line 522
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@14
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 524
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@23
    move-result-object v1

    #@24
    .line 525
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@27
    move-result-object v2

    #@28
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@2a
    add-int/lit8 v3, v3, 0x5

    #@2c
    iget v4, v1, Landroid/graphics/Rect;->top:I

    #@2e
    add-int/lit8 v4, v4, 0x5

    #@30
    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    #@33
    move-result v2

    #@34
    return v2
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 1
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    #@0
    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/InteractionController;->performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    .locals 16
    .param p1, "startPoint1"    # Landroid/graphics/Point;
    .param p2, "startPoint2"    # Landroid/graphics/Point;
    .param p3, "endPoint1"    # Landroid/graphics/Point;
    .param p4, "endPoint2"    # Landroid/graphics/Point;
    .param p5, "steps"    # I

    #@0
    .prologue
    .line 1004
    if-nez p5, :cond_0

    #@2
    .line 1005
    const/16 p5, 0x1

    #@4
    .line 1007
    :cond_0
    move-object/from16 v0, p3

    #@6
    iget v14, v0, Landroid/graphics/Point;->x:I

    #@8
    move-object/from16 v0, p1

    #@a
    iget v15, v0, Landroid/graphics/Point;->x:I

    #@c
    sub-int/2addr v14, v15

    #@d
    div-int v14, v14, p5

    #@f
    int-to-float v10, v14

    #@10
    .line 1008
    .local v10, "stepX1":F
    move-object/from16 v0, p3

    #@12
    iget v14, v0, Landroid/graphics/Point;->y:I

    #@14
    move-object/from16 v0, p1

    #@16
    iget v15, v0, Landroid/graphics/Point;->y:I

    #@18
    sub-int/2addr v14, v15

    #@19
    div-int v14, v14, p5

    #@1b
    int-to-float v12, v14

    #@1c
    .line 1009
    .local v12, "stepY1":F
    move-object/from16 v0, p4

    #@1e
    iget v14, v0, Landroid/graphics/Point;->x:I

    #@20
    move-object/from16 v0, p2

    #@22
    iget v15, v0, Landroid/graphics/Point;->x:I

    #@24
    sub-int/2addr v14, v15

    #@25
    div-int v14, v14, p5

    #@27
    int-to-float v11, v14

    #@28
    .line 1010
    .local v11, "stepX2":F
    move-object/from16 v0, p4

    #@2a
    iget v14, v0, Landroid/graphics/Point;->y:I

    #@2c
    move-object/from16 v0, p2

    #@2e
    iget v15, v0, Landroid/graphics/Point;->y:I

    #@30
    sub-int/2addr v14, v15

    #@31
    div-int v14, v14, p5

    #@33
    int-to-float v13, v14

    #@34
    .line 1013
    .local v13, "stepY2":F
    move-object/from16 v0, p1

    #@36
    iget v1, v0, Landroid/graphics/Point;->x:I

    #@38
    .line 1014
    .local v1, "eventX1":I
    move-object/from16 v0, p1

    #@3a
    iget v3, v0, Landroid/graphics/Point;->y:I

    #@3c
    .line 1015
    .local v3, "eventY1":I
    move-object/from16 v0, p2

    #@3e
    iget v2, v0, Landroid/graphics/Point;->x:I

    #@40
    .line 1016
    .local v2, "eventX2":I
    move-object/from16 v0, p2

    #@42
    iget v4, v0, Landroid/graphics/Point;->y:I

    #@44
    .line 1019
    .local v4, "eventY2":I
    add-int/lit8 v14, p5, 0x2

    #@46
    new-array v8, v14, [Landroid/view/MotionEvent$PointerCoords;

    #@48
    .line 1020
    .local v8, "points1":[Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v14, p5, 0x2

    #@4a
    new-array v9, v14, [Landroid/view/MotionEvent$PointerCoords;

    #@4c
    .line 1023
    .local v9, "points2":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v5, 0x0

    #@4d
    .local v5, "i":I
    :goto_0
    add-int/lit8 v14, p5, 0x1

    #@4f
    if-ge v5, v14, :cond_1

    #@51
    .line 1024
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    #@53
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@56
    .line 1025
    .local v6, "p1":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v14, v1

    #@57
    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@59
    .line 1026
    int-to-float v14, v3

    #@5a
    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@5c
    .line 1027
    const/high16 v14, 0x3f800000    # 1.0f

    #@5e
    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@60
    .line 1028
    const/high16 v14, 0x3f800000    # 1.0f

    #@62
    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@64
    .line 1029
    aput-object v6, v8, v5

    #@66
    .line 1031
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    #@68
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@6b
    .line 1032
    .local v7, "p2":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v14, v2

    #@6c
    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@6e
    .line 1033
    int-to-float v14, v4

    #@6f
    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@71
    .line 1034
    const/high16 v14, 0x3f800000    # 1.0f

    #@73
    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@75
    .line 1035
    const/high16 v14, 0x3f800000    # 1.0f

    #@77
    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@79
    .line 1036
    aput-object v7, v9, v5

    #@7b
    .line 1038
    int-to-float v14, v1

    #@7c
    add-float/2addr v14, v10

    #@7d
    float-to-int v1, v14

    #@7e
    .line 1039
    int-to-float v14, v3

    #@7f
    add-float/2addr v14, v12

    #@80
    float-to-int v3, v14

    #@81
    .line 1040
    int-to-float v14, v2

    #@82
    add-float/2addr v14, v11

    #@83
    float-to-int v2, v14

    #@84
    .line 1041
    int-to-float v14, v4

    #@85
    add-float/2addr v14, v13

    #@86
    float-to-int v4, v14

    #@87
    .line 1023
    add-int/lit8 v5, v5, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 1045
    .end local v6    # "p1":Landroid/view/MotionEvent$PointerCoords;
    .end local v7    # "p2":Landroid/view/MotionEvent$PointerCoords;
    :cond_1
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    #@8c
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@8f
    .line 1046
    .restart local v6    # "p1":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p3

    #@91
    iget v14, v0, Landroid/graphics/Point;->x:I

    #@93
    int-to-float v14, v14

    #@94
    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@96
    .line 1047
    move-object/from16 v0, p3

    #@98
    iget v14, v0, Landroid/graphics/Point;->y:I

    #@9a
    int-to-float v14, v14

    #@9b
    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@9d
    .line 1048
    const/high16 v14, 0x3f800000    # 1.0f

    #@9f
    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@a1
    .line 1049
    const/high16 v14, 0x3f800000    # 1.0f

    #@a3
    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@a5
    .line 1050
    add-int/lit8 v14, p5, 0x1

    #@a7
    aput-object v6, v8, v14

    #@a9
    .line 1052
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    #@ab
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@ae
    .line 1053
    .restart local v7    # "p2":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p4

    #@b0
    iget v14, v0, Landroid/graphics/Point;->x:I

    #@b2
    int-to-float v14, v14

    #@b3
    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@b5
    .line 1054
    move-object/from16 v0, p4

    #@b7
    iget v14, v0, Landroid/graphics/Point;->y:I

    #@b9
    int-to-float v14, v14

    #@ba
    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@bc
    .line 1055
    const/high16 v14, 0x3f800000    # 1.0f

    #@be
    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@c0
    .line 1056
    const/high16 v14, 0x3f800000    # 1.0f

    #@c2
    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@c4
    .line 1057
    add-int/lit8 v14, p5, 0x1

    #@c6
    aput-object v7, v9, v14

    #@c8
    .line 1059
    const/4 v14, 0x2

    #@c9
    new-array v14, v14, [[Landroid/view/MotionEvent$PointerCoords;

    #@cb
    const/4 v15, 0x0

    #@cc
    aput-object v8, v14, v15

    #@ce
    const/4 v15, 0x1

    #@cf
    aput-object v9, v14, v15

    #@d1
    move-object/from16 v0, p0

    #@d3
    invoke-virtual {v0, v14}, Lcom/android/uiautomator/core/UiObject;->performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z

    #@d6
    move-result v14

    #@d7
    return v14
.end method

.method public pinchIn(II)Z
    .locals 12
    .param p1, "percent"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 964
    if-gez p1, :cond_1

    #@2
    const/4 p1, 0x0

    #@3
    .line 965
    :cond_0
    :goto_0
    int-to-float v0, p1

    #@4
    const/high16 v5, 0x42c80000    # 100.0f

    #@6
    div-float v7, v0, v5

    #@8
    .line 967
    .local v7, "percentage":F
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@d
    move-result-wide v10

    #@e
    invoke-virtual {p0, v10, v11}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@11
    move-result-object v6

    #@12
    .line 968
    .local v6, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_2

    #@14
    .line 969
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@16
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 964
    .end local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "percentage":F
    :cond_1
    const/16 v0, 0x64

    #@24
    if-le p1, v0, :cond_0

    #@26
    const/16 p1, 0x64

    #@28
    goto :goto_0

    #@29
    .line 972
    .restart local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v7    # "percentage":F
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@2c
    move-result-object v8

    #@2d
    .line 973
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@30
    move-result v0

    #@31
    const/16 v5, 0x28

    #@33
    if-gt v0, v5, :cond_3

    #@35
    .line 974
    new-instance v0, Ljava/lang/IllegalStateException;

    #@37
    const-string/jumbo v5, "Object width is too small for operation"

    #@3a
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 976
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    #@40
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@43
    move-result v0

    #@44
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@47
    move-result v5

    #@48
    div-int/lit8 v5, v5, 0x2

    #@4a
    int-to-float v5, v5

    #@4b
    mul-float/2addr v5, v7

    #@4c
    float-to-int v5, v5

    #@4d
    sub-int/2addr v0, v5

    #@4e
    .line 977
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@51
    move-result v5

    #@52
    .line 976
    invoke-direct {v1, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    #@55
    .line 978
    .local v1, "startPoint1":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    #@57
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@5a
    move-result v0

    #@5b
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@5e
    move-result v5

    #@5f
    div-int/lit8 v5, v5, 0x2

    #@61
    int-to-float v5, v5

    #@62
    mul-float/2addr v5, v7

    #@63
    float-to-int v5, v5

    #@64
    add-int/2addr v0, v5

    #@65
    .line 979
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@68
    move-result v5

    #@69
    .line 978
    invoke-direct {v2, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    #@6c
    .line 981
    .local v2, "startPoint2":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    #@6e
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@71
    move-result v0

    #@72
    add-int/lit8 v0, v0, -0x14

    #@74
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@77
    move-result v5

    #@78
    invoke-direct {v3, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    #@7b
    .line 982
    .local v3, "endPoint1":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    #@7d
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@80
    move-result v0

    #@81
    add-int/lit8 v0, v0, 0x14

    #@83
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@86
    move-result v5

    #@87
    invoke-direct {v4, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    #@8a
    .local v4, "endPoint2":Landroid/graphics/Point;
    move-object v0, p0

    #@8b
    move v5, p2

    #@8c
    .line 984
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/UiObject;->performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    #@8f
    move-result v0

    #@90
    return v0
.end method

.method public pinchOut(II)Z
    .locals 12
    .param p1, "percent"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 926
    if-gez p1, :cond_1

    #@2
    const/4 p1, 0x1

    #@3
    .line 927
    :cond_0
    :goto_0
    int-to-float v0, p1

    #@4
    const/high16 v5, 0x42c80000    # 100.0f

    #@6
    div-float v7, v0, v5

    #@8
    .line 929
    .local v7, "percentage":F
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    #@d
    move-result-wide v10

    #@e
    invoke-virtual {p0, v10, v11}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@11
    move-result-object v6

    #@12
    .line 930
    .local v6, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_2

    #@14
    .line 931
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@16
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 926
    .end local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "percentage":F
    :cond_1
    const/16 v0, 0x64

    #@24
    if-le p1, v0, :cond_0

    #@26
    const/16 p1, 0x64

    #@28
    goto :goto_0

    #@29
    .line 934
    .restart local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v7    # "percentage":F
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    #@2c
    move-result-object v8

    #@2d
    .line 935
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@30
    move-result v0

    #@31
    const/16 v5, 0x28

    #@33
    if-gt v0, v5, :cond_3

    #@35
    .line 936
    new-instance v0, Ljava/lang/IllegalStateException;

    #@37
    const-string/jumbo v5, "Object width is too small for operation"

    #@3a
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 939
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    #@40
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@43
    move-result v0

    #@44
    add-int/lit8 v0, v0, -0x14

    #@46
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@49
    move-result v5

    #@4a
    invoke-direct {v1, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    #@4d
    .line 940
    .local v1, "startPoint1":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    #@4f
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@52
    move-result v0

    #@53
    add-int/lit8 v0, v0, 0x14

    #@55
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@58
    move-result v5

    #@59
    invoke-direct {v2, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    #@5c
    .line 943
    .local v2, "startPoint2":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    #@5e
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@61
    move-result v0

    #@62
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@65
    move-result v5

    #@66
    div-int/lit8 v5, v5, 0x2

    #@68
    int-to-float v5, v5

    #@69
    mul-float/2addr v5, v7

    #@6a
    float-to-int v5, v5

    #@6b
    sub-int/2addr v0, v5

    #@6c
    .line 944
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@6f
    move-result v5

    #@70
    .line 943
    invoke-direct {v3, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    #@73
    .line 945
    .local v3, "endPoint1":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    #@75
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    #@78
    move-result v0

    #@79
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@7c
    move-result v5

    #@7d
    div-int/lit8 v5, v5, 0x2

    #@7f
    int-to-float v5, v5

    #@80
    mul-float/2addr v5, v7

    #@81
    float-to-int v5, v5

    #@82
    add-int/2addr v0, v5

    #@83
    .line 946
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    #@86
    move-result v5

    #@87
    .line 945
    invoke-direct {v4, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    #@8a
    .local v4, "endPoint2":Landroid/graphics/Point;
    move-object v0, p0

    #@8b
    move v5, p2

    #@8c
    .line 948
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/UiObject;->performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    #@8f
    move-result v0

    #@90
    return v0
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@9
    .line 599
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->clearTextField()V

    #@c
    .line 600
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/InteractionController;->sendText(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public swipeDown(I)Z
    .locals 7
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 266
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 267
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    #@10
    move-result-object v6

    #@11
    .line 268
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@14
    move-result v0

    #@15
    const/16 v1, 0xa

    #@17
    if-gt v0, v1, :cond_0

    #@19
    .line 269
    return v2

    #@1a
    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    #@21
    move-result v1

    #@22
    .line 271
    iget v2, v6, Landroid/graphics/Rect;->top:I

    #@24
    add-int/lit8 v2, v2, 0x5

    #@26
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    #@29
    move-result v3

    #@2a
    .line 272
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    #@2c
    add-int/lit8 v4, v4, -0x5

    #@2e
    move v5, p1

    #@2f
    .line 270
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    #@32
    move-result v0

    #@33
    return v0
.end method

.method public swipeLeft(I)Z
    .locals 7
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 294
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 295
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    #@10
    move-result-object v6

    #@11
    .line 296
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@14
    move-result v0

    #@15
    const/16 v1, 0xa

    #@17
    if-gt v0, v1, :cond_0

    #@19
    .line 297
    return v2

    #@1a
    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@1d
    move-result-object v0

    #@1e
    iget v1, v6, Landroid/graphics/Rect;->right:I

    #@20
    add-int/lit8 v1, v1, -0x5

    #@22
    .line 299
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    #@25
    move-result v2

    #@26
    iget v3, v6, Landroid/graphics/Rect;->left:I

    #@28
    add-int/lit8 v3, v3, 0x5

    #@2a
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    #@2d
    move-result v4

    #@2e
    move v5, p1

    #@2f
    .line 298
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    #@32
    move-result v0

    #@33
    return v0
.end method

.method public swipeRight(I)Z
    .locals 7
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 321
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 322
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    #@10
    move-result-object v6

    #@11
    .line 323
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@14
    move-result v0

    #@15
    const/16 v1, 0xa

    #@17
    if-gt v0, v1, :cond_0

    #@19
    .line 324
    return v2

    #@1a
    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@1d
    move-result-object v0

    #@1e
    iget v1, v6, Landroid/graphics/Rect;->left:I

    #@20
    add-int/lit8 v1, v1, 0x5

    #@22
    .line 326
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    #@25
    move-result v2

    #@26
    iget v3, v6, Landroid/graphics/Rect;->right:I

    #@28
    add-int/lit8 v3, v3, -0x5

    #@2a
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    #@2d
    move-result v4

    #@2e
    move v5, p1

    #@2f
    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    #@32
    move-result v0

    #@33
    return v0
.end method

.method public swipeUp(I)Z
    .locals 7
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 238
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 239
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    #@10
    move-result-object v6

    #@11
    .line 240
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@14
    move-result v0

    #@15
    const/16 v1, 0xa

    #@17
    if-gt v0, v1, :cond_0

    #@19
    .line 241
    return v2

    #@1a
    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    #@21
    move-result v1

    #@22
    .line 243
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    #@24
    add-int/lit8 v2, v2, -0x5

    #@26
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    #@29
    move-result v3

    #@2a
    iget v4, v6, Landroid/graphics/Rect;->top:I

    #@2c
    add-int/lit8 v4, v4, 0x5

    #@2e
    move v5, p1

    #@2f
    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    #@32
    move-result v0

    #@33
    return v0
.end method

.method public waitForExists(J)Z
    .locals 5
    .param p1, "timeout"    # J

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 851
    new-array v0, v3, [Ljava/lang/Object;

    #@4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 853
    return v3

    #@14
    .line 855
    :cond_0
    return v2
.end method

.method public waitUntilGone(J)Z
    .locals 11
    .param p1, "timeout"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 877
    new-array v4, v7, [Ljava/lang/Object;

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v5

    #@a
    aput-object v5, v4, v6

    #@c
    invoke-static {v4}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@f
    .line 878
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v2

    #@13
    .line 879
    .local v2, "startMills":J
    const-wide/16 v0, 0x0

    #@15
    .line 880
    .local v0, "currentMills":J
    :cond_0
    :goto_0
    cmp-long v4, v0, p1

    #@17
    if-gtz v4, :cond_2

    #@19
    .line 881
    invoke-virtual {p0, v8, v9}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1c
    move-result-object v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 882
    return v7

    #@20
    .line 883
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@23
    move-result-wide v4

    #@24
    sub-long v0, v4, v2

    #@26
    .line 884
    cmp-long v4, p1, v8

    #@28
    if-lez v4, :cond_0

    #@2a
    .line 885
    const-wide/16 v4, 0x3e8

    #@2c
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    #@2f
    goto :goto_0

    #@30
    .line 887
    :cond_2
    return v6
.end method
