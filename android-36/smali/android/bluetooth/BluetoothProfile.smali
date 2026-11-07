.class public interface abstract Landroid/bluetooth/BluetoothProfile;
.super Ljava/lang/Object;
.source "BluetoothProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothProfile$ServiceListener;,
        Landroid/bluetooth/BluetoothProfile$ConnectionPolicy;,
        Landroid/bluetooth/BluetoothProfile$BtProfileState;
    }
.end annotation


# static fields
.field public static final whitelist A2DP:I = 0x2

.field public static final whitelist A2DP_SINK:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist AVRCP:I = 0xd

.field public static final whitelist AVRCP_CONTROLLER:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BATTERY:I = 0x1e

.field public static final whitelist CONNECTION_POLICY_ALLOWED:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECTION_POLICY_FORBIDDEN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECTION_POLICY_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CSIP_SET_COORDINATOR:I = 0x19

.field public static final whitelist EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"

.field public static final whitelist EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.STATE"

.field public static final whitelist GATT:I = 0x7

.field public static final whitelist GATT_SERVER:I = 0x8

.field public static final blacklist GMAP:I = 0x1f

.field public static final whitelist HAP_CLIENT:I = 0x1c

.field public static final whitelist HEADSET:I = 0x1

.field public static final whitelist HEADSET_CLIENT:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HEALTH:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist HEARING_AID:I = 0x15

.field public static final whitelist HID_DEVICE:I = 0x13

.field public static final whitelist HID_HOST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_AUDIO:I = 0x16

.field public static final whitelist LE_AUDIO_BROADCAST:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_AUDIO_BROADCAST_ASSISTANT:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist LE_CALL_CONTROL:I = 0x1b

.field public static final whitelist MAP:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MAP_CLIENT:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MAX_PROFILE_ID:I = 0x1f

.field public static final blacklist MCP_SERVER:I = 0x18

.field public static final whitelist OPP:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PAN:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PBAP:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PBAP_CLIENT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final whitelist PRIORITY_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_ON:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist PRIORITY_UNDEFINED:I = -0x1

.field public static final whitelist SAP:I = 0xa

.field public static final whitelist STATE_CONNECTED:I = 0x2

.field public static final whitelist STATE_CONNECTING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x0

.field public static final whitelist STATE_DISCONNECTING:I = 0x3

.field public static final whitelist VOLUME_CONTROL:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method public static whitelist getConnectionStateName(I)Ljava/lang/String;
    .registers 2
    .param p0, "connectionState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 408
    packed-switch p0, :pswitch_data_12

    .line 418
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 416
    :pswitch_6
    const-string v0, "STATE_DISCONNECTING"

    return-object v0

    .line 414
    :pswitch_9
    const-string v0, "STATE_CONNECTED"

    return-object v0

    .line 412
    :pswitch_c
    const-string v0, "STATE_CONNECTING"

    return-object v0

    .line 410
    :pswitch_f
    const-string v0, "STATE_DISCONNECTED"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getProfileName(I)Ljava/lang/String;
    .registers 3
    .param p0, "profile"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 433
    packed-switch p0, :pswitch_data_6e

    .line 489
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_PROFILE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 487
    :pswitch_1d
    const-string v0, "BATTERY"

    return-object v0

    .line 485
    :pswitch_20
    const-string v0, "LE_AUDIO_BROADCAST_ASSISTANT"

    return-object v0

    .line 483
    :pswitch_23
    const-string v0, "HAP_CLIENT"

    return-object v0

    .line 481
    :pswitch_26
    const-string v0, "LE_CALL_CONTROL"

    return-object v0

    .line 479
    :pswitch_29
    const-string v0, "LE_AUDIO_BROADCAST"

    return-object v0

    .line 477
    :pswitch_2c
    const-string v0, "CSIP_SET_COORDINATOR"

    return-object v0

    .line 475
    :pswitch_2f
    const-string v0, "MCP_SERVER"

    return-object v0

    .line 473
    :pswitch_32
    const-string v0, "VOLUME_CONTROL"

    return-object v0

    .line 471
    :pswitch_35
    const-string v0, "LE_AUDIO"

    return-object v0

    .line 469
    :pswitch_38
    const-string v0, "HEARING_AID"

    return-object v0

    .line 467
    :pswitch_3b
    const-string v0, "OPP"

    return-object v0

    .line 465
    :pswitch_3e
    const-string v0, "HID_DEVICE"

    return-object v0

    .line 463
    :pswitch_41
    const-string v0, "MAP_CLIENT"

    return-object v0

    .line 461
    :pswitch_44
    const-string v0, "PBAP_CLIENT"

    return-object v0

    .line 459
    :pswitch_47
    const-string v0, "HEADSET_CLIENT"

    return-object v0

    .line 457
    :pswitch_4a
    const-string v0, "AVRCP"

    return-object v0

    .line 455
    :pswitch_4d
    const-string v0, "AVRCP_CONTROLLER"

    return-object v0

    .line 453
    :pswitch_50
    const-string v0, "A2DP_SINK"

    return-object v0

    .line 451
    :pswitch_53
    const-string v0, "SAP"

    return-object v0

    .line 449
    :pswitch_56
    const-string v0, "MAP"

    return-object v0

    .line 447
    :pswitch_59
    const-string v0, "GATT_SERVER"

    return-object v0

    .line 445
    :pswitch_5c
    const-string v0, "GATT"

    return-object v0

    .line 443
    :pswitch_5f
    const-string v0, "PBAP"

    return-object v0

    .line 441
    :pswitch_62
    const-string v0, "PAN"

    return-object v0

    .line 439
    :pswitch_65
    const-string v0, "HID_HOST"

    return-object v0

    .line 437
    :pswitch_68
    const-string v0, "A2DP"

    return-object v0

    .line 435
    :pswitch_6b
    const-string v0, "HEADSET"

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_68
        :pswitch_3
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_3
        :pswitch_3
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public abstract blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
.end method

.method public abstract whitelist getConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist onServiceConnected(Landroid/os/IBinder;)V
.end method

.method public abstract blacklist onServiceDisconnected()V
.end method
