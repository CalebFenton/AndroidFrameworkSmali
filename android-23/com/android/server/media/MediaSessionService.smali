.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$UserRecord;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$SettingsObserver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$MessageHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionService"

.field private static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field private final mAllSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAudioService:Landroid/media/IAudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field final mICallback:Landroid/os/IBinder;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private mRvc:Landroid/media/IRemoteVolumeController;

.field private final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field private final mSessionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/media/MediaSessionService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V
    .locals 0
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "resolvedUserId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceSystemUiPermission(Ljava/lang/String;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 77
    const-string/jumbo v0, "MediaSessionService"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    #@a
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 81
    new-instance v1, Landroid/os/Binder;

    #@5
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mICallback:Landroid/os/IBinder;

    #@a
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    #@c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    #@11
    .line 87
    new-instance v1, Landroid/util/SparseArray;

    #@13
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@18
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 88
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@1f
    .line 90
    new-instance v1, Ljava/lang/Object;

    #@21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@24
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@26
    .line 91
    new-instance v1, Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@28
    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    #@2b
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@2d
    .line 100
    const/4 v1, -0x1

    #@2e
    iput v1, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    #@30
    .line 108
    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    #@32
    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    #@35
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    #@37
    .line 109
    new-instance v1, Lcom/android/server/media/MediaSessionStack;

    #@39
    invoke-direct {v1}, Lcom/android/server/media/MediaSessionStack;-><init>()V

    #@3c
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    #@3e
    .line 110
    const-string/jumbo v1, "power"

    #@41
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/os/PowerManager;

    #@47
    .line 111
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "handleMediaEvent"

    #@4a
    const/4 v2, 0x1

    #@4b
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@4e
    move-result-object v1

    #@4f
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@51
    .line 106
    return-void
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 2
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 413
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    .line 412
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method private createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 12
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 427
    new-instance v1, Lcom/android/server/media/MediaSessionRecord;

    #@2
    .line 428
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move-object/from16 v5, p4

    #@9
    move-object/from16 v6, p5

    #@b
    move-object/from16 v7, p6

    #@d
    move-object v8, p0

    #@e
    .line 427
    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V

    #@11
    .line 430
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    :try_start_0
    invoke-interface/range {p5 .. p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x0

    #@16
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 435
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 436
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    #@20
    invoke-virtual {v2, v1}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecord;)V

    #@23
    .line 438
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaSessionService;->getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;

    #@26
    move-result-object v11

    #@27
    .line 439
    .local v11, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {v11, v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->addSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    #@2a
    .line 441
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@2c
    const/4 v3, 0x1

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-virtual {v2, v3, p3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    #@31
    .line 443
    sget-boolean v2, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    #@33
    if-eqz v2, :cond_0

    #@35
    .line 444
    const-string/jumbo v2, "MediaSessionService"

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "Created session for package "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    move-object/from16 v0, p4

    #@46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    const-string/jumbo v4, " with tag "

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    move-object/from16 v0, p6

    #@53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 446
    :cond_0
    return-object v1

    #@5f
    .line 431
    .end local v11    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :catch_0
    move-exception v10

    #@60
    .line 432
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@62
    const-string/jumbo v3, "Media Session owner died prematurely."

    #@65
    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@68
    throw v2
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 7
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 290
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@4
    move-result v2

    #@5
    .line 291
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@d
    .line 292
    .local v1, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_0

    #@f
    .line 293
    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->removeSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    #@12
    .line 296
    :cond_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    #@14
    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    #@17
    .line 297
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1c
    .line 300
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getCallback()Landroid/media/session/ISessionCallback;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v3}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v3

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v3, p1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 304
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->onDestroy()V

    #@2b
    .line 306
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@2d
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@30
    move-result v4

    #@31
    const/4 v5, 0x1

    #@32
    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    #@35
    .line 289
    return-void

    #@36
    .line 301
    :catch_0
    move-exception v0

    #@37
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private destroyUserLocked(Lcom/android/server/media/MediaSessionService$UserRecord;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/media/MediaSessionService$UserRecord;

    #@0
    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->stopLocked()V

    #@3
    .line 276
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->destroyLocked()V

    #@6
    .line 277
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@8
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get2(Lcom/android/server/media/MediaSessionService$UserRecord;)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    #@f
    .line 274
    return-void
.end method

.method private enforceMediaPermissions(Landroid/content/ComponentName;III)V
    .locals 2
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "resolvedUserId"    # I

    #@0
    .prologue
    .line 335
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    .line 337
    const-string/jumbo v1, "android.permission.MEDIA_CONTENT_CONTROL"

    #@e
    .line 336
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 339
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@17
    move-result v0

    #@18
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/media/MediaSessionService;->isEnabledNotificationListener(Landroid/content/ComponentName;II)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 334
    :cond_1
    return-void

    #@1f
    .line 341
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    #@21
    const-string/jumbo v1, "Missing permission to control media."

    #@24
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 311
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "packageName may not be empty"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 314
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    #@1c
    .line 315
    .local v1, "packageCount":I
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1f
    .line 316
    aget-object v3, v2, v0

    #@21
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 317
    return-void

    #@28
    .line 315
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 320
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v4, "packageName is not owned by the calling process"

    #@30
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3
.end method

.method private enforceSystemUiPermission(Ljava/lang/String;II)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 356
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@e
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 359
    new-instance v0, Ljava/lang/SecurityException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Only system ui may "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 355
    :cond_1
    return-void
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;

    #@0
    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 460
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    #@12
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    if-ne v1, v2, :cond_0

    #@20
    .line 461
    return v0

    #@21
    .line 459
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .line 464
    :cond_1
    const/4 v1, -0x1

    #@25
    return v1
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 2

    #@0
    .prologue
    .line 130
    const-string/jumbo v1, "audio"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 131
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method private getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@8
    .line 451
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-nez v0, :cond_0

    #@a
    .line 452
    new-instance v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@c
    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/media/MediaSessionService$UserRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/content/Context;I)V

    #@13
    .line 453
    .restart local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18
    .line 455
    :cond_0
    return-object v0
.end method

.method private isCurrentVolumeController(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 346
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 347
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@7
    invoke-virtual {v1}, Landroid/media/AudioManagerInternal;->getVolumeControllerUid()I

    #@a
    move-result v0

    #@b
    .line 348
    .local v0, "vcuid":I
    if-lez v0, :cond_0

    #@d
    if-ne p1, v0, :cond_0

    #@f
    .line 349
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 352
    .end local v0    # "vcuid":I
    :cond_0
    return v2
.end method

.method private isEnabledNotificationListener(Landroid/content/ComponentName;II)Z
    .locals 8
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "forUserId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 375
    if-eq p2, p3, :cond_0

    #@3
    .line 377
    return v7

    #@4
    .line 379
    :cond_0
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 380
    const-string/jumbo v4, "MediaSessionService"

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "Checking if enabled notification listener "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 382
    :cond_1
    if-eqz p1, :cond_5

    #@24
    .line 383
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    #@26
    .line 384
    const-string/jumbo v5, "enabled_notification_listeners"

    #@29
    .line 383
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 386
    .local v2, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@2f
    .line 387
    const-string/jumbo v4, ":"

    #@32
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 388
    .local v1, "components":[Ljava/lang/String;
    const/4 v3, 0x0

    #@37
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    #@38
    if-ge v3, v4, :cond_4

    #@3a
    .line 390
    aget-object v4, v1, v3

    #@3c
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3f
    move-result-object v0

    #@40
    .line 391
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    #@42
    .line 392
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_3

    #@48
    .line 393
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    #@4a
    if-eqz v4, :cond_2

    #@4c
    .line 394
    const-string/jumbo v4, "MediaSessionService"

    #@4f
    new-instance v5, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v6, "ok to get sessions: "

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    .line 395
    const-string/jumbo v6, " is authorized notification listener"

    #@62
    .line 394
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 397
    :cond_2
    const/4 v4, 0x1

    #@6e
    return v4

    #@6f
    .line 388
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@71
    goto :goto_0

    #@72
    .line 402
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    #@74
    if-eqz v4, :cond_5

    #@76
    .line 403
    const-string/jumbo v4, "MediaSessionService"

    #@79
    new-instance v5, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v6, "not ok to get sessions, "

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    .line 404
    const-string/jumbo v6, " is not in list of ENABLED_NOTIFICATION_LISTENERS for user "

    #@8c
    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 407
    .end local v2    # "enabledNotifListeners":Ljava/lang/String;
    :cond_5
    return v7
.end method

.method private pushRemoteVolumeUpdateLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 495
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 497
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    #@7
    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;

    #@a
    move-result-object v1

    #@b
    .line 498
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    #@d
    if-nez v1, :cond_1

    #@f
    :goto_0
    invoke-interface {v3, v2}, Landroid/media/IRemoteVolumeController;->updateRemoteController(Landroid/media/session/ISessionController;)V

    #@12
    .line 494
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    :goto_1
    return-void

    #@13
    .line 498
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v2

    #@17
    goto :goto_0

    #@18
    .line 499
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catch_0
    move-exception v0

    #@19
    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaSessionService"

    #@1c
    const-string/jumbo v3, "Error sending default remote volume to sys ui."

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_1
.end method

.method private pushSessionsChanged(I)V
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 468
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 469
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    #@5
    invoke-virtual {v6, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    #@8
    move-result-object v3

    #@9
    .line 470
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@c
    move-result v4

    #@d
    .line 471
    .local v4, "size":I
    if-lez v4, :cond_0

    #@f
    const/4 v6, 0x0

    #@10
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    #@16
    const/4 v8, 0x0

    #@17
    invoke-virtual {v6, v8}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 472
    const/4 v6, 0x0

    #@1e
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    #@24
    invoke-direct {p0, v6}, Lcom/android/server/media/MediaSessionService;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    #@27
    .line 474
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    #@29
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 475
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@2f
    .line 476
    new-instance v8, Landroid/media/session/MediaSession$Token;

    #@31
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    #@37
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    #@3a
    move-result-object v6

    #@3b
    invoke-direct {v8, v6}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    #@3e
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 475
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_0

    #@44
    .line 478
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    #@47
    .line 479
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v6

    #@4d
    add-int/lit8 v1, v6, -0x1

    #@4f
    :goto_1
    if-ltz v1, :cond_4

    #@51
    .line 480
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    #@59
    .line 481
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get4(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    #@5c
    move-result v6

    #@5d
    const/4 v8, -0x1

    #@5e
    if-eq v6, v8, :cond_2

    #@60
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get4(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    move-result v6

    #@64
    if-ne v6, p1, :cond_3

    #@66
    .line 483
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    #@69
    move-result-object v6

    #@6a
    invoke-interface {v6, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    .line 479
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    #@6f
    goto :goto_1

    #@70
    .line 484
    :catch_0
    move-exception v0

    #@71
    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "MediaSessionService"

    #@74
    const-string/jumbo v8, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    #@77
    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    .line 487
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7f
    goto :goto_2

    #@80
    .line 468
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v4    # "size":I
    .end local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    :catchall_0
    move-exception v6

    #@81
    monitor-exit v7

    #@82
    throw v6

    #@83
    .restart local v1    # "i":I
    .restart local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .restart local v4    # "size":I
    .restart local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    :cond_4
    monitor-exit v7

    #@84
    .line 467
    return-void
.end method

.method private rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 506
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    #@3
    move-result-object v1

    #@4
    .line 507
    .local v1, "receiver":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@6
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@9
    move-result v4

    #@a
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@10
    .line 508
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_0

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 509
    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->-set0(Lcom/android/server/media/MediaSessionService$UserRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    #@17
    .line 510
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@1e
    move-result-object v0

    #@1f
    .line 511
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@21
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 512
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    #@31
    .line 513
    const-string/jumbo v4, "media_button_receiver"

    #@34
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    .line 514
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@3b
    move-result v6

    #@3c
    .line 512
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@3f
    .line 505
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private updateActiveSessionListeners()V
    .locals 9

    #@0
    .prologue
    .line 248
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v4

    #@9
    add-int/lit8 v2, v4, -0x1

    #@b
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@d
    .line 250
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 252
    .local v3, "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get0(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    #@18
    move-result-object v4

    #@19
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get2(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    #@1c
    move-result v6

    #@1d
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get3(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    #@20
    move-result v7

    #@21
    .line 253
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get4(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    #@24
    move-result v8

    #@25
    .line 252
    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 249
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 254
    :catch_0
    move-exception v0

    #@2c
    .line 255
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string/jumbo v4, "MediaSessionService"

    #@2f
    new-instance v6, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v7, "ActiveSessionsListener "

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get0(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    .line 256
    const-string/jumbo v7, " is no longer authorized. Disconnecting."

    #@46
    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 257
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    .line 259
    :try_start_3
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    #@59
    move-result-object v4

    #@5a
    .line 260
    new-instance v6, Ljava/util/ArrayList;

    #@5c
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5f
    .line 259
    invoke-interface {v4, v6}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@62
    goto :goto_1

    #@63
    .line 261
    :catch_1
    move-exception v1

    #@64
    .local v1, "e1":Ljava/lang/Exception;
    goto :goto_1

    #@65
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v3    # "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    monitor-exit v5

    #@66
    .line 247
    return-void

    #@67
    .line 248
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    #@68
    monitor-exit v5

    #@69
    throw v4
.end method

.method private updateUser()V
    .locals 6

    #@0
    .prologue
    .line 230
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 231
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@6
    move-result v3

    #@7
    .line 232
    .local v3, "userId":I
    iget v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    #@9
    if-eq v4, v3, :cond_1

    #@b
    .line 233
    iget v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    #@d
    .line 234
    .local v2, "oldUserId":I
    iput v3, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    #@f
    .line 236
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@17
    .line 237
    .local v1, "oldUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_0

    #@19
    .line 238
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->stopLocked()V

    #@1c
    .line 241
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaSessionService;->getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;

    #@1f
    move-result-object v0

    #@20
    .line 242
    .local v0, "newUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService$UserRecord;->startLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .end local v0    # "newUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v1    # "oldUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v2    # "oldUserId":I
    :cond_1
    monitor-exit v5

    #@24
    .line 229
    return-void

    #@25
    .line 230
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4
.end method


# virtual methods
.method destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 225
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 223
    return-void

    #@8
    .line 224
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method protected enforcePhoneStatePermission(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    #@7
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 213
    new-instance v0, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v1, "Must hold the MODIFY_PHONE_STATE permission."

    #@12
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 210
    :cond_0
    return-void
.end method

.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 204
    return-void
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 150
    return-void

    #@5
    .line 153
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    #@7
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2, p1}, Landroid/media/IRemoteVolumeController;->remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 148
    :goto_0
    return-void

    #@f
    .line 154
    :catch_0
    move-exception v0

    #@10
    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MediaSessionService"

    #@13
    const-string/jumbo v2, "Error sending volume change to system UI."

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method public onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 176
    const-string/jumbo v0, "MediaSessionService"

    #@e
    const-string/jumbo v2, "Unknown session changed playback type. Ignoring."

    #@11
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 177
    return-void

    #@16
    .line 179
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@19
    move-result v0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 173
    return-void

    #@1f
    .line 174
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public onSessionPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    .line 160
    const/4 v0, 0x0

    #@1
    .line 161
    .local v0, "updateSessions":Z
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 163
    const-string/jumbo v1, "MediaSessionService"

    #@f
    const-string/jumbo v3, "Unknown session changed playback state. Ignoring."

    #@12
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v2

    #@16
    .line 164
    return-void

    #@17
    .line 166
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    #@19
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/media/MediaSessionStack;->onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result v0

    #@1d
    .local v0, "updateSessions":Z
    monitor-exit v2

    #@1e
    .line 168
    if-eqz v0, :cond_1

    #@20
    .line 169
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@22
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@25
    move-result v2

    #@26
    const/4 v3, 0x1

    #@27
    const/4 v4, 0x0

    #@28
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    #@2b
    .line 159
    :cond_1
    return-void

    #@2c
    .line 161
    .local v0, "updateSessions":Z
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit v2

    #@2e
    throw v1
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "media_session"

    #@3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 117
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@f
    .line 119
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, "keyguard"

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/app/KeyguardManager;

    #@1c
    .line 118
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@1e
    .line 120
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->getAudioService()Landroid/media/IAudioService;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    #@24
    .line 121
    const-class v0, Landroid/media/AudioManagerInternal;

    #@26
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/media/AudioManagerInternal;

    #@2c
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@2e
    .line 122
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    #@38
    .line 123
    new-instance v0, Lcom/android/server/media/MediaSessionService$SettingsObserver;

    #@3a
    const/4 v1, 0x0

    #@3b
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    #@40
    .line 124
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    #@42
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->-wrap0(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    #@45
    .line 126
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    #@48
    .line 115
    return-void
.end method

.method public onStartUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    #@3
    .line 184
    return-void
.end method

.method public onStopUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    #@b
    .line 197
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v0, :cond_0

    #@d
    .line 198
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->destroyUserLocked(Lcom/android/server/media/MediaSessionService$UserRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 194
    return-void

    #@12
    .line 195
    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    #@3
    .line 189
    return-void
.end method

.method sessionDied(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 219
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 217
    return-void

    #@8
    .line 218
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 137
    const-string/jumbo v0, "MediaSessionService"

    #@e
    const-string/jumbo v2, "Unknown session updated. Ignoring."

    #@11
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 138
    return-void

    #@16
    .line 140
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 142
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    #@1e
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@21
    move-result v1

    #@22
    const/4 v2, 0x1

    #@23
    const/4 v3, 0x0

    #@24
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    #@27
    .line 134
    return-void

    #@28
    .line 135
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method
