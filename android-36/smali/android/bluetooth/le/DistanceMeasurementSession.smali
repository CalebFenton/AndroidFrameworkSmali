.class public final Landroid/bluetooth/le/DistanceMeasurementSession;
.super Ljava/lang/Object;
.source "DistanceMeasurementSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/DistanceMeasurementSession$Callback;,
        Landroid/bluetooth/le/DistanceMeasurementSession$StopSessionReturnValues;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallback:Landroid/bluetooth/le/DistanceMeasurementSession$Callback;

.field private final blacklist mDistanceMeasurement:Landroid/bluetooth/IDistanceMeasurement;

.field private final blacklist mDistanceMeasurementParams:Landroid/bluetooth/le/DistanceMeasurementParams;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public static synthetic blacklist $r8$lambda$6GUYHtxl0O0yG7CALVeV0g-ZfKY(Landroid/bluetooth/le/DistanceMeasurementSession;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/DistanceMeasurementSession;->lambda$onResult$3(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NLyiZvMujnOP3ocxfKULpeYSth4(Landroid/bluetooth/le/DistanceMeasurementSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/le/DistanceMeasurementSession;->lambda$onStartFail$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SRUBtY1zjDHNDwbD54rGQWm35Zs(Landroid/bluetooth/le/DistanceMeasurementSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/le/DistanceMeasurementSession;->lambda$onStopped$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TFaND2Q81BQOz7PeFsFCOSKaLGA(Landroid/bluetooth/le/DistanceMeasurementSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/le/DistanceMeasurementSession;->lambda$onStarted$0()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const-class v0, Landroid/bluetooth/le/DistanceMeasurementSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/DistanceMeasurementSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/IDistanceMeasurement;Landroid/os/ParcelUuid;Landroid/bluetooth/le/DistanceMeasurementParams;Ljava/util/concurrent/Executor;Landroid/content/AttributionSource;Landroid/bluetooth/le/DistanceMeasurementSession$Callback;)V
    .registers 8
    .param p1, "distanceMeasurement"    # Landroid/bluetooth/IDistanceMeasurement;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "params"    # Landroid/bluetooth/le/DistanceMeasurementParams;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "callback"    # Landroid/bluetooth/le/DistanceMeasurementSession$Callback;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IDistanceMeasurement;

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mDistanceMeasurement:Landroid/bluetooth/IDistanceMeasurement;

    .line 89
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/DistanceMeasurementParams;

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mDistanceMeasurementParams:Landroid/bluetooth/le/DistanceMeasurementParams;

    .line 90
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 91
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/DistanceMeasurementSession$Callback;

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mCallback:Landroid/bluetooth/le/DistanceMeasurementSession$Callback;

    .line 92
    iput-object p2, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mUuid:Landroid/os/ParcelUuid;

    .line 93
    iput-object p5, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mAttributionSource:Landroid/content/AttributionSource;

    .line 94
    return-void
.end method

.method private synthetic blacklist lambda$onResult$3(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "result"    # Landroid/bluetooth/le/DistanceMeasurementResult;

    .line 135
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mCallback:Landroid/bluetooth/le/DistanceMeasurementSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/le/DistanceMeasurementSession$Callback;->onResult(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStartFail$1(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 125
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mCallback:Landroid/bluetooth/le/DistanceMeasurementSession$Callback;

    invoke-interface {v0, p1}, Landroid/bluetooth/le/DistanceMeasurementSession$Callback;->onStartFail(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStarted$0()V
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mCallback:Landroid/bluetooth/le/DistanceMeasurementSession$Callback;

    invoke-interface {v0, p0}, Landroid/bluetooth/le/DistanceMeasurementSession$Callback;->onStarted(Landroid/bluetooth/le/DistanceMeasurementSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStopped$2(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 130
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mCallback:Landroid/bluetooth/le/DistanceMeasurementSession$Callback;

    invoke-interface {v0, p0, p1}, Landroid/bluetooth/le/DistanceMeasurementSession$Callback;->onStopped(Landroid/bluetooth/le/DistanceMeasurementSession;I)V

    return-void
.end method


# virtual methods
.method blacklist onResult(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "result"    # Landroid/bluetooth/le/DistanceMeasurementResult;

    .line 135
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/DistanceMeasurementSession;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method blacklist onStartFail(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 125
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/le/DistanceMeasurementSession;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method blacklist onStarted()V
    .registers 3

    .line 120
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/le/DistanceMeasurementSession;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method blacklist onStopped(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 130
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/le/DistanceMeasurementSession;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public whitelist stopSession()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mDistanceMeasurement:Landroid/bluetooth/IDistanceMeasurement;

    iget-object v1, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mUuid:Landroid/os/ParcelUuid;

    iget-object v2, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mDistanceMeasurementParams:Landroid/bluetooth/le/DistanceMeasurementParams;

    .line 109
    invoke-virtual {v2}, Landroid/bluetooth/le/DistanceMeasurementParams;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mDistanceMeasurementParams:Landroid/bluetooth/le/DistanceMeasurementParams;

    .line 110
    invoke-virtual {v3}, Landroid/bluetooth/le/DistanceMeasurementParams;->getMethodId()I

    move-result v3

    iget-object v4, p0, Landroid/bluetooth/le/DistanceMeasurementSession;->mAttributionSource:Landroid/content/AttributionSource;

    .line 107
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/bluetooth/IDistanceMeasurement;->stopDistanceMeasurement(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return v0

    .line 112
    :catch_17
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/DistanceMeasurementSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x1

    return v1
.end method
