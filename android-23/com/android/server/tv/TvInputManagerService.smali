.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputManagerService$BinderService;,
        Lcom/android/server/tv/TvInputManagerService$UserState;,
        Lcom/android/server/tv/TvInputManagerService$ClientState;,
        Lcom/android/server/tv/TvInputManagerService$ServiceState;,
        Lcom/android/server/tv/TvInputManagerService$TvInputState;,
        Lcom/android/server/tv/TvInputManagerService$SessionState;,
        Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;,
        Lcom/android/server/tv/TvInputManagerService$ServiceCallback;,
        Lcom/android/server/tv/TvInputManagerService$SessionCallback;,
        Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;,
        Lcom/android/server/tv/TvInputManagerService$HardwareListener;,
        Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;
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

.method static synthetic -wrap11(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
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

.method static synthetic -wrap12(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
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

.method static synthetic -wrap13(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
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

.method static synthetic -wrap14(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
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

.method static synthetic -wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
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

.method static synthetic -wrap18(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
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

.method static synthetic -wrap19(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

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

.method static synthetic -wrap20(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

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
    .line 111
    const-string/jumbo v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    .line 110
    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    #@9
    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 117
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@a
    .line 120
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@d
    .line 123
    new-instance v0, Landroid/util/SparseArray;

    #@f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@14
    .line 130
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@16
    .line 131
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v1

    #@1e
    .line 132
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@25
    move-result-object v2

    #@26
    .line 131
    invoke-direct {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    #@29
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@2b
    .line 133
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
    .line 135
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@3a
    monitor-enter v1

    #@3b
    .line 136
    :try_start_0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@3d
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v1

    #@41
    .line 127
    return-void

    #@42
    .line 135
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
    .line 574
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@4
    move-result-object v11

    #@5
    .line 575
    .local v11, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v10, Ljava/util/ArrayList;

    #@7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 576
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
    .line 577
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
    .line 578
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@2b
    move-result-object v0

    #@2c
    if-nez v0, :cond_0

    #@2e
    if-eqz p2, :cond_1

    #@30
    .line 579
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    .line 578
    if-eqz v0, :cond_0

    #@3e
    .line 580
    :cond_1
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 583
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v8    # "sessionToken":Landroid/os/IBinder;
    :cond_2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v7

    #@46
    .local v7, "sessionState$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_3

    #@4c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v6

    #@50
    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@52
    .line 584
    .restart local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@55
    move-result-object v0

    #@56
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@59
    move-result v1

    #@5a
    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@5d
    .line 585
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@60
    move-result-object v1

    #@61
    .line 586
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@6c
    move-result v5

    #@6d
    move-object v0, p0

    #@6e
    move-object v4, v3

    #@6f
    .line 585
    invoke-direct/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    #@72
    goto :goto_1

    #@73
    .line 588
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get2(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    #@76
    move-result-object v0

    #@77
    invoke-direct {p0, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@7a
    .line 572
    return-void
.end method

.method private buildTvContentRatingSystemListLocked(I)V
    .locals 11
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v6

    #@4
    .line 372
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    #@7
    move-result-object v8

    #@8
    invoke-interface {v8}, Ljava/util/List;->clear()V

    #@b
    .line 374
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v2

    #@11
    .line 375
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    #@13
    const-string/jumbo v8, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    #@16
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    .line 377
    .local v0, "intent":Landroid/content/Intent;
    const/16 v8, 0x80

    #@1b
    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@1e
    move-result-object v8

    #@1f
    .line 376
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
    .line 378
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@31
    .line 379
    .local v3, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@33
    .line 380
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@35
    .line 384
    const-string/jumbo v8, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    #@38
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3b
    move-result v7

    #@3c
    .line 385
    .local v7, "xmlResId":I
    if-nez v7, :cond_1

    #@3e
    .line 386
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
    .line 388
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4f
    .line 386
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    .line 388
    const-string/jumbo v10, "/"

    #@56
    .line 386
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    .line 388
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@5c
    .line 386
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
    .line 391
    :cond_1
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    #@6b
    move-result-object v8

    #@6c
    .line 393
    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6e
    .line 392
    invoke-static {v7, v9}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    #@71
    move-result-object v9

    #@72
    .line 391
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_0

    #@76
    .line 370
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
    .line 284
    invoke-direct/range {p0 .. p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v19

    #@4
    .line 285
    .local v19, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@7
    move-result-object v20

    #@8
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->clear()V

    #@b
    .line 288
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@f
    move-object/from16 v20, v0

    #@11
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v11

    #@15
    .line 290
    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v20, Landroid/content/Intent;

    #@17
    const-string/jumbo v21, "android.media.tv.TvInputService"

    #@1a
    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d
    .line 291
    const/16 v21, 0x84

    #@1f
    .line 289
    move-object/from16 v0, v20

    #@21
    move/from16 v1, v21

    #@23
    move/from16 v2, p1

    #@25
    invoke-virtual {v11, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@28
    move-result-object v15

    #@29
    .line 293
    .local v15, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 294
    .local v9, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v13

    #@32
    .local v13, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v20

    #@36
    if-eqz v20, :cond_3

    #@38
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v12

    #@3c
    check-cast v12, Landroid/content/pm/ResolveInfo;

    #@3e
    .line 295
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@40
    move-object/from16 v16, v0

    #@42
    .line 296
    .local v16, "si":Landroid/content/pm/ServiceInfo;
    const-string/jumbo v20, "android.permission.BIND_TV_INPUT"

    #@45
    move-object/from16 v0, v16

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
    .line 297
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
    move-object/from16 v0, v16

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
    .line 298
    const-string/jumbo v22, "android.permission.BIND_TV_INPUT"

    #@74
    .line 297
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
    .line 302
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    #@82
    move-object/from16 v0, v16

    #@84
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@86
    move-object/from16 v20, v0

    #@88
    move-object/from16 v0, v16

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
    .line 303
    .local v3, "component":Landroid/content/ComponentName;
    invoke-static {v11, v3}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    #@98
    move-result v20

    #@99
    if-eqz v20, :cond_2

    #@9b
    .line 304
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@9e
    move-result-object v20

    #@9f
    move-object/from16 v0, v20

    #@a1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    move-result-object v14

    #@a5
    check-cast v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@a7
    .line 305
    .local v14, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v14, :cond_1

    #@a9
    .line 309
    new-instance v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@ab
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    const/16 v20, 0x0

    #@ad
    move-object/from16 v0, p0

    #@af
    move/from16 v1, p1

    #@b1
    move-object/from16 v2, v20

    #@b3
    invoke-direct {v14, v0, v3, v1, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState;)V

    #@b6
    .line 310
    .restart local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@b9
    move-result-object v20

    #@ba
    move-object/from16 v0, v20

    #@bc
    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    .line 311
    move-object/from16 v0, p0

    #@c1
    move/from16 v1, p1

    #@c3
    invoke-direct {v0, v3, v1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@c6
    .line 323
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :goto_1
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@c9
    move-result-object v20

    #@ca
    move-object/from16 v0, v16

    #@cc
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@ce
    move-object/from16 v21, v0

    #@d0
    invoke-interface/range {v20 .. v21}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d3
    goto/16 :goto_0

    #@d5
    .line 313
    .restart local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_1
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get4(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@d8
    move-result-object v20

    #@d9
    move-object/from16 v0, v20

    #@db
    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@de
    goto :goto_1

    #@df
    .line 317
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@e3
    move-object/from16 v20, v0

    #@e5
    move-object/from16 v0, v20

    #@e7
    invoke-static {v0, v12}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/media/tv/TvInputInfo;

    #@ea
    move-result-object v20

    #@eb
    move-object/from16 v0, v20

    #@ed
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f0
    goto :goto_1

    #@f1
    .line 318
    :catch_0
    move-exception v4

    #@f2
    .line 319
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "TvInputManagerService"

    #@f5
    new-instance v21, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v22, "failed to load TV input "

    #@fd
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v21

    #@101
    move-object/from16 v0, v16

    #@103
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@105
    move-object/from16 v22, v0

    #@107
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v21

    #@10b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v21

    #@10f
    move-object/from16 v0, v20

    #@111
    move-object/from16 v1, v21

    #@113
    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@116
    goto/16 :goto_0

    #@118
    .line 326
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "si":Landroid/content/pm/ServiceInfo;
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    #@11a
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@11d
    .line 327
    .local v10, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@120
    move-result-object v6

    #@121
    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@124
    move-result v20

    #@125
    if-eqz v20, :cond_5

    #@127
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12a
    move-result-object v5

    #@12b
    check-cast v5, Landroid/media/tv/TvInputInfo;

    #@12d
    .line 331
    .local v5, "info":Landroid/media/tv/TvInputInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@130
    move-result-object v20

    #@131
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@134
    move-result-object v21

    #@135
    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    move-result-object v17

    #@139
    check-cast v17, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@13b
    .line 332
    .local v17, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v17, :cond_4

    #@13d
    .line 333
    new-instance v17, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@13f
    .end local v17    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    const/16 v20, 0x0

    #@141
    move-object/from16 v0, v17

    #@143
    move-object/from16 v1, v20

    #@145
    invoke-direct {v0, v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    #@148
    .line 335
    .restart local v17    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_4
    move-object/from16 v0, v17

    #@14a
    invoke-static {v0, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-set0(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    #@14d
    .line 336
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@150
    move-result-object v20

    #@151
    move-object/from16 v0, v20

    #@153
    move-object/from16 v1, v17

    #@155
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@158
    goto :goto_2

    #@159
    .line 339
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    .end local v17    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_5
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@15c
    move-result-object v20

    #@15d
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@160
    move-result-object v8

    #@161
    .local v8, "inputId$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@164
    move-result v20

    #@165
    if-eqz v20, :cond_9

    #@167
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16a
    move-result-object v7

    #@16b
    check-cast v7, Ljava/lang/String;

    #@16d
    .line 340
    .local v7, "inputId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@170
    move-result-object v20

    #@171
    move-object/from16 v0, v20

    #@173
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@176
    move-result v20

    #@177
    if-nez v20, :cond_7

    #@179
    .line 341
    move-object/from16 v0, p0

    #@17b
    move-object/from16 v1, v19

    #@17d
    invoke-direct {v0, v1, v7}, Lcom/android/server/tv/TvInputManagerService;->notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    #@180
    goto :goto_3

    #@181
    .line 342
    :cond_7
    if-eqz p2, :cond_6

    #@183
    .line 344
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@186
    move-result-object v20

    #@187
    check-cast v20, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@189
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@18c
    move-result-object v20

    #@18d
    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@190
    move-result-object v3

    #@191
    .line 345
    .restart local v3    # "component":Landroid/content/ComponentName;
    const/16 v20, 0x0

    #@193
    move-object/from16 v0, p2

    #@195
    array-length v0, v0

    #@196
    move/from16 v21, v0

    #@198
    :goto_4
    move/from16 v0, v20

    #@19a
    move/from16 v1, v21

    #@19c
    if-ge v0, v1, :cond_6

    #@19e
    aget-object v18, p2, v20

    #@1a0
    .line 346
    .local v18, "updatedPackage":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1a3
    move-result-object v22

    #@1a4
    move-object/from16 v0, v22

    #@1a6
    move-object/from16 v1, v18

    #@1a8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ab
    move-result v22

    #@1ac
    if-eqz v22, :cond_8

    #@1ae
    .line 347
    move-object/from16 v0, p0

    #@1b0
    move/from16 v1, p1

    #@1b2
    invoke-direct {v0, v3, v1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@1b5
    .line 348
    move-object/from16 v0, p0

    #@1b7
    move-object/from16 v1, v19

    #@1b9
    invoke-direct {v0, v1, v7}, Lcom/android/server/tv/TvInputManagerService;->notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    #@1bc
    goto :goto_3

    #@1bd
    .line 345
    :cond_8
    add-int/lit8 v20, v20, 0x1

    #@1bf
    goto :goto_4

    #@1c0
    .line 355
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v7    # "inputId":Ljava/lang/String;
    .end local v18    # "updatedPackage":Ljava/lang/String;
    :cond_9
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1c3
    move-result-object v20

    #@1c4
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1c7
    move-result-object v20

    #@1c8
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1cb
    move-result-object v8

    #@1cc
    :cond_a
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@1cf
    move-result v20

    #@1d0
    if-eqz v20, :cond_c

    #@1d2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d5
    move-result-object v7

    #@1d6
    check-cast v7, Ljava/lang/String;

    #@1d8
    .line 356
    .restart local v7    # "inputId":Ljava/lang/String;
    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1db
    move-result v20

    #@1dc
    if-nez v20, :cond_a

    #@1de
    .line 357
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1e1
    move-result-object v20

    #@1e2
    move-object/from16 v0, v20

    #@1e4
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e7
    move-result-object v20

    #@1e8
    check-cast v20, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@1ea
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@1ed
    move-result-object v5

    #@1ee
    .line 358
    .restart local v5    # "info":Landroid/media/tv/TvInputInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1f1
    move-result-object v20

    #@1f2
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@1f5
    move-result-object v21

    #@1f6
    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f9
    move-result-object v14

    #@1fa
    check-cast v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@1fc
    .line 359
    .restart local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v14, :cond_b

    #@1fe
    .line 360
    move-object/from16 v0, p0

    #@200
    move/from16 v1, p1

    #@202
    invoke-direct {v0, v14, v7, v1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    #@205
    .line 362
    :cond_b
    move-object/from16 v0, p0

    #@207
    move-object/from16 v1, v19

    #@209
    invoke-direct {v0, v1, v7}, Lcom/android/server/tv/TvInputManagerService;->notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    #@20c
    goto :goto_5

    #@20d
    .line 366
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    .end local v7    # "inputId":Ljava/lang/String;
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_c
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@210
    move-result-object v20

    #@211
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    #@214
    .line 367
    move-object/from16 v0, v19

    #@216
    invoke-static {v0, v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set0(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;

    #@219
    .line 283
    return-void
.end method

.method private clearSessionAndServiceStatesLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .locals 7
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    #@0
    .prologue
    .line 435
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@3
    move-result-object v5

    #@4
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@7
    move-result-object v5

    #@8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v4

    #@c
    .local v4, "state$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_1

    #@12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@18
    .line 436
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@1b
    move-result-object v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 438
    :try_start_0
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_0

    #@26
    .line 439
    :catch_0
    move-exception v0

    #@27
    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "TvInputManagerService"

    #@2a
    const-string/jumbo v6, "error in release"

    #@2d
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0

    #@31
    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@34
    move-result-object v5

    #@35
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    #@38
    .line 447
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@3b
    move-result-object v5

    #@3c
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@3f
    move-result-object v5

    #@40
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v2

    #@44
    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_3

    #@4a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@50
    .line 448
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@53
    move-result-object v5

    #@54
    if-eqz v5, :cond_2

    #@56
    .line 450
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@59
    move-result-object v5

    #@5a
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@5d
    move-result-object v6

    #@5e
    invoke-interface {v5, v6}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@61
    .line 455
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@63
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get3(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@6a
    goto :goto_1

    #@6b
    .line 451
    :catch_1
    move-exception v0

    #@6c
    .line 452
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "TvInputManagerService"

    #@6f
    const-string/jumbo v6, "error in unregisterCallback"

    #@72
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    goto :goto_2

    #@76
    .line 457
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_3
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@79
    move-result-object v5

    #@7a
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    #@7d
    .line 433
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
    .line 593
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@5
    move-result-object v10

    #@6
    .line 594
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
    .line 598
    .local v9, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@17
    move-result-object v7

    #@18
    .line 601
    .local v7, "channels":[Landroid/view/InputChannel;
    new-instance v6, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    #@1a
    invoke-direct {v6, p0, v9, v7}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    #@1d
    .line 605
    .local v6, "callback":Landroid/media/tv/ITvInputSessionCallback;
    const/4 v0, 0x1

    #@1e
    :try_start_0
    aget-object v0, v7, v0

    #@20
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-interface {p1, v0, v6, v1}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 612
    :goto_0
    aget-object v0, v7, v11

    #@2d
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@30
    .line 592
    return-void

    #@31
    .line 606
    :catch_0
    move-exception v8

    #@32
    .line 607
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "TvInputManagerService"

    #@35
    const-string/jumbo v1, "error in createSession"

    #@38
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 608
    invoke-direct {p0, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@3e
    .line 609
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@41
    move-result-object v1

    #@42
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 610
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@4d
    move-result v5

    #@4e
    move-object v0, p0

    #@4f
    move-object v4, v3

    #@50
    .line 609
    invoke-direct/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    #@53
    goto :goto_0
.end method

.method private getContentResolverForUser(I)Landroid/content/ContentResolver;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 461
    new-instance v2, Landroid/os/UserHandle;

    #@2
    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@5
    .line 464
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
    .line 469
    .local v0, "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 465
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    #@15
    .line 466
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "TvInputManagerService"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "failed to create package contenxt as user "

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
    .line 467
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
    .line 473
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    #@9
    .line 474
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_0

    #@b
    .line 475
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    #@d
    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@f
    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$UserState;)V

    #@12
    .line 476
    .restart local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@17
    .line 478
    :cond_0
    return-object v0
.end method

.method private getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 482
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v1

    #@4
    .line 483
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
    .line 484
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v0, :cond_0

    #@10
    .line 485
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
    .line 486
    const-string/jumbo v4, ")"

    #@30
    .line 485
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
    .line 488
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
    .line 506
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
    .line 510
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@3
    move-result-object v0

    #@4
    .line 511
    .local v0, "session":Landroid/media/tv/ITvInputSession;
    if-nez v0, :cond_0

    #@6
    .line 512
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
    .line 513
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    .line 512
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
    .line 515
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
    .line 492
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v1

    #@4
    .line 493
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
    .line 494
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v0, :cond_0

    #@10
    .line 495
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
    .line 498
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
    .line 499
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
    .line 500
    const-string/jumbo v4, " from uid "

    #@49
    .line 499
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
    .line 502
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
    .line 279
    const-string/jumbo v1, "android.permission.TV_INPUT_HARDWARE"

    #@4
    .line 280
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 279
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
    .line 709
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
    .line 711
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 712
    :catch_0
    move-exception v2

    #@19
    .line 713
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@1c
    const-string/jumbo v4, "failed to report added input to callback"

    #@1f
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0

    #@23
    .line 705
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
    .line 722
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
    .line 724
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 725
    :catch_0
    move-exception v2

    #@19
    .line 726
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@1c
    const-string/jumbo v4, "failed to report removed input to callback"

    #@1f
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0

    #@23
    .line 718
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
    .line 750
    if-nez p4, :cond_0

    #@2
    .line 751
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
    .line 753
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 754
    :catch_0
    move-exception v2

    #@1b
    .line 755
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@1e
    const-string/jumbo v4, "failed to report state change to callback"

    #@21
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0

    #@25
    .line 760
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@28
    .line 745
    :cond_1
    :goto_1
    return-void

    #@29
    .line 761
    :catch_1
    move-exception v2

    #@2a
    .line 762
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
    .line 735
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
    .line 737
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 738
    :catch_0
    move-exception v2

    #@19
    .line 739
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputManagerService"

    #@1c
    const-string/jumbo v4, "failed to report updated input to callback"

    #@1f
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0

    #@23
    .line 731
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
    .line 159
    new-instance v6, Lcom/android/server/tv/TvInputManagerService$1;

    #@3
    invoke-direct {v6, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    #@6
    .line 260
    .local v6, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@8
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@e
    .line 262
    new-instance v3, Landroid/content/IntentFilter;

    #@10
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@13
    .line 263
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@16
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@19
    .line 264
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@1c
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 265
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@21
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$2;

    #@23
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    #@26
    .line 275
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    move-object v5, v4

    #@29
    .line 265
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2c
    .line 158
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
    .line 625
    const/4 v1, 0x0

    #@2
    .line 627
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@5
    move-result-object v1

    #@6
    .line 628
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@9
    move-result-object v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 629
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@f
    move-result-object v2

    #@10
    .line 630
    .local v2, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    #@13
    move-result-object v3

    #@14
    if-ne p1, v3, :cond_0

    #@16
    .line 631
    const/4 v3, 0x0

    #@17
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    #@1a
    .line 633
    :cond_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 638
    .end local v2    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    if-eqz v1, :cond_2

    #@23
    .line 639
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@26
    .line 642
    .end local v1    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    #@29
    .line 624
    return-void

    #@2a
    .line 635
    :catch_0
    move-exception v0

    #@2b
    .line 636
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
    .line 638
    if-eqz v1, :cond_2

    #@36
    .line 639
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@39
    goto :goto_0

    #@3a
    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3b
    .line 638
    if-eqz v1, :cond_3

    #@3d
    .line 639
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@40
    .line 637
    :cond_3
    throw v3
.end method

.method private removeSessionStateLocked(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 646
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@4
    move-result-object v5

    #@5
    .line 647
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    #@8
    move-result-object v6

    #@9
    if-ne p1, v6, :cond_0

    #@b
    .line 651
    invoke-static {v5, v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@e
    .line 655
    :cond_0
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@11
    move-result-object v6

    #@12
    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@18
    .line 657
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v4, :cond_1

    #@1a
    .line 658
    return-void

    #@1b
    .line 663
    :cond_1
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1e
    move-result-object v6

    #@1f
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@22
    move-result-object v7

    #@23
    invoke-interface {v7}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v7

    #@27
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ClientState;

    #@2d
    .line 664
    .local v1, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v1, :cond_2

    #@2f
    .line 665
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    #@32
    move-result-object v6

    #@33
    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@36
    .line 666
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_2

    #@3c
    .line 667
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@3f
    move-result-object v6

    #@40
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@43
    move-result-object v7

    #@44
    invoke-interface {v7}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    #@47
    move-result-object v7

    #@48
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 671
    :cond_2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@4e
    move-result-object v2

    #@4f
    .line 672
    .local v2, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v2, :cond_3

    #@51
    .line 673
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@58
    move-result-object v7

    #@59
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    move-result-object v3

    #@5d
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@5f
    .line 674
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v3, :cond_3

    #@61
    .line 675
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@64
    move-result-object v6

    #@65
    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@68
    .line 678
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_3
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@6f
    move-result-object v6

    #@70
    invoke-direct {p0, v6, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    #@73
    .line 681
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@76
    move-result-object v0

    #@77
    .line 682
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@79
    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7c
    move-result-wide v6

    #@7d
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@80
    move-result-object v6

    #@81
    iput-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@83
    .line 684
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@85
    const/4 v7, 0x2

    #@86
    invoke-virtual {v6, v7, v0}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@8d
    .line 645
    return-void
.end method

.method private removeUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 414
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 416
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 417
    return-void

    #@f
    .line 419
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndServiceStatesLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    #@12
    .line 422
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    #@19
    .line 423
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@1c
    move-result-object v1

    #@1d
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@20
    .line 424
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@27
    .line 425
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    #@2e
    .line 426
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@31
    move-result-object v1

    #@32
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@35
    .line 427
    const/4 v1, 0x0

    #@36
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@39
    .line 429
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@3b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    monitor-exit v2

    #@3f
    .line 413
    return-void

    #@40
    .line 414
    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
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
    .line 521
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
    .line 520
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
    .line 618
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 616
    :goto_0
    return-void

    #@4
    .line 619
    :catch_0
    move-exception v0

    #@5
    .line 620
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
    .line 689
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@3
    move-result-object v3

    #@4
    .line 690
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@7
    move-result-object v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 691
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@d
    move-result-object v4

    #@e
    .line 692
    const/16 v5, 0x3e8

    #@10
    .line 691
    invoke-direct {p0, v4, v5, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@13
    move-result-object v3

    #@14
    .line 694
    :cond_0
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@1b
    move-result-object v4

    #@1c
    invoke-direct {p0, v4, p4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@1f
    move-result-object v1

    #@20
    .line 695
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_1

    #@26
    .line 696
    return-void

    #@27
    .line 698
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@2a
    move-result-object v2

    #@2b
    .line 699
    .local v2, "session":Landroid/media/tv/ITvInputSession;
    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 687
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "session":Landroid/media/tv/ITvInputSession;
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_0
    return-void

    #@2f
    .line 700
    :catch_0
    move-exception v0

    #@30
    .line 701
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "TvInputManagerService"

    #@33
    const-string/jumbo v5, "error in setMain"

    #@36
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
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
    .line 768
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@4
    move-result-object v3

    #@5
    .line 769
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
    .line 770
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
    .line 771
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    #@24
    move-result v1

    #@25
    .line 772
    .local v1, "oldState":I
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-set1(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I

    #@28
    .line 773
    if-eqz v2, :cond_0

    #@2a
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@2d
    move-result-object v4

    #@2e
    if-nez v4, :cond_0

    #@30
    .line 774
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->shouldMaintainConnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@33
    move-result v4

    #@34
    .line 773
    if-eqz v4, :cond_0

    #@36
    .line 776
    return-void

    #@37
    .line 778
    :cond_0
    if-eq v1, p2, :cond_1

    #@39
    .line 779
    invoke-direct {p0, v3, p1, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    #@3c
    .line 767
    :cond_1
    return-void
.end method

.method private static shouldMaintainConnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .locals 1
    .param p0, "serviceState"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@0
    .prologue
    .line 525
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method private switchUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 399
    :try_start_0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v0, p1, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 400
    return-void

    #@9
    .line 402
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    #@b
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@d
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    #@13
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndServiceStatesLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    #@16
    .line 404
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@18
    .line 405
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@1b
    .line 406
    const/4 v0, 0x0

    #@1c
    invoke-direct {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    #@1f
    .line 407
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    #@22
    .line 408
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@24
    .line 409
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    #@27
    move-result-object v2

    #@28
    .line 408
    const/4 v3, 0x3

    #@29
    invoke-virtual {v0, v3, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v1

    #@31
    .line 397
    return-void

    #@32
    .line 398
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method private updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 530
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3
    move-result-object v3

    #@4
    .line 531
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@e
    .line 532
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v2, :cond_0

    #@10
    .line 533
    return-void

    #@11
    .line 535
    :cond_0
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 536
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_1

    #@21
    .line 538
    return-void

    #@22
    .line 540
    :cond_1
    const/4 v4, 0x0

    #@23
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set2(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    #@26
    .line 542
    :cond_2
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->shouldMaintainConnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@29
    move-result v1

    #@2a
    .line 543
    .local v1, "maintainConnection":Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@2d
    move-result-object v4

    #@2e
    if-nez v4, :cond_5

    #@30
    if-eqz v1, :cond_5

    #@32
    iget v4, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@34
    if-ne p2, v4, :cond_5

    #@36
    .line 546
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get0(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_3

    #@3c
    .line 549
    return-void

    #@3d
    .line 555
    :cond_3
    new-instance v4, Landroid/content/Intent;

    #@3f
    const-string/jumbo v5, "android.media.tv.TvInputService"

    #@42
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@45
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@48
    move-result-object v0

    #@49
    .line 556
    .local v0, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@4b
    .line 557
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get3(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    #@4e
    move-result-object v5

    #@4f
    .line 559
    new-instance v6, Landroid/os/UserHandle;

    #@51
    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@54
    .line 558
    const v7, 0x2000001

    #@57
    .line 556
    invoke-virtual {v4, v0, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@5a
    move-result v4

    #@5b
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set0(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    #@5e
    .line 529
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4
    :goto_0
    return-void

    #@5f
    .line 560
    :cond_5
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@62
    move-result-object v4

    #@63
    if-eqz v4, :cond_4

    #@65
    if-nez v1, :cond_4

    #@67
    .line 566
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    #@69
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get3(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@70
    .line 567
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@73
    move-result-object v4

    #@74
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    goto :goto_0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 147
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 148
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V

    #@7
    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    #@c
    .line 146
    return-void

    #@d
    .line 149
    :cond_1
    const/16 v0, 0x258

    #@f
    if-ne p1, v0, :cond_0

    #@11
    .line 150
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v1

    #@14
    .line 151
    :try_start_0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    #@16
    const/4 v2, 0x0

    #@17
    invoke-direct {p0, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    #@1a
    .line 152
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
    .line 150
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
    .line 142
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
    .line 141
    return-void
.end method
