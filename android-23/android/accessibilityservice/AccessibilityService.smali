.class public abstract Landroid/accessibilityservice/AccessibilityService;
.super Landroid/app/Service;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$Callbacks;,
        Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
    }
.end annotation


# static fields
.field public static final GESTURE_SWIPE_DOWN:I = 0x2

.field public static final GESTURE_SWIPE_DOWN_AND_LEFT:I = 0xf

.field public static final GESTURE_SWIPE_DOWN_AND_RIGHT:I = 0x10

.field public static final GESTURE_SWIPE_DOWN_AND_UP:I = 0x8

.field public static final GESTURE_SWIPE_LEFT:I = 0x3

.field public static final GESTURE_SWIPE_LEFT_AND_DOWN:I = 0xa

.field public static final GESTURE_SWIPE_LEFT_AND_RIGHT:I = 0x5

.field public static final GESTURE_SWIPE_LEFT_AND_UP:I = 0x9

.field public static final GESTURE_SWIPE_RIGHT:I = 0x4

.field public static final GESTURE_SWIPE_RIGHT_AND_DOWN:I = 0xc

.field public static final GESTURE_SWIPE_RIGHT_AND_LEFT:I = 0x6

.field public static final GESTURE_SWIPE_RIGHT_AND_UP:I = 0xb

.field public static final GESTURE_SWIPE_UP:I = 0x1

.field public static final GESTURE_SWIPE_UP_AND_DOWN:I = 0x7

.field public static final GESTURE_SWIPE_UP_AND_LEFT:I = 0xd

.field public static final GESTURE_SWIPE_UP_AND_RIGHT:I = 0xe

.field public static final GLOBAL_ACTION_BACK:I = 0x1

.field public static final GLOBAL_ACTION_HOME:I = 0x2

.field public static final GLOBAL_ACTION_NOTIFICATIONS:I = 0x4

.field public static final GLOBAL_ACTION_POWER_DIALOG:I = 0x6

.field public static final GLOBAL_ACTION_QUICK_SETTINGS:I = 0x5

.field public static final GLOBAL_ACTION_RECENTS:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.accessibilityservice.AccessibilityService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.accessibilityservice"


# instance fields
.field private mConnectionId:I

.field private mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -set0(Landroid/accessibilityservice/AccessibilityService;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 226
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method

.method private sendServiceInfo()V
    .locals 4

    #@0
    .prologue
    .line 610
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    #@6
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@9
    move-result-object v0

    #@a
    .line 611
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@c
    if-eqz v2, :cond_0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 613
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@12
    invoke-interface {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@15
    .line 614
    const/4 v2, 0x0

    #@16
    iput-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@18
    .line 615
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 608
    :cond_0
    :goto_0
    return-void

    #@20
    .line 616
    :catch_0
    move-exception v1

    #@21
    .line 617
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@24
    const-string/jumbo v3, "Error while setting AccessibilityServiceInfo"

    #@27
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "focus"    # I

    #@0
    .prologue
    .line 563
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v1

    #@4
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    #@6
    .line 564
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@8
    const/4 v3, -0x2

    #@9
    move v6, p1

    #@a
    .line 563
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 512
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    #@6
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 579
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@4
    move-result-object v2

    #@5
    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    #@7
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@a
    move-result-object v0

    #@b
    .line 580
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@d
    .line 582
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 583
    :catch_0
    move-exception v1

    #@13
    .line 584
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@16
    const-string/jumbo v3, "Error while getting AccessibilityServiceInfo"

    #@19
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 587
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 626
    const-string/jumbo v1, "System services not available to Activities before onCreate()"

    #@b
    .line 625
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 630
    :cond_0
    const-string/jumbo v0, "window"

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 631
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 632
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/view/WindowManager;

    #@26
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    #@28
    .line 634
    :cond_1
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    #@2a
    return-object v0

    #@2b
    .line 636
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public getWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 494
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    #@6
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 645
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    #@2
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    new-instance v2, Landroid/accessibilityservice/AccessibilityService$1;

    #@8
    invoke-direct {v2, p0}, Landroid/accessibilityservice/AccessibilityService$1;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    #@b
    invoke-direct {v0, p0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    #@e
    return-object v0
.end method

.method protected onGesture(I)Z
    .locals 1
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 441
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract onInterrupt()V
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 467
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onServiceConnected()V
    .locals 0

    #@0
    .prologue
    .line 406
    return-void
.end method

.method public final performGlobalAction(I)Z
    .locals 4
    .param p1, "action"    # I

    #@0
    .prologue
    .line 531
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    #@6
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@9
    move-result-object v0

    #@a
    .line 532
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@c
    .line 534
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 535
    :catch_0
    move-exception v1

    #@12
    .line 536
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@15
    const-string/jumbo v3, "Error while calling performGlobalAction"

    #@18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 539
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1c
    return v2
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 599
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@2
    .line 600
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->sendServiceInfo()V

    #@5
    .line 598
    return-void
.end method
