.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;
    }
.end annotation


# static fields
.field private static final CLASS_NOT_FOUND:Ljava/lang/String; = "Error retrieving class information"

.field private static final COMMAND_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomationHandlerThread"

.field private static final NO_ACCESSIBILITY_EVENT:Ljava/lang/String; = "No accessibility event has occured yet"

.field private static final NO_CONNECTION:Ljava/lang/String; = "Failed to connect to AccessibilityService, try restarting Monkey"

.field private static final NO_NODE:Ljava/lang/String; = "Node with given ID does not exist"

.field private static final REMOTE_ERROR:Ljava/lang/String; = "Unable to retrieve application info from PackageManager"

.field private static sClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sHandlerThread:Landroid/os/HandlerThread;

.field private static sPm:Landroid/content/pm/IPackageManager;

.field protected static sUiTestAutomationBridge:Landroid/app/UiAutomation;


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/content/pm/IPackageManager;
    .locals 1

    #@0
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "windowString"    # Ljava/lang/String;
    .param p1, "viewString"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "viewId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sourceDir"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "package"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@a
    move-result-object v0

    #@b
    .line 53
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    #@d
    .line 55
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@12
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    #@14
    .line 68
    new-instance v0, Ljava/util/HashMap;

    #@16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@19
    .line 67
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@1b
    .line 80
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@1d
    const-string/jumbo v1, "getlocation"

    #@20
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;

    #@22
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;-><init>()V

    #@25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 81
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@2a
    const-string/jumbo v1, "gettext"

    #@2d
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;

    #@2f
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;-><init>()V

    #@32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 82
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@37
    const-string/jumbo v1, "getclass"

    #@3a
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;

    #@3c
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;-><init>()V

    #@3f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 83
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@44
    const-string/jumbo v1, "getchecked"

    #@47
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;

    #@49
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;-><init>()V

    #@4c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 84
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@51
    const-string/jumbo v1, "getenabled"

    #@54
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;

    #@56
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;-><init>()V

    #@59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 85
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@5e
    const-string/jumbo v1, "getselected"

    #@61
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;

    #@63
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;-><init>()V

    #@66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 86
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@6b
    const-string/jumbo v1, "setselected"

    #@6e
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;

    #@70
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;-><init>()V

    #@73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 87
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@78
    const-string/jumbo v1, "getfocused"

    #@7b
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;

    #@7d
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;-><init>()V

    #@80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 88
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@85
    const-string/jumbo v1, "setfocused"

    #@88
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;

    #@8a
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;-><init>()V

    #@8d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    .line 89
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@92
    const-string/jumbo v1, "getparent"

    #@95
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;

    #@97
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;-><init>()V

    #@9a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    .line 90
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@9f
    const-string/jumbo v1, "getchildren"

    #@a2
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;

    #@a4
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;-><init>()V

    #@a7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    .line 91
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    #@ac
    const-string/jumbo v1, "getaccessibilityids"

    #@af
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    #@b1
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    #@b4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    #@b9
    const-string/jumbo v1, "UiAutomationHandlerThread"

    #@bc
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@bf
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    #@c1
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sourceDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 125
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    #@3
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/lang/Class;

    #@9
    .line 126
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    #@b
    .line 127
    new-instance v0, Ldalvik/system/DexClassLoader;

    #@d
    .line 128
    const-string/jumbo v2, "/data/local/tmp"

    #@10
    .line 129
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@13
    move-result-object v3

    #@14
    .line 127
    invoke-direct {v0, p1, v2, v4, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@17
    .line 130
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, ".R$id"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@2e
    move-result-object v1

    #@2f
    .line 131
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    #@31
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 133
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    :cond_0
    return-object v1
.end method

.method private static getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p0, "windowString"    # Ljava/lang/String;
    .param p1, "viewString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 138
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4
    move-result v3

    #@5
    .line 139
    .local v3, "windowId":I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 140
    .local v0, "viewId":I
    sget-object v4, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    #@b
    invoke-virtual {v4}, Landroid/app/UiAutomation;->getConnectionId()I

    #@e
    move-result v2

    #@f
    .line 141
    .local v2, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@12
    move-result-object v1

    #@13
    .line 142
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    int-to-long v4, v0

    #@14
    move v7, v6

    #@15
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@18
    move-result-object v4

    #@19
    return-object v4
.end method

.method private static getNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p0, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/monkey/MonkeyViewException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v3}, Landroid/app/UiAutomation;->getConnectionId()I

    #@5
    move-result v2

    #@6
    .line 148
    .local v2, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@9
    move-result-object v1

    #@a
    .line 151
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@c
    .line 150
    const v3, 0x7fffffff

    #@f
    move-object v6, p0

    #@10
    .line 149
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 152
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@21
    :goto_0
    return-object v3

    #@22
    :cond_0
    const/4 v3, 0x0

    #@23
    goto :goto_0
.end method

.method public static setup()V
    .locals 3

    #@0
    .prologue
    .line 102
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    #@6
    .line 103
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    #@8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@b
    .line 104
    new-instance v0, Landroid/app/UiAutomation;

    #@d
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    #@f
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@12
    move-result-object v1

    #@13
    .line 105
    new-instance v2, Landroid/app/UiAutomationConnection;

    #@15
    invoke-direct {v2}, Landroid/app/UiAutomationConnection;-><init>()V

    #@18
    .line 104
    invoke-direct {v0, v1, v2}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    #@1b
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    #@1d
    .line 106
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    #@1f
    invoke-virtual {v0}, Landroid/app/UiAutomation;->connect()V

    #@22
    .line 101
    return-void
.end method

.method public static teardown()V
    .locals 1

    #@0
    .prologue
    .line 110
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    #@5
    .line 109
    return-void
.end method
