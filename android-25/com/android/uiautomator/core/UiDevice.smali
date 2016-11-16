.class public Lcom/android/uiautomator/core/UiDevice;
.super Ljava/lang/Object;
.source "UiDevice.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final KEY_PRESS_EVENT_TIMEOUT:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sDevice:Lcom/android/uiautomator/core/UiDevice;


# instance fields
.field private mInWatcherContext:Z

.field private mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

.field private final mWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/uiautomator/core/UiWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchersTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const-class v0, Lcom/android/uiautomator/core/UiDevice;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    #@a
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    #@11
    .line 61
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    #@14
    .line 69
    return-void
.end method

.method public static getInstance()Lcom/android/uiautomator/core/UiDevice;
    .locals 1

    #@0
    .prologue
    .line 117
    sget-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 118
    new-instance v0, Lcom/android/uiautomator/core/UiDevice;

    #@6
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiDevice;-><init>()V

    #@9
    sput-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    #@b
    .line 120
    :cond_0
    sget-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    #@d
    return-object v0
.end method

.method private setWatcherTriggered(Ljava/lang/String;)V
    .locals 2
    .param p1, "watcherName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 617
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
    .line 618
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiDevice;->hasWatcherTriggered(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 619
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 616
    :cond_0
    return-void
.end method


# virtual methods
.method public clearLastTraversedText()V
    .locals 1

    #@0
    .prologue
    .line 185
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 186
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->clearLastTraversedText()V

    #@11
    .line 184
    return-void
.end method

.method public click(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 410
    const/4 v0, 0x2

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v3

    #@a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@14
    .line 411
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayWidth()I

    #@17
    move-result v0

    #@18
    if-ge p1, v0, :cond_0

    #@1a
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayHeight()I

    #@1d
    move-result v0

    #@1e
    if-lt p2, v0, :cond_1

    #@20
    .line 412
    :cond_0
    return v3

    #@21
    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public drag(IIIII)Z
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "steps"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 452
    const/4 v0, 0x5

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    aput-object v1, v0, v6

    #@11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@29
    .line 453
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@30
    move-result-object v0

    #@31
    move v1, p1

    #@32
    move v2, p2

    #@33
    move v3, p3

    #@34
    move v4, p4

    #@35
    move v5, p5

    #@36
    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    #@39
    move-result v0

    #@3a
    return v0
.end method

.method public dumpWindowHierarchy(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 764
    const/4 v3, 0x1

    #@1
    new-array v3, v3, [Ljava/lang/Object;

    #@3
    const/4 v4, 0x0

    #@4
    aput-object p1, v3, v4

    #@6
    invoke-static {v3}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@9
    .line 766
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Lcom/android/uiautomator/core/QueryController;->getAccessibilityRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@14
    move-result-object v1

    #@15
    .line 767
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_0

    #@17
    .line 768
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    #@1e
    move-result-object v0

    #@1f
    .line 769
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    #@21
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    #@24
    .line 770
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@27
    .line 772
    new-instance v3, Ljava/io/File;

    #@29
    new-instance v4, Ljava/io/File;

    #@2b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@2e
    move-result-object v5

    #@2f
    const-string/jumbo v6, "local/tmp"

    #@32
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@38
    .line 773
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    #@3b
    move-result v4

    #@3c
    iget v5, v2, Landroid/graphics/Point;->x:I

    #@3e
    iget v6, v2, Landroid/graphics/Point;->y:I

    #@40
    .line 771
    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V

    #@43
    .line 763
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public freezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 654
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 655
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->freezeRotation()V

    #@11
    .line 653
    return-void
.end method

.method getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "UiDevice not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@f
    return-object v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 499
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 500
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getCurrentActivityName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 509
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 510
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getCurrentPackageName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 3

    #@0
    .prologue
    .line 394
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 395
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    #@d
    move-result-object v0

    #@e
    .line 396
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    #@10
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@13
    .line 397
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@16
    .line 398
    iget v2, v1, Landroid/graphics/Point;->y:I

    #@18
    return v2
.end method

.method public getDisplayRotation()I
    .locals 1

    #@0
    .prologue
    .line 642
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 643
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@9
    .line 644
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRotation()I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public getDisplaySizeDp()Landroid/graphics/Point;
    .locals 7

    #@0
    .prologue
    .line 132
    const/4 v5, 0x0

    #@1
    new-array v5, v5, [Ljava/lang/Object;

    #@3
    invoke-static {v5}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 133
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    #@d
    move-result-object v0

    #@e
    .line 134
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    #@10
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    #@13
    .line 135
    .local v4, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@16
    .line 136
    new-instance v3, Landroid/util/DisplayMetrics;

    #@18
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    #@1b
    .line 137
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    #@1e
    .line 138
    iget v5, v4, Landroid/graphics/Point;->x:I

    #@20
    int-to-float v5, v5

    #@21
    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    #@23
    div-float v1, v5, v6

    #@25
    .line 139
    .local v1, "dpx":F
    iget v5, v4, Landroid/graphics/Point;->y:I

    #@27
    int-to-float v5, v5

    #@28
    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    #@2a
    div-float v2, v5, v6

    #@2c
    .line 140
    .local v2, "dpy":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@2f
    move-result v5

    #@30
    iput v5, v4, Landroid/graphics/Point;->x:I

    #@32
    .line 141
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@35
    move-result v5

    #@36
    iput v5, v4, Landroid/graphics/Point;->y:I

    #@38
    .line 142
    return-object v4
.end method

.method public getDisplayWidth()I
    .locals 3

    #@0
    .prologue
    .line 380
    const/4 v2, 0x0

    #@1
    new-array v2, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 381
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    #@d
    move-result-object v0

    #@e
    .line 382
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    #@10
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@13
    .line 383
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@16
    .line 384
    iget v2, v1, Landroid/graphics/Point;->x:I

    #@18
    return v2
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 175
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 176
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getLastTraversedText()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 156
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public hasAnyWatcherTriggered()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 608
    new-array v1, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 609
    iget-object v1, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    if-lez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method public hasWatcherTriggered(Ljava/lang/String;)Z
    .locals 2
    .param p1, "watcherName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 596
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
    .line 597
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    #@b
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public initialize(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 0
    .param p1, "uiAutomatorBridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@0
    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    .line 76
    return-void
.end method

.method isInWatcherContext()Z
    .locals 1

    #@0
    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    #@2
    return v0
.end method

.method public isNaturalOrientation()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 630
    new-array v3, v2, [Ljava/lang/Object;

    #@4
    invoke-static {v3}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@7
    .line 631
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@a
    .line 632
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRotation()I

    #@11
    move-result v0

    #@12
    .line 633
    .local v0, "ret":I
    if-eqz v0, :cond_0

    #@14
    .line 634
    const/4 v3, 0x2

    #@15
    if-ne v0, v3, :cond_1

    #@17
    .line 633
    :cond_0
    :goto_0
    return v1

    #@18
    :cond_1
    move v1, v2

    #@19
    .line 634
    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 740
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 741
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public openNotification()Z
    .locals 1

    #@0
    .prologue
    .line 356
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 357
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@9
    .line 358
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->openNotification()Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public openQuickSettings()Z
    .locals 1

    #@0
    .prologue
    .line 368
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 369
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@9
    .line 370
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->openQuickSettings()Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public pressBack()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 208
    new-array v0, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 209
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@9
    .line 210
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@10
    move-result-object v0

    #@11
    .line 211
    const/4 v1, 0x4

    #@12
    const/16 v3, 0x800

    #@14
    .line 212
    const-wide/16 v4, 0x3e8

    #@16
    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public pressDPadCenter()Z
    .locals 1

    #@0
    .prologue
    .line 244
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 245
    const/16 v0, 0x17

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public pressDPadDown()Z
    .locals 1

    #@0
    .prologue
    .line 254
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 255
    const/16 v0, 0x14

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public pressDPadLeft()Z
    .locals 1

    #@0
    .prologue
    .line 274
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 275
    const/16 v0, 0x15

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public pressDPadRight()Z
    .locals 1

    #@0
    .prologue
    .line 284
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 285
    const/16 v0, 0x16

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public pressDPadUp()Z
    .locals 1

    #@0
    .prologue
    .line 264
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 265
    const/16 v0, 0x13

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public pressDelete()Z
    .locals 1

    #@0
    .prologue
    .line 294
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 295
    const/16 v0, 0x43

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public pressEnter()Z
    .locals 1

    #@0
    .prologue
    .line 304
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 305
    const/16 v0, 0x42

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public pressHome()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 221
    new-array v0, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 222
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@9
    .line 223
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@10
    move-result-object v0

    #@11
    .line 224
    const/4 v1, 0x3

    #@12
    const/16 v3, 0x800

    #@14
    .line 225
    const-wide/16 v4, 0x3e8

    #@16
    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public pressKeyCode(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 316
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
    .line 317
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@10
    .line 318
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1, v2}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public pressKeyCode(II)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    #@0
    .prologue
    .line 331
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@14
    .line 332
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@17
    .line 333
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public pressMenu()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 195
    new-array v0, v2, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 196
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@9
    .line 197
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@10
    move-result-object v0

    #@11
    .line 198
    const/16 v1, 0x52

    #@13
    const/16 v3, 0x800

    #@15
    .line 199
    const-wide/16 v4, 0x3e8

    #@17
    .line 197
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public pressRecentApps()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 345
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@9
    .line 346
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->toggleRecentApps()Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public pressSearch()Z
    .locals 1

    #@0
    .prologue
    .line 234
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 235
    const/16 v0, 0x54

    #@8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public registerWatcher(Ljava/lang/String;Lcom/android/uiautomator/core/UiWatcher;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "watcher"    # Lcom/android/uiautomator/core/UiWatcher;

    #@0
    .prologue
    .line 522
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p2, v0, v1

    #@9
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@c
    .line 523
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 524
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "Cannot register new watcher from within another"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 521
    return-void
.end method

.method public removeWatcher(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 537
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
    .line 538
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v1, "Cannot remove a watcher from within another"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 536
    return-void
.end method

.method public resetWatcherTriggers()V
    .locals 1

    #@0
    .prologue
    .line 580
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 581
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@b
    .line 579
    return-void
.end method

.method public runWatchers()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 550
    new-array v4, v7, [Ljava/lang/Object;

    #@3
    invoke-static {v4}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 551
    iget-boolean v4, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 552
    return-void

    #@b
    .line 555
    :cond_0
    iget-object v4, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    #@d
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@10
    move-result-object v4

    #@11
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .local v3, "watcherName$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_3

    #@1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/lang/String;

    #@21
    .line 556
    .local v2, "watcherName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    #@23
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/android/uiautomator/core/UiWatcher;

    #@29
    .line 557
    .local v1, "watcher":Lcom/android/uiautomator/core/UiWatcher;
    if-eqz v1, :cond_1

    #@2b
    .line 559
    const/4 v4, 0x1

    #@2c
    :try_start_0
    iput-boolean v4, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    #@2e
    .line 560
    invoke-interface {v1}, Lcom/android/uiautomator/core/UiWatcher;->checkForCondition()Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 561
    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiDevice;->setWatcherTriggered(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 566
    :cond_2
    :goto_1
    iput-boolean v7, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    #@39
    goto :goto_0

    #@3a
    .line 563
    :catch_0
    move-exception v0

    #@3b
    .line 564
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "Exceuting watcher: "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    goto :goto_1

    #@55
    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@56
    .line 566
    iput-boolean v7, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    #@58
    .line 565
    throw v4

    #@59
    .line 549
    .end local v1    # "watcher":Lcom/android/uiautomator/core/UiWatcher;
    .end local v2    # "watcherName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setCompressedLayoutHeirarchy(Z)V
    .locals 1
    .param p1, "compressed"    # Z

    #@0
    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setCompressedLayoutHierarchy(Z)V

    #@7
    .line 106
    return-void
.end method

.method public setOrientationLeft()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 679
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 680
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationLeft()V

    #@11
    .line 681
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@14
    .line 678
    return-void
.end method

.method public setOrientationNatural()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 709
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 710
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationNatural()V

    #@11
    .line 711
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@14
    .line 708
    return-void
.end method

.method public setOrientationRight()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 694
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 695
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationRight()V

    #@11
    .line 696
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    #@14
    .line 693
    return-void
.end method

.method public sleep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 753
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->sleepDevice()Z

    #@11
    .line 751
    return-void
.end method

.method public swipe(IIIII)Z
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "steps"    # I

    #@0
    .prologue
    .line 431
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@29
    .line 432
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@30
    move-result-object v0

    #@31
    move v1, p1

    #@32
    move v2, p2

    #@33
    move v3, p3

    #@34
    move v4, p4

    #@35
    move v5, p5

    #@36
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    #@39
    move-result v0

    #@3a
    return v0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 3
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    #@0
    .prologue
    .line 467
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@10
    .line 468
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->swipe([Landroid/graphics/Point;I)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public takeScreenshot(Ljava/io/File;)Z
    .locals 2
    .param p1, "storePath"    # Ljava/io/File;

    #@0
    .prologue
    .line 835
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
    .line 836
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    const/16 v1, 0x5a

    #@d
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/uiautomator/core/UiDevice;->takeScreenshot(Ljava/io/File;FI)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public takeScreenshot(Ljava/io/File;FI)Z
    .locals 3
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "scale"    # F
    .param p3, "quality"    # I

    #@0
    .prologue
    .line 851
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x2

    #@12
    aput-object v1, v0, v2

    #@14
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@17
    .line 852
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1, p3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->takeScreenshot(Ljava/io/File;I)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public unfreezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 665
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 666
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->unfreezeRotation()V

    #@11
    .line 664
    return-void
.end method

.method public waitForIdle()V
    .locals 2

    #@0
    .prologue
    .line 477
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 478
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForIdleTimeout()J

    #@d
    move-result-wide v0

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle(J)V

    #@11
    .line 476
    return-void
.end method

.method public waitForIdle(J)V
    .locals 3
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 487
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@d
    .line 488
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(J)V

    #@14
    .line 486
    return-void
.end method

.method public waitForWindowUpdate(Ljava/lang/String;J)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 792
    const/4 v4, 0x2

    #@3
    new-array v4, v4, [Ljava/lang/Object;

    #@5
    aput-object p1, v4, v6

    #@7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a
    move-result-object v5

    #@b
    aput-object v5, v4, v7

    #@d
    invoke-static {v4}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@10
    .line 793
    if-eqz p1, :cond_0

    #@12
    .line 794
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getCurrentPackageName()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 795
    return v6

    #@1d
    .line 798
    :cond_0
    new-instance v3, Lcom/android/uiautomator/core/UiDevice$1;

    #@1f
    invoke-direct {v3, p0}, Lcom/android/uiautomator/core/UiDevice$1;-><init>(Lcom/android/uiautomator/core/UiDevice;)V

    #@22
    .line 803
    .local v3, "emptyRunnable":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/uiautomator/core/UiDevice$2;

    #@24
    invoke-direct {v0, p0, p1}, Lcom/android/uiautomator/core/UiDevice$2;-><init>(Lcom/android/uiautomator/core/UiDevice;Ljava/lang/String;)V

    #@27
    .line 813
    .local v0, "checkWindowUpdate":Landroid/app/UiAutomation$AccessibilityEventFilter;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v3, v0, p2, p3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 821
    return v7

    #@2f
    .line 817
    :catch_0
    move-exception v1

    #@30
    .line 818
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    #@32
    const-string/jumbo v5, "waitForWindowUpdate: general exception from bridge"

    #@35
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 819
    return v6

    #@39
    .line 815
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@3a
    .line 816
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    return v6
.end method

.method public wakeUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@6
    .line 725
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->wakeDevice()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 728
    const-wide/16 v0, 0x1f4

    #@16
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    #@19
    .line 723
    :cond_0
    return-void
.end method
