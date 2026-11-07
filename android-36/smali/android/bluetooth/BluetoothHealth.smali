.class public final Landroid/bluetooth/BluetoothHealth;
.super Ljava/lang/Object;
.source "BluetoothHealth.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist APP_CONFIG_REGISTRATION_FAILURE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist APP_CONFIG_REGISTRATION_SUCCESS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist APP_CONFIG_UNREGISTRATION_FAILURE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist APP_CONFIG_UNREGISTRATION_SUCCESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_TYPE_RELIABLE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_TYPE_STREAMING:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SINK_ROLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_ROLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_CHANNEL_CONNECTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_CHANNEL_CONNECTING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_CHANNEL_DISCONNECTED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_CHANNEL_DISCONNECTING:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-class v0, Landroid/bluetooth/BluetoothHealth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    sget-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    const-string v1, "connectChannelToSource(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    sget-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    const-string v1, "disconnectChannel(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 288
    sget-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    const-string v1, "getConnectedDevices(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 267
    sget-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    const-string v1, "getConnectionState(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 311
    sget-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    const-string v1, "getDevicesMatchingConnectionStates(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    sget-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    const-string v1, "getMainChannelFd(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "service"    # Landroid/os/IBinder;

    .line 112
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 1

    .line 117
    return-void
.end method

.method public whitelist registerSinkAppConfiguration(Ljava/lang/String;ILandroid/bluetooth/BluetoothHealthCallback;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    sget-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    const-string v1, "registerSinkAppConfiguration(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .registers 4
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    sget-object v0, Landroid/bluetooth/BluetoothHealth;->TAG:Ljava/lang/String;

    const-string v1, "unregisterAppConfiguration(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    return v0
.end method
