.class public final Landroid/media/MediaTranscodingManager;
.super Ljava/lang/Object;
.source "MediaTranscodingManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaTranscodingManager$TranscodingSession;,
        Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;,
        Landroid/media/MediaTranscodingManager$TranscodingRequest;,
        Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;
    }
.end annotation


# static fields
.field private static final blacklist BPP:F = 0.25f

.field private static final blacklist CONNECT_SERVICE_RETRY_COUNT:I = 0x64

.field private static final blacklist INTERVAL_CONNECT_SERVICE_RETRY_MS:I = 0x28

.field private static final blacklist TAG:Ljava/lang/String; = "MediaTranscodingManager"

.field private static blacklist sMediaTranscodingManager:Landroid/media/MediaTranscodingManager;


# instance fields
.field private blacklist mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPendingTranscodingSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaTranscodingManager$TranscodingSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPid:I

.field private blacklist mTranscodingClient:Landroid/media/ITranscodingClient;

.field private blacklist mTranscodingClientCallback:Landroid/media/ITranscodingClientCallback;

.field private final blacklist mUid:I


# direct methods
.method public static synthetic blacklist $r8$lambda$6PAF5-P3qGb4jtypsKcq3TDJjKs(Landroid/media/MediaTranscodingManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/MediaTranscodingManager;->lambda$onClientDied$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8k5E3Yptee-XCDzbUacVObx5hTg(Landroid/media/MediaTranscodingManager$TranscodingSession;)V
    .registers 2

    .line 268
    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListener(Landroid/media/MediaTranscodingManager$TranscodingSession;)Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;->onTranscodingFinished(Landroid/media/MediaTranscodingManager$TranscodingSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cOcQQRcc0wgLPxy1YbrqI3hEX2o(Landroid/media/MediaTranscodingManager$TranscodingSession;)V
    .registers 2

    .line 177
    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListener(Landroid/media/MediaTranscodingManager$TranscodingSession;)Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;->onTranscodingFinished(Landroid/media/MediaTranscodingManager$TranscodingSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hortZQr45E6Mz3WEpzPnYsPwhR0(Landroid/media/MediaTranscodingManager$TranscodingSession;)V
    .registers 2

    .line 153
    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListener(Landroid/media/MediaTranscodingManager$TranscodingSession;)Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;->onTranscodingFinished(Landroid/media/MediaTranscodingManager$TranscodingSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mwZ-naXvbAj_gcVMBJqqzqd4_pI(Landroid/media/MediaTranscodingManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/MediaTranscodingManager;->lambda$registerClient$4()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentResolver(Landroid/media/MediaTranscodingManager;)Landroid/content/ContentResolver;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/media/MediaTranscodingManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingTranscodingSessions(Landroid/media/MediaTranscodingManager;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTranscodingClient(Landroid/media/MediaTranscodingManager;)Landroid/media/ITranscodingClient;
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/MediaTranscodingManager;->getTranscodingClient()Landroid/media/ITranscodingClient;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTranscodingFailed(Landroid/media/MediaTranscodingManager;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaTranscodingManager;->handleTranscodingFailed(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTranscodingFinished(Landroid/media/MediaTranscodingManager;ILandroid/media/TranscodingResultParcel;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaTranscodingManager;->handleTranscodingFinished(ILandroid/media/TranscodingResultParcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTranscodingProgressUpdate(Landroid/media/MediaTranscodingManager;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaTranscodingManager;->handleTranscodingProgressUpdate(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateStatus(Landroid/media/MediaTranscodingManager;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaTranscodingManager;->updateStatus(II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodingManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaTranscodingManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    .line 325
    new-instance v0, Landroid/media/MediaTranscodingManager$1;

    invoke-direct {v0, p0}, Landroid/media/MediaTranscodingManager$1;-><init>(Landroid/media/MediaTranscodingManager;)V

    iput-object v0, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClientCallback:Landroid/media/ITranscodingClientCallback;

    .line 417
    iput-object p1, p0, Landroid/media/MediaTranscodingManager;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaTranscodingManager;->mPackageName:Ljava/lang/String;

    .line 420
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result p1

    iput p1, p0, Landroid/media/MediaTranscodingManager;->mUid:I

    .line 421
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result p1

    iput p1, p0, Landroid/media/MediaTranscodingManager;->mPid:I

    return-void
.end method

.method private blacklist getService(Z)Landroid/media/IMediaTranscodingService;
    .registers 7

    .line 201
    invoke-static {}, Landroid/media/internal/utils/build/SdkLevel;->isAtLeastS()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const/4 p0, 0x1

    if-nez p1, :cond_d

    move p1, p0

    goto :goto_f

    :cond_d
    const/16 p1, 0x64

    .line 206
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get service with retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaTranscodingManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    if-gt p0, p1, :cond_56

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to connect to service. Try count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->getMediaServiceManager()Landroid/media/MediaServiceManager;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/media/MediaServiceManager;->getMediaTranscodingServiceRegisterer()Landroid/media/MediaServiceManager$ServiceRegisterer;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/media/MediaServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 209
    invoke-static {v1}, Landroid/media/IMediaTranscodingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaTranscodingService;

    move-result-object v1

    if-eqz v1, :cond_4e

    return-object v1

    :cond_4e
    const-wide/16 v3, 0x28

    .line 219
    :try_start_50
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_53

    :catch_53
    add-int/lit8 p0, p0, 0x1

    goto :goto_25

    .line 224
    :cond_56
    const-string p0, "Failed to get service"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist getTranscodingClient()Landroid/media/ITranscodingClient;
    .registers 2

    .line 1674
    iget-object v0, p0, Landroid/media/MediaTranscodingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1675
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1676
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private blacklist handleTranscodingFailed(II)V
    .registers 5

    .line 159
    iget-object v0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 162
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaTranscodingManager$TranscodingSession;

    if-nez p0, :cond_30

    .line 166
    const-string p0, "MediaTranscodingManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in Pendingsessions"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_4e

    :cond_30
    const/4 p1, 0x3

    .line 171
    invoke-static {p0, p1, p1, p2}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$mupdateStatusAndResult(Landroid/media/MediaTranscodingManager$TranscodingSession;III)V

    .line 175
    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListener(Landroid/media/MediaTranscodingManager$TranscodingSession;)Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    move-result-object p1

    if-eqz p1, :cond_4c

    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListenerExecutor(Landroid/media/MediaTranscodingManager$TranscodingSession;)Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 176
    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListenerExecutor(Landroid/media/MediaTranscodingManager$TranscodingSession;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaTranscodingManager$TranscodingSession;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 179
    :cond_4c
    monitor-exit v0

    return-void

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_2e

    throw p0
.end method

.method private blacklist handleTranscodingFinished(ILandroid/media/TranscodingResultParcel;)V
    .registers 5

    .line 134
    iget-object p2, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    monitor-enter p2

    .line 137
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaTranscodingManager$TranscodingSession;

    if-nez p0, :cond_30

    .line 141
    const-string p0, "MediaTranscodingManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in Pendingsessions"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit p2

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_50

    :cond_30
    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 146
    invoke-static {p0, v1, p1, v0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$mupdateStatusAndResult(Landroid/media/MediaTranscodingManager$TranscodingSession;III)V

    .line 151
    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListener(Landroid/media/MediaTranscodingManager$TranscodingSession;)Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListenerExecutor(Landroid/media/MediaTranscodingManager$TranscodingSession;)Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 152
    invoke-static {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListenerExecutor(Landroid/media/MediaTranscodingManager$TranscodingSession;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaTranscodingManager$TranscodingSession;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    :cond_4e
    monitor-exit p2

    return-void

    :goto_50
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_2e

    throw p0
.end method

.method private blacklist handleTranscodingProgressUpdate(II)V
    .registers 5

    .line 183
    iget-object v0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaTranscodingManager$TranscodingSession;

    if-nez p0, :cond_30

    .line 189
    const-string p0, "MediaTranscodingManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in Pendingsessions"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_35

    .line 194
    :cond_30
    invoke-static {p0, p2}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$mupdateProgress(Landroid/media/MediaTranscodingManager$TranscodingSession;I)V

    .line 195
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_2e

    throw p0
.end method

.method private synthetic blacklist lambda$onClientDied$3()V
    .registers 9

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v1, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 254
    :try_start_8
    iget-object v2, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaTranscodingManager$TranscodingSession;

    .line 257
    invoke-virtual {v5}, Landroid/media/MediaTranscodingManager$TranscodingSession;->getStatus()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5b

    const/4 v4, 0x3

    .line 258
    invoke-static {v5, v4, v4, v7}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$mupdateStatusAndResult(Landroid/media/MediaTranscodingManager$TranscodingSession;III)V

    .line 263
    iget-object v4, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {v5}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListener(Landroid/media/MediaTranscodingManager$TranscodingSession;)Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-static {v5}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListenerExecutor(Landroid/media/MediaTranscodingManager$TranscodingSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 266
    const-string v3, "MediaTranscodingManager"

    const-string v4, "Notify client session failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {v5}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$fgetmListenerExecutor(Landroid/media/MediaTranscodingManager$TranscodingSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v5}, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaTranscodingManager$TranscodingSession;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    :catchall_59
    move-exception p0

    goto :goto_ac

    .line 270
    :cond_5b
    invoke-virtual {v5}, Landroid/media/MediaTranscodingManager$TranscodingSession;->getStatus()I

    move-result v3

    if-eq v3, v4, :cond_68

    .line 271
    invoke-virtual {v5}, Landroid/media/MediaTranscodingManager$TranscodingSession;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_12

    .line 273
    :cond_68
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 276
    :cond_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_8 .. :try_end_6d} :catchall_59

    .line 279
    invoke-direct {p0, v4}, Landroid/media/MediaTranscodingManager;->getService(Z)Landroid/media/IMediaTranscodingService;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    .line 282
    iget-object v3, p0, Landroid/media/MediaTranscodingManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 283
    :try_start_77
    invoke-direct {p0, v1}, Landroid/media/MediaTranscodingManager;->registerClient(Landroid/media/IMediaTranscodingService;)Landroid/media/ITranscodingClient;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    if-eqz v1, :cond_80

    goto :goto_81

    :cond_80
    move v4, v2

    .line 287
    :goto_81
    monitor-exit v3

    goto :goto_87

    :catchall_83
    move-exception p0

    monitor-exit v3
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_83

    throw p0

    :cond_86
    move v4, v2

    .line 290
    :goto_87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_8c
    if-ge v3, v1, :cond_ab

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Landroid/media/MediaTranscodingManager$TranscodingSession;

    if-nez v4, :cond_9f

    .line 295
    invoke-virtual {v5}, Landroid/media/MediaTranscodingManager$TranscodingSession;->getSessionId()I

    move-result v6

    invoke-direct {p0, v6, v2}, Landroid/media/MediaTranscodingManager;->handleTranscodingFailed(II)V

    .line 300
    :cond_9f
    :try_start_9f
    invoke-static {v5, v2}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$mretryInternal(Landroid/media/MediaTranscodingManager$TranscodingSession;Z)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_8c

    .line 303
    :catch_a3
    invoke-virtual {v5}, Landroid/media/MediaTranscodingManager$TranscodingSession;->getSessionId()I

    move-result v5

    invoke-direct {p0, v5, v2}, Landroid/media/MediaTranscodingManager;->handleTranscodingFailed(II)V

    goto :goto_8c

    :cond_ab
    return-void

    .line 276
    :goto_ac
    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_59

    throw p0
.end method

.method private synthetic blacklist lambda$registerClient$4()V
    .registers 1

    .line 403
    invoke-direct {p0}, Landroid/media/MediaTranscodingManager;->onClientDied()V

    return-void
.end method

.method private blacklist onClientDied()V
    .registers 3

    .line 242
    iget-object v0, p0, Landroid/media/MediaTranscodingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 243
    :try_start_4
    iput-object v1, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    .line 244
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 247
    iget-object v0, p0, Landroid/media/MediaTranscodingManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaTranscodingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_12
    move-exception p0

    .line 244
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private blacklist registerClient(Landroid/media/IMediaTranscodingService;)Landroid/media/ITranscodingClient;
    .registers 6

    .line 394
    iget-object v0, p0, Landroid/media/MediaTranscodingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClientCallback:Landroid/media/ITranscodingClientCallback;

    iget-object v2, p0, Landroid/media/MediaTranscodingManager;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v2}, Landroid/media/IMediaTranscodingService;->registerClient(Landroid/media/ITranscodingClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/media/ITranscodingClient;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    if-eqz p1, :cond_39

    .line 403
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/MediaTranscodingManager$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaTranscodingManager;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1f
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_39

    :catchall_1d
    move-exception p0

    goto :goto_3d

    :catch_1f
    move-exception p1

    .line 406
    :try_start_20
    const-string v1, "MediaTranscodingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register new client due to exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 407
    iput-object p1, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    .line 409
    :cond_39
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_1d

    .line 410
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    return-object p0

    .line 409
    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_1d

    throw p0
.end method

.method private blacklist updateStatus(II)V
    .registers 5

    .line 310
    iget-object v0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaTranscodingManager$TranscodingSession;

    if-nez p0, :cond_30

    .line 315
    const-string p0, "MediaTranscodingManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in Pendingsessions"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_35

    .line 320
    :cond_30
    invoke-static {p0, p2}, Landroid/media/MediaTranscodingManager$TranscodingSession;->-$$Nest$mupdateStatus(Landroid/media/MediaTranscodingManager$TranscodingSession;I)V

    .line 321
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_2e

    throw p0
.end method


# virtual methods
.method public whitelist enqueueRequest(Landroid/media/MediaTranscodingManager$TranscodingRequest;Ljava/util/concurrent/Executor;Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;)Landroid/media/MediaTranscodingManager$TranscodingSession;
    .registers 14

    .line 1698
    const-string v0, "MediaTranscodingManager"

    const-string v1, "enqueueRequest called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1700
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1701
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1704
    iget-object v0, p0, Landroid/media/MediaTranscodingManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/media/MediaTranscodingManager$TranscodingRequest;->-$$Nest$mwriteToParcel(Landroid/media/MediaTranscodingManager$TranscodingRequest;Landroid/content/Context;)Landroid/media/TranscodingRequestParcel;

    move-result-object v0

    .line 1706
    const-string v1, "MediaTranscodingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting transcoding request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1710
    :try_start_31
    new-instance v5, Landroid/media/TranscodingSessionParcel;

    invoke-direct {v5}, Landroid/media/TranscodingSessionParcel;-><init>()V

    .line 1713
    iget-object v9, p0, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_39} :catch_b0
    .catch Landroid/os/ServiceSpecificException; {:try_start_31 .. :try_end_39} :catch_97

    .line 1714
    :try_start_39
    iget-object v2, p0, Landroid/media/MediaTranscodingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_51

    .line 1715
    :try_start_3c
    iget-object v3, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    if-nez v3, :cond_69

    const/4 v3, 0x0

    .line 1717
    invoke-direct {p0, v3}, Landroid/media/MediaTranscodingManager;->getService(Z)Landroid/media/IMediaTranscodingService;

    move-result-object v3

    if-nez v3, :cond_57

    .line 1719
    const-string p0, "MediaTranscodingManager"

    const-string p1, "Service rebooting. Try again later"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_54

    :try_start_4f
    monitor-exit v9
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_51

    return-object v1

    :catchall_51
    move-exception v0

    move-object p0, v0

    goto :goto_95

    :catchall_54
    move-exception v0

    move-object p0, v0

    goto :goto_93

    .line 1722
    :cond_57
    :try_start_57
    invoke-direct {p0, v3}, Landroid/media/MediaTranscodingManager;->registerClient(Landroid/media/IMediaTranscodingService;)Landroid/media/ITranscodingClient;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    if-nez v3, :cond_69

    .line 1725
    const-string p0, "MediaTranscodingManager"

    const-string p1, "Service rebooting. Try again later"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_54

    :try_start_67
    monitor-exit v9
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_51

    return-object v1

    .line 1730
    :cond_69
    :try_start_69
    iget-object v3, p0, Landroid/media/MediaTranscodingManager;->mTranscodingClient:Landroid/media/ITranscodingClient;

    invoke-interface {v3, v0, v5}, Landroid/media/ITranscodingClient;->submitRequest(Landroid/media/TranscodingRequestParcel;Landroid/media/TranscodingSessionParcel;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1733
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_54

    .line 1737
    :try_start_72
    new-instance v2, Landroid/media/MediaTranscodingManager$TranscodingSession;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaTranscodingManager$TranscodingSession;-><init>(Landroid/media/MediaTranscodingManager;Landroid/media/MediaTranscodingManager$TranscodingRequest;Landroid/media/TranscodingSessionParcel;Ljava/util/concurrent/Executor;Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;Landroid/media/MediaTranscodingManager-IA;)V

    .line 1743
    iget-object p0, v3, Landroid/media/MediaTranscodingManager;->mPendingTranscodingSessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/media/MediaTranscodingManager$TranscodingSession;->getSessionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    monitor-exit v9
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_51

    return-object v2

    .line 1731
    :cond_8b
    :try_start_8b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Failed to enqueue request"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1733
    :goto_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_54

    :try_start_94
    throw p0

    .line 1745
    :goto_95
    monitor-exit v9
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_51

    :try_start_96
    throw p0
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_97} :catch_b0
    .catch Landroid/os/ServiceSpecificException; {:try_start_96 .. :try_end_97} :catch_97

    :catch_97
    move-exception v0

    move-object p0, v0

    .line 1750
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to submit request to Transcoding service. Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1747
    :catch_b0
    const-string p0, "MediaTranscodingManager"

    const-string p1, "Service rebooting. Try again later"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
