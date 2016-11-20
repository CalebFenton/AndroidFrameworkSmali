.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrManagerService$1;,
        Lcom/android/server/vr/VrManagerService$2;,
        Lcom/android/server/vr/VrManagerService$3;,
        Lcom/android/server/vr/VrManagerService$LocalService;,
        Lcom/android/server/vr/VrManagerService$NotificationAccessManager;,
        Lcom/android/server/vr/VrManagerService$VrState;
    }
.end annotation


# static fields
.field private static final EVENT_LOG_SIZE:I = 0x20

.field private static final INVALID_APPOPS_MODE:I = -0x1

.field private static final MSG_PENDING_VR_STATE_CHANGE:I = 0x1

.field private static final MSG_VR_STATE_CHANGE:I = 0x0

.field private static final PENDING_STATE_DELAY_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "VrManagerService"

.field public static final VR_MANAGER_BINDER_SERVICE:Ljava/lang/String; = "vrmanager"

.field private static final sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# instance fields
.field private mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentVrModeComponent:Landroid/content/ComponentName;

.field private mCurrentVrModeUser:I

.field private mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field private mGuard:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mLoggingDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/vr/VrManagerService$VrState;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field private mPreviousCoarseLocationMode:I

.field private mPreviousManageOverlayMode:I

.field private final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/service/vr/IVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private mVrModeEnabled:Z

.field private mWasDefaultGranted:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/vr/VrManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/vr/VrManagerService;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "vrComponentPackageNames"    # Landroid/util/ArraySet;
    .param p4, "vrComponents"    # Landroid/util/ArraySet;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/VrManagerService;->enableVrComponentsIfVrModeUsed(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/util/ArraySet;Landroid/util/ArraySet;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVrMode()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .locals 0
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "immediate"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isCurrentVrListener(Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I
    .locals 1
    .param p1, "targetPackageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->hasVrPackage(Landroid/content/ComponentName;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .locals 0
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->enforceCallerPermission(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 188
    new-instance v0, Lcom/android/server/vr/VrManagerService$2;

    #@2
    invoke-direct {v0}, Lcom/android/server/vr/VrManagerService$2;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    #@7
    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 394
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 107
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@b
    .line 109
    new-instance v0, Landroid/os/Binder;

    #@d
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    #@12
    .line 121
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@14
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@17
    .line 120
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    #@19
    .line 122
    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousCoarseLocationMode:I

    #@1b
    .line 123
    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousManageOverlayMode:I

    #@1d
    .line 125
    new-instance v0, Ljava/util/ArrayDeque;

    #@1f
    const/16 v1, 0x20

    #@21
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    #@24
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    #@26
    .line 126
    new-instance v0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    #@28
    const/4 v1, 0x0

    #@29
    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$NotificationAccessManager;)V

    #@2c
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    #@2e
    .line 131
    new-instance v0, Lcom/android/server/vr/VrManagerService$1;

    #@30
    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    #@33
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    #@35
    .line 284
    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    #@37
    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$3;-><init>(Lcom/android/server/vr/VrManagerService;)V

    #@3a
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    #@3c
    .line 393
    return-void
.end method

.method private addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@5
    .line 949
    return-void
.end method

.method private changeVrModeLocked(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 818
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@6
    .line 821
    const-string/jumbo v1, "VrManagerService"

    #@9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "VR mode "

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    const-string/jumbo v0, "enabled"

    #@1c
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 822
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@29
    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    #@2c
    .line 824
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    #@2f
    .line 816
    :cond_0
    return-void

    #@30
    .line 821
    :cond_1
    const-string/jumbo v0, "disabled"

    #@33
    goto :goto_0
.end method

.method private consumeAndApplyPendingStateLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 849
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 850
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    #@7
    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    #@9
    .line 851
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    #@b
    iget-object v1, v1, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    #@d
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    #@f
    iget v2, v2, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    #@11
    .line 852
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    #@13
    iget-object v3, v3, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    #@15
    .line 850
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z

    #@18
    .line 853
    iput-object v4, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    #@1a
    .line 848
    :cond_0
    return-void
.end method

.method private static create(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 844
    const-string/jumbo v4, "android.settings.VR_LISTENER_SETTINGS"

    #@3
    .line 845
    sget-object v5, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    #@5
    .line 844
    const v3, 0x1040468

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move v2, p2

    #@b
    .line 843
    invoke-static/range {v0 .. v5}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;)Lcom/android/server/utils/ManagedApplicationService;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private createAndConnectService(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->create(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@8
    .line 805
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@a
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    #@d
    .line 806
    const-string/jumbo v0, "VrManagerService"

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Connecting "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, " for user "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 803
    return-void
.end method

.method private dumpStateTransitions(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 869
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v4, "MM-dd HH:mm:ss.SSS"

    #@5
    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    .line 870
    .local v0, "d":Ljava/text/SimpleDateFormat;
    const-string/jumbo v3, "  "

    #@b
    .line 871
    .local v3, "tab":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    #@d
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_0

    #@13
    .line 872
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 873
    const-string/jumbo v4, "None"

    #@19
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 875
    :cond_0
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    #@1e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .local v2, "state$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_5

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Lcom/android/server/vr/VrManagerService$VrState;

    #@2e
    .line 876
    .local v1, "state":Lcom/android/server/vr/VrManagerService$VrState;
    new-instance v4, Ljava/util/Date;

    #@30
    iget-wide v6, v1, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    #@32
    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@35
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 877
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 878
    const-string/jumbo v4, "State changed to:"

    #@42
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    .line 879
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 880
    iget-boolean v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    #@4a
    if-eqz v4, :cond_2

    #@4c
    const-string/jumbo v4, "ENABLED"

    #@4f
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 881
    iget-boolean v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    #@54
    if-eqz v4, :cond_1

    #@56
    .line 882
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 883
    const-string/jumbo v4, "User="

    #@5c
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    .line 884
    iget v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    #@61
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    #@64
    .line 885
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67
    .line 886
    const-string/jumbo v4, "Current VR Activity="

    #@6a
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 887
    iget-object v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    #@6f
    if-nez v4, :cond_3

    #@71
    .line 888
    const-string/jumbo v4, "None"

    #@74
    .line 887
    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@77
    .line 889
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    .line 890
    const-string/jumbo v4, "Bound VrListenerService="

    #@7d
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    .line 891
    iget-object v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    #@82
    if-nez v4, :cond_4

    #@84
    .line 892
    const-string/jumbo v4, "None"

    #@87
    .line 891
    :goto_3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 893
    iget-boolean v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    #@8c
    if-eqz v4, :cond_1

    #@8e
    .line 894
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    .line 895
    const-string/jumbo v4, "Default permissions granted to the bound VrListenerService."

    #@94
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@97
    goto :goto_0

    #@98
    .line 880
    :cond_2
    const-string/jumbo v4, "DISABLED"

    #@9b
    goto :goto_1

    #@9c
    .line 888
    :cond_3
    iget-object v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    #@9e
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@a1
    move-result-object v4

    #@a2
    goto :goto_2

    #@a3
    .line 892
    :cond_4
    iget-object v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    #@a5
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@a8
    move-result-object v4

    #@a9
    goto :goto_3

    #@aa
    .line 868
    .end local v1    # "state":Lcom/android/server/vr/VrManagerService$VrState;
    :cond_5
    return-void
.end method

.method private enableVrComponentsIfVrModeUsed(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "vrComponentPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "vrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v8, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 493
    if-eqz p4, :cond_1

    #@4
    .line 494
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@6
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    .line 495
    :goto_0
    if-eqz p2, :cond_0

    #@c
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@e
    if-eqz v2, :cond_0

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 506
    :cond_0
    return v3

    #@13
    .line 493
    :cond_1
    const/4 v1, 0x0

    #@14
    .local v1, "isVrComponent":Z
    goto :goto_0

    #@15
    .line 496
    .end local v1    # "isVrComponent":Z
    :cond_2
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@17
    array-length v5, v4

    #@18
    move v2, v3

    #@19
    :goto_1
    if-ge v2, v5, :cond_0

    #@1b
    aget-object v0, v4, v2

    #@1d
    .line 497
    .local v0, "featureInfo":Landroid/content/pm/FeatureInfo;
    iget-object v6, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@1f
    if-eqz v6, :cond_4

    #@21
    .line 498
    iget-object v6, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@23
    const-string/jumbo v7, "android.software.vr.mode"

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    if-nez v6, :cond_3

    #@2c
    .line 499
    iget-object v6, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@2e
    const-string/jumbo v7, "android.hardware.vr.high_performance"

    #@31
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v6

    #@35
    .line 497
    if-eqz v6, :cond_4

    #@37
    .line 500
    :cond_3
    const-string/jumbo v2, "VrManagerService"

    #@3a
    const-string/jumbo v3, "VR package found, enabling VR components"

    #@3d
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 501
    invoke-direct {p0, p4, v8}, Lcom/android/server/vr/VrManagerService;->setVrComponentsEnabledOrDisabled(Landroid/util/ArraySet;Z)V

    #@43
    .line 502
    return v8

    #@44
    .line 496
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_1
.end method

.method private enforceCallerPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 362
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Caller does not hold the permission "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 359
    :cond_0
    return-void
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 782
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    #@2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 783
    :cond_0
    const-string/jumbo v4, ""

    #@b
    return-object v4

    #@c
    .line 786
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 787
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    #@12
    .line 788
    .local v3, "start":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_4

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    .line 789
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@25
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_2

    #@2b
    .line 792
    if-nez v3, :cond_3

    #@2d
    .line 793
    const/16 v4, 0x3a

    #@2f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    .line 795
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 796
    const/4 v3, 0x0

    #@36
    goto :goto_0

    #@37
    .line 798
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    return-object v4
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 769
    const-string/jumbo v4, "enabled_notification_listeners"

    #@3
    .line 768
    invoke-static {p1, v4, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 771
    .local v2, "flat":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    #@9
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@c
    .line 772
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    #@e
    .line 773
    const-string/jumbo v4, ":"

    #@11
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 774
    .local v0, "allowed":[Ljava/lang/String;
    const/4 v4, 0x0

    #@16
    array-length v5, v0

    #@17
    :goto_0
    if-ge v4, v5, :cond_0

    #@19
    aget-object v3, v0, v4

    #@1b
    .line 775
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1e
    .line 774
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_0

    #@21
    .line 778
    .end local v0    # "allowed":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getVrMode()Z
    .locals 2

    #@0
    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 959
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 958
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 714
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v5

    #@6
    .line 716
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v8, "android.service.notification.NotificationListenerService"

    #@9
    .line 717
    const-string/jumbo v9, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    #@c
    .line 715
    invoke-static {v5, p2, v8, v9}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    #@f
    move-result-object v6

    #@10
    .line 718
    .local v6, "possibleServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v7

    #@16
    .line 720
    .local v7, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v7, p2}, Lcom/android/server/vr/VrManagerService;->getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;

    #@19
    move-result-object v2

    #@1a
    .line 722
    .local v2, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v8

    #@22
    if-eqz v8, :cond_1

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/content/ComponentName;

    #@2a
    .line 723
    .local v0, "c":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 724
    .local v3, "flatName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@35
    move-result v8

    #@36
    if-eqz v8, :cond_0

    #@38
    .line 725
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@3b
    move-result v8

    #@3c
    if-nez v8, :cond_0

    #@3e
    .line 726
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 730
    .end local v0    # "c":Landroid/content/ComponentName;
    .end local v3    # "flatName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@45
    move-result v8

    #@46
    if-lez v8, :cond_2

    #@48
    .line 731
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->formatSettings(Ljava/util/Collection;)Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 733
    .local v4, "flatSettings":Ljava/lang/String;
    const-string/jumbo v8, "enabled_notification_listeners"

    #@4f
    .line 732
    invoke-static {v7, v8, v4, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@52
    .line 713
    .end local v4    # "flatSettings":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private grantNotificationPolicyAccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 701
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@2
    const-class v2, Landroid/app/NotificationManager;

    #@4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/NotificationManager;

    #@a
    .line 702
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    #@e
    .line 700
    return-void
.end method

.method private hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "targetPackageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 930
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 930
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private static native initializeNative()V
.end method

.method private isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 936
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 937
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v2, :cond_0

    #@8
    monitor-exit v1

    #@9
    .line 938
    return v0

    #@a
    .line 940
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@c
    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 941
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result v2

    #@20
    if-ne p2, v2, :cond_1

    #@22
    const/4 v0, 0x1

    #@23
    :cond_1
    monitor-exit v1

    #@24
    .line 940
    return v0

    #@25
    .line 936
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method private isDefaultAllowed(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 686
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v2

    #@6
    .line 688
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    #@7
    .line 690
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x80

    #@9
    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    .line 694
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_1

    #@f
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_0

    #@15
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 697
    :cond_0
    const/4 v3, 0x1

    #@1c
    return v3

    #@1d
    .line 691
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    #@1f
    .line 695
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    #@20
    return v3
.end method

.method private isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 761
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v2

    #@7
    .line 762
    new-instance v3, Landroid/os/UserHandle;

    #@9
    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    #@c
    .line 761
    invoke-virtual {v2, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    #@f
    move-result v0

    #@10
    .line 763
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x3

    #@12
    if-eqz v2, :cond_0

    #@14
    const/4 v1, 0x1

    #@15
    :cond_0
    return v1
.end method

.method private logStateLocked()V
    .locals 6

    #@0
    .prologue
    .line 858
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@2
    if-nez v1, :cond_1

    #@4
    const/4 v2, 0x0

    #@5
    .line 860
    :goto_0
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    #@7
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@9
    iget v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    #@b
    .line 861
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    #@d
    iget-boolean v5, p0, Lcom/android/server/vr/VrManagerService;->mWasDefaultGranted:Z

    #@f
    .line 860
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    #@12
    .line 862
    .local v0, "current":Lcom/android/server/vr/VrManagerService$VrState;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    #@14
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    #@17
    move-result v1

    #@18
    const/16 v3, 0x20

    #@1a
    if-ne v1, v3, :cond_0

    #@1c
    .line 863
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    #@1e
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@21
    .line 865
    :cond_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@26
    .line 857
    return-void

    #@27
    .line 859
    .end local v0    # "current":Lcom/android/server/vr/VrManagerService$VrState;
    :cond_1
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@29
    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    #@2c
    move-result-object v2

    #@2d
    .local v2, "currentBoundService":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private onVrModeChangedLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 834
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    #@3
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    #@5
    .line 835
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 834
    :goto_0
    invoke-virtual {v3, v1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 833
    return-void

    #@12
    :cond_0
    move v0, v1

    #@13
    .line 835
    goto :goto_0
.end method

.method private removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    #@0
    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@5
    .line 953
    return-void
.end method

.method private revokeNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 739
    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v5

    #@6
    .line 741
    .local v5, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v5, p2}, Lcom/android/server/vr/VrManagerService;->getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;

    #@9
    move-result-object v3

    #@a
    .line 743
    .local v3, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@c
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 745
    .local v6, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_1

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    .line 746
    .local v0, "c":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@22
    move-result-object v2

    #@23
    .line 747
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_0

    #@2d
    .line 748
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 752
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "component":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    #@34
    .line 754
    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->formatSettings(Ljava/util/Collection;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 756
    .local v4, "flatSettings":Ljava/lang/String;
    const-string/jumbo v7, "enabled_notification_listeners"

    #@3b
    .line 755
    invoke-static {v5, v7, v4, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@3e
    .line 738
    return-void
.end method

.method private revokeNotificationPolicyAccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@2
    const-class v2, Landroid/app/NotificationManager;

    #@4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/NotificationManager;

    #@a
    .line 708
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    #@d
    .line 710
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    #@11
    .line 705
    return-void
.end method

.method private setEnabledStatusOfVrComponents()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 413
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@4
    move-result-object v10

    #@5
    invoke-virtual {v10}, Lcom/android/server/SystemConfig;->getDefaultVrComponents()Landroid/util/ArraySet;

    #@8
    move-result-object v8

    #@9
    .line 414
    .local v8, "vrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v8, :cond_0

    #@b
    .line 415
    return-void

    #@c
    .line 420
    :cond_0
    new-instance v7, Landroid/util/ArraySet;

    #@e
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    #@11
    .line 421
    .local v7, "vrComponentPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "componentName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v10

    #@19
    if-eqz v10, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/content/ComponentName;

    #@21
    .line 422
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 427
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2e
    move-result-object v6

    #@2f
    .line 429
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x4000

    #@31
    .line 428
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@34
    move-result-object v5

    #@35
    .line 430
    .local v5, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v9, 0x0

    #@36
    .line 431
    .local v9, "vrModeIsUsed":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v4

    #@3a
    .end local v9    # "vrModeIsUsed":Z
    .local v4, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v10

    #@3e
    if-eqz v10, :cond_3

    #@40
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    check-cast v3, Landroid/content/pm/PackageInfo;

    #@46
    .line 432
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_2

    #@48
    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4a
    if-eqz v10, :cond_2

    #@4c
    .line 433
    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4e
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    #@51
    move-result v10

    #@52
    if-nez v10, :cond_2

    #@54
    .line 435
    invoke-direct {p0, v6, v3, v7, v8}, Lcom/android/server/vr/VrManagerService;->enableVrComponentsIfVrModeUsed(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/util/ArraySet;Landroid/util/ArraySet;)Z

    #@57
    move-result v9

    #@58
    .line 437
    .local v9, "vrModeIsUsed":Z
    if-eqz v9, :cond_2

    #@5a
    .line 443
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "vrModeIsUsed":Z
    :cond_3
    if-nez v9, :cond_4

    #@5c
    .line 444
    const-string/jumbo v10, "VrManagerService"

    #@5f
    const-string/jumbo v11, "No VR packages found, disabling VR components"

    #@62
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 445
    invoke-direct {p0, v8, v12}, Lcom/android/server/vr/VrManagerService;->setVrComponentsEnabledOrDisabled(Landroid/util/ArraySet;Z)V

    #@68
    .line 449
    new-instance v2, Landroid/content/IntentFilter;

    #@6a
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    #@6d
    .line 450
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "android.intent.action.PACKAGE_ADDED"

    #@70
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@73
    .line 451
    const-string/jumbo v10, "package"

    #@76
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@79
    .line 452
    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@7b
    new-instance v11, Lcom/android/server/vr/VrManagerService$4;

    #@7d
    invoke-direct {v11, p0, v7, v8}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    #@80
    invoke-virtual {v10, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@83
    .line 412
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_4
    return-void
.end method

.method private setVrComponentsEnabledOrDisabled(Landroid/util/ArraySet;Z)V
    .locals 8
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 473
    .local p1, "vrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    #@2
    .line 474
    const/4 v5, 0x1

    #@3
    .line 476
    .local v5, "state":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v4

    #@9
    .line 477
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "componentName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/content/ComponentName;

    #@19
    .line 483
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    .line 484
    const/16 v7, 0x4000

    #@1f
    .line 483
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@22
    move-result-object v3

    #@23
    .line 485
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    const/4 v7, 0x0

    #@28
    invoke-virtual {v4, v6, v5, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    goto :goto_1

    #@2c
    .line 486
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    #@2d
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@2e
    .line 475
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "componentName$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "state":I
    :cond_0
    const/4 v5, 0x2

    #@2f
    .restart local v5    # "state":I
    goto :goto_0

    #@30
    .line 472
    .restart local v1    # "componentName$iterator":Ljava/util/Iterator;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void
.end method

.method private setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "immediate"    # Z

    #@0
    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 910
    if-nez p1, :cond_0

    #@5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@7
    if-eqz v0, :cond_0

    #@9
    if-eqz p5, :cond_1

    #@b
    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    #@d
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@11
    .line 922
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    #@14
    .line 925
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 906
    return-void

    #@19
    .line 913
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 914
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    #@1f
    .line 915
    const-wide/16 v2, 0x12c

    #@21
    .line 914
    const/4 v4, 0x1

    #@22
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@25
    .line 918
    :cond_2
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    #@27
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    #@2a
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit v1

    #@2d
    .line 919
    return-void

    #@2e
    .line 908
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method private static native setVrModeNative(Z)V
.end method

.method private updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z
    .locals 14
    .param p1, "enabled"    # Z
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "calling"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 606
    const/4 v9, 0x0

    #@1
    .line 607
    .local v9, "sendUpdatedCaller":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v4

    #@5
    .line 610
    .local v4, "identity":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@7
    move-object/from16 v0, p2

    #@9
    move/from16 v1, p3

    #@b
    invoke-virtual {v11, v0, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    #@e
    move-result v11

    #@f
    if-nez v11, :cond_5

    #@11
    const/4 v10, 0x1

    #@12
    .line 612
    .local v10, "validUserComponent":Z
    :goto_0
    iget-boolean v11, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@14
    if-nez v11, :cond_0

    #@16
    if-eqz p1, :cond_6

    #@18
    .line 616
    :cond_0
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@1a
    if-eqz v11, :cond_7

    #@1c
    .line 617
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@1e
    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    #@21
    move-result-object v11

    #@22
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    .line 618
    :goto_1
    iget v7, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    #@28
    .line 621
    .local v7, "oldUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->changeVrModeLocked(Z)V

    #@2b
    .line 623
    if-eqz p1, :cond_8

    #@2d
    if-eqz v10, :cond_8

    #@2f
    .line 632
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@31
    if-eqz v11, :cond_9

    #@33
    .line 634
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@35
    move-object/from16 v0, p2

    #@37
    move/from16 v1, p3

    #@39
    invoke-virtual {v11, v0, v1}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    #@3c
    move-result v11

    #@3d
    if-eqz v11, :cond_1

    #@3f
    .line 635
    const-string/jumbo v11, "VrManagerService"

    #@42
    new-instance v12, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v13, "Disconnecting "

    #@4a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v12

    #@4e
    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@50
    invoke-virtual {v13}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    #@53
    move-result-object v13

    #@54
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v12

    #@58
    .line 636
    const-string/jumbo v13, " for user "

    #@5b
    .line 635
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v12

    #@5f
    .line 636
    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@61
    invoke-virtual {v13}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    #@64
    move-result v13

    #@65
    .line 635
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v12

    #@69
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v12

    #@6d
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 637
    move-object/from16 v0, p2

    #@72
    move/from16 v1, p3

    #@74
    invoke-direct {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    #@77
    .line 638
    const/4 v9, 0x1

    #@78
    .line 648
    :cond_1
    :goto_2
    if-eqz p4, :cond_2

    #@7a
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    #@7c
    move-object/from16 v0, p4

    #@7e
    invoke-static {v0, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@81
    move-result v11

    #@82
    if-eqz v11, :cond_a

    #@84
    .line 653
    :cond_2
    :goto_3
    iget v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    #@86
    move/from16 v0, p3

    #@88
    if-eq v11, v0, :cond_3

    #@8a
    .line 654
    move/from16 v0, p3

    #@8c
    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    #@8e
    .line 655
    const/4 v9, 0x1

    #@8f
    .line 658
    :cond_3
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@91
    if-eqz v11, :cond_b

    #@93
    .line 659
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@95
    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    #@98
    move-result-object v11

    #@99
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    .line 660
    :goto_4
    iget v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    #@9f
    .line 664
    .local v3, "newUserId":I
    invoke-direct {p0, v6, v3, v8, v7}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V

    #@a2
    .line 667
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@a4
    if-eqz v11, :cond_4

    #@a6
    if-eqz v9, :cond_4

    #@a8
    .line 668
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    #@aa
    .line 669
    .local v2, "c":Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@ac
    new-instance v12, Lcom/android/server/vr/VrManagerService$5;

    #@ae
    invoke-direct {v12, p0, v2}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V

    #@b1
    invoke-virtual {v11, v12}, Lcom/android/server/utils/ManagedApplicationService;->sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    #@b4
    .line 677
    .end local v2    # "c":Landroid/content/ComponentName;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->logStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b7
    .line 681
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 679
    return v10

    #@bb
    .line 610
    .end local v3    # "newUserId":I
    .end local v7    # "oldUserId":I
    .end local v10    # "validUserComponent":Z
    :cond_5
    const/4 v10, 0x0

    #@bc
    .restart local v10    # "validUserComponent":Z
    goto/16 :goto_0

    #@be
    .line 681
    :cond_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c1
    .line 613
    return v10

    #@c2
    .line 617
    :cond_7
    const/4 v8, 0x0

    #@c3
    .local v8, "oldVrServicePackage":Ljava/lang/String;
    goto/16 :goto_1

    #@c5
    .line 625
    .end local v8    # "oldVrServicePackage":Ljava/lang/String;
    .restart local v7    # "oldUserId":I
    :cond_8
    :try_start_1
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@c7
    if-eqz v11, :cond_1

    #@c9
    .line 626
    const-string/jumbo v11, "VrManagerService"

    #@cc
    new-instance v12, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v13, "Disconnecting "

    #@d4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v12

    #@d8
    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@da
    invoke-virtual {v13}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    #@dd
    move-result-object v13

    #@de
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v12

    #@e2
    const-string/jumbo v13, " for user "

    #@e5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v12

    #@e9
    .line 627
    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@eb
    invoke-virtual {v13}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    #@ee
    move-result v13

    #@ef
    .line 626
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v12

    #@f3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v12

    #@f7
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@fa
    .line 628
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@fc
    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    #@ff
    .line 629
    const/4 v11, 0x0

    #@100
    iput-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@102
    goto/16 :goto_2

    #@104
    .line 680
    .end local v7    # "oldUserId":I
    .end local v10    # "validUserComponent":Z
    :catchall_0
    move-exception v11

    #@105
    .line 681
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@108
    .line 680
    throw v11

    #@109
    .line 643
    .restart local v7    # "oldUserId":I
    .restart local v10    # "validUserComponent":Z
    :cond_9
    :try_start_2
    move-object/from16 v0, p2

    #@10b
    move/from16 v1, p3

    #@10d
    invoke-direct {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    #@110
    .line 644
    const/4 v9, 0x1

    #@111
    goto/16 :goto_2

    #@113
    .line 649
    :cond_a
    move-object/from16 v0, p4

    #@115
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@117
    .line 650
    const/4 v9, 0x1

    #@118
    goto/16 :goto_3

    #@11a
    .line 659
    :cond_b
    const/4 v6, 0x0

    #@11b
    .local v6, "newVrServicePackage":Ljava/lang/String;
    goto :goto_4
.end method

.method private updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "newVrServicePackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldVrServicePackage"    # Ljava/lang/String;
    .param p4, "oldUserId"    # I

    #@0
    .prologue
    .line 577
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 578
    return-void

    #@7
    .line 580
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a
    move-result-wide v0

    #@b
    .line 583
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/vr/VrManagerService;->updateOverlayStateLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 575
    return-void

    #@12
    .line 584
    :catchall_0
    move-exception v2

    #@13
    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 584
    throw v2
.end method

.method private updateOverlayStateLocked(Ljava/lang/String;II)V
    .locals 6
    .param p1, "exemptedPackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldUserId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v1, 0x18

    #@3
    const/4 v2, 0x0

    #@4
    .line 558
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v3

    #@8
    const-class v5, Landroid/app/AppOpsManager;

    #@a
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/app/AppOpsManager;

    #@10
    .line 561
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    if-eq p3, p2, :cond_0

    #@12
    .line 563
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    #@14
    move v5, p3

    #@15
    .line 562
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    #@18
    .line 567
    :cond_0
    if-nez p1, :cond_1

    #@1a
    new-array v4, v2, [Ljava/lang/String;

    #@1c
    .line 571
    .local v4, "exemptions":[Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@1e
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    #@20
    move v5, p2

    #@21
    .line 570
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    #@24
    .line 557
    return-void

    #@25
    .line 568
    .end local v4    # "exemptions":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    #@26
    new-array v4, v3, [Ljava/lang/String;

    #@28
    aput-object p1, v4, v2

    #@2a
    .restart local v4    # "exemptions":[Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 511
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 512
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v8

    #@7
    .line 513
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@a
    move-result-object v3

    #@b
    .line 514
    .local v3, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    #@d
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@10
    .line 515
    .local v1, "handler":Landroid/os/Handler;
    new-instance v7, Ljava/util/ArrayList;

    #@12
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 516
    .local v7, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 517
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    #@1a
    .line 518
    const-string/jumbo v2, "enabled_vr_listeners"

    #@1d
    .line 519
    const-string/jumbo v4, "android.permission.BIND_VR_LISTENER_SERVICE"

    #@20
    .line 520
    const-string/jumbo v5, "android.service.vr.VrListenerService"

    #@23
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@25
    .line 517
    invoke-static/range {v0 .. v7}, Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@2b
    .line 522
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v8

    #@31
    .line 510
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v7    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    :cond_0
    return-void

    #@32
    .line 512
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v8

    #@34
    throw v0
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@5
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 551
    return-void

    #@a
    .line 552
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public onEnabledComponentChanged()V
    .locals 11

    #@0
    .prologue
    .line 252
    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 253
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@6
    move-result v0

    #@7
    .line 256
    .local v0, "currentUser":I
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@9
    invoke-virtual {v6, v0}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    #@c
    move-result-object v1

    #@d
    .line 258
    .local v1, "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/util/ArraySet;

    #@f
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@12
    .line 259
    .local v2, "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v4

    #@16
    .local v4, "n$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_1

    #@1c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroid/content/ComponentName;

    #@22
    .line 260
    .local v3, "n":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 261
    .local v5, "pkg":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/vr/VrManagerService;->isDefaultAllowed(Ljava/lang/String;)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_0

    #@2c
    .line 262
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 252
    .end local v0    # "currentUser":I
    .end local v1    # "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v2    # "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "n":Landroid/content/ComponentName;
    .end local v4    # "n$iterator":Ljava/util/Iterator;
    .end local v5    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@35
    monitor-exit v7

    #@36
    throw v6

    #@37
    .line 265
    .restart local v0    # "currentUser":I
    .restart local v1    # "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .restart local v2    # "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "n$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    #@39
    invoke-virtual {v6, v2}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    #@3c
    .line 267
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    if-nez v6, :cond_2

    #@40
    monitor-exit v7

    #@41
    .line 268
    return-void

    #@42
    .line 272
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    #@45
    .line 274
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    if-nez v6, :cond_3

    #@49
    monitor-exit v7

    #@4a
    .line 275
    return-void

    #@4b
    .line 279
    :cond_3
    :try_start_3
    iget-boolean v6, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    #@4d
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@4f
    invoke-virtual {v8}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    #@52
    move-result-object v8

    #@53
    .line 280
    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    #@55
    invoke-virtual {v9}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    #@58
    move-result v9

    #@59
    const/4 v10, 0x0

    #@5a
    .line 279
    invoke-direct {p0, v6, v8, v9, v10}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    monitor-exit v7

    #@5e
    .line 251
    return-void
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 400
    :try_start_0
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    #@6
    .line 401
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 404
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    #@f
    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService;)V

    #@15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@18
    .line 405
    const-string/jumbo v0, "vrmanager"

    #@1b
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    #@1d
    invoke-interface {v1}, Landroid/service/vr/IVrManager;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@24
    .line 409
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->setEnabledStatusOfVrComponents()V

    #@27
    .line 398
    return-void

    #@28
    .line 399
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@5
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 528
    return-void

    #@a
    .line 529
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 544
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@5
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 543
    return-void

    #@a
    .line 544
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    #@5
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 535
    return-void

    #@a
    .line 536
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
