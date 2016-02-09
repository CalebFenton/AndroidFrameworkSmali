.class Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;
    }
.end annotation


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mComponentName:Landroid/content/ComponentName;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field mId:I

.field mIntent:Landroid/content/Intent;

.field public mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

.field mIsAutomation:Z

.field mIsDefault:Z

.field final mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

.field mNotificationTimeout:J

.field final mOverlayWindowToken:Landroid/os/IBinder;

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mRequestEnhancedWebAccessibility:Z

.field mRequestFilterKeyEvents:Z

.field mRequestTouchExplorationMode:Z

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRetrieveInteractiveWindows:Z

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field final mUserId:I

.field mWasConnectedAndDied:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .param p1, "eventType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEventInternal(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyClearAccessibilityCacheInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .param p1, "gestureId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGestureInternal(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyKeyEventInternal(Landroid/view/KeyEvent;I)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1999
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    #@6
    .line 1939
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@8
    .line 1951
    new-instance v0, Ljava/util/HashSet;

    #@a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    #@f
    .line 1975
    new-instance v0, Landroid/os/Binder;

    #@11
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    #@16
    .line 1979
    new-instance v0, Landroid/util/SparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1b
    .line 1978
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    #@1d
    .line 1981
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;)V

    #@23
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    #@25
    .line 1987
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;

    #@27
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@29
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    #@34
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    #@36
    .line 1996
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@38
    .line 1997
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3a
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    #@41
    move-result-object v1

    #@42
    .line 1996
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    #@45
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@47
    .line 2001
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@49
    .line 2002
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@4c
    move-result-object v0

    #@4d
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@4f
    .line 2003
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17()I

    #@52
    move-result v0

    #@53
    add-int/lit8 v1, v0, 0x1

    #@55
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-set0(I)I

    #@58
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@5a
    .line 2004
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@5c
    .line 2005
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@5e
    .line 2006
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16()Landroid/content/ComponentName;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v0

    #@66
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    #@68
    .line 2007
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    #@6a
    if-nez v0, :cond_0

    #@6c
    .line 2008
    new-instance v0, Landroid/content/Intent;

    #@6e
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@71
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    #@79
    .line 2009
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    #@7b
    const-string/jumbo v1, "android.intent.extra.client_label"

    #@7e
    .line 2010
    const v2, 0x104042b

    #@81
    .line 2009
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@84
    .line 2011
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    #@86
    const-string/jumbo v1, "android.intent.extra.client_intent"

    #@89
    .line 2012
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@8c
    move-result-object v2

    #@8d
    new-instance v3, Landroid/content/Intent;

    #@8f
    const-string/jumbo v4, "android.settings.ACCESSIBILITY_SETTINGS"

    #@92
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@95
    .line 2011
    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@9c
    .line 2014
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@9f
    .line 2000
    return-void
.end method

.method private expandNotifications()V
    .locals 5

    #@0
    .prologue
    .line 2860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2862
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@6
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    .line 2863
    const-string/jumbo v4, "statusbar"

    #@d
    .line 2862
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/app/StatusBarManager;

    #@13
    .line 2864
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    #@16
    .line 2866
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 2859
    return-void
.end method

.method private expandQuickSettings()V
    .locals 5

    #@0
    .prologue
    .line 2870
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2872
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@6
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    .line 2873
    const-string/jumbo v4, "statusbar"

    #@d
    .line 2872
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/app/StatusBarManager;

    #@13
    .line 2874
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    #@16
    .line 2876
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 2869
    return-void
.end method

.method private getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 3
    .param p1, "windowId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2901
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get4(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    #@d
    .line 2902
    .local v0, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-nez v0, :cond_0

    #@f
    .line 2903
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@11
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@14
    move-result-object v1

    #@15
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .end local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    #@1d
    .line 2905
    .restart local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    if-eqz v0, :cond_1

    #@1f
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@22
    move-result-object v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 2906
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 2911
    :cond_1
    return-object v2
.end method

.method private notifyAccessibilityEventInternal(I)V
    .locals 6
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 2735
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 2736
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 2740
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_0

    #@b
    monitor-exit v4

    #@c
    .line 2741
    return-void

    #@d
    .line 2744
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 2761
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_1

    #@17
    monitor-exit v4

    #@18
    .line 2762
    return-void

    #@19
    .line 2765
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    #@1e
    .line 2766
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@20
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 2767
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@2c
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    #@2f
    .line 2771
    :goto_0
    const/4 v3, 0x1

    #@30
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    monitor-exit v4

    #@34
    .line 2775
    :try_start_3
    invoke-interface {v1, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@37
    .line 2782
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@3a
    .line 2731
    :goto_1
    return-void

    #@3b
    .line 2769
    :cond_2
    const/4 v3, 0x0

    #@3c
    :try_start_4
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 2735
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    #@41
    monitor-exit v4

    #@42
    throw v3

    #@43
    .line 2779
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v2

    #@44
    .line 2780
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "AccessibilityManagerService"

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "Error during sending "

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    const-string/jumbo v5, " to "

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@69
    .line 2782
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@6c
    goto :goto_1

    #@6d
    .line 2781
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    #@6e
    .line 2782
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@71
    .line 2781
    throw v3
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .locals 4

    #@0
    .prologue
    .line 2822
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v2

    #@a
    .line 2825
    if-eqz v0, :cond_0

    #@c
    .line 2827
    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@f
    .line 2820
    :cond_0
    :goto_0
    return-void

    #@10
    .line 2822
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    #@11
    monitor-exit v2

    #@12
    throw v3

    #@13
    .line 2828
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    #@14
    .line 2829
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManagerService"

    #@17
    const-string/jumbo v3, "Error during requesting accessibility info cache to be cleared."

    #@1a
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method private notifyGestureInternal(I)V
    .locals 5
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 2803
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2804
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v2

    #@a
    .line 2806
    if-eqz v0, :cond_0

    #@c
    .line 2808
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@f
    .line 2801
    :cond_0
    :goto_0
    return-void

    #@10
    .line 2803
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    #@11
    monitor-exit v2

    #@12
    throw v3

    #@13
    .line 2809
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    #@14
    .line 2810
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManagerService"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Error during sending gesture "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 2811
    const-string/jumbo v4, " to "

    #@2a
    .line 2810
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 2811
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@30
    .line 2810
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    goto :goto_0
.end method

.method private notifyKeyEventInternal(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 2817
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->notifyKeyEvent(Landroid/view/KeyEvent;I)V

    #@5
    .line 2816
    return-void
.end method

.method private openRecents()V
    .locals 6

    #@0
    .prologue
    .line 2880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2883
    .local v2, "token":J
    const-string/jumbo v4, "statusbar"

    #@7
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v4

    #@b
    .line 2882
    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    #@e
    move-result-object v1

    #@f
    .line 2885
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 2890
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 2879
    return-void

    #@16
    .line 2886
    :catch_0
    move-exception v0

    #@17
    .line 2887
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManagerService"

    #@1a
    const-string/jumbo v5, "Error toggling recent apps."

    #@1d
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    goto :goto_0
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 1
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    #@0
    .prologue
    .line 2922
    const v0, 0x7fffffff

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 2923
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@7
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@a
    move-result-object v0

    #@b
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@d
    return v0

    #@e
    .line 2925
    :cond_0
    const/4 v0, -0x2

    #@f
    if-ne p1, v0, :cond_2

    #@11
    .line 2926
    const/4 v0, 0x1

    #@12
    if-ne p2, v0, :cond_1

    #@14
    .line 2927
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@16
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@19
    move-result-object v0

    #@1a
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    #@1c
    return v0

    #@1d
    .line 2928
    :cond_1
    const/4 v0, 0x2

    #@1e
    if-ne p2, v0, :cond_2

    #@20
    .line 2929
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@22
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@25
    move-result-object v0

    #@26
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@28
    return v0

    #@29
    .line 2932
    :cond_2
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .locals 1
    .param p1, "accessibilityWindowId"    # I

    #@0
    .prologue
    .line 2915
    const v0, 0x7fffffff

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 2916
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@7
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 2918
    :cond_0
    return p1
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 19
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 2836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v16

    #@4
    .line 2839
    .local v16, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v2

    #@8
    .line 2840
    .local v2, "downTime":J
    const/4 v6, 0x0

    #@9
    const/4 v8, 0x0

    #@a
    const/4 v9, 0x0

    #@b
    .line 2841
    const/4 v10, -0x1

    #@c
    const/4 v11, 0x0

    #@d
    const/16 v12, 0x8

    #@f
    .line 2842
    const/16 v13, 0x101

    #@11
    const/4 v14, 0x0

    #@12
    move-wide v4, v2

    #@13
    move/from16 v7, p1

    #@15
    .line 2840
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    #@18
    move-result-object v15

    #@19
    .line 2843
    .local v15, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@1c
    move-result-object v6

    #@1d
    .line 2844
    const/4 v7, 0x0

    #@1e
    .line 2843
    invoke-virtual {v6, v15, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@21
    .line 2845
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    #@24
    .line 2848
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@27
    move-result-wide v4

    #@28
    .line 2849
    .local v4, "upTime":J
    const/4 v6, 0x1

    #@29
    const/4 v8, 0x0

    #@2a
    const/4 v9, 0x0

    #@2b
    .line 2850
    const/4 v10, -0x1

    #@2c
    const/4 v11, 0x0

    #@2d
    const/16 v12, 0x8

    #@2f
    .line 2851
    const/16 v13, 0x101

    #@31
    const/4 v14, 0x0

    #@32
    move/from16 v7, p1

    #@34
    .line 2849
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    #@37
    move-result-object v18

    #@38
    .line 2852
    .local v18, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@3b
    move-result-object v6

    #@3c
    .line 2853
    const/4 v7, 0x0

    #@3d
    .line 2852
    move-object/from16 v0, v18

    #@3f
    invoke-virtual {v6, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@42
    .line 2854
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    #@45
    .line 2856
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 2835
    return-void
.end method

.method private showGlobalActions()V
    .locals 1

    #@0
    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get14(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->showGlobalActions()V

    #@9
    .line 2893
    return-void
.end method


# virtual methods
.method public bindLocked()Z
    .locals 5

    #@0
    .prologue
    .line 2058
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@4
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@7
    move-result-object v0

    #@8
    .line 2059
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    #@a
    if-nez v1, :cond_1

    #@c
    .line 2060
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@e
    if-nez v1, :cond_0

    #@10
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@15
    move-result-object v1

    #@16
    .line 2061
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    #@18
    .line 2063
    new-instance v3, Landroid/os/UserHandle;

    #@1a
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@1c
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@1f
    .line 2062
    const v4, 0x2000001

    #@22
    .line 2060
    invoke-virtual {v1, v2, p0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 2064
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@2a
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@2c
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 2080
    :cond_0
    :goto_0
    const/4 v1, 0x0

    #@30
    return v1

    #@31
    .line 2067
    :cond_1
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@33
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@35
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@38
    .line 2068
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@3b
    move-result-object v1

    #@3c
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@42
    .line 2069
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@44
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@47
    move-result-object v1

    #@48
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;

    #@4a
    invoke-direct {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    #@4d
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@50
    .line 2078
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-set0(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@53
    goto :goto_0
.end method

.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 2673
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2678
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConnectedLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 2679
    return-void

    #@f
    .line 2681
    :cond_0
    const/4 v1, 0x1

    #@10
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z

    #@12
    .line 2682
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    #@14
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->flush()V

    #@17
    .line 2683
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@19
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@1b
    invoke-static {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@1e
    move-result-object v0

    #@1f
    .line 2685
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@21
    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap21(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@24
    .line 2686
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resetLocked()V

    #@27
    .line 2687
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 2690
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@2d
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@2f
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@32
    .line 2691
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@34
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@36
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@39
    .line 2692
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    #@3c
    .line 2693
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3e
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_1

    #@44
    .line 2694
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@46
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    :cond_1
    monitor-exit v2

    #@4a
    .line 2672
    return-void

    #@4b
    .line 2673
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit v2

    #@4d
    throw v1
.end method

.method public canReceiveEventsLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2106
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .locals 1

    #@0
    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2123
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    #@e
    .line 2122
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DUMP"

    #@9
    const-string/jumbo v2, "dump"

    #@c
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 2609
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@11
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    monitor-enter v1

    #@16
    .line 2610
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Service[label="

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@24
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@27
    move-result-object v2

    #@28
    .line 2611
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2a
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@31
    move-result-object v3

    #@32
    .line 2610
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@41
    .line 2612
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v2, ", feedbackType"

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 2613
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    #@4f
    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    .line 2612
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@5e
    .line 2614
    new-instance v0, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, ", capabilities="

    #@66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@6c
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@6f
    move-result v2

    #@70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@7b
    .line 2615
    new-instance v0, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v2, ", eventTypes="

    #@83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 2616
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    #@89
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    .line 2615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@98
    .line 2617
    new-instance v0, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v2, ", notificationTimeout="

    #@a0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    #@a6
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@b1
    .line 2618
    const-string/jumbo v0, "]"

    #@b4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b7
    monitor-exit v1

    #@b8
    .line 2607
    return-void

    #@b9
    .line 2609
    :catchall_0
    move-exception v0

    #@ba
    monitor-exit v1

    #@bb
    throw v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .locals 19
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2355
    const/4 v2, 0x0

    #@1
    .line 2356
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@4
    move-result-object v5

    #@5
    .line 2357
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@7
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    monitor-enter v4

    #@e
    .line 2361
    :try_start_0
    move-object/from16 v0, p0

    #@10
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@15
    move-result-object v3

    #@16
    .line 2363
    const/4 v6, -0x2

    #@17
    .line 2361
    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@1a
    move-result v17

    #@1b
    .line 2364
    .local v17, "resolvedUserId":I
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1f
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    move/from16 v0, v17

    #@25
    if-eq v0, v3, :cond_0

    #@27
    .line 2365
    const/4 v3, 0x0

    #@28
    monitor-exit v4

    #@29
    return v3

    #@2a
    .line 2367
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    #@2d
    move-result v18

    #@2e
    .line 2369
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@32
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@35
    move-result-object v3

    #@36
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v18

    #@3a
    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v13

    #@3e
    .line 2370
    .local v13, "permissionGranted":Z
    if-nez v13, :cond_1

    #@40
    .line 2371
    const/4 v3, 0x0

    #@41
    monitor-exit v4

    #@42
    return v3

    #@43
    .line 2373
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@45
    move/from16 v1, v18

    #@47
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    move-result-object v2

    #@4b
    .line 2374
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v2, :cond_2

    #@4d
    .line 2375
    const/4 v3, 0x0

    #@4e
    monitor-exit v4

    #@4f
    return v3

    #@50
    .line 2378
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@54
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@57
    move-result-object v3

    #@58
    move/from16 v0, v18

    #@5a
    invoke-virtual {v3, v0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    #@5d
    move-result v3

    #@5e
    if-nez v3, :cond_3

    #@60
    .line 2380
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    .line 2381
    const/4 v5, 0x0

    #@64
    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v4

    #@65
    .line 2384
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@68
    move-result v9

    #@69
    .line 2385
    .local v9, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6c
    move-result-wide v14

    #@6d
    .line 2386
    .local v14, "identityToken":J
    move-object/from16 v0, p0

    #@6f
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@71
    move/from16 v0, v18

    #@73
    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    #@76
    move-result-object v12

    #@77
    .line 2389
    .local v12, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    #@79
    iget v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@7b
    or-int v8, v3, p6

    #@7d
    move-wide/from16 v3, p2

    #@7f
    move/from16 v6, p4

    #@81
    move-object/from16 v7, p5

    #@83
    move-wide/from16 v10, p7

    #@85
    .line 2388
    invoke-interface/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@88
    .line 2391
    const/4 v3, 0x1

    #@89
    .line 2397
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8c
    .line 2399
    if-eqz v5, :cond_4

    #@8e
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@91
    move-result v4

    #@92
    if-eqz v4, :cond_4

    #@94
    .line 2400
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    #@97
    .line 2391
    :cond_4
    return v3

    #@98
    .line 2357
    .end local v2    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v9    # "interrogatingPid":I
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    .end local v13    # "permissionGranted":Z
    .end local v14    # "identityToken":J
    .end local v17    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    .restart local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v3

    #@99
    monitor-exit v4

    #@9a
    throw v3

    #@9b
    .line 2392
    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v9    # "interrogatingPid":I
    .restart local v12    # "spec":Landroid/view/MagnificationSpec;
    .restart local v13    # "permissionGranted":Z
    .restart local v14    # "identityToken":J
    .restart local v17    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :catch_0
    move-exception v16

    #@9c
    .line 2397
    .local v16, "re":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9f
    .line 2399
    if-eqz v5, :cond_5

    #@a1
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@a4
    move-result v3

    #@a5
    if-eqz v3, :cond_5

    #@a7
    .line 2400
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    #@aa
    .line 2403
    :cond_5
    const/4 v3, 0x0

    #@ab
    return v3

    #@ac
    .line 2396
    .end local v16    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    #@ad
    .line 2397
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b0
    .line 2399
    if-eqz v5, :cond_6

    #@b2
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@b5
    move-result v4

    #@b6
    if-eqz v4, :cond_6

    #@b8
    .line 2400
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    #@bb
    .line 2396
    :cond_6
    throw v3
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2298
    const/4 v3, 0x0

    #@1
    .line 2299
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@4
    move-result-object v7

    #@5
    .line 2300
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@7
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    monitor-enter v5

    #@e
    .line 2304
    :try_start_0
    move-object/from16 v0, p0

    #@10
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@15
    move-result-object v4

    #@16
    .line 2306
    const/4 v6, -0x2

    #@17
    .line 2304
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@1a
    move-result v18

    #@1b
    .line 2307
    .local v18, "resolvedUserId":I
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1f
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v4

    #@23
    move/from16 v0, v18

    #@25
    if-eq v0, v4, :cond_0

    #@27
    .line 2308
    const/4 v4, 0x0

    #@28
    monitor-exit v5

    #@29
    return v4

    #@2a
    .line 2310
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    #@2d
    move-result v19

    #@2e
    .line 2312
    .local v19, "resolvedWindowId":I
    move-object/from16 v0, p0

    #@30
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@32
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@35
    move-result-object v4

    #@36
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v19

    #@3a
    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v2

    #@3e
    .line 2313
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    #@40
    .line 2314
    const/4 v4, 0x0

    #@41
    monitor-exit v5

    #@42
    return v4

    #@43
    .line 2316
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@45
    move/from16 v1, v19

    #@47
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    move-result-object v3

    #@4b
    .line 2317
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    #@4d
    .line 2318
    const/4 v4, 0x0

    #@4e
    monitor-exit v5

    #@4f
    return v4

    #@50
    .line 2321
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@54
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@57
    move-result-object v4

    #@58
    move/from16 v0, v19

    #@5a
    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    #@5d
    move-result v4

    #@5e
    if-nez v4, :cond_3

    #@60
    .line 2323
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    .line 2324
    const/4 v7, 0x0

    #@64
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    #@65
    .line 2327
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@68
    move-result v11

    #@69
    .line 2328
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6c
    move-result-wide v16

    #@6d
    .line 2329
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@71
    move/from16 v0, v19

    #@73
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    #@76
    move-result-object v14

    #@77
    .line 2332
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    #@79
    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@7b
    move-wide/from16 v4, p2

    #@7d
    move-object/from16 v6, p4

    #@7f
    move/from16 v8, p5

    #@81
    move-object/from16 v9, p6

    #@83
    move-wide/from16 v12, p7

    #@85
    .line 2331
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@88
    .line 2334
    const/4 v4, 0x1

    #@89
    .line 2340
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8c
    .line 2342
    if-eqz v7, :cond_4

    #@8e
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_4

    #@94
    .line 2343
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@97
    .line 2334
    :cond_4
    return v4

    #@98
    .line 2300
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedUserId":I
    .end local v19    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    #@99
    monitor-exit v5

    #@9a
    throw v4

    #@9b
    .line 2335
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedUserId":I
    .restart local v19    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    #@9c
    .line 2340
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9f
    .line 2342
    if-eqz v7, :cond_5

    #@a1
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@a4
    move-result v4

    #@a5
    if-eqz v4, :cond_5

    #@a7
    .line 2343
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@aa
    .line 2346
    :cond_5
    const/4 v4, 0x0

    #@ab
    return v4

    #@ac
    .line 2339
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@ad
    .line 2340
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b0
    .line 2342
    if-eqz v7, :cond_6

    #@b2
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@b5
    move-result v5

    #@b6
    if-eqz v5, :cond_6

    #@b8
    .line 2343
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@bb
    .line 2339
    :cond_6
    throw v4
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2241
    const/4 v3, 0x0

    #@1
    .line 2242
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@4
    move-result-object v7

    #@5
    .line 2243
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@7
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    monitor-enter v5

    #@e
    .line 2247
    :try_start_0
    move-object/from16 v0, p0

    #@10
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@15
    move-result-object v4

    #@16
    .line 2249
    const/4 v6, -0x2

    #@17
    .line 2247
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@1a
    move-result v18

    #@1b
    .line 2250
    .local v18, "resolvedUserId":I
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1f
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v4

    #@23
    move/from16 v0, v18

    #@25
    if-eq v0, v4, :cond_0

    #@27
    .line 2251
    const/4 v4, 0x0

    #@28
    monitor-exit v5

    #@29
    return v4

    #@2a
    .line 2253
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    #@2d
    move-result v19

    #@2e
    .line 2255
    .local v19, "resolvedWindowId":I
    move-object/from16 v0, p0

    #@30
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@32
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@35
    move-result-object v4

    #@36
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v19

    #@3a
    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v2

    #@3e
    .line 2256
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    #@40
    .line 2257
    const/4 v4, 0x0

    #@41
    monitor-exit v5

    #@42
    return v4

    #@43
    .line 2259
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@45
    move/from16 v1, v19

    #@47
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    move-result-object v3

    #@4b
    .line 2260
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    #@4d
    .line 2261
    const/4 v4, 0x0

    #@4e
    monitor-exit v5

    #@4f
    return v4

    #@50
    .line 2264
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@54
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@57
    move-result-object v4

    #@58
    move/from16 v0, v19

    #@5a
    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    #@5d
    move-result v4

    #@5e
    if-nez v4, :cond_3

    #@60
    .line 2266
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    .line 2267
    const/4 v7, 0x0

    #@64
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    #@65
    .line 2270
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@68
    move-result v11

    #@69
    .line 2271
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6c
    move-result-wide v16

    #@6d
    .line 2272
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@71
    move/from16 v0, v19

    #@73
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    #@76
    move-result-object v14

    #@77
    .line 2275
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    #@79
    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@7b
    move-wide/from16 v4, p2

    #@7d
    move-object/from16 v6, p4

    #@7f
    move/from16 v8, p5

    #@81
    move-object/from16 v9, p6

    #@83
    move-wide/from16 v12, p7

    #@85
    .line 2274
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@88
    .line 2277
    const/4 v4, 0x1

    #@89
    .line 2283
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8c
    .line 2285
    if-eqz v7, :cond_4

    #@8e
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_4

    #@94
    .line 2286
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@97
    .line 2277
    :cond_4
    return v4

    #@98
    .line 2243
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedUserId":I
    .end local v19    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    #@99
    monitor-exit v5

    #@9a
    throw v4

    #@9b
    .line 2278
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedUserId":I
    .restart local v19    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    #@9c
    .line 2283
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9f
    .line 2285
    if-eqz v7, :cond_5

    #@a1
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@a4
    move-result v4

    #@a5
    if-eqz v4, :cond_5

    #@a7
    .line 2286
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@aa
    .line 2289
    :cond_5
    const/4 v4, 0x0

    #@ab
    return v4

    #@ac
    .line 2282
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@ad
    .line 2283
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b0
    .line 2285
    if-eqz v7, :cond_6

    #@b2
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@b5
    move-result v5

    #@b6
    if-eqz v5, :cond_6

    #@b8
    .line 2286
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@bb
    .line 2282
    :cond_6
    throw v4
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 22
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2412
    const/4 v5, 0x0

    #@1
    .line 2413
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@4
    move-result-object v9

    #@5
    .line 2414
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@7
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@c
    move-result-object v7

    #@d
    monitor-enter v7

    #@e
    .line 2418
    :try_start_0
    move-object/from16 v0, p0

    #@10
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@15
    move-result-object v6

    #@16
    .line 2420
    const/4 v8, -0x2

    #@17
    .line 2418
    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@1a
    move-result v20

    #@1b
    .line 2421
    .local v20, "resolvedUserId":I
    move-object/from16 v0, p0

    #@1d
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1f
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v6

    #@23
    move/from16 v0, v20

    #@25
    if-eq v0, v6, :cond_0

    #@27
    .line 2422
    const/4 v6, 0x0

    #@28
    monitor-exit v7

    #@29
    return v6

    #@2a
    .line 2424
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@2c
    move/from16 v1, p1

    #@2e
    move/from16 v2, p4

    #@30
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    #@33
    move-result v21

    #@34
    .line 2427
    .local v21, "resolvedWindowId":I
    move-object/from16 v0, p0

    #@36
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@38
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@3b
    move-result-object v6

    #@3c
    move-object/from16 v0, p0

    #@3e
    move/from16 v1, v21

    #@40
    invoke-virtual {v6, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    move-result v4

    #@44
    .line 2428
    .local v4, "permissionGranted":Z
    if-nez v4, :cond_1

    #@46
    .line 2429
    const/4 v6, 0x0

    #@47
    monitor-exit v7

    #@48
    return v6

    #@49
    .line 2431
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@4b
    move/from16 v1, v21

    #@4d
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    move-result-object v5

    #@51
    .line 2432
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v5, :cond_2

    #@53
    .line 2433
    const/4 v6, 0x0

    #@54
    monitor-exit v7

    #@55
    return v6

    #@56
    .line 2436
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    #@58
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5a
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5d
    move-result-object v6

    #@5e
    move/from16 v0, v21

    #@60
    invoke-virtual {v6, v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    #@63
    move-result v6

    #@64
    if-nez v6, :cond_3

    #@66
    .line 2438
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@69
    .line 2439
    const/4 v9, 0x0

    #@6a
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v7

    #@6b
    .line 2442
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6e
    move-result v13

    #@6f
    .line 2443
    .local v13, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@72
    move-result-wide v18

    #@73
    .line 2444
    .local v18, "identityToken":J
    move-object/from16 v0, p0

    #@75
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@77
    move/from16 v0, v21

    #@79
    invoke-static {v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    #@7c
    move-result-object v16

    #@7d
    .line 2447
    .local v16, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    #@7f
    iget v12, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@81
    move-wide/from16 v6, p2

    #@83
    move/from16 v8, p4

    #@85
    move/from16 v10, p5

    #@87
    move-object/from16 v11, p6

    #@89
    move-wide/from16 v14, p7

    #@8b
    .line 2446
    invoke-interface/range {v5 .. v16}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8e
    .line 2449
    const/4 v6, 0x1

    #@8f
    .line 2455
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@92
    .line 2457
    if-eqz v9, :cond_4

    #@94
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@97
    move-result v7

    #@98
    if-eqz v7, :cond_4

    #@9a
    .line 2458
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    #@9d
    .line 2449
    :cond_4
    return v6

    #@9e
    .line 2414
    .end local v4    # "permissionGranted":Z
    .end local v5    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v13    # "interrogatingPid":I
    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .end local v18    # "identityToken":J
    .end local v20    # "resolvedUserId":I
    .end local v21    # "resolvedWindowId":I
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v6

    #@9f
    monitor-exit v7

    #@a0
    throw v6

    #@a1
    .line 2450
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v4    # "permissionGranted":Z
    .restart local v5    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v13    # "interrogatingPid":I
    .restart local v16    # "spec":Landroid/view/MagnificationSpec;
    .restart local v18    # "identityToken":J
    .restart local v20    # "resolvedUserId":I
    .restart local v21    # "resolvedWindowId":I
    :catch_0
    move-exception v17

    #@a2
    .line 2455
    .local v17, "re":Landroid/os/RemoteException;
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a5
    .line 2457
    if-eqz v9, :cond_5

    #@a7
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@aa
    move-result v6

    #@ab
    if-eqz v6, :cond_5

    #@ad
    .line 2458
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    #@b0
    .line 2461
    :cond_5
    const/4 v6, 0x0

    #@b1
    return v6

    #@b2
    .line 2454
    .end local v17    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    #@b3
    .line 2455
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b6
    .line 2457
    if-eqz v9, :cond_6

    #@b8
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@bb
    move-result v7

    #@bc
    if-eqz v7, :cond_6

    #@be
    .line 2458
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    #@c1
    .line 2454
    :cond_6
    throw v6
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2470
    const/4 v3, 0x0

    #@1
    .line 2471
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@4
    move-result-object v7

    #@5
    .line 2472
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@7
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    monitor-enter v5

    #@e
    .line 2476
    :try_start_0
    move-object/from16 v0, p0

    #@10
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@15
    move-result-object v4

    #@16
    .line 2478
    const/4 v6, -0x2

    #@17
    .line 2476
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@1a
    move-result v18

    #@1b
    .line 2479
    .local v18, "resolvedUserId":I
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1f
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v4

    #@23
    move/from16 v0, v18

    #@25
    if-eq v0, v4, :cond_0

    #@27
    .line 2480
    const/4 v4, 0x0

    #@28
    monitor-exit v5

    #@29
    return v4

    #@2a
    .line 2482
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    #@2d
    move-result v19

    #@2e
    .line 2484
    .local v19, "resolvedWindowId":I
    move-object/from16 v0, p0

    #@30
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@32
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@35
    move-result-object v4

    #@36
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v19

    #@3a
    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v2

    #@3e
    .line 2485
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    #@40
    .line 2486
    const/4 v4, 0x0

    #@41
    monitor-exit v5

    #@42
    return v4

    #@43
    .line 2488
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@45
    move/from16 v1, v19

    #@47
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    move-result-object v3

    #@4b
    .line 2489
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    #@4d
    .line 2490
    const/4 v4, 0x0

    #@4e
    monitor-exit v5

    #@4f
    return v4

    #@50
    .line 2493
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@54
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@57
    move-result-object v4

    #@58
    move/from16 v0, v19

    #@5a
    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    #@5d
    move-result v4

    #@5e
    if-nez v4, :cond_3

    #@60
    .line 2495
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    .line 2496
    const/4 v7, 0x0

    #@64
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    #@65
    .line 2499
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@68
    move-result v11

    #@69
    .line 2500
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6c
    move-result-wide v16

    #@6d
    .line 2501
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@71
    move/from16 v0, v19

    #@73
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    #@76
    move-result-object v14

    #@77
    .line 2504
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    #@79
    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@7b
    move-wide/from16 v4, p2

    #@7d
    move/from16 v6, p4

    #@7f
    move/from16 v8, p5

    #@81
    move-object/from16 v9, p6

    #@83
    move-wide/from16 v12, p7

    #@85
    .line 2503
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@88
    .line 2506
    const/4 v4, 0x1

    #@89
    .line 2512
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8c
    .line 2514
    if-eqz v7, :cond_4

    #@8e
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_4

    #@94
    .line 2515
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@97
    .line 2506
    :cond_4
    return v4

    #@98
    .line 2472
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedUserId":I
    .end local v19    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    #@99
    monitor-exit v5

    #@9a
    throw v4

    #@9b
    .line 2507
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedUserId":I
    .restart local v19    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    #@9c
    .line 2512
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9f
    .line 2514
    if-eqz v7, :cond_5

    #@a1
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@a4
    move-result v4

    #@a5
    if-eqz v4, :cond_5

    #@a7
    .line 2515
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@aa
    .line 2518
    :cond_5
    const/4 v4, 0x0

    #@ab
    return v4

    #@ac
    .line 2511
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@ad
    .line 2512
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b0
    .line 2514
    if-eqz v7, :cond_6

    #@b2
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@b5
    move-result v5

    #@b6
    if-eqz v5, :cond_6

    #@b8
    .line 2515
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@bb
    .line 2511
    :cond_6
    throw v4
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    #@0
    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    monitor-enter v0

    #@7
    .line 2117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return-object v1

    #@b
    .line 2116
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 8
    .param p1, "windowId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2209
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap16(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@6
    .line 2210
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@8
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    monitor-enter v5

    #@d
    .line 2214
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@f
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@12
    move-result-object v4

    #@13
    .line 2216
    const/4 v6, -0x2

    #@14
    .line 2214
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@17
    move-result v1

    #@18
    .line 2217
    .local v1, "resolvedUserId":I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1a
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v4

    #@1e
    if-eq v1, v4, :cond_0

    #@20
    monitor-exit v5

    #@21
    .line 2218
    return-object v7

    #@22
    .line 2221
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@24
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v0

    #@2c
    .line 2222
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    #@2e
    monitor-exit v5

    #@2f
    .line 2223
    return-object v7

    #@30
    .line 2225
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@32
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@35
    move-result-object v4

    #@36
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@39
    move-result-object v2

    #@3a
    .line 2226
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_2

    #@3c
    .line 2227
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3f
    move-result-object v3

    #@40
    .line 2228
    .local v3, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@42
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    monitor-exit v5

    #@46
    .line 2229
    return-object v3

    #@47
    .end local v3    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2
    monitor-exit v5

    #@48
    .line 2231
    return-object v7

    #@49
    .line 2210
    .end local v0    # "permissionGranted":Z
    .end local v1    # "resolvedUserId":I
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v4

    #@4a
    monitor-exit v5

    #@4b
    throw v4
.end method

.method public getWindows()Ljava/util/List;
    .locals 11
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
    const/4 v10, 0x0

    #@1
    .line 2175
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap16(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@6
    .line 2176
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@8
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@b
    move-result-object v8

    #@c
    monitor-enter v8

    #@d
    .line 2180
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@f
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@12
    move-result-object v7

    #@13
    .line 2182
    const/4 v9, -0x2

    #@14
    .line 2180
    invoke-virtual {v7, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@17
    move-result v2

    #@18
    .line 2183
    .local v2, "resolvedUserId":I
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1a
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v7

    #@1e
    if-eq v2, v7, :cond_0

    #@20
    monitor-exit v8

    #@21
    .line 2184
    return-object v10

    #@22
    .line 2187
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@24
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v1

    #@2c
    .line 2188
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1

    #@2e
    monitor-exit v8

    #@2f
    .line 2189
    return-object v10

    #@30
    .line 2191
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@32
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@35
    move-result-object v7

    #@36
    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    if-nez v7, :cond_2

    #@3a
    monitor-exit v8

    #@3b
    .line 2192
    return-object v10

    #@3c
    .line 2194
    :cond_2
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 2195
    .local v6, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@43
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@46
    move-result-object v7

    #@47
    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@49
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@4c
    move-result v5

    #@4d
    .line 2196
    .local v5, "windowCount":I
    const/4 v0, 0x0

    #@4e
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_3

    #@50
    .line 2197
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@52
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@55
    move-result-object v7

    #@56
    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@58
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v3

    #@5c
    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@5e
    .line 2199
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@61
    move-result-object v4

    #@62
    .line 2200
    .local v4, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@64
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    #@67
    .line 2201
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    .line 2196
    add-int/lit8 v0, v0, 0x1

    #@6c
    goto :goto_0

    #@6d
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_3
    monitor-exit v8

    #@6e
    .line 2203
    return-object v6

    #@6f
    .line 2176
    .end local v0    # "i":I
    .end local v1    # "permissionGranted":Z
    .end local v2    # "resolvedUserId":I
    .end local v5    # "windowCount":I
    .end local v6    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v7

    #@70
    monitor-exit v8

    #@71
    throw v7
.end method

.method public isConnectedLocked()Z
    .locals 1

    #@0
    .prologue
    .line 2669
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public linkToOwnDeathLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2649
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@6
    .line 2648
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 2706
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    .line 2707
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@a
    move-result v0

    #@b
    .line 2711
    .local v0, "eventType":I
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    #@e
    move-result-object v2

    #@f
    .line 2712
    .local v2, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    #@17
    .line 2713
    .local v3, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    .line 2715
    move v4, v0

    #@1d
    .line 2716
    .local v4, "what":I
    if-eqz v3, :cond_0

    #@1f
    .line 2717
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    #@21
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@24
    .line 2718
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@27
    .line 2721
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    #@29
    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@2c
    move-result-object v1

    #@2d
    .line 2722
    .local v1, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    #@2f
    iget-wide v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    #@31
    invoke-virtual {v5, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v6

    #@35
    .line 2705
    return-void

    #@36
    .line 2706
    .end local v0    # "eventType":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v4    # "what":I
    :catchall_0
    move-exception v5

    #@37
    monitor-exit v6

    #@38
    throw v5
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .locals 2

    #@0
    .prologue
    .line 2797
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@2
    .line 2798
    const/4 v1, 0x3

    #@3
    .line 2797
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->sendEmptyMessage(I)Z

    #@6
    .line 2796
    return-void
.end method

.method public notifyGesture(I)V
    .locals 3
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 2787
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@2
    const/4 v1, 0x1

    #@3
    .line 2788
    const/4 v2, 0x0

    #@4
    .line 2787
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 2786
    return-void
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 2792
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@2
    const/4 v1, 0x2

    #@3
    .line 2793
    const/4 v2, 0x0

    #@4
    .line 2792
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 2791
    return-void
.end method

.method public onAdded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2628
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeathLocked()V

    #@3
    .line 2629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 2631
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get14(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    #@f
    .line 2632
    const/16 v4, 0x7f0

    #@11
    .line 2631
    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 2634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 2627
    return-void

    #@18
    .line 2633
    :catchall_0
    move-exception v2

    #@19
    .line 2634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 2633
    throw v2
.end method

.method public onRemoved()V
    .locals 5

    #@0
    .prologue
    .line 2639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 2641
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get14(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    #@c
    const/4 v4, 0x1

    #@d
    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 2643
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 2645
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeathLocked()V

    #@16
    .line 2638
    return-void

    #@17
    .line 2642
    :catchall_0
    move-exception v2

    #@18
    .line 2643
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 2642
    throw v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2151
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 2152
    :try_start_0
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@9
    .line 2153
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@f
    .line 2154
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@11
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@13
    invoke-static {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@16
    move-result-object v1

    #@17
    .line 2155
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@19
    invoke-static {v2, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap15(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@1c
    .line 2156
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@1e
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@20
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_0

    #@26
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 2157
    :cond_0
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@2c
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@2e
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@31
    .line 2158
    const/4 v2, 0x0

    #@32
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 2160
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@36
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@38
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    #@3a
    invoke-interface {v2, p0, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    #@3d
    .line 2161
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3f
    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    :goto_0
    monitor-exit v3

    #@43
    .line 2150
    return-void

    #@44
    .line 2162
    :catch_0
    move-exception v0

    #@45
    .line 2163
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "AccessibilityManagerService"

    #@48
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "Error while setting connection for service: "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    .line 2165
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    goto :goto_0

    #@63
    .line 2151
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    #@64
    monitor-exit v3

    #@65
    throw v2

    #@66
    .line 2168
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@69
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2623
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2527
    const/4 v3, 0x0

    #@1
    .line 2528
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    #@3
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@8
    move-result-object v5

    #@9
    monitor-enter v5

    #@a
    .line 2532
    :try_start_0
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@e
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@11
    move-result-object v4

    #@12
    .line 2534
    const/4 v6, -0x2

    #@13
    .line 2532
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@16
    move-result v17

    #@17
    .line 2535
    .local v17, "resolvedUserId":I
    move-object/from16 v0, p0

    #@19
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1b
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v4

    #@1f
    move/from16 v0, v17

    #@21
    if-eq v0, v4, :cond_0

    #@23
    .line 2536
    const/4 v4, 0x0

    #@24
    monitor-exit v5

    #@25
    return v4

    #@26
    .line 2538
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    #@29
    move-result v18

    #@2a
    .line 2539
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    #@2c
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2e
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@31
    move-result-object v4

    #@32
    move-object/from16 v0, p0

    #@34
    move/from16 v1, v18

    #@36
    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result v2

    #@3a
    .line 2541
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    #@3c
    .line 2542
    const/4 v4, 0x0

    #@3d
    monitor-exit v5

    #@3e
    return v4

    #@3f
    .line 2544
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@41
    move/from16 v1, v18

    #@43
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    move-result-object v3

    #@47
    .line 2545
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    #@49
    .line 2546
    const/4 v4, 0x0

    #@4a
    monitor-exit v5

    #@4b
    return v4

    #@4c
    :cond_2
    monitor-exit v5

    #@4d
    .line 2550
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@50
    move-result v11

    #@51
    .line 2551
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@54
    move-result-wide v14

    #@55
    .line 2554
    .local v14, "identityToken":J
    :try_start_3
    move-object/from16 v0, p0

    #@57
    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@59
    move-wide/from16 v4, p2

    #@5b
    move/from16 v6, p4

    #@5d
    move-object/from16 v7, p5

    #@5f
    move/from16 v8, p6

    #@61
    move-object/from16 v9, p7

    #@63
    move-wide/from16 v12, p8

    #@65
    .line 2553
    invoke-interface/range {v3 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@68
    .line 2560
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6b
    .line 2562
    :goto_0
    const/4 v4, 0x1

    #@6c
    return v4

    #@6d
    .line 2528
    .end local v2    # "permissionGranted":Z
    .end local v11    # "interrogatingPid":I
    .end local v14    # "identityToken":J
    .end local v17    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :catchall_0
    move-exception v4

    #@6e
    monitor-exit v5

    #@6f
    throw v4

    #@70
    .line 2555
    .restart local v2    # "permissionGranted":Z
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "identityToken":J
    .restart local v17    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :catch_0
    move-exception v16

    #@71
    .line 2560
    .local v16, "re":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@74
    goto :goto_0

    #@75
    .line 2559
    .end local v16    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@76
    .line 2560
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@79
    .line 2559
    throw v4
.end method

.method public performGlobalAction(I)Z
    .locals 8
    .param p1, "action"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 2567
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    monitor-enter v4

    #@9
    .line 2571
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@b
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@e
    move-result-object v3

    #@f
    .line 2573
    const/4 v5, -0x2

    #@10
    .line 2571
    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@13
    move-result v2

    #@14
    .line 2574
    .local v2, "resolvedUserId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@16
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v3

    #@1a
    if-eq v2, v3, :cond_0

    #@1c
    monitor-exit v4

    #@1d
    .line 2575
    return v7

    #@1e
    :cond_0
    monitor-exit v4

    #@1f
    .line 2578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 2580
    .local v0, "identity":J
    packed-switch p1, :pswitch_data_0

    #@26
    .line 2602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 2600
    return v7

    #@2a
    .line 2567
    .end local v0    # "identity":J
    .end local v2    # "resolvedUserId":I
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3

    #@2d
    .line 2582
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedUserId":I
    :pswitch_0
    const/4 v3, 0x4

    #@2e
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@31
    .line 2602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 2583
    return v6

    #@35
    .line 2585
    :pswitch_1
    const/4 v3, 0x3

    #@36
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@39
    .line 2602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 2586
    return v6

    #@3d
    .line 2588
    :pswitch_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->openRecents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@40
    .line 2602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 2589
    return v6

    #@44
    .line 2591
    :pswitch_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandNotifications()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@47
    .line 2602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 2592
    return v6

    #@4b
    .line 2594
    :pswitch_4
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandQuickSettings()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@4e
    .line 2602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 2595
    return v6

    #@52
    .line 2597
    :pswitch_5
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->showGlobalActions()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@55
    .line 2602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@58
    .line 2598
    return v6

    #@59
    .line 2601
    :catchall_1
    move-exception v3

    #@5a
    .line 2602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5d
    .line 2601
    throw v3

    #@5e
    .line 2580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public resetLocked()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@3
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    invoke-interface {v1, v3, v2, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2664
    :goto_0
    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@c
    .line 2665
    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@e
    .line 2656
    return-void

    #@f
    .line 2661
    :catch_0
    move-exception v0

    #@10
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2018
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@4
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    #@6
    .line 2019
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@8
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    #@a
    .line 2020
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@c
    .line 2021
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 2022
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    #@10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@13
    move-result-object v4

    #@14
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 2024
    :cond_0
    iget-wide v4, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@19
    iput-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    #@1b
    .line 2025
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1d
    and-int/lit8 v1, v1, 0x1

    #@1f
    if-eqz v1, :cond_3

    #@21
    move v1, v2

    #@22
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    #@24
    .line 2027
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    #@26
    if-nez v1, :cond_1

    #@28
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@2b
    move-result-object v1

    #@2c
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2e
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@30
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@32
    .line 2028
    const/16 v4, 0x10

    #@34
    .line 2027
    if-lt v1, v4, :cond_2

    #@36
    .line 2029
    :cond_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@38
    and-int/lit8 v1, v1, 0x2

    #@3a
    if-eqz v1, :cond_4

    #@3c
    .line 2030
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@3e
    or-int/lit8 v1, v1, 0x8

    #@40
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@42
    .line 2036
    :cond_2
    :goto_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@44
    and-int/lit8 v1, v1, 0x10

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 2037
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@4a
    or-int/lit8 v1, v1, 0x10

    #@4c
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@4e
    .line 2042
    :goto_2
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@50
    and-int/lit8 v1, v1, 0x4

    #@52
    if-eqz v1, :cond_6

    #@54
    move v1, v2

    #@55
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    #@57
    .line 2044
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@59
    and-int/lit8 v1, v1, 0x8

    #@5b
    if-eqz v1, :cond_7

    #@5d
    move v1, v2

    #@5e
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestEnhancedWebAccessibility:Z

    #@60
    .line 2046
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@62
    and-int/lit8 v1, v1, 0x20

    #@64
    if-eqz v1, :cond_8

    #@66
    move v1, v2

    #@67
    :goto_5
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    #@69
    .line 2048
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@6b
    and-int/lit8 v1, v1, 0x40

    #@6d
    if-eqz v1, :cond_9

    #@6f
    :goto_6
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    #@71
    .line 2017
    return-void

    #@72
    :cond_3
    move v1, v3

    #@73
    .line 2025
    goto :goto_0

    #@74
    .line 2032
    :cond_4
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@76
    and-int/lit8 v1, v1, -0x9

    #@78
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@7a
    goto :goto_1

    #@7b
    .line 2039
    :cond_5
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@7d
    and-int/lit8 v1, v1, -0x11

    #@7f
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@81
    goto :goto_2

    #@82
    :cond_6
    move v1, v3

    #@83
    .line 2042
    goto :goto_3

    #@84
    :cond_7
    move v1, v3

    #@85
    .line 2044
    goto :goto_4

    #@86
    :cond_8
    move v1, v3

    #@87
    .line 2046
    goto :goto_5

    #@88
    :cond_9
    move v2, v3

    #@89
    .line 2048
    goto :goto_6
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 1
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    #@0
    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->setOnKeyEventResult(ZI)V

    #@5
    .line 2110
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 2128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 2130
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@6
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@9
    move-result-object v5

    #@a
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    .line 2134
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@d
    .line 2135
    .local v2, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v2, :cond_0

    #@f
    .line 2136
    invoke-virtual {v2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@12
    .line 2137
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@15
    .line 2141
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@17
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@19
    invoke-static {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@1c
    move-result-object v3

    #@1d
    .line 2142
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1f
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 2145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 2127
    return-void

    #@27
    .line 2139
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 2130
    .end local v2    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v4

    #@2c
    :try_start_4
    monitor-exit v5

    #@2d
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2e
    .line 2144
    :catchall_1
    move-exception v4

    #@2f
    .line 2145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 2144
    throw v4
.end method

.method public unbindLocked()Z
    .locals 3

    #@0
    .prologue
    .line 2090
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2091
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 2093
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@8
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@a
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@d
    move-result-object v0

    #@e
    .line 2094
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    #@10
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->flush()V

    #@13
    .line 2095
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    #@15
    if-nez v1, :cond_1

    #@17
    .line 2096
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@19
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@20
    .line 2100
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@22
    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap21(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@25
    .line 2101
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resetLocked()V

    #@28
    .line 2102
    const/4 v1, 0x1

    #@29
    return v1

    #@2a
    .line 2098
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    #@2d
    goto :goto_0
.end method

.method public unlinkToOwnDeathLocked()V
    .locals 2

    #@0
    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6
    .line 2652
    return-void
.end method
