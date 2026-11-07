.class public final Landroid/bluetooth/BluetoothAvrcpController;
.super Ljava/lang/Object;
.source "BluetoothAvrcpController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final blacklist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

.field public static final blacklist ACTION_PLAYER_SETTING:Ljava/lang/String; = "android.bluetooth.avrcp-controller.profile.action.PLAYER_SETTING"

.field private static final blacklist DBG:Z = false

.field public static final blacklist EXTRA_PLAYER_SETTING:Ljava/lang/String; = "android.bluetooth.avrcp-controller.profile.extra.PLAYER_SETTING"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mService:Landroid/bluetooth/IBluetoothAvrcpController;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-class v0, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 106
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 108
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothAvrcpController;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 276
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 280
    sget-object v0, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method


# virtual methods
.method public whitelist test-api finalize()V
    .registers 1

    .line 137
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->getService()Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v0

    .line 146
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-nez v0, :cond_e

    .line 147
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 149
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 151
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 152
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothAvrcpController;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 151
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return-object v1

    .line 153
    :catch_21
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

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

    .line 157
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 188
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->getService()Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v0

    .line 189
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-nez v0, :cond_e

    .line 190
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 192
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 194
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothAvrcpController;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21

    return v1

    .line 195
    :catch_21
    move-exception v1

    .line 196
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

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

    .line 199
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 7
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->getService()Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v0

    .line 167
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-nez v0, :cond_e

    .line 168
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 170
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 172
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 173
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothAvrcpController;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 172
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return-object v1

    .line 175
    :catch_21
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

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

    .line 179
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 211
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->getService()Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v0

    .line 212
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-nez v0, :cond_e

    .line 213
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 215
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 217
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothAvrcpController;->getPlayerSettings(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v1

    .line 218
    :catch_1b
    move-exception v1

    .line 219
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

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

    .line 222
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 114
    invoke-static {p1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 115
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 122
    return-void
.end method

.method public blacklist sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    .line 254
    sget-object v0, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGroupNavigationCmd dev = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->getService()Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v0

    .line 263
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-nez v0, :cond_3a

    .line 264
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 266
    :cond_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 268
    :try_start_40
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothAvrcpController;->sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_46

    .line 271
    goto :goto_70

    .line 269
    :catch_46
    move-exception v1

    .line 270
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

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

    .line 273
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_70
    :goto_70
    return-void
.end method

.method public blacklist setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z
    .registers 7
    .param p1, "plAppSetting"    # Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    .line 233
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->getService()Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v0

    .line 234
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-nez v0, :cond_e

    .line 235
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 237
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 239
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothAvrcpController;->setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;Landroid/content/AttributionSource;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 242
    goto :goto_44

    .line 240
    :catch_1a
    move-exception v1

    .line 241
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothAvrcpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

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

    .line 244
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_44
    :goto_44
    const/4 v1, 0x0

    return v1
.end method
