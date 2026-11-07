.class public final Landroid/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    goto :goto_13

    .line 70
    :cond_11
    iput-object p1, p0, Landroid/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    .line 72
    :goto_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->createAdapter(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getConnectedDevices(I)Ljava/util/List;
    .registers 3
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 128
    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothManager;->getDevicesMatchingConnectionStates(I[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I

    .line 102
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 104
    .local v2, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 105
    const/4 v1, 0x2

    return v1

    .line 107
    .end local v2    # "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1c
    goto :goto_8

    .line 109
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates(I[I)Ljava/util/List;
    .registers 8
    .param p1, "profile"    # I
    .param p2, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 151
    const/4 v0, 0x7

    if-eq p1, v0, :cond_21

    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    goto :goto_21

    .line 152
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_21
    :goto_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 158
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_2f

    .line 159
    return-object v0

    .line 162
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Landroid/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 164
    invoke-interface {v1, p2, v2}, Landroid/bluetooth/IBluetoothGatt;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 163
    invoke-static {v2, v3}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_43} :catch_45

    move-object v0, v2

    .line 169
    goto :goto_4d

    .line 167
    :catch_45
    move-exception v2

    .line 168
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-object v0
.end method

.method public whitelist openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p3, "transport"    # I

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;IZ)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;IZ)Landroid/bluetooth/BluetoothGattServer;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p3, "transport"    # I
    .param p4, "eattSupport"    # Z

    .line 254
    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    .line 261
    iget-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    .line 262
    .local v0, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 263
    sget-object v2, Landroid/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    const-string v3, "Fail to get GATT Server connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-object v1

    .line 266
    :cond_15
    new-instance v2, Landroid/bluetooth/BluetoothGattServer;

    iget-object v3, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v0, p3, v3}, Landroid/bluetooth/BluetoothGattServer;-><init>(Landroid/bluetooth/IBluetoothGatt;ILandroid/bluetooth/BluetoothAdapter;)V

    .line 267
    .local v2, "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v2, p2, p4}, Landroid/bluetooth/BluetoothGattServer;->registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 268
    .local v3, "regStatus":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object v1, v2

    :cond_2b
    return-object v1

    .line 255
    .end local v0    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    .end local v3    # "regStatus":Ljava/lang/Boolean;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;Z)Landroid/bluetooth/BluetoothGattServer;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p3, "eattSupport"    # Z

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;IZ)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    return-object v0
.end method
