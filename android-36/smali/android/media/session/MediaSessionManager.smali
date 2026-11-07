.class public final Landroid/media/session/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListenerStub;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;,
        Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;,
        Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;,
        Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;,
        Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;,
        Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;,
        Landroid/media/session/MediaSessionManager$RemoteUserInfo;,
        Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;,
        Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyListener;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;,
        Landroid/media/session/MediaSessionManager$RemoteSessionCallback;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o RESULT_MEDIA_KEY_HANDLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o RESULT_MEDIA_KEY_NOT_HANDLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SessionManager"


# instance fields
.field private final blacklist mCommunicationManager:Landroid/media/MediaCommunicationManager;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mCurMediaKeyEventSession:Landroid/media/session/MediaSession$Token;

.field private blacklist mCurMediaKeyEventSessionPackage:Ljava/lang/String;

.field private final greylist-max-o mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;",
            "Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mMediaKeyEventSessionChangedCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnMediaKeyEventDispatchedListenerStub:Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListenerStub;

.field private final blacklist mOnMediaKeyEventDispatchedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnMediaKeyEventSessionChangedListenerStub:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;

.field private greylist-max-o mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field private greylist-max-o mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

.field private final blacklist mRemoteSessionCallbackStub:Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;

.field private final blacklist mRemoteSessionCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/session/MediaSessionManager$RemoteSessionCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/media/session/ISessionManager;

.field private final blacklist mSession2TokensListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;",
            "Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$TySiB21HHVf7LjmwXYno0ol5cEw(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager;->lambda$addOnMediaKeyEventSessionChangedListener$0(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/session/MediaSessionManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaKeyEventSessionChangedCallbacks(Landroid/media/session/MediaSessionManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionManager;->mMediaKeyEventSessionChangedCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Landroid/media/session/MediaSessionManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteSessionCallbacks(Landroid/media/session/MediaSessionManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurMediaKeyEventSession(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSession$Token;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSessionManager;->mCurMediaKeyEventSession:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurMediaKeyEventSessionPackage(Landroid/media/session/MediaSessionManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSessionManager;->mCurMediaKeyEventSessionPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListenerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListenerStub;-><init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager-IA;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListenerStub:Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListenerStub;

    .line 90
    new-instance v0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;-><init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager-IA;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventSessionChangedListenerStub:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;

    .line 93
    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;-><init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager-IA;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbackStub:Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mSession2TokensListeners:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListeners:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mMediaKeyEventSessionChangedCallbacks:Ljava/util/Map;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mCurMediaKeyEventSessionPackage:Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbacks:Ljava/util/Map;

    .line 127
    iput-object p1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 128
    nop

    .line 129
    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->getMediaServiceManager()Landroid/media/MediaServiceManager;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/media/MediaServiceManager;->getMediaSessionServiceRegisterer()Landroid/media/MediaServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/media/MediaServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    .line 132
    nop

    .line 133
    const-string v0, "media_communication"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCommunicationManager;

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    .line 134
    return-void
.end method

.method private blacklist addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILjava/util/concurrent/Executor;)V
    .registers 10
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 371
    const-string v0, "sessionListener shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    if-nez p4, :cond_12

    .line 373
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object p4, v0

    .line 376
    :cond_12
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_15
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 378
    const-string v1, "SessionManager"

    const-string v2, "Attempted to add session listener twice, ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v0

    return-void

    .line 381
    :cond_26
    new-instance v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p4}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;-><init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Ljava/util/concurrent/Executor;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_46

    .line 384
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :try_start_2d
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$fgetmStub(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/session/ISessionManager;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    .line 385
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3b} :catch_3c
    .catchall {:try_start_2d .. :try_end_3b} :catchall_46

    .line 388
    goto :goto_44

    .line 386
    :catch_3c
    move-exception v2

    .line 387
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3d
    const-string v3, "SessionManager"

    const-string v4, "Error in addOnActiveSessionsChangedListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_44
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_46

    throw v1
.end method

.method private blacklist addOnSession2TokensChangedListener(ILandroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "listener"    # Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 475
    const-string v0, "listener shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_8
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mSession2TokensListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 478
    const-string v1, "SessionManager"

    const-string v2, "Attempted to add session listener twice, ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    monitor-exit v0

    return-void

    .line 481
    :cond_19
    new-instance v1, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;

    invoke-direct {v1, p2, p3}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;-><init>(Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;Ljava/util/concurrent/Executor;)V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_3a

    .line 484
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;
    :try_start_1e
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-virtual {v1}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->getStub()Landroid/media/session/ISession2TokensListener$Stub;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/media/session/ISessionManager;->addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V

    .line 485
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mSession2TokensListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2c} :catch_2d
    .catchall {:try_start_1e .. :try_end_2c} :catchall_3a

    .line 489
    goto :goto_38

    .line 486
    :catch_2d
    move-exception v2

    .line 487
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v3, "SessionManager"

    const-string v4, "Error in addSessionTokensListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 490
    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_38
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private blacklist dispatchMediaKeyEventInternal(Landroid/view/KeyEvent;ZZ)V
    .registers 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "asSystemService"    # Z
    .param p3, "needWakeLock"    # Z

    .line 610
    const-string v0, "keyEvent shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    :try_start_5
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p1, p3}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    .line 616
    goto :goto_15

    .line 614
    :catch_11
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 617
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method private blacklist dispatchVolumeKeyEventInternal(Landroid/view/KeyEvent;IZZ)V
    .registers 13
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I
    .param p3, "musicOnly"    # Z
    .param p4, "asSystemService"    # Z

    .line 685
    const-string v0, "keyEvent shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 687
    :try_start_5
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_1e

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v4, p4

    .end local p1    # "keyEvent":Landroid/view/KeyEvent;
    .end local p2    # "stream":I
    .end local p3    # "musicOnly":Z
    .end local p4    # "asSystemService":Z
    .local v4, "asSystemService":Z
    .local v5, "keyEvent":Landroid/view/KeyEvent;
    .local v6, "stream":I
    .local v7, "musicOnly":Z
    :try_start_17
    invoke-interface/range {v1 .. v7}, Landroid/media/session/ISessionManager;->dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 691
    goto :goto_2b

    .line 689
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_24

    .end local v4    # "asSystemService":Z
    .end local v5    # "keyEvent":Landroid/view/KeyEvent;
    .end local v6    # "stream":I
    .end local v7    # "musicOnly":Z
    .restart local p1    # "keyEvent":Landroid/view/KeyEvent;
    .restart local p2    # "stream":I
    .restart local p3    # "musicOnly":Z
    .restart local p4    # "asSystemService":Z
    :catch_1e
    move-exception v0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v4, p4

    move-object p1, v0

    .line 690
    .end local p2    # "stream":I
    .end local p3    # "musicOnly":Z
    .end local p4    # "asSystemService":Z
    .restart local v4    # "asSystemService":Z
    .restart local v5    # "keyEvent":Landroid/view/KeyEvent;
    .restart local v6    # "stream":I
    .restart local v7    # "musicOnly":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_24
    const-string p2, "SessionManager"

    const-string p3, "Failed to send volume key event."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method private blacklist getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 10
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    :try_start_5
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    .line 269
    .local v1, "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 270
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_26

    .line 271
    new-instance v4, Landroid/media/session/MediaController;

    iget-object v5, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/MediaSession$Token;

    invoke-direct {v4, v5, v6}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 272
    .local v4, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_22} :catch_27

    .line 270
    nop

    .end local v4    # "controller":Landroid/media/session/MediaController;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 276
    .end local v1    # "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_26
    goto :goto_2f

    .line 274
    :catch_27
    move-exception v1

    .line 275
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Failed to get active sessions: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-object v0
.end method

.method private synthetic blacklist lambda$addOnMediaKeyEventSessionChangedListener$0(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    .line 923
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mCurMediaKeyEventSessionPackage:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mCurMediaKeyEventSession:Landroid/media/session/MediaSession$Token;

    invoke-interface {p1, v0, v1}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method


# virtual methods
.method public blacklist addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    .registers 6
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 361
    const-string v0, "userHandle shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const-string v0, "executor shouldn\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    nop

    .line 364
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 363
    invoke-direct {p0, p4, p1, v0, p3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILjava/util/concurrent/Executor;)V

    .line 365
    return-void
.end method

.method public whitelist addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 314
    return-void
.end method

.method public whitelist addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V
    .registers 6
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 332
    nop

    .line 333
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez p3, :cond_9

    const/4 v1, 0x0

    goto :goto_e

    :cond_9
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 332
    :goto_e
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILjava/util/concurrent/Executor;)V

    .line 334
    return-void
.end method

.method public whitelist addOnMediaKeyEventDispatchedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 860
    const-string v0, "executor shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 861
    const-string v0, "listener shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 862
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_d
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListeners:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 866
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListenerStub:Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListenerStub;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->addOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_25
    .catchall {:try_start_d .. :try_end_22} :catchall_23

    .line 871
    :cond_22
    goto :goto_2d

    .line 872
    :catchall_23
    move-exception v1

    goto :goto_2f

    .line 869
    :catch_25
    move-exception v1

    .line 870
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string v2, "SessionManager"

    const-string v3, "Failed to set media key listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2d
    monitor-exit v0

    .line 873
    return-void

    .line 872
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_23

    throw v1
.end method

.method public whitelist addOnMediaKeyEventSessionChangedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    .line 913
    const-string v0, "executor shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 914
    const-string v0, "listener shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 915
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_d
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mMediaKeyEventSessionChangedCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 918
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventSessionChangedListenerStub:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 919
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 918
    invoke-interface {v1, v2, v3}, Landroid/media/session/ISessionManager;->addOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;Ljava/lang/String;)V

    .line 921
    :cond_22
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mMediaKeyEventSessionChangedCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    new-instance v1, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2f} :catch_32
    .catchall {:try_start_d .. :try_end_2f} :catchall_30

    .line 927
    goto :goto_3a

    .line 928
    :catchall_30
    move-exception v1

    goto :goto_3c

    .line 925
    :catch_32
    move-exception v1

    .line 926
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v2, "SessionManager"

    const-string v3, "Failed to add MediaKeyEventSessionChangedListener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3a
    monitor-exit v0

    .line 929
    return-void

    .line 928
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_30

    throw v1
.end method

.method public whitelist addOnSession2TokensChangedListener(Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;

    .line 426
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0, p1, v1}, Landroid/media/session/MediaSessionManager;->addOnSession2TokensChangedListener(ILandroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;Ljava/util/concurrent/Executor;)V

    .line 428
    return-void
.end method

.method public whitelist addOnSession2TokensChangedListener(Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 443
    const-string v0, "handler shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 444
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0, p1, v1}, Landroid/media/session/MediaSessionManager;->addOnSession2TokensChangedListener(ILandroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;Ljava/util/concurrent/Executor;)V

    .line 446
    return-void
.end method

.method public blacklist addOnSession2TokensChangedListener(Landroid/os/UserHandle;Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "listener"    # Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 468
    const-string v0, "userHandle shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 469
    const-string v0, "executor shouldn\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Landroid/media/session/MediaSessionManager;->addOnSession2TokensChangedListener(ILandroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;Ljava/util/concurrent/Executor;)V

    .line 471
    return-void
.end method

.method public blacklist createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/ISession;
    .registers 11
    .param p1, "cbStub"    # Landroid/media/session/MediaSession$CallbackStub;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/os/Bundle;

    .line 147
    const-string v0, "cbStub shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    const-string v0, "tag shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    :try_start_a
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_21

    .line 150
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "cbStub":Landroid/media/session/MediaSession$CallbackStub;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "sessionInfo":Landroid/os/Bundle;
    .local v3, "cbStub":Landroid/media/session/MediaSession$CallbackStub;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "sessionInfo":Landroid/os/Bundle;
    :try_start_19
    invoke-interface/range {v1 .. v6}, Landroid/media/session/ISessionManager;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;

    move-result-object p1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p1

    .line 152
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .end local v3    # "cbStub":Landroid/media/session/MediaSession$CallbackStub;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "sessionInfo":Landroid/os/Bundle;
    .restart local p1    # "cbStub":Landroid/media/session/MediaSession$CallbackStub;
    .restart local p2    # "tag":Ljava/lang/String;
    .restart local p3    # "sessionInfo":Landroid/os/Bundle;
    :catch_21
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 153
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "sessionInfo":Landroid/os/Bundle;
    .restart local v3    # "cbStub":Landroid/media/session/MediaSession$CallbackStub;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "sessionInfo":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_26
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public greylist-max-o dispatchAdjustVolume(III)V
    .registers 10
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .line 731
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_18

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "suggestedStream":I
    .end local p2    # "direction":I
    .end local p3    # "flags":I
    .local v3, "suggestedStream":I
    .local v4, "direction":I
    .local v5, "flags":I
    :try_start_11
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionManager;->dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 735
    goto :goto_24

    .line 733
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v3    # "suggestedStream":I
    .end local v4    # "direction":I
    .end local v5    # "flags":I
    .restart local p1    # "suggestedStream":I
    .restart local p2    # "direction":I
    .restart local p3    # "flags":I
    :catch_18
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object p1, v0

    .line 734
    .end local p2    # "direction":I
    .end local p3    # "flags":I
    .restart local v3    # "suggestedStream":I
    .restart local v4    # "direction":I
    .restart local v5    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    const-string p2, "SessionManager"

    const-string p3, "Failed to send adjust volume."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventInternal(Landroid/view/KeyEvent;ZZ)V

    .line 591
    return-void
.end method

.method public greylist-max-o dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventInternal(Landroid/view/KeyEvent;ZZ)V

    .line 606
    return-void
.end method

.method public blacklist dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sessionToken"    # Landroid/media/session/MediaSession$Token;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 633
    const-string v0, "sessionToken shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 634
    const-string v0, "keyEvent shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 635
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 636
    return v1

    .line 639
    :cond_16
    :try_start_16
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 640
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-interface {v0, v2, p1, p2}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_23

    return v0

    .line 641
    :catch_23
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Failed to send key event."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V
    .registers 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "streamType"    # I
    .param p3, "musicOnly"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventInternal(Landroid/view/KeyEvent;IZZ)V

    .line 659
    return-void
.end method

.method public greylist-max-o dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V
    .registers 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "streamType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 679
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventInternal(Landroid/view/KeyEvent;IZZ)V

    .line 681
    return-void
.end method

.method public blacklist dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .registers 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sessionToken"    # Landroid/media/session/MediaSession$Token;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 707
    const-string v0, "sessionToken shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 708
    const-string v0, "keyEvent shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 710
    :try_start_a
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 711
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 714
    goto :goto_24

    .line 712
    :catch_1c
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Error calling dispatchVolumeKeyEventAsSystemService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public whitelist getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .line 259
    const-string v0, "userHandle shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMediaKeyEventSession()Landroid/media/session/MediaSession$Token;
    .registers 4

    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionManager;->getMediaKeyEventSession(Ljava/lang/String;)Landroid/media/session/MediaSession$Token;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 207
    :catch_d
    move-exception v0

    .line 208
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to get media key event session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMediaKeyEventSessionPackageName()Ljava/lang/String;
    .registers 5

    .line 229
    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->getMediaKeyEventSessionPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_12

    .line 231
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_11

    move-object v0, v1

    :cond_11
    return-object v0

    .line 232
    .end local v1    # "packageName":Ljava/lang/String;
    :catch_12
    move-exception v1

    .line 233
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Failed to get media key event session package name"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v1    # "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getSession2Tokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    invoke-virtual {v0}, Landroid/media/MediaCommunicationManager;->getSession2Tokens()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSessionPolicies(Landroid/media/session/MediaSession$Token;)I
    .registers 5
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .line 1030
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0, p1}, Landroid/media/session/ISessionManager;->getSessionPolicies(Landroid/media/session/MediaSession$Token;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1031
    :catch_7
    move-exception v0

    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to get session policies"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1034
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;

    .line 994
    const-string v0, "componentName shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 996
    :try_start_5
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0, p1}, Landroid/media/session/ISessionManager;->hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    .line 997
    :catch_c
    move-exception v0

    .line 998
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to check if custom media key dispatcher with given component name exists"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;

    .line 1012
    const-string v0, "componentName shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1014
    :try_start_5
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0, p1}, Landroid/media/session/ISessionManager;->hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    .line 1015
    :catch_c
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to check if custom media session policy provider with given component name exists"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isGlobalPriorityActive()Z
    .registers 4

    .line 773
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0}, Landroid/media/session/ISessionManager;->isGlobalPriorityActive()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 774
    :catch_7
    move-exception v0

    .line 775
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to check if the global priority is active."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z
    .registers 7
    .param p1, "userInfo"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 752
    const-string v0, "userInfo shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 753
    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 754
    return v1

    .line 757
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    .line 758
    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v4

    .line 757
    invoke-interface {v0, v2, v3, v4}, Landroid/media/session/ISessionManager;->isTrusted(Ljava/lang/String;II)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20

    return v0

    .line 759
    :catch_20
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Cannot communicate with the service."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist notifySession2Created(Landroid/media/Session2Token;)V
    .registers 2
    .param p1, "token"    # Landroid/media/Session2Token;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    return-void
.end method

.method public blacklist registerRemoteSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$RemoteSessionCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/session/MediaSessionManager$RemoteSessionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 533
    const-string v0, "executor shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 534
    const-string v0, "callback shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "shouldRegisterCallback":Z
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_e
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 538
    .local v2, "prevCallbackCount":I
    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbacks:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    if-nez v2, :cond_25

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    .line 540
    const/4 v0, 0x1

    .line 542
    .end local v2    # "prevCallbackCount":I
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_39

    .line 543
    if-eqz v0, :cond_38

    .line 545
    :try_start_28
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbackStub:Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->registerRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    .line 548
    goto :goto_38

    .line 546
    :catch_30
    move-exception v1

    .line 547
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Failed to register remote volume controller callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_38
    :goto_38
    return-void

    .line 542
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public whitelist removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    .registers 7
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 399
    const-string v0, "sessionListener shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_8
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_31

    .line 402
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    if-eqz v1, :cond_2f

    .line 404
    :try_start_12
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$fgetmStub(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/session/ISessionManager;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_21
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 408
    :goto_1b
    :try_start_1b
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$mrelease(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_31

    .line 409
    goto :goto_2f

    .line 408
    :catchall_1f
    move-exception v2

    goto :goto_2a

    .line 405
    :catch_21
    move-exception v2

    .line 406
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v3, "SessionManager"

    const-string v4, "Error in removeOnActiveSessionsChangedListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    goto :goto_1b

    .line 408
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2a
    :try_start_2a
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$mrelease(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    .line 409
    nop

    .end local p0    # "this":Landroid/media/session/MediaSessionManager;
    .end local p1    # "sessionListener":Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    throw v2

    .line 411
    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    .restart local p0    # "this":Landroid/media/session/MediaSessionManager;
    .restart local p1    # "sessionListener":Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    :cond_2f
    :goto_2f
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist removeOnMediaKeyEventDispatchedListener(Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 885
    const-string v0, "listener shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 886
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_8
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1c

    .line 890
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventDispatchedListenerStub:Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListenerStub;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->removeOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_1f
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    .line 895
    :cond_1c
    goto :goto_27

    .line 896
    :catchall_1d
    move-exception v1

    goto :goto_29

    .line 893
    :catch_1f
    move-exception v1

    .line 894
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v2, "SessionManager"

    const-string v3, "Failed to set media key event dispatched listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_27
    monitor-exit v0

    .line 897
    return-void

    .line 896
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_1d

    throw v1
.end method

.method public whitelist removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    .line 938
    const-string v0, "listener shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 939
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_8
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mMediaKeyEventSessionChangedCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mMediaKeyEventSessionChangedCallbacks:Ljava/util/Map;

    .line 942
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 943
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyEventSessionChangedListenerStub:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1f} :catch_22
    .catchall {:try_start_8 .. :try_end_1f} :catchall_20

    .line 948
    :cond_1f
    goto :goto_2a

    .line 949
    :catchall_20
    move-exception v1

    goto :goto_2c

    .line 946
    :catch_22
    move-exception v1

    .line 947
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_23
    const-string v2, "SessionManager"

    const-string v3, "Failed to remove MediaKeyEventSessionChangedListener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_20

    throw v1
.end method

.method public whitelist removeOnSession2TokensChangedListener(Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;

    .line 505
    const-string v0, "listener shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_8
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mSession2TokensListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;

    .line 509
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_29

    .line 510
    if-eqz v1, :cond_28

    .line 512
    :try_start_13
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-virtual {v1}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->getStub()Landroid/media/session/ISession2TokensListener$Stub;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/media/session/ISessionManager;->removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    .line 516
    goto :goto_28

    .line 513
    :catch_1d
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Error in removeSessionTokensListener."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 518
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    return-void

    .line 509
    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist setCustomMediaKeyDispatcher(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 963
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0, p1}, Landroid/media/session/ISessionManager;->setCustomMediaKeyDispatcher(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 966
    goto :goto_e

    .line 964
    :catch_6
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to set custom media key dispatcher name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 980
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0, p1}, Landroid/media/session/ISessionManager;->setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 983
    goto :goto_e

    .line 981
    :catch_6
    move-exception v0

    .line 982
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to set custom session policy provider name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setOnMediaKeyListener(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnMediaKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 830
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    if-nez p1, :cond_12

    .line 833
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    .line 834
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v2, v1}, Landroid/media/session/ISessionManager;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V

    goto :goto_28

    .line 845
    :catchall_e
    move-exception v1

    goto :goto_32

    .line 842
    :catch_10
    move-exception v1

    goto :goto_29

    .line 836
    :cond_12
    if-nez p2, :cond_1a

    .line 837
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    .line 839
    :cond_1a
    new-instance v1, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-direct {v1, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;-><init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    .line 840
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_28} :catch_10
    .catchall {:try_start_6 .. :try_end_28} :catchall_e

    .line 844
    :goto_28
    goto :goto_30

    .line 843
    .local v1, "e":Landroid/os/RemoteException;
    :goto_29
    :try_start_29
    const-string v2, "SessionManager"

    const-string v3, "Failed to set media key listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 846
    return-void

    .line 845
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_e

    throw v1
.end method

.method public whitelist setOnVolumeKeyLongPressListener(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 795
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    if-nez p1, :cond_12

    .line 798
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    .line 799
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v2, v1}, Landroid/media/session/ISessionManager;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    goto :goto_28

    .line 811
    :catchall_e
    move-exception v1

    goto :goto_32

    .line 808
    :catch_10
    move-exception v1

    goto :goto_29

    .line 801
    :cond_12
    if-nez p2, :cond_1a

    .line 802
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    .line 804
    :cond_1a
    new-instance v1, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-direct {v1, p1, p2}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;-><init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    .line 806
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_28} :catch_10
    .catchall {:try_start_6 .. :try_end_28} :catchall_e

    .line 810
    :goto_28
    goto :goto_30

    .line 809
    .local v1, "e":Landroid/os/RemoteException;
    :goto_29
    :try_start_29
    const-string v2, "SessionManager"

    const-string v3, "Failed to set volume key long press listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 812
    return-void

    .line 811
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_e

    throw v1
.end method

.method public blacklist setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V
    .registers 6
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "policies"    # I

    .line 1044
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0, p1, p2}, Landroid/media/session/ISessionManager;->setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1047
    goto :goto_e

    .line 1045
    :catch_6
    move-exception v0

    .line 1046
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to set session policies"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist unregisterRemoteSessionCallback(Landroid/media/session/MediaSessionManager$RemoteSessionCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/session/MediaSessionManager$RemoteSessionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 563
    const-string v0, "callback shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "shouldUnregisterCallback":Z
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_9
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbacks:Ljava/util/Map;

    .line 567
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1a

    .line 568
    const/4 v0, 0x1

    .line 570
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_30

    .line 572
    if-eqz v0, :cond_2e

    .line 573
    :try_start_1d
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mRemoteSessionCallbackStub:Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->unregisterRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_2e

    .line 576
    :catch_25
    move-exception v1

    .line 577
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Failed to unregister remote volume controller callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 578
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    nop

    .line 579
    :goto_2f
    return-void

    .line 570
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method
