.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    }
.end annotation


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final SERVICE_DATA_UUID_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    #@a
    .line 73
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    #@c
    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@12
    .line 75
    new-instance v0, Landroid/os/Handler;

    #@14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1b
    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    #@1d
    .line 72
    return-void
.end method

.method private byteLength([B)I
    .locals 1
    .param p1, "array"    # [B

    #@0
    .prologue
    .line 225
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    array-length v0, p1

    #@5
    goto :goto_0
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 356
    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 366
    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .locals 8
    .param p1, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p2, "isFlagsIncluded"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 175
    if-nez p1, :cond_0

    #@3
    return v7

    #@4
    .line 177
    :cond_0
    if-eqz p2, :cond_1

    #@6
    const/4 v4, 0x3

    #@7
    .line 178
    .local v4, "size":I
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    #@a
    move-result-object v7

    #@b
    if-eqz v7, :cond_7

    #@d
    .line 179
    const/4 v2, 0x0

    #@e
    .line 180
    .local v2, "num16BitUuids":I
    const/4 v3, 0x0

    #@f
    .line 181
    .local v3, "num32BitUuids":I
    const/4 v1, 0x0

    #@10
    .line 182
    .local v1, "num128BitUuids":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    #@13
    move-result-object v7

    #@14
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v6

    #@18
    .local v6, "uuid$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_4

    #@1e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Landroid/os/ParcelUuid;

    #@24
    .line 183
    .local v5, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_2

    #@2a
    .line 184
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 177
    .end local v1    # "num128BitUuids":I
    .end local v2    # "num16BitUuids":I
    .end local v3    # "num32BitUuids":I
    .end local v4    # "size":I
    .end local v5    # "uuid":Landroid/os/ParcelUuid;
    .end local v6    # "uuid$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    #@2e
    .restart local v4    # "size":I
    goto :goto_0

    #@2f
    .line 185
    .restart local v1    # "num128BitUuids":I
    .restart local v2    # "num16BitUuids":I
    .restart local v3    # "num32BitUuids":I
    .restart local v5    # "uuid":Landroid/os/ParcelUuid;
    .restart local v6    # "uuid$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_3

    #@35
    .line 186
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_1

    #@38
    .line 188
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 192
    .end local v5    # "uuid":Landroid/os/ParcelUuid;
    :cond_4
    if-eqz v2, :cond_5

    #@3d
    .line 194
    mul-int/lit8 v7, v2, 0x2

    #@3f
    .line 193
    add-int/lit8 v7, v7, 0x2

    #@41
    add-int/2addr v4, v7

    #@42
    .line 197
    :cond_5
    if-eqz v3, :cond_6

    #@44
    .line 199
    mul-int/lit8 v7, v3, 0x4

    #@46
    .line 198
    add-int/lit8 v7, v7, 0x2

    #@48
    add-int/2addr v4, v7

    #@49
    .line 202
    :cond_6
    if-eqz v1, :cond_7

    #@4b
    .line 204
    mul-int/lit8 v7, v1, 0x10

    #@4d
    .line 203
    add-int/lit8 v7, v7, 0x2

    #@4f
    add-int/2addr v4, v7

    #@50
    .line 207
    .end local v1    # "num128BitUuids":I
    .end local v2    # "num16BitUuids":I
    .end local v3    # "num32BitUuids":I
    .end local v6    # "uuid$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    #@53
    move-result-object v7

    #@54
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@57
    move-result-object v7

    #@58
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v6

    #@5c
    .restart local v6    # "uuid$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v7

    #@60
    if-eqz v7, :cond_8

    #@62
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v5

    #@66
    check-cast v5, Landroid/os/ParcelUuid;

    #@68
    .line 209
    .restart local v5    # "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    #@6b
    move-result-object v7

    #@6c
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, [B

    #@72
    invoke-direct {p0, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    #@75
    move-result v7

    #@76
    .line 208
    add-int/lit8 v7, v7, 0x4

    #@78
    add-int/2addr v4, v7

    #@79
    goto :goto_2

    #@7a
    .line 211
    .end local v5    # "uuid":Landroid/os/ParcelUuid;
    :cond_8
    const/4 v0, 0x0

    #@7b
    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    #@7e
    move-result-object v7

    #@7f
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@82
    move-result v7

    #@83
    if-ge v0, v7, :cond_9

    #@85
    .line 213
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@8c
    move-result-object v7

    #@8d
    check-cast v7, [B

    #@8f
    invoke-direct {p0, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    #@92
    move-result v7

    #@93
    .line 212
    add-int/lit8 v7, v7, 0x4

    #@95
    add-int/2addr v4, v7

    #@96
    .line 211
    add-int/lit8 v0, v0, 0x1

    #@98
    goto :goto_3

    #@99
    .line 215
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    #@9c
    move-result v7

    #@9d
    if-eqz v7, :cond_a

    #@9f
    .line 216
    add-int/lit8 v4, v4, 0x3

    #@a1
    .line 218
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    #@a4
    move-result v7

    #@a5
    if-eqz v7, :cond_b

    #@a7
    iget-object v7, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@a9
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    #@ac
    move-result-object v7

    #@ad
    if-eqz v7, :cond_b

    #@af
    .line 219
    iget-object v7, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@b1
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@b8
    move-result v7

    #@b9
    add-int/lit8 v7, v7, 0x2

    #@bb
    add-int/2addr v4, v7

    #@bc
    .line 221
    :cond_b
    return v4
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 169
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 1
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    #@4
    .line 89
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 10
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    #@0
    .prologue
    const/16 v2, 0x1f

    #@2
    .line 109
    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    #@4
    monitor-enter v9

    #@5
    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@7
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    #@a
    .line 111
    if-nez p4, :cond_0

    #@c
    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v2, "callback cannot be null"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 109
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v9

    #@17
    throw v1

    #@18
    .line 114
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_1

    #@20
    .line 115
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@22
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isPeripheralModeSupported()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    #@2b
    move-result v8

    #@2c
    .line 121
    .local v8, "isConnectable":Z
    invoke-direct {p0, p2, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    #@2f
    move-result v1

    #@30
    if-gt v1, v2, :cond_2

    #@32
    .line 122
    const/4 v1, 0x0

    #@33
    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    #@36
    move-result v1

    #@37
    if-le v1, v2, :cond_4

    #@39
    .line 123
    :cond_2
    const/4 v1, 0x1

    #@3a
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    monitor-exit v9

    #@3e
    .line 124
    return-void

    #@3f
    .line 117
    .end local v8    # "isConnectable":Z
    :cond_3
    const/4 v1, 0x5

    #@40
    .line 116
    :try_start_2
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    monitor-exit v9

    #@44
    .line 118
    return-void

    #@45
    .line 126
    .restart local v8    # "isConnectable":Z
    :cond_4
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    #@47
    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_5

    #@4d
    .line 127
    const/4 v1, 0x3

    #@4e
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    monitor-exit v9

    #@52
    .line 128
    return-void

    #@53
    .line 133
    :cond_5
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    #@55
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@58
    move-result-object v6

    #@59
    .line 139
    .local v6, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_5
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    #@5b
    move-object v1, p0

    #@5c
    move-object v2, p4

    #@5d
    move-object v3, p2

    #@5e
    move-object v4, p3

    #@5f
    move-object v5, p1

    #@60
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V

    #@63
    .line 141
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->startRegisteration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@66
    monitor-exit v9

    #@67
    .line 108
    return-void

    #@68
    .line 134
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    .end local v6    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v7

    #@69
    .line 135
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    #@6c
    const-string/jumbo v2, "Failed to get Bluetooth gatt - "

    #@6f
    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    .line 136
    const/4 v1, 0x4

    #@73
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@76
    monitor-exit v9

    #@77
    .line 137
    return-void
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    #@0
    .prologue
    .line 154
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 155
    if-nez p1, :cond_0

    #@5
    .line 156
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "callback cannot be null"

    #@a
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 154
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v2

    #@10
    throw v1

    #@11
    .line 158
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    #@13
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 159
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    if-nez v0, :cond_1

    #@1b
    monitor-exit v2

    #@1c
    return-void

    #@1d
    .line 160
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->stopAdvertising()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 153
    return-void
.end method
