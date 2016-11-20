.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputManagerService$BinderService;,
        Lcom/android/server/tv/TvInputManagerService$ClientState;,
        Lcom/android/server/tv/TvInputManagerService$HardwareListener;,
        Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;,
        Lcom/android/server/tv/TvInputManagerService$ServiceCallback;,
        Lcom/android/server/tv/TvInputManagerService$ServiceState;,
        Lcom/android/server/tv/TvInputManagerService$SessionCallback;,
        Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$SessionState;,
        Lcom/android/server/tv/TvInputManagerService$TvInputState;,
        Lcom/android/server/tv/TvInputManagerService$UserState;,
        Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get6()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvInputManagerService;I)Landroid/content/ContentResolver;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "updatedPackages"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "service"    # Landroid/media/tv/ITvInputService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .locals 0
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "targetCallback"    # Landroid/media/tv/ITvInputManagerCallback;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 0
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Landroid/os/IBinder;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "seq"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "isMain"    # Z
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p1, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .locals 0
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .locals 1
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .locals 1
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "requestedUserId"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .locals 0
    .param p1, "serviceState"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 113
    const-string/jumbo v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    .line 112
    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    #@9
    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 119
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@a
    .line 122
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@d
    .line 125
    new-instance v0, Landroid/util/SparseArray;

    #@f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@14
    .line 132
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@16
    .line 133
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v1

    #@1e
    .line 134
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@25
    move-result-object v2

    #@26
    .line 133
    invoke-direct {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    #@29
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@2b
    .line 135
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager;

    #@2d
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    #@2f
    const/4 v2, 0x0

    #@30
    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$HardwareListener;)V

    #@33
    invoke-direct {v0, p1, v1}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V

    #@36
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    #@38
    .line 137
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@3a
    monitor-enter v1

    #@3b
    .line 138
    :try_start_0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@3d
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v1

    #@41
    .line 129
    return-void

    #@42
    .line 137
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0
.end method

.method private abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .locals 12
    .param p1, "serviceState"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 648
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@4
    move-result-object v11

    #@5
    .line 649
    .local v11, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v10, Ljava/util/ArrayList;

    #@7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 650
    .local v10, "sessionsToAbort":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v9

    #@12
    .local v9, "sessionToken$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v8

    #@1c
    check-cast v8, Landroid/os/IBinder;

    #@1e
    .line 651
    .local v8, "sessionToken":Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v6

    #@26
    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@28
    .line 652
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@2b
    move-result-object v0

    #@2c
    if-nez v0, :cond_0

    #@2e
    if-eqz p2, :cond_1

    #@30
    .line 653
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    .line 652
    if-eqz v0, :cond_0

    #@3a
    .line 654
    :cond_1
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_0

    #@3e
    .line 657
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v8    # "sessionToken":Landroid/os/IBinder;
    :cond_2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v7

    #@42
    .local v7, "sessionState$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_3

    #@48
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v6

    #@4c
    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@4e
    .line 658
    .restart local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@51
    move-result-object v0

    #@52
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get10(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@55
    move-result v1

    #@56
    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@59
    .line 659
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@5c
    move-result-object v1

    #@5d
    .line 660
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@64
    move-result v5

    #@65
    move-object v0, p0

    #@66
    move-object v4, v3

    #@67
    .line 659
    invoke-direct/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    #@6a
    goto :goto_1

    #@6b
    .line 662
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get2(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    #@6e
    move-result-object v0

    #@6f
    invoke-direct {p0, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@72
    .line 646
    return-void
.end method

.method private buildTvContentRatingSystemListLocked(I)V
    .locals 11
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v6

    #@4
    .line 388
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    #@7
    move-result-object v8

    #@8
    invoke-interface {v8}, Ljava/util/List;->clear()V

    #@b
    .line 390
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v2

    #@11
    .line 391
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    #@13
    const-string/jumbo v8, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    #@16
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    .line 393
    .local v0, "intent":Landroid/content/Intent;
    const/16 v8, 0x80

    #@1b
    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@1e
    move-result-object v8

    #@1f
    .line 392
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v5

    #@23
    .local v5, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_2

    #@29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@2f
    .line 394
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@31
    .line 395
    .local v3, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@33
    .line 396
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@35
    .line 400
    const-string/jumbo v8, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    #@38
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3b
    move-result v7

    #@3c
    .line 401
    .local v7, "xmlResId":I
    if-nez v7, :cond_1

    #@3e
    .line 402
    const-string/jumbo v8, "TvInputManagerService"

    #@41
    new-instance v9, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v10, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    #@49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    .line 404
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4f
    .line 402
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    .line 404
    const-string/jumbo v10, "/"

    #@56
    .line 402
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    .line 404
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@5c
    .line 402
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v9

    #@64
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_0

    #@68
    .line 407
    :cond_1
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    #@6b
    move-result-object v8

    #@6c
    .line 409
    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6e
    .line 408
    invoke-static {v7, v9}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    #@71
    move-result-object v9

    #@72
    .line 407
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_0

    #@76
    .line 386
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v3    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "xmlResId":I
    :cond_2
    return-void
.end method

.method private buildTvInputListLocked(I[Ljava/lang/String;)V
    .locals 23
    .param p1, "userId"    # I
    .param p2, "updatedPackages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 300
    invoke-direct/range {p0 .. p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v19

    #@4
    .line 301
    .local v19, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@7
    move-result-object v20

    #@8
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->clear()V

    #@b
    .line 304
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@f
    move-object/from16 v20, v0

    #@11
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v12

    #@15
    .line 306
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v20, Landroid/content/Intent;

    #@17
    const-string/jumbo v21, "android.media.tv.TvInputService"

    #@1a
    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d
    .line 307
    const/16 v21, 0x84

    #@1f
    .line 305
    move-object/from16 v0, v20

    #@21
    move/from16 v1, v21

    #@23
    move/from16 v2, p1

    #@25
    invoke-virtual {v12, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@28
    move-result-object v16

    #@29
    .line 309
    .local v16, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 310
    .local v9, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v14

    #@32
    .local v14, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v20

    #@36
    if-eqz v20, :cond_3

    #@38
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v13

    #@3c
    check-cast v13, Landroid/content/pm/ResolveInfo;

    #@3e
    .line 311
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@40
    move-object/from16 v17, v0

    #@42
    .line 312
    .local v17, "si":Landroid/content/pm/ServiceInfo;
    const-string/jumbo v20, "android.permission.BIND_TV_INPUT"

    #@45
    move-object/from16 v0, v17

    #@47
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@49
    move-object/from16 v21, v0

    #@4b
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v20

    #@4f
    if-nez v20, :cond_0

    #@51
    .line 313
    const-string/jumbo v20, "TvInputManagerService"

    #@54
    new-instance v21, Ljava/lang/StringBuilder;

    #@56
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v22, "Skipping TV input "

    #@5c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v21

    #@60
    move-object/from16 v0, v17

    #@62
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@64
    move-object/from16 v22, v0

    #@66
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v21

    #@6a
    const-string/jumbo v22, ": it does not require the permission "

    #@6d
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v21

    #@71
    .line 314
    const-string/jumbo v22, "android.permission.BIND_TV_INPUT"

    #@74
    .line 313
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v21

    #@78
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v21

    #@7c
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    goto :goto_0

    #@80
    .line 318
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    #@82
    move-object/from16 v0, v17

    #@84
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@86
    move-object/from16 v20, v0

    #@88
    move-object/from16 v0, v17

    #@8a
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@8c
    move-object/from16 v21, v0

    #@8e
    move-object/from16 v0, v20

    #@90
    move-object/from16 v1, v21

    #@92
    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@95
    .line 319
    .local v3, "component":Landroid/content/ComponentName;
    invoke-static {v12, v3}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    #@98
    move-result v20

    #@99
    if-eqz v20, :cond_2

    #@9b
    .line 320
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@9e
    move-result-object v20

    #@9f
    move-object/from16 v0, v20

    #@a1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    move-result-object v15

    #@a5
    check-cast v15, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@a7
    .line 321
    .local v15, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v15, :cond_1

    #@a9
    .line 324
    new-instance v15, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@ab
    .end local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    const/16 v20, 0x0

    #@ad
    move-object/from16 v0, p0

    #@af
    move/from16 v1, p1

    #@b1
    move-object/from16 v2, v20

    #@b3
    invoke-direct {v15, v0, v3, v1, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState;)V

    #@b6
    .line 325
    .restart local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@b9
    move-result-object v20

    #@ba
    move-object/from16 v0, v20

    #@bc
    invoke-interface {v0, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    .line 326
    move-object/from16 v0, p0

    #@c1
    move/from16 v1, p1

    #@c3
    invoke-direct {v0, v3, v1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@c6
    .line 339
    .end local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :goto_1
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@c9
    move-result-object v20

    #@ca
    move-object/from16 v0, v17

    #@cc
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@ce
    move-object/from16 v21, v0

    #@d0
    invoke-interface/range {v20 .. v21}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d3
    goto/16 :goto_0

    #@d5
    .line 328
    .restart local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_1
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get4(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@d8
    move-result-object v20

    #@d9
    move-object/from16 v0, v20

    #@db
    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@de
    goto :goto_1

    #@df
    .line 332
    .end local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_2
    :try_start_0
    new-instance v20, Landroid/media/tv/TvInputInfo$Builder;

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@e5
    move-object/from16 v21, v0

    #@e7
    move-object/from16 v0, v20

    #@e9
    move-object/from16 v1, v21

    #@eb
    invoke-direct {v0, v1, v13}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    #@ee
    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    #@f1
    move-result-object v5

    #@f2
    .line 333
    .local v5, "info":Landroid/media/tv/TvInputInfo;
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f5
    goto :goto_1

    #@f6
    .line 334
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    :catch_0
    move-exception v4

    #@f7
    .line 335
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "TvInputManagerService"

    #@fa
    new-instance v21, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v22, "failed to load TV input "

    #@102
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v21

    #@106
    move-object/from16 v0, v17

    #@108
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@10a
    move-object/from16 v22, v0

    #@10c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v21

    #@110
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v21

    #@114
    move-object/from16 v0, v20

    #@116
    move-object/from16 v1, v21

    #@118
    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11b
    goto/16 :goto_0

    #@11d
    .line 342
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    #@11f
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@122
    .line 343
    .local v10, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@125
    move-result-object v6

    #@126
    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@129
    move-result v20

    #@12a
    if-eqz v20, :cond_5

    #@12c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12f
    move-result-object v5

    #@130
    check-cast v5, Landroid/media/tv/TvInputInfo;

    #@132
    .line 347
    .restart local v5    # "info":Landroid/media/tv/TvInputInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@135
    move-result-object v20

    #@136
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@139
    move-result-object v21

    #@13a
    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13d
    move-result-object v11

    #@13e
    check-cast v11, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@140
    .line 348
    .local v11, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v11, :cond_4

    #@142
    .line 349
    new-instance v11, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@144
    .end local v11    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    const/16 v20, 0x0

    #@146
    move-object/from16 v0, v20

    #@148
    invoke-direct {v11, v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    #@14b
    .line 351
    .restart local v11    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_4
    invoke-static {v11, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-set0(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    #@14e
    .line 352
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@151
    move-result-object v20

    #@152
    move-object/from16 v0, v20

    #@154
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@157
    goto :goto_2

    #@158
    .line 355
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    .end local v11    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_5
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@15b
    move-result-object v20

    #@15c
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15f
    move-result-object v8

    #@160
    .local v8, "inputId$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@163
    move-result v20

    #@164
    if-eqz v20, :cond_9

    #@166
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@169
    move-result-object v7

    #@16a
    check-cast v7, Ljava/lang/String;

    #@16c
    .line 356
    .local v7, "inputId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@16f
    move-result-object v20

    #@170
    move-object/from16 v0, v20

    #@172
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@175
    move-result v20

    #@176
    if-nez v20, :cond_7

    #@178
    .line 357
    move-object/from16 v0, p0

    #@17a
    move-object/from16 v1, v19

    #@17c
    invoke-direct {v0, v1, v7}, Lcom/android/server/tv/TvInputManagerService;->notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    #@17f
    goto :goto_3

    #@180
    .line 358
    :cond_7
    if-eqz p2, :cond_6

    #@182
    .line 360
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@185
    move-result-object v20

    #@186
    check-cast v20, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@188
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@18b
    move-result-object v20

    #@18c
    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@18f
    move-result-object v3

    #@190
    .line 361
    .restart local v3    # "component":Landroid/content/ComponentName;
    const/16 v20, 0x0

    #@192
    move-object/from16 v0, p2

    #@194
    array-length v0, v0

    #@195
    move/from16 v21, v0

    #@197
    :goto_4
    move/from16 v0, v20

    #@199
    move/from16 v1, v21

    #@19b
    if-ge v0, v1, :cond_6

    #@19d
    aget-object v18, p2, v20

    #@19f
    .line 362
    .local v18, "updatedPackage":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1a2
    move-result-object v22

    #@1a3
    move-object/from16 v0, v22

    #@1a5
    move-object/from16 v1, v18

    #@1a7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1aa
    move-result v22

    #@1ab
    if-eqz v22, :cond_8

    #@1ad
    .line 363
    move-object/from16 v0, p0

    #@1af
    move/from16 v1, p1

    #@1b1
    invoke-direct {v0, v3, v1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@1b4
    .line 364
    move-object/from16 v0, p0

    #@1b6
    move-object/from16 v1, v19

    #@1b8
    invoke-direct {v0, v1, v7}, Lcom/android/server/tv/TvInputManagerService;->notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    #@1bb
    goto :goto_3

    #@1bc
    .line 361
    :cond_8
    add-int/lit8 v20, v20, 0x1

    #@1be
    goto :goto_4

    #@1bf
    .line 371
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v7    # "inputId":Ljava/lang/String;
    .end local v18    # "updatedPackage":Ljava/lang/String;
    :cond_9
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1c2
    move-result-object v20

    #@1c3
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1c6
    move-result-object v20

    #@1c7
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ca
    move-result-object v8

    #@1cb
    :cond_a
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@1ce
    move-result v20

    #@1cf
    if-eqz v20, :cond_c

    #@1d1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d4
    move-result-object v7

    #@1d5
    check-cast v7, Ljava/lang/String;

    #@1d7
    .line 372
    .restart local v7    # "inputId":Ljava/lang/String;
    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1da
    move-result v20

    #@1db
    if-nez v20, :cond_a

    #@1dd
    .line 373
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1e0
    move-result-object v20

    #@1e1
    move-object/from16 v0, v20

    #@1e3
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e6
    move-result-object v20

    #@1e7
    check-cast v20, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@1e9
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@1ec
    move-result-object v5

    #@1ed
    .line 374
    .restart local v5    # "info":Landroid/media/tv/TvInputInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1f0
    move-result-object v20

    #@1f1
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@1f4
    move-result-object v21

    #@1f5
    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f8
    move-result-object v15

    #@1f9
    check-cast v15, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@1fb
    .line 375
    .restart local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v15, :cond_b

    #@1fd
    .line 376
    move-object/from16 v0, p0

    #@1ff
    move/from16 v1, p1

    #@201
    invoke-direct {v0, v15, v7, v1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    #@204
    .line 378
    :cond_b
    move-object/from16 v0, p0

    #@206
    move-object/from16 v1, v19

    #@208
    invoke-direct {v0, v1, v7}, Lcom/android/server/tv/TvInputManagerService;->notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    #@20b
    goto :goto_5

    #@20c
    .line 382
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    .end local v7    # "inputId":Ljava/lang/String;
    .end local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_c
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@20f
    move-result-object v20

    #@210
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    #@213
    .line 383
    move-object/from16 v0, v19

    #@215
    invoke-static {v0, v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set0(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;

    #@218
    .line 299
    return-void
.end method

.method private clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .locals 7
    .param p1, "state"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@0
    .prologue
    .line 461
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@3
    move-result-object v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 463
    :try_start_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@9
    move-result-object v4

    #@a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@d
    move-result v5

    #@e
    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@11
    .line 469
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get10(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@14
    move-result v4

    #@15
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@18
    move-result-object v3

    #@19
    .line 470
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v2

    #@25
    .local v2, "sessionState$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_2

    #@2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@31
    .line 471
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@34
    move-result-object v4

    #@35
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@38
    move-result-object v5

    #@39
    if-ne v4, v5, :cond_1

    #@3b
    .line 472
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@3e
    move-result-object v4

    #@3f
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get10(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@42
    move-result v5

    #@43
    const/16 v6, 0x3e8

    #@45
    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V

    #@48
    .line 474
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@4f
    move-result v5

    #@50
    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@53
    goto :goto_1

    #@54
    .line 475
    :catch_0
    move-exception v0

    #@55
    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TvInputManagerService"

    #@58
    const-string/jumbo v5, "error in onSessionReleased"

    #@5b
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    goto :goto_1

    #@5f
    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v2    # "sessionState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_1
    move-exception v0

    #@60
    .line 465
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TvInputManagerService"

    #@63
    const-string/jumbo v5, "error in onSessionReleased"

    #@66
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    goto :goto_0

    #@6a
    .line 480
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sessionState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@6d
    move-result-object v4

    #@6e
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get10(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@71
    move-result v5

    #@72
    invoke-direct {p0, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@75
    .line 460
    return-void
.end method

.method private createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    .locals 12
    .param p1, "service"    # Landroid/media/tv/ITvInputService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    .line 667
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@5
    move-result-object v10

    #@6
    .line 668
    .local v10, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v9

    #@e
    check-cast v9, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@10
    .line 672
    .local v9, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@17
    move-result-object v7

    #@18
    .line 675
    .local v7, "channels":[Landroid/view/InputChannel;
    new-instance v6, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    #@1a
    invoke-direct {v6, p0, v9, v7}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    #@1d
    .line 679
    .local v6, "callback":Landroid/media/tv/ITvInputSessionCallback;
    :try_start_0
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 680
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-interface {p1, v6, v0}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 690
    :goto_0
    aget-object v0, v7, v11

    #@2c
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@2f
    .line 666
    return-void

    #@30
    .line 682
    :cond_0
    const/4 v0, 0x1

    #@31
    :try_start_1
    aget-object v0, v7, v0

    #@33
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-interface {p1, v0, v6, v1}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@3a
    goto :goto_0

    #@3b
    .line 684
    :catch_0
    move-exception v8

    #@3c
    .line 685
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "TvInputManagerService"

    #@3f
    const-string/jumbo v1, "error in createSession"

    #@42
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 686
    invoke-direct {p0, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@48
    .line 687
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 688
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@53
    move-result v5

    #@54
    move-object v0, p0

    #@55
    move-object v4, v3

    #@56
    .line 687
    invoke-direct/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    #@59
    goto :goto_0
.end method

.method private getContentResolverForUser(I)Landroid/content/ContentResolver;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 529
    new-instance v2, Landroid/os/UserHandle;

    #@2
    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@5
    .line 532
    .local v2, "user":Landroid/os/UserHandle;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v4, "android"

    #@a
    const/4 v5, 0x0

    #@b
    invoke-virtual {v3, v4, v5, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v0

    #@f
    .line 537
    .local v0, "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 533
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    #@15
    .line 534
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "TvInputManagerService"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "failed to create package context as user "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 535
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@31
    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 541
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    #@9
    .line 542
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_0

    #@b
    .line 543
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    #@d
    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@f
    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$UserState;)V

    #@12
    .line 544
    .restart local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@17
    .line 546
    :cond_0
    return-object v0
.end method

.method private getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 550
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v1

    #@4
    .line 551
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@e
    .line 552
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v0, :cond_0

    #@10
    .line 553
    new-instance v2, Ljava/lang/IllegalStateException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Service state not found for "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, " (userId="

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 554
    const-string/jumbo v4, ")"

    #@30
    .line 553
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 556
    :cond_0
    return-object v0
.end method

.method private getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 574
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 4
    .param p1, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@0
    .prologue
    .line 578
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@3
    move-result-object v0

    #@4
    .line 579
    .local v0, "session":Landroid/media/tv/ITvInputSession;
    if-nez v0, :cond_0

    #@6
    .line 580
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Session not yet created for token "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 581
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 583
    :cond_0
    return-object v0
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .locals 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 560
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v1

    #@4
    .line 561
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@e
    .line 562
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v0, :cond_0

    #@10
    .line 563
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Session state not found for token "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v2, v3}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 566
    :cond_0
    const/16 v2, 0x3e8

    #@2c
    if-eq p2, v2, :cond_1

    #@2e
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get0(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@31
    move-result v2

    #@32
    if-eq p2, v2, :cond_1

    #@34
    .line 567
    new-instance v2, Ljava/lang/SecurityException;

    #@36
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "Illegal access to the session with token "

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 568
    const-string/jumbo v4, " from uid "

    #@49
    .line 567
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2

    #@59
    .line 570
    :cond_1
    return-object v0
.end method

.method private static hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 295
    const-string/jumbo v1, "android.permission.TV_INPUT_HARDWARE"

    #@4
    .line 296
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 295
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method private notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 784
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    #@14
    .line 786
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 787
    :catch_0
    move-exception v2

    #@19
    .line 788
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@1c
    const-string/jumbo v4, "failed to report added input to callback"

    #@1f
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0

    #@23
    .line 780
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 797
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    #@14
    .line 799
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 800
    :catch_0
    move-exception v2

    #@19
    .line 801
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@1c
    const-string/jumbo v4, "failed to report removed input to callback"

    #@1f
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0

    #@23
    .line 793
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "targetCallback"    # Landroid/media/tv/ITvInputManagerCallback;

    #@0
    .prologue
    .line 825
    if-nez p4, :cond_0

    #@2
    .line 826
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    #@16
    .line 828
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 829
    :catch_0
    move-exception v2

    #@1b
    .line 830
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@1e
    const-string/jumbo v4, "failed to report state change to callback"

    #@21
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0

    #@25
    .line 835
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@28
    .line 820
    :cond_1
    :goto_1
    return-void

    #@29
    .line 836
    :catch_1
    move-exception v2

    #@2a
    .line 837
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@2d
    const-string/jumbo v4, "failed to report state change to callback"

    #@30
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    goto :goto_1
.end method

.method private notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 810
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    #@14
    .line 812
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 813
    :catch_0
    move-exception v2

    #@19
    .line 814
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@1c
    const-string/jumbo v4, "failed to report updated input to callback"

    #@1f
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0

    #@23
    .line 806
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 173
    new-instance v6, Lcom/android/server/tv/TvInputManagerService$1;

    #@3
    invoke-direct {v6, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    #@6
    .line 276
    .local v6, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@8
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@e
    .line 278
    new-instance v3, Landroid/content/IntentFilter;

    #@10
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@13
    .line 279
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@16
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@19
    .line 280
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@1c
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 281
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@21
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$2;

    #@23
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    #@26
    .line 291
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    move-object v5, v4

    #@29
    .line 281
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2c
    .line 172
    return-void
.end method

.method private releaseSessionLocked(Landroid/os/IBinder;II)V
    .locals 6
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 703
    const/4 v1, 0x0

    #@2
    .line 705
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@5
    move-result-object v1

    #@6
    .line 706
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@9
    move-result-object v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 707
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@f
    move-result-object v2

    #@10
    .line 708
    .local v2, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    #@13
    move-result-object v3

    #@14
    if-ne p1, v3, :cond_0

    #@16
    .line 709
    const/4 v3, 0x0

    #@17
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    #@1a
    .line 711
    :cond_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 716
    .end local v2    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    if-eqz v1, :cond_2

    #@23
    .line 717
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@26
    .line 720
    .end local v1    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@29
    .line 702
    return-void

    #@2a
    .line 713
    :catch_0
    move-exception v0

    #@2b
    .line 714
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "TvInputManagerService"

    #@2e
    const-string/jumbo v4, "error in releaseSession"

    #@31
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 716
    if-eqz v1, :cond_2

    #@36
    .line 717
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@39
    goto :goto_0

    #@3a
    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3b
    .line 716
    if-eqz v1, :cond_3

    #@3d
    .line 717
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@40
    .line 715
    :cond_3
    throw v3
.end method

.method private removeSessionStateLocked(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 724
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@4
    move-result-object v4

    #@5
    .line 725
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    #@8
    move-result-object v5

    #@9
    if-ne p1, v5, :cond_0

    #@b
    .line 729
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@e
    .line 733
    :cond_0
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@11
    move-result-object v5

    #@12
    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@18
    .line 735
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v3, :cond_1

    #@1a
    .line 736
    return-void

    #@1b
    .line 741
    :cond_1
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@22
    move-result-object v6

    #@23
    invoke-interface {v6}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v6

    #@27
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ClientState;

    #@2d
    .line 742
    .local v1, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v1, :cond_2

    #@2f
    .line 743
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    #@32
    move-result-object v5

    #@33
    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@36
    .line 744
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    .line 745
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@3f
    move-result-object v5

    #@40
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@43
    move-result-object v6

    #@44
    invoke-interface {v6}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    #@47
    move-result-object v6

    #@48
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 749
    :cond_2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@4e
    move-result-object v5

    #@4f
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    #@52
    move-result-object v6

    #@53
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@59
    .line 750
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v2, :cond_3

    #@5b
    .line 751
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@5e
    move-result-object v5

    #@5f
    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@62
    .line 753
    :cond_3
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    #@65
    move-result-object v5

    #@66
    invoke-direct {p0, v5, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@69
    .line 756
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@6c
    move-result-object v0

    #@6d
    .line 757
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6f
    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@72
    move-result-wide v6

    #@73
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@76
    move-result-object v5

    #@77
    iput-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@79
    .line 759
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@7b
    const/4 v6, 0x2

    #@7c
    invoke-virtual {v5, v6, v0}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    #@83
    .line 723
    return-void
.end method

.method private removeUser(I)V
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 484
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 485
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v5

    #@9
    check-cast v5, Lcom/android/server/tv/TvInputManagerService$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 486
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v5, :cond_0

    #@d
    monitor-exit v7

    #@e
    .line 487
    return-void

    #@f
    .line 490
    :cond_0
    :try_start_1
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@12
    move-result-object v6

    #@13
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@16
    move-result-object v6

    #@17
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v4

    #@1b
    .local v4, "state$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_2

    #@21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@27
    .line 491
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v6

    #@2b
    if-eqz v6, :cond_1

    #@2d
    .line 493
    :try_start_2
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@30
    move-result-object v6

    #@31
    invoke-interface {v6}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 494
    :catch_0
    move-exception v0

    #@36
    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v6, "TvInputManagerService"

    #@39
    const-string/jumbo v8, "error in release"

    #@3c
    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "state$iterator":Ljava/util/Iterator;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    #@41
    monitor-exit v7

    #@42
    throw v6

    #@43
    .line 499
    .restart local v4    # "state$iterator":Ljava/util/Iterator;
    .restart local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    :try_start_4
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@46
    move-result-object v6

    #@47
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    #@4a
    .line 502
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@4d
    move-result-object v6

    #@4e
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@51
    move-result-object v6

    #@52
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v2

    #@56
    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_5

    #@5c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@62
    .line 503
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@65
    move-result-object v6

    #@66
    if-eqz v6, :cond_3

    #@68
    .line 504
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6b
    move-result-object v6

    #@6c
    if-eqz v6, :cond_4

    #@6e
    .line 506
    :try_start_5
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@71
    move-result-object v6

    #@72
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@75
    move-result-object v8

    #@76
    invoke-interface {v6, v8}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@79
    .line 511
    :cond_4
    :goto_2
    :try_start_6
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@7b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get3(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {v6, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@82
    goto :goto_1

    #@83
    .line 507
    :catch_1
    move-exception v0

    #@84
    .line 508
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "TvInputManagerService"

    #@87
    const-string/jumbo v8, "error in unregisterCallback"

    #@8a
    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8d
    goto :goto_2

    #@8e
    .line 514
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_5
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@91
    move-result-object v6

    #@92
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    #@95
    .line 517
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@98
    move-result-object v6

    #@99
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    #@9c
    .line 518
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@9f
    move-result-object v6

    #@a0
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    #@a3
    .line 519
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    #@a6
    move-result-object v6

    #@a7
    invoke-interface {v6}, Ljava/util/List;->clear()V

    #@aa
    .line 520
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@ad
    move-result-object v6

    #@ae
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    #@b1
    .line 521
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@b4
    move-result-object v6

    #@b5
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    #@b8
    .line 522
    const/4 v6, 0x0

    #@b9
    invoke-static {v5, v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@bc
    .line 524
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@be
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c1
    monitor-exit v7

    #@c2
    .line 483
    return-void
.end method

.method private resolveCallingUserId(IIILjava/lang/String;)I
    .locals 7
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "requestedUserId"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 589
    const/4 v6, 0x0

    #@2
    move v0, p1

    #@3
    move v1, p2

    #@4
    move v2, p3

    #@5
    move v4, v3

    #@6
    move-object v5, p4

    #@7
    .line 588
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 3
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Landroid/os/IBinder;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "seq"    # I

    #@0
    .prologue
    .line 696
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 694
    :goto_0
    return-void

    #@4
    .line 697
    :catch_0
    move-exception v0

    #@5
    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputManagerService"

    #@8
    const-string/jumbo v2, "error in onSessionCreated"

    #@b
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    goto :goto_0
.end method

.method private setMainLocked(Landroid/os/IBinder;ZII)V
    .locals 6
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "isMain"    # Z
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 764
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@3
    move-result-object v3

    #@4
    .line 765
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@7
    move-result-object v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 766
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@d
    move-result-object v4

    #@e
    .line 767
    const/16 v5, 0x3e8

    #@10
    .line 766
    invoke-direct {p0, v4, v5, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@13
    move-result-object v3

    #@14
    .line 769
    :cond_0
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    #@17
    move-result-object v4

    #@18
    invoke-direct {p0, v4, p4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@1b
    move-result-object v1

    #@1c
    .line 770
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_1

    #@22
    .line 771
    return-void

    #@23
    .line 773
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@26
    move-result-object v2

    #@27
    .line 774
    .local v2, "session":Landroid/media/tv/ITvInputSession;
    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 762
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "session":Landroid/media/tv/ITvInputSession;
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_0
    return-void

    #@2b
    .line 775
    :catch_0
    move-exception v0

    #@2c
    .line 776
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "TvInputManagerService"

    #@2f
    const-string/jumbo v5, "error in setMain"

    #@32
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0
.end method

.method private setStateLocked(Ljava/lang/String;II)V
    .locals 7
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 864
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@4
    move-result-object v3

    #@5
    .line 865
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@f
    .line 866
    .local v0, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@12
    move-result-object v4

    #@13
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@21
    .line 867
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    #@24
    move-result v1

    #@25
    .line 868
    .local v1, "oldState":I
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-set1(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I

    #@28
    .line 869
    if-eqz v2, :cond_1

    #@2a
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@2d
    move-result-object v4

    #@2e
    if-nez v4, :cond_1

    #@30
    .line 870
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@33
    move-result-object v4

    #@34
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_0

    #@3a
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@3d
    move-result v4

    #@3e
    .line 869
    if-eqz v4, :cond_1

    #@40
    .line 872
    :cond_0
    return-void

    #@41
    .line 874
    :cond_1
    if-eq v1, p2, :cond_2

    #@43
    .line 875
    invoke-direct {p0, v3, p1, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    #@46
    .line 863
    :cond_2
    return-void
.end method

.method private switchUser(I)V
    .locals 12
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 414
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 415
    :try_start_0
    iget v8, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v8, p1, :cond_0

    #@7
    monitor-exit v9

    #@8
    .line 416
    return-void

    #@9
    .line 418
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@b
    iget v10, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@d
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v7

    #@11
    check-cast v7, Lcom/android/server/tv/TvInputManagerService$UserState;

    #@13
    .line 419
    .local v7, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v6, Ljava/util/ArrayList;

    #@15
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 420
    .local v6, "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1b
    move-result-object v8

    #@1c
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1f
    move-result-object v8

    #@20
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v5

    #@24
    .local v5, "sessionState$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_2

    #@2a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@30
    .line 421
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@33
    move-result-object v8

    #@34
    if-eqz v8, :cond_1

    #@36
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    #@39
    move-result v8

    #@3a
    if-nez v8, :cond_1

    #@3c
    .line 422
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 414
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v5    # "sessionState$iterator":Ljava/util/Iterator;
    .end local v6    # "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v7    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v8

    #@41
    monitor-exit v9

    #@42
    throw v8

    #@43
    .line 425
    .restart local v5    # "sessionState$iterator":Ljava/util/Iterator;
    .restart local v6    # "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .restart local v7    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    :try_start_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v5

    #@47
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v8

    #@4b
    if-eqz v8, :cond_3

    #@4d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v4

    #@51
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    .line 427
    .restart local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_start_3
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@56
    move-result-object v8

    #@57
    invoke-interface {v8}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5a
    .line 431
    :goto_2
    :try_start_4
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    #@5d
    goto :goto_1

    #@5e
    .line 428
    :catch_0
    move-exception v1

    #@5f
    .line 429
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "TvInputManagerService"

    #@62
    const-string/jumbo v10, "error in release"

    #@65
    invoke-static {v8, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    goto :goto_2

    #@69
    .line 434
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@6c
    move-result-object v8

    #@6d
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@70
    move-result-object v8

    #@71
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object v2

    #@75
    .line 435
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v8

    #@79
    .line 434
    if-eqz v8, :cond_6

    #@7b
    .line 436
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    check-cast v0, Landroid/content/ComponentName;

    #@81
    .line 437
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@84
    move-result-object v8

    #@85
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    move-result-object v3

    #@89
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@8b
    .line 438
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v3, :cond_4

    #@8d
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@90
    move-result-object v8

    #@91
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@94
    move-result v8

    #@95
    if-eqz v8, :cond_4

    #@97
    .line 439
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9a
    move-result-object v8

    #@9b
    if-eqz v8, :cond_5

    #@9d
    .line 441
    :try_start_5
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@a0
    move-result-object v8

    #@a1
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@a4
    move-result-object v10

    #@a5
    invoke-interface {v8, v10}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a8
    .line 446
    :cond_5
    :goto_4
    :try_start_6
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@aa
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get3(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    #@ad
    move-result-object v10

    #@ae
    invoke-virtual {v8, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@b1
    .line 447
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@b4
    goto :goto_3

    #@b5
    .line 442
    :catch_1
    move-exception v1

    #@b6
    .line 443
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "TvInputManagerService"

    #@b9
    const-string/jumbo v10, "error in unregisterCallback"

    #@bc
    invoke-static {v8, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bf
    goto :goto_4

    #@c0
    .line 451
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_6
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@c2
    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@c5
    .line 453
    const/4 v8, 0x0

    #@c6
    invoke-direct {p0, p1, v8}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    #@c9
    .line 454
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    #@cc
    .line 455
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@ce
    .line 456
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    #@d1
    move-result-object v10

    #@d2
    .line 455
    const/4 v11, 0x3

    #@d3
    invoke-virtual {v8, v11, v10}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d6
    move-result-object v8

    #@d7
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@da
    monitor-exit v9

    #@db
    .line 413
    return-void
.end method

.method private updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 593
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v3

    #@4
    .line 594
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@e
    .line 595
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v1, :cond_0

    #@10
    .line 596
    return-void

    #@11
    .line 598
    :cond_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 599
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_1

    #@21
    .line 601
    return-void

    #@22
    .line 603
    :cond_1
    const/4 v4, 0x0

    #@23
    invoke-static {v1, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set2(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    #@26
    .line 607
    :cond_2
    iget v4, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@28
    if-ne p2, v4, :cond_4

    #@2a
    .line 608
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_3

    #@34
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@37
    move-result v2

    #@38
    .line 617
    :goto_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@3b
    move-result-object v4

    #@3c
    if-nez v4, :cond_8

    #@3e
    if-eqz v2, :cond_8

    #@40
    .line 620
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get0(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_6

    #@46
    .line 623
    return-void

    #@47
    .line 608
    :cond_3
    const/4 v2, 0x1

    #@48
    .local v2, "shouldBind":Z
    goto :goto_0

    #@49
    .line 614
    .end local v2    # "shouldBind":Z
    :cond_4
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@4c
    move-result-object v4

    #@4d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_5

    #@53
    const/4 v2, 0x0

    #@54
    .restart local v2    # "shouldBind":Z
    goto :goto_0

    #@55
    .end local v2    # "shouldBind":Z
    :cond_5
    const/4 v2, 0x1

    #@56
    .restart local v2    # "shouldBind":Z
    goto :goto_0

    #@57
    .line 629
    .end local v2    # "shouldBind":Z
    :cond_6
    new-instance v4, Landroid/content/Intent;

    #@59
    const-string/jumbo v5, "android.media.tv.TvInputService"

    #@5c
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5f
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@62
    move-result-object v0

    #@63
    .line 630
    .local v0, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@65
    .line 631
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get3(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    #@68
    move-result-object v5

    #@69
    .line 633
    new-instance v6, Landroid/os/UserHandle;

    #@6b
    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@6e
    .line 632
    const v7, 0x2000001

    #@71
    .line 630
    invoke-virtual {v4, v0, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@74
    move-result v4

    #@75
    invoke-static {v1, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set0(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    #@78
    .line 592
    .end local v0    # "i":Landroid/content/Intent;
    :cond_7
    :goto_1
    return-void

    #@79
    .line 634
    :cond_8
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@7c
    move-result-object v4

    #@7d
    if-eqz v4, :cond_7

    #@7f
    if-nez v2, :cond_7

    #@81
    .line 640
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@83
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get3(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@8a
    .line 641
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@8d
    move-result-object v4

    #@8e
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    goto :goto_1
.end method

.method private updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .locals 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 846
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 847
    .local v3, "inputId":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@7
    move-result-object v5

    #@8
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@e
    .line 848
    .local v4, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v4, :cond_0

    #@10
    .line 849
    const-string/jumbo v5, "TvInputManagerService"

    #@13
    new-instance v6, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v7, "failed to set input info - unknown input id "

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 850
    return-void

    #@2b
    .line 852
    :cond_0
    invoke-static {v4, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-set0(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    #@2e
    .line 854
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@31
    move-result-object v5

    #@32
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v1

    #@36
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_1

    #@3c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    #@42
    .line 856
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 857
    :catch_0
    move-exception v2

    #@47
    .line 858
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "TvInputManagerService"

    #@4a
    const-string/jumbo v6, "failed to report updated input info to callback"

    #@4d
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    goto :goto_0

    #@51
    .line 842
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 149
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 150
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V

    #@7
    .line 157
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    #@c
    .line 148
    return-void

    #@d
    .line 151
    :cond_1
    const/16 v0, 0x258

    #@f
    if-ne p1, v0, :cond_0

    #@11
    .line 152
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v1

    #@14
    .line 153
    :try_start_0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@16
    const/4 v2, 0x0

    #@17
    invoke-direct {p0, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    #@1a
    .line 154
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@1c
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    goto :goto_0

    #@21
    .line 152
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 144
    const-string/jumbo v0, "tv_input"

    #@3
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$BinderService;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 143
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 164
    :try_start_0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v0, p1, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 165
    return-void

    #@9
    .line 167
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {p0, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    #@f
    .line 168
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@11
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 161
    return-void

    #@16
    .line 163
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method
