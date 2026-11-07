.class public Landroid/bluetooth/BluetoothPbap;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field public static final blacklist RESULT_CANCELED:I = 0x2

.field public static final blacklist RESULT_FAILURE:I = 0x0

.field public static final blacklist RESULT_SUCCESS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mService:Landroid/bluetooth/IBluetoothPbap;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    const-class v0, Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    .line 126
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothPbap;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 301
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 308
    return-void
.end method


# virtual methods
.method public greylist-max-r disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 284
    const-string v0, "disconnect()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v0

    .line 286
    .local v0, "service":Landroid/bluetooth/IBluetoothPbap;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 287
    sget-object v2, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v1

    .line 291
    :cond_14
    :try_start_14
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothPbap;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 292
    const/4 v1, 0x1

    return v1

    .line 293
    :catch_1b
    move-exception v2

    .line 294
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 162
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v0

    .line 164
    .local v0, "service":Landroid/bluetooth/IBluetoothPbap;
    if-nez v0, :cond_17

    .line 165
    sget-object v1, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 169
    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 170
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothPbap;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 169
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_23} :catch_24

    return-object v1

    .line 171
    :catch_24
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    :try_start_17
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v1

    .line 194
    .local v1, "service":Landroid/bluetooth/IBluetoothPbap;
    if-eqz v1, :cond_30

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 195
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothPbap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    .line 197
    :cond_30
    if-nez v1, :cond_39

    .line 198
    sget-object v2, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_39} :catch_3a

    .line 200
    :cond_39
    return v0

    .line 201
    .end local v1    # "service":Landroid/bluetooth/IBluetoothPbap;
    :catch_3a
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 6
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevicesMatchingConnectionStates: states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v0

    .line 218
    .local v0, "service":Landroid/bluetooth/IBluetoothPbap;
    if-nez v0, :cond_2c

    .line 219
    sget-object v1, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 223
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 224
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPbap;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 223
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_38} :catch_39

    return-object v1

    .line 226
    :catch_39
    move-exception v1

    .line 227
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 132
    invoke-static {p1}, Landroid/bluetooth/IBluetoothPbap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    .line 133
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    .line 140
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 257
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v1

    .line 258
    .local v1, "service":Landroid/bluetooth/IBluetoothPbap;
    if-eqz v1, :cond_21

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 259
    if-eqz p2, :cond_1a

    const/16 v2, 0x64

    if-eq p2, v2, :cond_1a

    .line 261
    return v0

    .line 263
    :cond_1a
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, p2, v2}, Landroid/bluetooth/IBluetoothPbap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 265
    :cond_21
    if-nez v1, :cond_2a

    sget-object v2, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 266
    :cond_2a
    return v0

    .line 267
    .end local v1    # "service":Landroid/bluetooth/IBluetoothPbap;
    :catch_2b
    move-exception v1

    .line 268
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v0
.end method
