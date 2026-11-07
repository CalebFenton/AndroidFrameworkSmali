.class public Landroid/media/MediaCommunicationManager;
.super Ljava/lang/Object;
.source "MediaCommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCommunicationManager$SessionCallbackRecord;,
        Landroid/media/MediaCommunicationManager$SessionCallback;,
        Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;
    }
.end annotation


# static fields
.field private static final blacklist CURRENT_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MediaCommunicationManager"

.field private static final blacklist VERSION_1:I = 0x1


# instance fields
.field private blacklist mCallbackStub:Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private blacklist mService:Landroid/media/IMediaCommunicationService;

.field private final blacklist mTokenCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaCommunicationManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTokenCallbackRecords(Landroid/media/MediaCommunicationManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaCommunicationManager;->mTokenCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCommunicationManager;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCommunicationManager;->mTokenCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    invoke-static {}, Landroid/media/internal/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 92
    iput-object p1, p0, Landroid/media/MediaCommunicationManager;->mContext:Landroid/content/Context;

    return-void

    .line 90
    :cond_1a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Android version must be S or greater."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 3

    .line 235
    iget-object v0, p0, Landroid/media/MediaCommunicationManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_10

    .line 236
    iget-object v0, p0, Landroid/media/MediaCommunicationManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/MediaCommunicationManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 238
    :cond_10
    iget-object p0, p0, Landroid/media/MediaCommunicationManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method private blacklist getService()Landroid/media/IMediaCommunicationService;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/media/MediaCommunicationManager;->mService:Landroid/media/IMediaCommunicationService;

    if-nez v0, :cond_16

    .line 226
    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->getMediaServiceManager()Landroid/media/MediaServiceManager;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/media/MediaServiceManager;->getMediaCommunicationServiceRegisterer()Landroid/media/MediaServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/media/MediaServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/media/IMediaCommunicationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaCommunicationService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCommunicationManager;->mService:Landroid/media/IMediaCommunicationService;

    .line 230
    :cond_16
    iget-object p0, p0, Landroid/media/MediaCommunicationManager;->mService:Landroid/media/IMediaCommunicationService;

    return-object p0
.end method

.method private blacklist getSession2Tokens(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation

    .line 243
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaCommunicationManager;->getService()Landroid/media/IMediaCommunicationService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IMediaCommunicationService;->getSession2Tokens(I)Landroid/media/MediaParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_d

    .line 244
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_d
    invoke-virtual {p0}, Landroid/media/MediaParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 246
    const-string p1, "MediaCommunicationManager"

    const-string v0, "Failed to get session tokens"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public blacklist dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_e

    .line 267
    invoke-direct {p0}, Landroid/media/MediaCommunicationManager;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    return-void

    .line 272
    :cond_e
    :try_start_e
    invoke-direct {p0}, Landroid/media/MediaCommunicationManager;->getService()Landroid/media/IMediaCommunicationService;

    move-result-object v0

    iget-object p0, p0, Landroid/media/MediaCommunicationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/media/IMediaCommunicationService;->dispatchMediaKeyEvent(Ljava/lang/String;Landroid/view/KeyEvent;Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 275
    const-string p1, "MediaCommunicationManager"

    const-string p2, "Failed to send key event."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
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

    .line 163
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/MediaCommunicationManager;->getSession2Tokens(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z
    .registers 5

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 139
    :cond_b
    :try_start_b
    invoke-direct {p0}, Landroid/media/MediaCommunicationManager;->getService()Landroid/media/IMediaCommunicationService;

    move-result-object p0

    .line 140
    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result p1

    .line 139
    invoke-interface {p0, v0, v2, p1}, Landroid/media/IMediaCommunicationService;->isTrusted(Ljava/lang/String;II)Z

    move-result p0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_20

    return p0

    :catch_20
    move-exception p0

    .line 142
    const-string p1, "MediaCommunicationManager"

    const-string v0, "Cannot communicate with the service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist notifySession2Created(Landroid/media/Session2Token;)V
    .registers 3

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-virtual {p1}, Landroid/media/Session2Token;->getType()I

    move-result v0

    if-nez v0, :cond_16

    .line 114
    :try_start_9
    invoke-direct {p0}, Landroid/media/MediaCommunicationManager;->getService()Landroid/media/IMediaCommunicationService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IMediaCommunicationService;->notifySession2Created(Landroid/media/Session2Token;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 116
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void

    .line 111
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token\'s type should be TYPE_SESSION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist registerSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaCommunicationManager$SessionCallback;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    iget-object v0, p0, Landroid/media/MediaCommunicationManager;->mTokenCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaCommunicationManager$SessionCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 183
    const-string p0, "MediaCommunicationManager"

    const-string p1, "registerSession2TokenCallback: Ignoring the same callback"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_1b
    iget-object p1, p0, Landroid/media/MediaCommunicationManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 187
    :try_start_1e
    iget-object p2, p0, Landroid/media/MediaCommunicationManager;->mCallbackStub:Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;

    if-nez p2, :cond_3d

    .line 188
    new-instance p2, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;

    invoke-direct {p2, p0}, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;-><init>(Landroid/media/MediaCommunicationManager;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_37

    .line 191
    :try_start_27
    invoke-direct {p0}, Landroid/media/MediaCommunicationManager;->getService()Landroid/media/IMediaCommunicationService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCommunicationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/media/IMediaCommunicationService;->registerCallback(Landroid/media/IMediaCommunicationServiceCallback;Ljava/lang/String;)V

    .line 192
    iput-object p2, p0, Landroid/media/MediaCommunicationManager;->mCallbackStub:Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_36} :catch_39
    .catchall {:try_start_27 .. :try_end_36} :catchall_37

    goto :goto_3d

    :catchall_37
    move-exception p0

    goto :goto_3f

    :catch_39
    move-exception p0

    .line 194
    :try_start_3a
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 197
    :cond_3d
    :goto_3d
    monitor-exit p1

    return-void

    :goto_3f
    monitor-exit p1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    throw p0
.end method

.method public blacklist unregisterSessionCallback(Landroid/media/MediaCommunicationManager$SessionCallback;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/media/MediaCommunicationManager;->mTokenCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaCommunicationManager$SessionCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 208
    const-string p0, "MediaCommunicationManager"

    const-string p1, "unregisterSession2TokenCallback: Ignoring an unknown callback."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_16
    iget-object p1, p0, Landroid/media/MediaCommunicationManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 212
    :try_start_19
    iget-object v0, p0, Landroid/media/MediaCommunicationManager;->mCallbackStub:Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/media/MediaCommunicationManager;->mTokenCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_2f

    if-eqz v0, :cond_3b

    .line 214
    :try_start_25
    invoke-direct {p0}, Landroid/media/MediaCommunicationManager;->getService()Landroid/media/IMediaCommunicationService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCommunicationManager;->mCallbackStub:Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;

    invoke-interface {v0, v1}, Landroid/media/IMediaCommunicationService;->unregisterCallback(Landroid/media/IMediaCommunicationServiceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2e} :catch_31
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_39

    :catchall_2f
    move-exception p0

    goto :goto_3d

    :catch_31
    move-exception v0

    .line 216
    :try_start_32
    const-string v1, "MediaCommunicationManager"

    const-string v3, "Failed to unregister callback."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :goto_39
    iput-object v2, p0, Landroid/media/MediaCommunicationManager;->mCallbackStub:Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;

    .line 220
    :cond_3b
    monitor-exit p1

    return-void

    :goto_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_2f

    throw p0
.end method
