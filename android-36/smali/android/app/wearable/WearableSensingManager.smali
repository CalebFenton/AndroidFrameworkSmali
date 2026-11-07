.class public Landroid/app/wearable/WearableSensingManager;
.super Ljava/lang/Object;
.source "WearableSensingManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wearable/WearableSensingManager$StatusCode;
    }
.end annotation


# static fields
.field static final blacklist ALLOW_WEARABLE_SENSING_SERVICE_FILE_READ:J = 0x13b6193aL

.field public static final blacklist CONNECTION_ID_INVALID:I = -0x1

.field private static final blacklist CONNECTION_ID_PLACEHOLDER:I = -0x2

.field public static final blacklist EXTRA_WEARABLE_SENSING_DATA_REQUEST:Ljava/lang/String; = "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

.field public static final whitelist STATUS_ACCESS_DENIED:I = 0x5

.field public static final whitelist STATUS_CHANNEL_ERROR:I = 0x7

.field public static final whitelist STATUS_MAX_CONCURRENT_CONNECTIONS_EXCEEDED:I = 0x9

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.WearableSensingStatusBundleKey"

.field public static final whitelist STATUS_SERVICE_UNAVAILABLE:I = 0x3

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_UNSUPPORTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_UNSUPPORTED_DATA_TYPE:I = 0x8

.field public static final whitelist STATUS_UNSUPPORTED_OPERATION:I = 0x6

.field public static final whitelist STATUS_WEARABLE_UNAVAILABLE:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/wearable/IWearableSensingManager;

.field private final blacklist mWearableConnectionIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/wearable/WearableConnection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1N1-ahcdKgRbrJYFjidNq70uN-M(Landroid/app/wearable/WearableSensingManager;Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/wearable/WearableSensingManager;->lambda$provideConnection$0(Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/wearable/WearableSensingManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 201
    const-class v0, Landroid/app/wearable/WearableSensingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/wearable/IWearableSensingManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/wearable/IWearableSensingManager;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    .line 214
    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    .line 216
    return-void
.end method

.method private static blacklist createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/RemoteCallback;"
        }
    .end annotation

    .line 703
    .local p1, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private blacklist createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 716
    new-instance v0, Landroid/app/wearable/WearableSensingManager$1;

    invoke-direct {v0, p0, p1}, Landroid/app/wearable/WearableSensingManager$1;-><init>(Landroid/app/wearable/WearableSensingManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static whitelist getDataRequestFromIntent(Landroid/content/Intent;)Landroid/app/wearable/WearableSensingDataRequest;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 197
    const-string v0, "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

    const-class v1, Landroid/app/wearable/WearableSensingDataRequest;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wearable/WearableSensingDataRequest;

    return-object v0
.end method

.method static synthetic blacklist lambda$createStatusCallback$1(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "statusConsumer"    # Ljava/util/function/Consumer;
    .param p1, "status"    # I

    .line 708
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createStatusCallback$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "statusConsumer"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 705
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 706
    .local v0, "status":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 708
    .local v1, "identity":J
    :try_start_a
    new-instance v3, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 710
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 711
    nop

    .line 712
    return-void

    .line 710
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 711
    throw v3
.end method

.method private synthetic blacklist lambda$provideConnection$0(Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "wearableConnection"    # Landroid/app/wearable/WearableConnection;
    .param p2, "statusCode"    # Ljava/lang/Integer;

    .line 329
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 330
    sget-object v0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surpassed status callback for removed connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 336
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 337
    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->onConnectionAccepted()V

    goto :goto_38

    .line 339
    :cond_2c
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/app/wearable/WearableConnection;->onError(I)V

    .line 342
    :goto_38
    return-void
.end method


# virtual methods
.method public whitelist getAvailableConnectionCount()I
    .registers 3

    .line 226
    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v0}, Landroid/app/wearable/IWearableSensingManager;->getAvailableConnectionCount()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 227
    :catch_7
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist provideConnection(Landroid/app/wearable/WearableConnection;Ljava/util/concurrent/Executor;)V
    .registers 8
    .param p1, "wearableConnection"    # Landroid/app/wearable/WearableConnection;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 325
    new-instance v0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/wearable/WearableSensingManager;Landroid/app/wearable/WearableConnection;)V

    .line 326
    invoke-static {p2, v0}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    .line 349
    .local v0, "statusCallback":Landroid/os/RemoteCallback;
    :try_start_9
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    .line 352
    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->getConnection()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 353
    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 354
    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v4

    .line 351
    invoke-interface {v1, v2, v3, v4, v0}, Landroid/app/wearable/IWearableSensingManager;->provideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I

    move-result v1

    .line 356
    .local v1, "connectionId":I
    iget-object v2, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2e} :catch_30

    .line 361
    nop

    .line 362
    .end local v1    # "connectionId":I
    return-void

    .line 359
    :catch_30
    move-exception v1

    .line 360
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist provideConnection(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "wearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    .local p3, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    .line 268
    .local v0, "statusCallback":Landroid/os/RemoteCallback;
    :try_start_4
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    .line 269
    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v2

    .line 268
    invoke-interface {v1, p1, v2, v0}, Landroid/app/wearable/IWearableSensingManager;->provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catch_f
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "data"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/SharedMemory;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p4, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    .line 527
    .local v0, "callback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 530
    .end local v0    # "callback":Landroid/os/RemoteCallback;
    nop

    .line 531
    return-void

    .line 528
    :catch_b
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist provideDataStream(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    .local p3, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    .line 488
    .local v0, "statusCallback":Landroid/os/RemoteCallback;
    const/4 v1, 0x0

    .line 489
    .local v1, "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    const-wide/32 v2, 0x13b6193a

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 490
    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v1

    .line 493
    :cond_12
    :try_start_12
    iget-object v2, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v2, p1, v1, v0}, Landroid/app/wearable/IWearableSensingManager;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    .line 497
    nop

    .line 498
    return-void

    .line 495
    :catch_19
    move-exception v2

    .line 496
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 452
    .local p4, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    .line 454
    .local v0, "statusCallback":Landroid/os/RemoteCallback;
    :try_start_4
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 458
    nop

    .line 459
    return-void

    .line 456
    :catch_b
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist registerDataRequestObserver(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "dataType"    # I
    .param p2, "dataRequestPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 590
    .local p4, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    .line 591
    .local v0, "statusCallback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 595
    .end local v0    # "statusCallback":Landroid/os/RemoteCallback;
    nop

    .line 596
    return-void

    .line 593
    :catch_b
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeAllConnections()V
    .registers 3

    .line 424
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 426
    :try_start_5
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v0}, Landroid/app/wearable/IWearableSensingManager;->removeAllConnections()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 429
    nop

    .line 430
    return-void

    .line 427
    :catch_c
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeConnection(Landroid/app/wearable/WearableConnection;)V
    .registers 6
    .param p1, "wearableConnection"    # Landroid/app/wearable/WearableConnection;

    .line 389
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 390
    .local v0, "connectionId":Ljava/lang/Integer;
    const-string v1, "The provided connection was never provided or was already removed."

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3c

    .line 394
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_34

    .line 400
    :try_start_1a
    iget-object v2, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/app/wearable/IWearableSensingManager;->removeConnection(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 406
    nop

    .line 407
    return-void

    .line 401
    :cond_28
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .end local v0    # "connectionId":Ljava/lang/Integer;
    .end local p0    # "this":Landroid/app/wearable/WearableSensingManager;
    .end local p1    # "wearableConnection":Landroid/app/wearable/WearableConnection;
    throw v2
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2e} :catch_2e

    .line 404
    .restart local v0    # "connectionId":Ljava/lang/Integer;
    .restart local p0    # "this":Landroid/app/wearable/WearableSensingManager;
    .restart local p1    # "wearableConnection":Landroid/app/wearable/WearableConnection;
    :catch_2e
    move-exception v1

    .line 405
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 395
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to remove connection before provideConnection returns. The connection will not be removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_3c
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist startHotwordRecognition(Landroid/content/ComponentName;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "targetVisComponentName"    # Landroid/content/ComponentName;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 676
    .local p3, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    .line 677
    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v1

    .line 676
    invoke-interface {v0, p1, v1}, Landroid/app/wearable/IWearableSensingManager;->startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 680
    nop

    .line 681
    return-void

    .line 678
    :catch_b
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopHotwordRecognition(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 695
    .local p2, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-static {p1, p2}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/wearable/IWearableSensingManager;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 698
    nop

    .line 699
    return-void

    .line 696
    :catch_b
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterDataRequestObserver(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "dataType"    # I
    .param p2, "dataRequestPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 616
    .local p4, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    .line 617
    .local v0, "statusCallback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 621
    .end local v0    # "statusCallback":Landroid/os/RemoteCallback;
    nop

    .line 622
    return-void

    .line 619
    :catch_b
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
