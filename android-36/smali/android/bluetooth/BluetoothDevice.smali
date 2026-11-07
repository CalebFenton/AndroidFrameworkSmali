.class public final Landroid/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/bluetooth/Attributable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDevice$BluetoothAddress;,
        Landroid/bluetooth/BluetoothDevice$BluetoothCache;,
        Landroid/bluetooth/BluetoothDevice$SetMicrophonePreferredForCallsReturnValues;,
        Landroid/bluetooth/BluetoothDevice$ActiveAudioDevicePolicy;,
        Landroid/bluetooth/BluetoothDevice$SetActiveAudioDevicePolicyReturnValues;,
        Landroid/bluetooth/BluetoothDevice$AudioPolicyReturnValues;,
        Landroid/bluetooth/BluetoothDevice$AudioPolicyRemoteSupport;,
        Landroid/bluetooth/BluetoothDevice$ConnectionReturnValues;,
        Landroid/bluetooth/BluetoothDevice$SetAliasReturnValues;,
        Landroid/bluetooth/BluetoothDevice$AddressType;,
        Landroid/bluetooth/BluetoothDevice$Transport;,
        Landroid/bluetooth/BluetoothDevice$AccessPermission;,
        Landroid/bluetooth/BluetoothDevice$MetadataKey;
    }
.end annotation


# static fields
.field public static final whitelist ACCESS_ALLOWED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_REJECTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final whitelist ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final whitelist ACTION_ACL_DISCONNECT_REQUESTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

.field public static final whitelist ACTION_ALIAS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.ALIAS_CHANGED"

.field public static final whitelist ACTION_BATTERY_LEVEL_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final whitelist ACTION_CLASS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.CLASS_CHANGED"

.field public static final whitelist ACTION_CONNECTION_ACCESS_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONNECTION_ACCESS_REPLY:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONNECTION_ACCESS_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ENCRYPTION_CHANGE:Ljava/lang/String; = "android.bluetooth.device.action.ENCRYPTION_CHANGE"

.field public static final whitelist ACTION_FOUND:Ljava/lang/String; = "android.bluetooth.device.action.FOUND"

.field public static final whitelist ACTION_KEY_MISSING:Ljava/lang/String; = "android.bluetooth.device.action.KEY_MISSING"

.field public static final blacklist ACTION_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.action.MAS_INSTANCE"

.field public static final whitelist ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final blacklist ACTION_NAME_FAILED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_FAILED"

.field public static final whitelist ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final greylist-max-r ACTION_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.action.SDP_RECORD"

.field public static final whitelist ACTION_SILENCE_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.SILENCE_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SWITCH_BUFFER_SIZE:Ljava/lang/String; = "android.bluetooth.device.action.SWITCH_BUFFER_SIZE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final whitelist ACTIVE_AUDIO_DEVICE_POLICY_ALL_PROFILES_ACTIVE_UPON_CONNECTION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTIVE_AUDIO_DEVICE_POLICY_ALL_PROFILES_INACTIVE_UPON_CONNECTION:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTIVE_AUDIO_DEVICE_POLICY_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADDRESS_TYPE_ANONYMOUS:I = 0xff

.field public static final whitelist ADDRESS_TYPE_PUBLIC:I = 0x0

.field public static final whitelist ADDRESS_TYPE_RANDOM:I = 0x1

.field public static final whitelist ADDRESS_TYPE_UNKNOWN:I = 0xffff

.field public static final whitelist BATTERY_LEVEL_BLUETOOTH_OFF:I = -0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BATTERY_LEVEL_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BOND_BONDED:I = 0xc

.field public static final whitelist BOND_BONDING:I = 0xb

.field public static final whitelist BOND_NONE:I = 0xa

.field public static final blacklist BOND_SUCCESS:I = 0x0

.field private static final blacklist CHANGE_TO_STRING_REDACTED:J = 0xfcd2816L

.field public static final blacklist COMPANION_TYPE_NONE:Ljava/lang/String; = "COMPANION_NONE"

.field public static final blacklist COMPANION_TYPE_PRIMARY:Ljava/lang/String; = "COMPANION_PRIMARY"

.field public static final blacklist COMPANION_TYPE_SECONDARY:Ljava/lang/String; = "COMPANION_SECONDARY"

.field public static final whitelist CONNECTION_ACCESS_NO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECTION_ACCESS_YES:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CONNECTION_STATE_CONNECTED:I = 0x1

.field public static final blacklist CONNECTION_STATE_DISCONNECTED:I = 0x0

.field public static final blacklist CONNECTION_STATE_ENCRYPTED_BREDR:I = 0x2

.field public static final blacklist CONNECTION_STATE_ENCRYPTED_LE:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field public static final whitelist DEVICE_TYPE_CARKIT:Ljava/lang/String; = "Carkit"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_CLASSIC:I = 0x1

.field public static final whitelist DEVICE_TYPE_DEFAULT:Ljava/lang/String; = "Default"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_DUAL:I = 0x3

.field public static final whitelist DEVICE_TYPE_HEADSET:Ljava/lang/String; = "Headset"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_HEARING_AID:Ljava/lang/String; = "HearingAid"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_LE:I = 0x2

.field public static final whitelist DEVICE_TYPE_SPEAKER:Ljava/lang/String; = "Speaker"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_STYLUS:Ljava/lang/String; = "Stylus"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist DEVICE_TYPE_UNTETHERED_HEADSET:Ljava/lang/String; = "Untethered Headset"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_WATCH:Ljava/lang/String; = "Watch"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENCRYPTION_ALGORITHM_AES:I = 0x2

.field public static final whitelist ENCRYPTION_ALGORITHM_E0:I = 0x1

.field public static final whitelist ENCRYPTION_ALGORITHM_NONE:I = 0x0

.field public static final whitelist ERROR:I = -0x80000000

.field public static final whitelist EXTRA_ACCESS_REQUEST_TYPE:Ljava/lang/String; = "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ALWAYS_ALLOWED:Ljava/lang/String; = "android.bluetooth.device.extra.ALWAYS_ALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.device.extra.BATTERY_LEVEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final whitelist EXTRA_CLASS:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS"

.field public static final blacklist EXTRA_CLASS_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS_NAME"

.field public static final whitelist EXTRA_CONNECTION_ACCESS_RESULT:Ljava/lang/String; = "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field public static final whitelist EXTRA_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "android.bluetooth.device.extra.EXTRA_ENCRYPTION_ALGORITHM"

.field public static final whitelist EXTRA_ENCRYPTION_ENABLED:Ljava/lang/String; = "android.bluetooth.device.extra.ENCRYPTION_ENABLED"

.field public static final whitelist EXTRA_ENCRYPTION_STATUS:Ljava/lang/String; = "android.bluetooth.device.extra.ENCRYPTION_STATUS"

.field public static final whitelist EXTRA_IS_COORDINATED_SET_MEMBER:Ljava/lang/String; = "android.bluetooth.extra.IS_COORDINATED_SET_MEMBER"

.field public static final whitelist EXTRA_KEY_SIZE:Ljava/lang/String; = "android.bluetooth.device.extra.KEY_SIZE"

.field public static final whitelist EXTRA_LOW_LATENCY_BUFFER_SIZE:Ljava/lang/String; = "android.bluetooth.device.extra.LOW_LATENCY_BUFFER_SIZE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.extra.MAS_INSTANCE"

.field public static final whitelist EXTRA_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.NAME"

.field public static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_PAIRING_INITIATOR:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_INITIATOR"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PAIRING_INITIATOR_BACKGROUND:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PAIRING_INITIATOR_FOREGROUND:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PAIRING_KEY:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_KEY"

.field public static final whitelist EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final whitelist EXTRA_PREVIOUS_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

.field public static final greylist EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final whitelist EXTRA_RSSI:Ljava/lang/String; = "android.bluetooth.device.extra.RSSI"

.field public static final blacklist EXTRA_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_RECORD"

.field public static final greylist-max-r EXTRA_SDP_SEARCH_STATUS:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

.field public static final whitelist EXTRA_TRANSPORT:Ljava/lang/String; = "android.bluetooth.device.extra.TRANSPORT"

.field public static final whitelist EXTRA_UNBOND_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field private static final blacklist GET_BOND_STATE_API:Ljava/lang/String; = "BluetoothDevice_getBondState"

.field public static final whitelist METADATA_COMPANION_APP:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_DEVICE_TYPE:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_ENHANCED_SETTINGS_UI_URI:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_EXCLUSIVE_MANAGER:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist METADATA_FAST_PAIR_CUSTOMIZED_FIELDS:I = 0x19

.field public static final blacklist METADATA_GMCS_CCCD:I = 0x1b

.field public static final blacklist METADATA_GTBS_CCCD:I = 0x1c

.field public static final whitelist METADATA_HARDWARE_VERSION:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist METADATA_HEAD_UNIT_BUILD:I = 0x21
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist METADATA_HEAD_UNIT_MANUFACTURER_NAME:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist METADATA_HEAD_UNIT_MODEL_NAME:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist METADATA_HEAD_UNIT_SOFTWARE_VERSION:I = 0x22
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_IS_UNTETHERED_HEADSET:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_LE_AUDIO:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_MAIN_BATTERY:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_MAIN_CHARGING:I = 0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_MAIN_ICON:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_MAIN_LOW_BATTERY_THRESHOLD:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_MANUFACTURER_NAME:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist METADATA_MAX_KEY:I = 0x1d

.field public static final whitelist METADATA_MAX_LENGTH:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_MODEL_NAME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist METADATA_MODEL_YEAR:I = 0x1e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_SOFTWARE_VERSION:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist METADATA_SPATIAL_AUDIO:I = 0x18

.field public static final whitelist METADATA_UNTETHERED_CASE_BATTERY:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_CASE_CHARGING:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_CASE_ICON:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_CASE_LOW_BATTERY_THRESHOLD:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_LEFT_BATTERY:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_LEFT_CHARGING:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_LEFT_ICON:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_LEFT_LOW_BATTERY_THRESHOLD:I = 0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_RIGHT_BATTERY:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_RIGHT_CHARGING:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_RIGHT_ICON:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METADATA_UNTETHERED_RIGHT_LOW_BATTERY_THRESHOLD:I = 0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist NULL_MAC_ADDRESS:Ljava/lang/String; = "00:00:00:00:00:00"

.field public static final whitelist PAIRING_VARIANT_CONSENT:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PAIRING_VARIANT_DISPLAY_PIN:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PAIRING_VARIANT_OOB_CONSENT:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PAIRING_VARIANT_PASSKEY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final whitelist PAIRING_VARIANT_PIN:I = 0x0

.field public static final whitelist PAIRING_VARIANT_PIN_16_DIGITS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PHY_LE_1M:I = 0x1

.field public static final whitelist PHY_LE_1M_MASK:I = 0x1

.field public static final whitelist PHY_LE_2M:I = 0x2

.field public static final whitelist PHY_LE_2M_MASK:I = 0x2

.field public static final whitelist PHY_LE_CODED:I = 0x3

.field public static final whitelist PHY_LE_CODED_MASK:I = 0x4

.field public static final whitelist PHY_OPTION_NO_PREFERRED:I = 0x0

.field public static final whitelist PHY_OPTION_S2:I = 0x1

.field public static final whitelist PHY_OPTION_S8:I = 0x2

.field public static final whitelist REQUEST_TYPE_MESSAGE_ACCESS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUEST_TYPE_PHONEBOOK_ACCESS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUEST_TYPE_PROFILE_CONNECTION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUEST_TYPE_SIM_ACCESS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist TRANSPORT_AUTO:I = 0x0

.field public static final whitelist TRANSPORT_BREDR:I = 0x1

.field public static final whitelist TRANSPORT_LE:I = 0x2

.field public static final whitelist UNBOND_REASON_AUTH_CANCELED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNBOND_REASON_AUTH_FAILED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNBOND_REASON_AUTH_REJECTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNBOND_REASON_AUTH_TIMEOUT:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNBOND_REASON_REMOVED:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist sBluetoothBondCache:Landroid/bluetooth/BluetoothDevice$BluetoothCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothDevice$BluetoothCache<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/IBluetooth;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBluetoothBondQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/IBluetooth;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAddress:Ljava/lang/String;

.field private final blacklist mAddressType:I

.field private blacklist mAttributionSource:Landroid/content/AttributionSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 95
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    .line 1638
    new-instance v0, Landroid/bluetooth/BluetoothDevice$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2129
    new-instance v0, Landroid/bluetooth/BluetoothDevice$2;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$2;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->sBluetoothBondQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 2156
    new-instance v0, Landroid/bluetooth/BluetoothDevice$BluetoothCache;

    const-string v1, "BluetoothDevice_getBondState"

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sBluetoothBondQuery:Landroid/os/IpcDataCache$QueryHandler;

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->sBluetoothBondCache:Landroid/bluetooth/BluetoothDevice$BluetoothCache;

    return-void
.end method

.method constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1576
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;I)V

    .line 1577
    return-void
.end method

.method constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 1563
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;I)V

    .line 1564
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "addressType"    # I

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1535
    const/16 v0, 0xff

    if-eqz p2, :cond_2c

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2c

    if-ne p2, v0, :cond_13

    goto :goto_2c

    .line 1538
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a Bluetooth address type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1541
    :cond_2c
    :goto_2c
    if-ne p2, v0, :cond_54

    const-string v0, "00:00:00:00:00:00"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_54

    .line 1542
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address for anonymous address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1544
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1547
    :cond_54
    :goto_54
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    .line 1548
    iput p2, p0, Landroid/bluetooth/BluetoothDevice;->mAddressType:I

    .line 1549
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1550
    return-void

    .line 1532
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid Bluetooth address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist convertPinToBytes(Ljava/lang/String;)[B
    .registers 5
    .param p0, "pin"    # Ljava/lang/String;

    .line 3094
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3095
    return-object v0

    .line 3097
    :cond_4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 3098
    .local v1, "pinBytes":[B
    array-length v2, v1

    if-lez v2, :cond_14

    array-length v2, v1

    const/16 v3, 0x10

    if-le v2, v3, :cond_13

    goto :goto_14

    .line 3101
    :cond_13
    return-object v1

    .line 3099
    :cond_14
    :goto_14
    return-object v0
.end method

.method public static blacklist getMaxMetadataKey()I
    .registers 1

    .line 3461
    const/16 v0, 0x1d

    return v0
.end method

.method static blacklist getService()Landroid/bluetooth/IBluetooth;
    .registers 1

    .line 1517
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist invalidateBluetoothGetBondStateCache()V
    .registers 1

    .line 2165
    const-string v0, "BluetoothDevice_getBondState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->invalidateCache(Ljava/lang/String;)V

    .line 2166
    return-void
.end method

.method private static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 2
    .param p0, "api"    # Ljava/lang/String;

    .line 2124
    const-string v0, "bluetooth"

    invoke-static {v0, p0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 3820
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    return-void
.end method


# virtual methods
.method public whitelist canBondWithoutDialog()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2211
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2212
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2217
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->canBondWithoutDialog(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2218
    :catch_14
    move-exception v1

    .line 2219
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2213
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot check if we can skip pairing dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist cancelBondProcess()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2054
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2055
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_79

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_79

    .line 2059
    :cond_d
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelBondProcess() for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called by pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2063
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2064
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2059
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :try_start_47
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_4e

    return v1

    .line 2067
    :catch_4e
    move-exception v1

    .line 2068
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_80

    .line 2056
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_79
    :goto_79
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot cancel Remote Device bond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :goto_80
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist connect()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2280
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2283
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2284
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_27

    .line 2289
    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    return v1

    .line 2290
    :catch_1e
    move-exception v1

    .line 2291
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 2285
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot connect to remote device."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :goto_2e
    const/4 v1, 0x1

    return v1

    .line 2281
    .end local v0    # "service":Landroid/bluetooth/IBluetooth;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot have an invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .line 3119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public whitelist connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I

    .line 3140
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "autoConnect":Z
    .end local p3    # "callback":Landroid/bluetooth/BluetoothGattCallback;
    .end local p4    # "transport":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "autoConnect":Z
    .local v3, "callback":Landroid/bluetooth/BluetoothGattCallback;
    .local v4, "transport":I
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method public whitelist connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I
    .param p5, "phy"    # I

    .line 3169
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "autoConnect":Z
    .end local p3    # "callback":Landroid/bluetooth/BluetoothGattCallback;
    .end local p4    # "transport":I
    .end local p5    # "phy":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "autoConnect":Z
    .local v3, "callback":Landroid/bluetooth/BluetoothGattCallback;
    .local v4, "transport":I
    .local v5, "phy":I
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method public whitelist connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I
    .param p5, "phy"    # I
    .param p6, "handler"    # Landroid/os/Handler;

    .line 3201
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "autoConnect":Z
    .end local p3    # "callback":Landroid/bluetooth/BluetoothGattCallback;
    .end local p4    # "transport":I
    .end local p5    # "phy":I
    .end local p6    # "handler":Landroid/os/Handler;
    .local v1, "context":Landroid/content/Context;
    .local v2, "autoConnect":Z
    .local v3, "callback":Landroid/bluetooth/BluetoothGattCallback;
    .local v4, "transport":I
    .local v6, "phy":I
    .local v7, "handler":Landroid/os/Handler;
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IZILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IZILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I
    .param p5, "opportunistic"    # Z
    .param p6, "phy"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    .line 3240
    if-eqz p3, :cond_46

    .line 3246
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 3247
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    const/4 v0, 0x0

    if-nez v2, :cond_e

    .line 3249
    return-object v0

    .line 3250
    :cond_e
    const-string v1, "00:00:00:00:00:00"

    iget-object v3, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3251
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to connect gatt, invalid address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    return-object v0

    .line 3254
    :cond_33
    new-instance v1, Landroid/bluetooth/BluetoothGatt;

    iget-object v7, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p0

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p4    # "transport":I
    .end local p5    # "opportunistic":Z
    .end local p6    # "phy":I
    .local v4, "transport":I
    .local v5, "opportunistic":Z
    .local v6, "phy":I
    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothGatt;-><init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;IZILandroid/content/AttributionSource;)V

    .line 3256
    .local v1, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {v1, p4, p3, p7}, Landroid/bluetooth/BluetoothGatt;->connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z

    .line 3257
    return-object v1

    .line 3241
    .end local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "transport":I
    .end local v5    # "opportunistic":Z
    .end local v6    # "phy":I
    .restart local p4    # "transport":I
    .restart local p5    # "opportunistic":Z
    .restart local p6    # "phy":I
    :cond_46
    move v4, p4

    move v5, p5

    .end local p4    # "transport":I
    .end local p5    # "opportunistic":Z
    .restart local v4    # "transport":I
    .restart local v5    # "opportunistic":Z
    new-instance p4, Ljava/lang/NullPointerException;

    const-string p5, "callback is null"

    invoke-direct {p4, p5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public whitelist createBond()Z
    .registers 2

    .line 1930
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result v0

    return v0
.end method

.method public whitelist createBond(I)Z
    .registers 7
    .param p1, "transport"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1954
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1955
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_64

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_64

    .line 1958
    :cond_d
    const-string v1, "00:00:00:00:00:00"

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1959
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create bond, invalid address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1962
    :cond_32
    :try_start_32
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_39

    return v1

    .line 1963
    :catch_39
    move-exception v1

    .line 1964
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_6b

    .line 1956
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled, createBond failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :goto_6b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist createBondOutOfBand(ILandroid/bluetooth/OobData;Landroid/bluetooth/OobData;)Z
    .registers 11
    .param p1, "transport"    # I
    .param p2, "remoteP192Data"    # Landroid/bluetooth/OobData;
    .param p3, "remoteP256Data"    # Landroid/bluetooth/OobData;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1995
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 1997
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez p2, :cond_11

    if-eqz p3, :cond_9

    goto :goto_11

    .line 1998
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or both arguments for the OOB data types are required to not be null.  Please use createBond() instead if you do not have OOB data to pass."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2002
    :cond_11
    :goto_11
    if-eqz v1, :cond_83

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    goto/16 :goto_86

    .line 2005
    :cond_1e
    const-string v0, "00:00:00:00:00:00"

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2006
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create bond Out of Band, invalid address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_8d

    .line 2009
    :cond_46
    :try_start_46
    iget-object v6, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_48} :catch_54

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "transport":I
    .end local p2    # "remoteP192Data":Landroid/bluetooth/OobData;
    .end local p3    # "remoteP256Data":Landroid/bluetooth/OobData;
    .local v3, "transport":I
    .local v4, "remoteP192Data":Landroid/bluetooth/OobData;
    .local v5, "remoteP256Data":Landroid/bluetooth/OobData;
    :try_start_4c
    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetooth;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Landroid/bluetooth/OobData;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_50} :catch_51

    return p1

    .line 2011
    :catch_51
    move-exception v0

    move-object p1, v0

    goto :goto_59

    .end local v3    # "transport":I
    .end local v4    # "remoteP192Data":Landroid/bluetooth/OobData;
    .end local v5    # "remoteP256Data":Landroid/bluetooth/OobData;
    .restart local p1    # "transport":I
    .restart local p2    # "remoteP192Data":Landroid/bluetooth/OobData;
    .restart local p3    # "remoteP256Data":Landroid/bluetooth/OobData;
    :catch_54
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 2012
    .end local p2    # "remoteP192Data":Landroid/bluetooth/OobData;
    .end local p3    # "remoteP256Data":Landroid/bluetooth/OobData;
    .restart local v3    # "transport":I
    .restart local v4    # "remoteP192Data":Landroid/bluetooth/OobData;
    .restart local v5    # "remoteP256Data":Landroid/bluetooth/OobData;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_59
    sget-object p2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 2002
    .end local v3    # "transport":I
    .end local v4    # "remoteP192Data":Landroid/bluetooth/OobData;
    .end local v5    # "remoteP256Data":Landroid/bluetooth/OobData;
    .local p1, "transport":I
    .restart local p2    # "remoteP192Data":Landroid/bluetooth/OobData;
    .restart local p3    # "remoteP256Data":Landroid/bluetooth/OobData;
    :cond_83
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2003
    .end local p1    # "transport":I
    .end local p2    # "remoteP192Data":Landroid/bluetooth/OobData;
    .end local p3    # "remoteP256Data":Landroid/bluetooth/OobData;
    .restart local v3    # "transport":I
    .restart local v4    # "remoteP192Data":Landroid/bluetooth/OobData;
    .restart local v5    # "remoteP256Data":Landroid/bluetooth/OobData;
    :goto_86
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string p2, "BT not enabled, createBondOutOfBand failed"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :goto_8d
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist createInsecureL2capChannel(I)Landroid/bluetooth/BluetoothSocket;
    .registers 10
    .param p1, "psm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3316
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3323
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v2, p0

    move v6, p1

    .end local p1    # "psm":I
    .local v6, "psm":I
    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v1

    .line 3317
    .end local v6    # "psm":I
    .restart local p1    # "psm":I
    :cond_12
    move v6, p1

    .end local p1    # "psm":I
    .restart local v6    # "psm":I
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v0, "createInsecureL2capChannel: Bluetooth is not enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public blacklist createInsecureL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    .registers 9
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2958
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v1, p0

    move v5, p1

    .end local p1    # "channel":I
    .local v5, "channel":I
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public greylist createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .registers 10
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3057
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3061
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    move v6, p1

    .end local p1    # "port":I
    .local v6, "port":I
    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v1

    .line 3058
    .end local v6    # "port":I
    .restart local p1    # "port":I
    :cond_12
    move v6, p1

    .end local p1    # "port":I
    .restart local v6    # "port":I
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v0, "Bluetooth is not enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public whitelist createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .registers 10
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3033
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3037
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v1

    .line 3034
    :cond_16
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist createL2capChannel(I)Landroid/bluetooth/BluetoothSocket;
    .registers 10
    .param p1, "psm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3285
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3290
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object v2, p0

    move v6, p1

    .end local p1    # "psm":I
    .local v6, "psm":I
    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v1

    .line 3286
    .end local v6    # "psm":I
    .restart local p1    # "psm":I
    :cond_12
    move v6, p1

    .end local p1    # "psm":I
    .restart local v6    # "psm":I
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v0, "createL2capChannel: Bluetooth is not enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public blacklist createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    .registers 9
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2936
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object v1, p0

    move v5, p1

    .end local p1    # "channel":I
    .local v5, "channel":I
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public greylist createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .registers 10
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2903
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2907
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v2, p0

    move v6, p1

    .end local p1    # "channel":I
    .local v6, "channel":I
    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v1

    .line 2904
    .end local v6    # "channel":I
    .restart local p1    # "channel":I
    :cond_12
    move v6, p1

    .end local p1    # "channel":I
    .restart local v6    # "channel":I
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v0, "Bluetooth is not enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public whitelist createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .registers 10
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2993
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2998
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v1

    .line 2994
    :cond_16
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public greylist createScoSocket()Landroid/bluetooth/BluetoothSocket;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3076
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3080
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    return-object v1

    .line 3077
    :cond_12
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist createUsingSocketSettings(Landroid/bluetooth/BluetoothSocketSettings;)Landroid/bluetooth/BluetoothSocket;
    .registers 19
    .param p1, "settings"    # Landroid/bluetooth/BluetoothSocketSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3352
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 3359
    const/4 v0, 0x0

    .line 3360
    .local v0, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getL2capPsm()I

    move-result v6

    .line 3361
    .local v6, "psm":I
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 3362
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRfcommUuid()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 3365
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRfcommUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object v0, v1

    move-object v7, v0

    goto :goto_56

    .line 3363
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null uuid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3366
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_55

    .line 3367
    const/16 v1, 0x80

    if-lt v6, v1, :cond_3c

    const/16 v1, 0xff

    if-gt v6, v1, :cond_3c

    goto :goto_55

    .line 3368
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid PSM/Channel value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3371
    :cond_55
    :goto_55
    move-object v7, v0

    .end local v0    # "uuid":Landroid/os/ParcelUuid;
    .local v7, "uuid":Landroid/os/ParcelUuid;
    :goto_56
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getDataPath()I

    move-result v0

    if-nez v0, :cond_70

    .line 3372
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    .line 3374
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v3

    .line 3375
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isAuthenticationRequired()Z

    move-result v4

    .line 3376
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isEncryptionRequired()Z

    move-result v5

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    .line 3372
    return-object v1

    .line 3380
    :cond_70
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    .line 3382
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v3

    .line 3383
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isAuthenticationRequired()Z

    move-result v4

    .line 3384
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isEncryptionRequired()Z

    move-result v5

    .line 3389
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getDataPath()I

    move-result v10

    .line 3390
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketName()Ljava/lang/String;

    move-result-object v11

    .line 3391
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getHubId()J

    move-result-wide v12

    .line 3392
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getEndpointId()J

    move-result-wide v14

    .line 3393
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRequestedMaximumPacketSize()I

    move-result v16

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V

    .line 3380
    return-object v1

    .line 3353
    .end local v6    # "psm":I
    .end local v7    # "uuid":Landroid/os/ParcelUuid;
    :cond_9a
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v1, "createUsingSocketSettings: Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1635
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableBluetoothGetBondStateCache()V
    .registers 2

    .line 2160
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sBluetoothBondCache:Landroid/bluetooth/BluetoothDevice$BluetoothCache;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice$BluetoothCache;->disableForCurrentProcess()V

    .line 2161
    return-void
.end method

.method public whitelist disconnect()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2317
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2320
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2321
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_27

    .line 2326
    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    return v1

    .line 2327
    :catch_1e
    move-exception v1

    .line 2328
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 2322
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot disconnect to remote device."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :goto_2e
    const/4 v1, 0x1

    return v1

    .line 2318
    .end local v0    # "service":Landroid/bluetooth/IBluetooth;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot have an invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1599
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_12

    .line 1600
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1602
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist fetchUuidsWithSdp()Z
    .registers 2

    .line 2499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp(I)Z

    move-result v0

    return v0
.end method

.method public whitelist fetchUuidsWithSdp(I)Z
    .registers 7
    .param p1, "transport"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2530
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2531
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2536
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2537
    :catch_14
    move-exception v1

    .line 2538
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2532
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot fetchUuidsWithSdp"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getActiveAudioDevicePolicy()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3700
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3701
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1d

    .line 3706
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getActiveAudioDevicePolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 3707
    :catch_14
    move-exception v1

    .line 3708
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 3702
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot get active audio device policy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    :goto_24
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .registers 2

    .line 1664
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAddressType()I
    .registers 2

    .line 1675
    iget v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddressType:I

    return v0
.end method

.method public whitelist getAlias()Ljava/lang/String;
    .registers 6

    .line 1816
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1817
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5a

    .line 1822
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, "alias":Ljava/lang/String;
    if-nez v1, :cond_1a

    .line 1824
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1826
    :cond_1a
    const/16 v2, 0x9

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2e} :catch_2f

    return-object v2

    .line 1827
    .end local v1    # "alias":Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 1828
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_61

    .line 1818
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5a
    :goto_5a
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot get Remote Device Alias"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :goto_61
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getAnonymizedAddress()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1690
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBatteryLevel()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1900
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1901
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 1906
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 1907
    :catch_14
    move-exception v1

    .line 1908
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 1902
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth disabled. Cannot get remote device battery level"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :goto_46
    const/16 v1, -0x64

    return v1
.end method

.method public whitelist getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .registers 7

    .line 2435
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2436
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4a

    .line 2441
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v2}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v2

    .line 2442
    .local v2, "classInt":I
    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_19

    return-object v1

    .line 2443
    :cond_19
    new-instance v3, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v3, v2}, Landroid/bluetooth/BluetoothClass;-><init>(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_1f

    return-object v3

    .line 2444
    .end local v2    # "classInt":I
    :catch_1f
    move-exception v2

    .line 2445
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 2437
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, "BT not enabled. Cannot get Bluetooth Class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :goto_51
    return-object v1
.end method

.method public whitelist getBondState()I
    .registers 6

    .line 2182
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2183
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_e

    .line 2184
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot get bond state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 2188
    :cond_e
    :try_start_e
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sBluetoothBondCache:Landroid/bluetooth/BluetoothDevice$BluetoothCache;

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice$BluetoothCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_26} :catch_27

    return v1

    .line 2190
    :catch_27
    move-exception v1

    .line 2191
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_5c

    .line 2194
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    .line 2197
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_59
    const/16 v1, 0xa

    return v1

    .line 2192
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5c
    throw v1
.end method

.method public whitelist getConnectionHandle(I)I
    .registers 7
    .param p1, "transport"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2380
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2381
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2388
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->getConnectionHandle(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2389
    :catch_14
    move-exception v1

    .line 2390
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2382
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :goto_46
    const/high16 v1, -0x80000000

    return v1
.end method

.method public whitelist getIdentityAddress()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1706
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1707
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 1711
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getIdentityAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v1

    .line 1712
    :catch_14
    move-exception v1

    .line 1713
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 1708
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot get identity address"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :goto_46
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getIdentityAddressWithType()Landroid/bluetooth/BluetoothDevice$BluetoothAddress;
    .registers 6

    .line 1735
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1736
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 1740
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getIdentityAddressWithType(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice$BluetoothAddress;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v1

    .line 1741
    :catch_14
    move-exception v1

    .line 1742
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 1737
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot get identity address with type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :goto_46
    new-instance v1, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;

    const/4 v2, 0x0

    const v3, 0xffff

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public blacklist getKeyMissingCount()I
    .registers 6

    .line 3805
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3806
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 3811
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getKeyMissingCount(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 3812
    :catch_14
    move-exception v1

    .line 3813
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 3807
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot get key missing counter."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    :goto_46
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getMessageAccessPermission()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2778
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2779
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2784
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2785
    :catch_14
    move-exception v1

    .line 2786
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2780
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getMetadata(I)[B
    .registers 7
    .param p1, "key"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3440
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3441
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 3446
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->getMetadata(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)[B

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v1

    .line 3447
    :catch_14
    move-exception v1

    .line 3448
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 3442
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot get metadata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    :goto_46
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 6

    .line 1761
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1762
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_56

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_56

    .line 1767
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getRemoteName(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v1

    .line 1768
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 1770
    const/16 v2, 0x9

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_29} :catch_2b

    return-object v2

    .line 1774
    .end local v1    # "name":Ljava/lang/String;
    :cond_2a
    goto :goto_5d

    .line 1772
    :catch_2b
    move-exception v1

    .line 1773
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_5d

    .line 1763
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_56
    :goto_56
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot get Remote Device name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :goto_5d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPackageNameOfBondingApplication()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2236
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2237
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2242
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getPackageNameOfBondingApplication(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v1

    .line 2243
    :catch_14
    move-exception v1

    .line 2244
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2238
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled, getPackageNameOfBondingApplication failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :goto_46
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPhonebookAccessPermission()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2666
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2667
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2672
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2673
    :catch_14
    move-exception v1

    .line 2674
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2668
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getRequestedAudioPolicyAsSink()Landroid/bluetooth/BluetoothSinkAudioPolicy;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3583
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3584
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 3589
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getRequestedAudioPolicyAsSink(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothSinkAudioPolicy;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v1

    .line 3590
    :catch_14
    move-exception v1

    .line 3591
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 3585
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot get Audio Policy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :goto_46
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSimAccessPermission()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2835
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2836
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2841
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2842
    :catch_14
    move-exception v1

    .line 2843
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2837
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getType()I
    .registers 6

    .line 1790
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1791
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 1796
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getRemoteType(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 1797
    :catch_14
    move-exception v1

    .line 1798
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 1792
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot get Remote Device type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getUuids()[Landroid/os/ParcelUuid;
    .registers 7

    .line 2466
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2467
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4f

    .line 2472
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v2}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    .line 2473
    .local v2, "parcels":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/ParcelUuid;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/ParcelUuid;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_22} :catch_24

    move-object v1, v3

    :cond_23
    return-object v1

    .line 2474
    .end local v2    # "parcels":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catch_24
    move-exception v2

    .line 2475
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 2468
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, "BT not enabled. Cannot get remote device Uuids"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :goto_56
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1607
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method blacklist isBluetoothEnabled()Z
    .registers 4

    .line 2645
    const/4 v0, 0x0

    .line 2646
    .local v0, "ret":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 2647
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2648
    const/4 v0, 0x1

    .line 2650
    :cond_e
    return v0
.end method

.method public whitelist isBondingInitiatedLocally()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2030
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2031
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2036
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2037
    :catch_14
    move-exception v1

    .line 2038
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2032
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled, isBondingInitiatedLocally failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isConnected()Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2346
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2347
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_43

    .line 2352
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v2}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_18

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 2354
    :catch_18
    move-exception v2

    .line 2355
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 2348
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :goto_4a
    return v1
.end method

.method public whitelist isEncrypted()Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2409
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2410
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_44

    .line 2415
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v2}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_19

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    move v1, v3

    :cond_18
    return v1

    .line 2417
    :catch_19
    move-exception v2

    .line 2418
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 2411
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_44
    :goto_44
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :goto_4b
    return v1
.end method

.method public whitelist isInSilenceMode()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2727
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2728
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2732
    :try_start_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->getSilenceMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    return v1

    .line 2733
    :catch_13
    move-exception v1

    .line 2734
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    .line 2737
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 2729
    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bluetooth is not turned ON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isMicrophonePreferredForCalls()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3780
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3781
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 3786
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->isMicrophonePreferredForCalls(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 3787
    :catch_14
    move-exception v1

    .line 3788
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 3782
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot get microphone for call enabled state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    :goto_46
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist isRequestAudioPolicyAsSinkSupported()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3511
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3512
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1d

    .line 3517
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->isRequestAudioPolicyAsSinkSupported(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 3518
    :catch_14
    move-exception v1

    .line 3519
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 3513
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot retrieve audio policy support status."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :goto_24
    const/16 v1, 0x1e

    return v1
.end method

.method public whitelist prepareToEnterProcess(Landroid/content/AttributionSource;)V
    .registers 2
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1594
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 1595
    return-void
.end method

.method public whitelist removeBond()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2087
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2088
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_79

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_79

    .line 2092
    :cond_d
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeBond() for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called by pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2096
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2097
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2092
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :try_start_47
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->removeBond(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_4e

    return v1

    .line 2100
    :catch_4e
    move-exception v1

    .line 2101
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_80

    .line 2089
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_79
    :goto_79
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot remove Remote Device bond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :goto_80
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist requestAudioPolicyAsSink(Landroid/bluetooth/BluetoothSinkAudioPolicy;)I
    .registers 7
    .param p1, "policies"    # Landroid/bluetooth/BluetoothSinkAudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3546
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3547
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 3552
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->requestAudioPolicyAsSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSinkAudioPolicy;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 3553
    :catch_14
    move-exception v1

    .line 3554
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 3548
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot set Audio Policy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    :goto_46
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist sdpSearch(Landroid/os/ParcelUuid;)Z
    .registers 7
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .line 2566
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2567
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2572
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2573
    :catch_14
    move-exception v1

    .line 2574
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2568
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot query remote device sdp records"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setActiveAudioDevicePolicy(I)I
    .registers 6
    .param p1, "activeAudioDevicePolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3670
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3674
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3675
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_27

    .line 3680
    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->setActiveAudioDevicePolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    return v1

    .line 3682
    :catch_1e
    move-exception v1

    .line 3683
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 3676
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot set active audio device policy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    :goto_2e
    const/4 v1, 0x1

    return v1

    .line 3671
    .end local v0    # "service":Landroid/bluetooth/IBluetooth;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot have an invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAlias(Ljava/lang/String;)I
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 1868
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 1869
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alias cannot be the empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1872
    :cond_11
    :goto_11
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1873
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_2e

    .line 1878
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25

    return v1

    .line 1879
    :catch_25
    move-exception v1

    .line 1880
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 1874
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot set Remote Device name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :goto_35
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist setAttributionSource(Landroid/content/AttributionSource;)V
    .registers 2
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1581
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1582
    return-void
.end method

.method public whitelist setLowLatencyAudioAllowed(Z)Z
    .registers 7
    .param p1, "allowed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3610
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3611
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3d

    .line 3616
    :cond_d
    :try_start_d
    invoke-interface {v0, p1, p0}, Landroid/bluetooth/IBluetooth;->allowLowLatencyAudio(ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v1

    .line 3617
    :catch_12
    move-exception v1

    .line 3618
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_44

    .line 3612
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot allow low latency"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :goto_44
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setMessageAccessPermission(I)Z
    .registers 7
    .param p1, "value"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2805
    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 2806
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not a valid AccessPermission value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2809
    :cond_22
    :goto_22
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2810
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_61

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_61

    .line 2815
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_36

    return v1

    .line 2816
    :catch_36
    move-exception v1

    .line 2817
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_68

    .line 2811
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_61
    :goto_61
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :goto_68
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setMetadata(I[B)Z
    .registers 8
    .param p1, "key"    # I
    .param p2, "value"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3412
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3413
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_68

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_68

    .line 3416
    :cond_d
    array-length v1, p2

    const/16 v2, 0x800

    if-gt v1, v2, :cond_44

    .line 3421
    :try_start_12
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, p2, v1}, Landroid/bluetooth/IBluetooth;->setMetadata(Landroid/bluetooth/BluetoothDevice;I[BLandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_19

    return v1

    .line 3422
    :catch_19
    move-exception v1

    .line 3423
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_6f

    .line 3417
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", should not over "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3414
    :cond_68
    :goto_68
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot set metadata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    :goto_6f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setMicrophonePreferredForCalls(Z)I
    .registers 7
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3745
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3749
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 3750
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_49

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_49

    .line 3755
    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->setMicrophonePreferredForCalls(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)I

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    return v1

    .line 3756
    :catch_1e
    move-exception v1

    .line 3757
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_50

    .line 3751
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_49
    :goto_49
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled. Cannot set microphone for call enabled state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    :goto_50
    const/4 v1, 0x1

    return v1

    .line 3746
    .end local v0    # "service":Landroid/bluetooth/IBluetooth;
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot have an invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPairingConfirmation(Z)Z
    .registers 7
    .param p1, "confirm"    # Z

    .line 2630
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2631
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2636
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2637
    :catch_14
    move-exception v1

    .line 2638
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2632
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot set pairing confirmation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setPhonebookAccessPermission(I)Z
    .registers 7
    .param p1, "value"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2752
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2753
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2758
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2759
    :catch_14
    move-exception v1

    .line 2760
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2754
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setPin(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2615
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2616
    .local v0, "pinBytes":[B
    if-nez v0, :cond_8

    .line 2617
    const/4 v1, 0x0

    return v1

    .line 2619
    :cond_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    move-result v1

    return v1
.end method

.method public whitelist setPin([B)Z
    .registers 9
    .param p1, "pin"    # [B

    .line 2590
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 2591
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v1, :cond_49

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    move-object v5, p1

    goto :goto_4a

    .line 2596
    :cond_e
    :try_start_e
    array-length v4, p1

    iget-object v6, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_1c

    const/4 v3, 0x1

    move-object v2, p0

    move-object v5, p1

    .end local p1    # "pin":[B
    .local v5, "pin":[B
    :try_start_14
    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetooth;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[BLandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_18} :catch_19

    return p1

    .line 2597
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v5    # "pin":[B
    .restart local p1    # "pin":[B
    :catch_1c
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 2598
    .restart local v5    # "pin":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 2591
    .end local v5    # "pin":[B
    .local p1, "pin":[B
    :cond_49
    move-object v5, p1

    .line 2592
    .end local p1    # "pin":[B
    .restart local v5    # "pin":[B
    :goto_4a
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v0, "BT not enabled. Cannot set Remote Device pin"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :goto_51
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setSilenceMode(Z)Z
    .registers 7
    .param p1, "silence"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2703
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2704
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2708
    :try_start_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->setSilenceMode(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    return v1

    .line 2709
    :catch_13
    move-exception v1

    .line 2710
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    .line 2713
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 2705
    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bluetooth is not turned ON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setSimAccessPermission(I)Z
    .registers 7
    .param p1, "value"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2862
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 2863
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3f

    .line 2868
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p0, p1, v1}, Landroid/bluetooth/IBluetooth;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    .line 2869
    :catch_14
    move-exception v1

    .line 2870
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

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

    goto :goto_46

    .line 2864
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :goto_46
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1627
    const-wide/32 v0, 0xfcd2816

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1628
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0

    .line 1630
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1651
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1652
    iget v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    return-void
.end method
