.class public final Landroid/bluetooth/le/PeriodicAdvertisingManager;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingManager.java"


# static fields
.field private static final blacklist SKIP_MAX:I = 0x1f3

.field private static final blacklist SKIP_MIN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TIMEOUT_MAX:I = 0x4000

.field private static final blacklist TIMEOUT_MIN:I = 0xa


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mCallbackWrappers:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroid/bluetooth/le/PeriodicAdvertisingCallback;",
            "Landroid/bluetooth/le/IPeriodicAdvertisingCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/PeriodicAdvertisingManager;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackWrappers(Landroid/bluetooth/le/PeriodicAdvertisingManager;)Ljava/util/IdentityHashMap;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/IdentityHashMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-class v0, Landroid/bluetooth/le/PeriodicAdvertisingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 3
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/IdentityHashMap;

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 73
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 74
    return-void
.end method

.method static synthetic blacklist lambda$registerSync$0()Landroid/os/Handler;
    .registers 2

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$transferSetInfo$1()Landroid/os/Handler;
    .registers 2

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private blacklist wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 259
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V

    return-object v0
.end method


# virtual methods
.method public blacklist registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .registers 11
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 99
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local p2    # "skip":I
    .end local p3    # "timeout":I
    .end local p4    # "callback":Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .local v1, "scanResult":Landroid/bluetooth/le/ScanResult;
    .local v2, "skip":I
    .local v3, "timeout":I
    .local v4, "callback":Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    .line 100
    return-void
.end method

.method public blacklist registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 130
    if-eqz p4, :cond_78

    .line 134
    if-eqz p1, :cond_6e

    .line 138
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_64

    .line 142
    if-ltz p2, :cond_59

    const/16 v0, 0x1f3

    if-gt p2, v0, :cond_59

    .line 147
    const/16 v0, 0xa

    if-lt p3, v0, :cond_4e

    const/16 v0, 0x4000

    if-gt p3, v0, :cond_4e

    .line 152
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    move-object p5, v0

    check-cast p5, Landroid/os/Handler;

    .line 154
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v5

    .line 155
    .local v5, "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothScan()Landroid/bluetooth/IBluetoothScan;

    move-result-object v1

    .line 159
    .local v1, "scan":Landroid/bluetooth/IBluetoothScan;
    :try_start_35
    iget-object v6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_37} :catch_41

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local p2    # "skip":I
    .end local p3    # "timeout":I
    .local v2, "scanResult":Landroid/bluetooth/le/ScanResult;
    .local v3, "skip":I
    .local v4, "timeout":I
    :try_start_3a
    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothScan;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 162
    goto :goto_4d

    .line 160
    :catch_3e
    move-exception v0

    move-object p1, v0

    goto :goto_46

    .end local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local v3    # "skip":I
    .end local v4    # "timeout":I
    .restart local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local p2    # "skip":I
    .restart local p3    # "timeout":I
    :catch_41
    move-exception v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 161
    .end local p2    # "skip":I
    .end local p3    # "timeout":I
    .restart local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local v3    # "skip":I
    .restart local v4    # "timeout":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_46
    sget-object p2, Landroid/bluetooth/le/PeriodicAdvertisingManager;->TAG:Ljava/lang/String;

    const-string p3, "Failed to register sync - "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-void

    .line 147
    .end local v1    # "scan":Landroid/bluetooth/IBluetoothScan;
    .end local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local v3    # "skip":I
    .end local v4    # "timeout":I
    .end local v5    # "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .local p1, "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local p2    # "skip":I
    .restart local p3    # "timeout":I
    :cond_4e
    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 148
    .end local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local p2    # "skip":I
    .end local p3    # "timeout":I
    .restart local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local v3    # "skip":I
    .restart local v4    # "timeout":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must be between 10 and 16384"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    .end local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local v3    # "skip":I
    .end local v4    # "timeout":I
    .restart local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local p2    # "skip":I
    .restart local p3    # "timeout":I
    :cond_59
    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 143
    .end local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local p2    # "skip":I
    .end local p3    # "timeout":I
    .restart local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local v3    # "skip":I
    .restart local v4    # "timeout":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "skip must be between 0 and 499"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    .end local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local v3    # "skip":I
    .end local v4    # "timeout":I
    .restart local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local p2    # "skip":I
    .restart local p3    # "timeout":I
    :cond_64
    move-object v2, p1

    move v3, p2

    .end local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local p2    # "skip":I
    .restart local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local v3    # "skip":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scanResult must contain a valid sid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    .end local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local v3    # "skip":I
    .restart local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local p2    # "skip":I
    :cond_6e
    move-object v2, p1

    move v3, p2

    .end local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local p2    # "skip":I
    .restart local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local v3    # "skip":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scanResult can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    .end local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local v3    # "skip":I
    .restart local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local p2    # "skip":I
    :cond_78
    move-object v2, p1

    move v3, p2

    .end local p1    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .end local p2    # "skip":I
    .restart local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    .restart local v3    # "skip":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .registers 11
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "advHandle"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 221
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "bda":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "serviceData":I
    .end local p3    # "advHandle":I
    .end local p4    # "callback":Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .local v1, "bda":Landroid/bluetooth/BluetoothDevice;
    .local v2, "serviceData":I
    .local v3, "advHandle":I
    .local v4, "callback":Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    .line 222
    return-void
.end method

.method public blacklist transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "advHandle"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 237
    if-eqz p4, :cond_3d

    .line 241
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    move-object p5, v0

    check-cast p5, Landroid/os/Handler;

    .line 243
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v5

    .line 244
    .local v5, "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    if-eqz v5, :cond_33

    .line 248
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothScan()Landroid/bluetooth/IBluetoothScan;

    move-result-object v1

    .line 250
    .local v1, "scan":Landroid/bluetooth/IBluetoothScan;
    :try_start_1a
    iget-object v6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1c} :catch_26

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "bda":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "serviceData":I
    .end local p3    # "advHandle":I
    .local v2, "bda":Landroid/bluetooth/BluetoothDevice;
    .local v3, "serviceData":I
    .local v4, "advHandle":I
    :try_start_1f
    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothScan;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 253
    goto :goto_32

    .line 251
    :catch_23
    move-exception v0

    move-object p1, v0

    goto :goto_2b

    .end local v2    # "bda":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "serviceData":I
    .end local v4    # "advHandle":I
    .restart local p1    # "bda":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "serviceData":I
    .restart local p3    # "advHandle":I
    :catch_26
    move-exception v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 252
    .end local p2    # "serviceData":I
    .end local p3    # "advHandle":I
    .restart local v2    # "bda":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "serviceData":I
    .restart local v4    # "advHandle":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2b
    sget-object p2, Landroid/bluetooth/le/PeriodicAdvertisingManager;->TAG:Ljava/lang/String;

    const-string p3, "Failed to register sync - "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void

    .line 245
    .end local v1    # "scan":Landroid/bluetooth/IBluetoothScan;
    .end local v2    # "bda":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "serviceData":I
    .end local v4    # "advHandle":I
    .local p1, "bda":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "serviceData":I
    .restart local p3    # "advHandle":I
    :cond_33
    move-object v2, p1

    move v3, p2

    .end local p1    # "bda":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "serviceData":I
    .restart local v2    # "bda":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "serviceData":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback was not properly registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    .end local v2    # "bda":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "serviceData":I
    .end local v5    # "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .restart local p1    # "bda":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "serviceData":I
    :cond_3d
    move-object v2, p1

    move v3, p2

    .end local p1    # "bda":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "serviceData":I
    .restart local v2    # "bda":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "serviceData":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist transferSync(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 8
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "syncHandle"    # I

    .line 201
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothScan()Landroid/bluetooth/IBluetoothScan;

    move-result-object v0

    .line 203
    .local v0, "scan":Landroid/bluetooth/IBluetoothScan;
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothScan;->transferSync(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 206
    goto :goto_14

    .line 204
    :catch_c
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/le/PeriodicAdvertisingManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to register sync - "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public blacklist unregisterSync(Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 176
    if-eqz p1, :cond_29

    .line 180
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 181
    .local v0, "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    if-eqz v0, :cond_21

    .line 185
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothScan()Landroid/bluetooth/IBluetoothScan;

    move-result-object v1

    .line 187
    .local v1, "scan":Landroid/bluetooth/IBluetoothScan;
    :try_start_12
    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v2}, Landroid/bluetooth/IBluetoothScan;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    .line 190
    goto :goto_20

    .line 188
    :catch_18
    move-exception v2

    .line 189
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/le/PeriodicAdvertisingManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to cancel sync creation - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void

    .line 182
    .end local v1    # "scan":Landroid/bluetooth/IBluetoothScan;
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback was not properly registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    .end local v0    # "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
