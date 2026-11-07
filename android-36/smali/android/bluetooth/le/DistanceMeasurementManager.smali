.class public final Landroid/bluetooth/le/DistanceMeasurementManager;
.super Ljava/lang/Object;
.source "DistanceMeasurementManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mCallbackWrapper:Landroid/bluetooth/le/IDistanceMeasurementCallback;

.field private final blacklist mSessionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/le/DistanceMeasurementSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessionMap(Landroid/bluetooth/le/DistanceMeasurementManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    const-class v0, Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 285
    new-instance v0, Landroid/bluetooth/le/DistanceMeasurementManager$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/le/DistanceMeasurementManager$1;-><init>(Landroid/bluetooth/le/DistanceMeasurementManager;)V

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mCallbackWrapper:Landroid/bluetooth/le/IDistanceMeasurementCallback;

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 82
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mUuid:Landroid/os/ParcelUuid;

    .line 83
    return-void
.end method

.method static synthetic blacklist lambda$startMeasurementSession$0(Landroid/bluetooth/le/DistanceMeasurementSession;)V
    .registers 1
    .param p0, "session"    # Landroid/bluetooth/le/DistanceMeasurementSession;

    .line 156
    invoke-virtual {p0}, Landroid/bluetooth/le/DistanceMeasurementSession;->stopSession()I

    return-void
.end method


# virtual methods
.method public blacklist cleanup()V
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 283
    return-void
.end method

.method public whitelist getChannelSoundingMaxSupportedSecurityLevel(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "defaultValue":I
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getDistanceMeasurement()Landroid/bluetooth/IDistanceMeasurement;

    move-result-object v2

    .line 197
    .local v2, "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    if-nez v2, :cond_15

    .line 198
    sget-object v3, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v4, "Distance Measurement is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v1

    .line 201
    :cond_15
    iget-object v3, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IDistanceMeasurement;->getChannelSoundingMaxSupportedSecurityLevel(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1c

    return v1

    .line 203
    .end local v2    # "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    :catch_1c
    move-exception v2

    .line 204
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get supported security Level - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getChannelSoundingSupportedSecurityLevels()Ljava/util/Set;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 259
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getDistanceMeasurement()Landroid/bluetooth/IDistanceMeasurement;

    move-result-object v0

    .line 260
    .local v0, "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    if-nez v0, :cond_14

    .line 261
    sget-object v1, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v2, "Distance Measurement is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 264
    :cond_14
    iget-object v1, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 265
    invoke-interface {v0, v1}, Landroid/bluetooth/IDistanceMeasurement;->getChannelSoundingSupportedSecurityLevels(Landroid/content/AttributionSource;)[I

    move-result-object v1

    .line 264
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    .line 268
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 264
    return-object v1

    .line 269
    .end local v0    # "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    :catch_2d
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get supported security Level - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalChannelSoundingMaxSupportedSecurityLevel()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "defaultValue":I
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getDistanceMeasurement()Landroid/bluetooth/IDistanceMeasurement;

    move-result-object v2

    .line 229
    .local v2, "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    if-nez v2, :cond_12

    .line 230
    sget-object v3, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v4, "Distance Measurement is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v1

    .line 233
    :cond_12
    iget-object v3, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3}, Landroid/bluetooth/IDistanceMeasurement;->getLocalChannelSoundingMaxSupportedSecurityLevel(Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return v1

    .line 235
    .end local v2    # "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    :catch_19
    move-exception v2

    .line 236
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get supported security Level - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getSupportedMethods()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/DistanceMeasurementMethod;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "supportedMethods":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/DistanceMeasurementMethod;>;"
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getDistanceMeasurement()Landroid/bluetooth/IDistanceMeasurement;

    move-result-object v1

    .line 100
    .local v1, "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    if-nez v1, :cond_15

    .line 101
    sget-object v2, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v3, "Distance Measurement is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v0

    .line 104
    :cond_15
    iget-object v2, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2}, Landroid/bluetooth/IDistanceMeasurement;->getSupportedDistanceMeasurementMethods(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1c

    return-object v2

    .line 105
    .end local v1    # "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    :catch_1c
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get supported methods - "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist startMeasurementSession(Landroid/bluetooth/le/DistanceMeasurementParams;Ljava/util/concurrent/Executor;Landroid/bluetooth/le/DistanceMeasurementSession$Callback;)Landroid/os/CancellationSignal;
    .registers 13
    .param p1, "params"    # Landroid/bluetooth/le/DistanceMeasurementParams;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 138
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 v1, 0x0

    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getDistanceMeasurement()Landroid/bluetooth/IDistanceMeasurement;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_7b

    move-object v3, v0

    .line 143
    .local v3, "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    if-nez v3, :cond_20

    .line 144
    :try_start_13
    sget-object v0, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    const-string v2, "Distance Measurement is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 145
    return-object v1

    .line 167
    .end local v3    # "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    :catch_1b
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    goto :goto_7f

    .line 147
    .restart local v3    # "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    :cond_20
    :try_start_20
    new-instance v2, Landroid/bluetooth/le/DistanceMeasurementSession;

    iget-object v4, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mUuid:Landroid/os/ParcelUuid;

    iget-object v7, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_7b

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    .end local p1    # "params":Landroid/bluetooth/le/DistanceMeasurementParams;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    .local v5, "params":Landroid/bluetooth/le/DistanceMeasurementParams;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v8, "callback":Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    :try_start_29
    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/le/DistanceMeasurementSession;-><init>(Landroid/bluetooth/IDistanceMeasurement;Landroid/os/ParcelUuid;Landroid/bluetooth/le/DistanceMeasurementParams;Ljava/util/concurrent/Executor;Landroid/content/AttributionSource;Landroid/bluetooth/le/DistanceMeasurementSession$Callback;)V

    .line 155
    .local v2, "session":Landroid/bluetooth/le/DistanceMeasurementSession;
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 156
    .local p1, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance p2, Landroid/bluetooth/le/DistanceMeasurementManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, v2}, Landroid/bluetooth/le/DistanceMeasurementManager$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/DistanceMeasurementSession;)V

    invoke-virtual {p1, p2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 158
    iget-object p2, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Landroid/bluetooth/le/DistanceMeasurementParams;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    .line 163
    iget-object p2, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Landroid/bluetooth/le/DistanceMeasurementParams;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object p2, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mUuid:Landroid/os/ParcelUuid;

    iget-object p3, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mCallbackWrapper:Landroid/bluetooth/le/IDistanceMeasurementCallback;

    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, p2, v5, p3, v0}, Landroid/bluetooth/IDistanceMeasurement;->startDistanceMeasurement(Landroid/os/ParcelUuid;Landroid/bluetooth/le/DistanceMeasurementParams;Landroid/bluetooth/le/IDistanceMeasurementCallback;Landroid/content/AttributionSource;)V

    .line 166
    return-object p1

    .line 159
    :cond_58
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-virtual {v5}, Landroid/bluetooth/le/DistanceMeasurementParams;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " already registered"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "params":Landroid/bluetooth/le/DistanceMeasurementParams;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v8    # "callback":Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    .end local p0    # "this":Landroid/bluetooth/le/DistanceMeasurementManager;
    throw p2
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_79} :catch_79

    .line 167
    .end local v2    # "session":Landroid/bluetooth/le/DistanceMeasurementSession;
    .end local v3    # "distanceMeasurement":Landroid/bluetooth/IDistanceMeasurement;
    .end local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local v5    # "params":Landroid/bluetooth/le/DistanceMeasurementParams;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v8    # "callback":Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    .restart local p0    # "this":Landroid/bluetooth/le/DistanceMeasurementManager;
    :catch_79
    move-exception v0

    goto :goto_7f

    .end local v5    # "params":Landroid/bluetooth/le/DistanceMeasurementParams;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v8    # "callback":Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    .local p1, "params":Landroid/bluetooth/le/DistanceMeasurementParams;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    :catch_7b
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    .line 168
    .end local p1    # "params":Landroid/bluetooth/le/DistanceMeasurementParams;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "params":Landroid/bluetooth/le/DistanceMeasurementParams;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v8    # "callback":Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
    :goto_7f
    sget-object p1, Landroid/bluetooth/le/DistanceMeasurementManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method
