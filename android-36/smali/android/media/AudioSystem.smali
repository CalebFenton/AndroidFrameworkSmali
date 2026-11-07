.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$ErrorCallback;,
        Landroid/media/AudioSystem$DynamicPolicyCallback;,
        Landroid/media/AudioSystem$AudioRecordingCallback;,
        Landroid/media/AudioSystem$RoutingUpdateCallback;,
        Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;,
        Landroid/media/AudioSystem$AudioSystemError;,
        Landroid/media/AudioSystem$BtOffloadDeviceType;,
        Landroid/media/AudioSystem$AudioFormatNativeEnumForBtLeAudioCodec;,
        Landroid/media/AudioSystem$AudioFormatNativeEnumForBtCodec;
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_FORMAT_AAC:I = 0x4000000

.field public static final blacklist AUDIO_FORMAT_APTX:I = 0x20000000

.field public static final blacklist AUDIO_FORMAT_APTX_HD:I = 0x21000000

.field public static final blacklist AUDIO_FORMAT_DEFAULT:I = 0x0

.field public static final blacklist AUDIO_FORMAT_INVALID:I = -0x1

.field public static final blacklist AUDIO_FORMAT_LC3:I = 0x2b000000

.field public static final blacklist AUDIO_FORMAT_LDAC:I = 0x23000000

.field public static final blacklist AUDIO_FORMAT_OPUS:I = 0x8000000

.field public static final blacklist AUDIO_FORMAT_SBC:I = 0x1f000000

.field public static final greylist-max-o AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final greylist-max-o AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final greylist-max-o AUDIO_STATUS_ERROR:I = 0x1

.field public static final greylist-max-o AUDIO_STATUS_OK:I = 0x0

.field public static final greylist-max-o AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final greylist-max-o BAD_VALUE:I = -0x2

.field public static final greylist-max-o DEAD_OBJECT:I = -0x6

.field private static final blacklist DEBUG_VOLUME:Z = false

.field public static final greylist-max-o DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x6f

.field public static greylist-max-o DEFAULT_STREAM_VOLUME:[I = null

.field public static final blacklist DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final greylist-max-o DEVICE_BIT_IN:I = -0x80000000

.field public static final blacklist DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_IN_ALL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_IN_ALL_USB_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final greylist-max-o DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final greylist DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final greylist-max-o DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final greylist DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final greylist-max-o DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final greylist DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final greylist-max-o DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final blacklist DEVICE_IN_BLE_HEADSET:I = -0x60000000

.field public static final blacklist DEVICE_IN_BLE_HEADSET_NAME:Ljava/lang/String; = "ble_headset"

.field public static final greylist DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final greylist-max-o DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final blacklist DEVICE_IN_BLUETOOTH_BLE:I = -0x7c000000

.field public static final blacklist DEVICE_IN_BLUETOOTH_BLE_NAME:Ljava/lang/String; = "bt_ble"

.field public static final greylist DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final greylist-max-o DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final greylist DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final greylist-max-o DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final greylist-max-o DEVICE_IN_BUS:I = -0x7ff00000

.field public static final greylist-max-o DEVICE_IN_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final greylist DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final greylist-max-o DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final greylist DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final greylist DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final greylist-max-o DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final blacklist DEVICE_IN_ECHO_REFERENCE:I = -0x70000000

.field public static final blacklist DEVICE_IN_ECHO_REFERENCE_NAME:Ljava/lang/String; = "echo_reference"

.field public static final greylist-max-o DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final greylist-max-o DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final greylist-max-o DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final blacklist DEVICE_IN_HDMI_ARC:I = -0x78000000

.field public static final blacklist DEVICE_IN_HDMI_ARC_NAME:Ljava/lang/String; = "hdmi_arc"

.field public static final blacklist DEVICE_IN_HDMI_EARC:I = -0x77ffffff

.field public static final blacklist DEVICE_IN_HDMI_EARC_NAME:Ljava/lang/String; = "hdmi_earc"

.field public static final greylist-max-o DEVICE_IN_IP:I = -0x7ff80000

.field public static final greylist-max-o DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final greylist-max-o DEVICE_IN_LINE:I = -0x7fff8000

.field public static final greylist-max-o DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final greylist-max-o DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final greylist-max-o DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final greylist-max-o DEVICE_IN_PROXY:I = -0x7f000000

.field public static final greylist-max-o DEVICE_IN_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final greylist DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final greylist-max-o DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final greylist-max-o DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final greylist-max-o DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final greylist-max-o DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final greylist-max-o DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final greylist-max-o DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final greylist-max-o DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final greylist DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final greylist-max-o DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final greylist DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final greylist-max-o DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final greylist-max-o DEVICE_IN_USB_HEADSET:I = -0x7e000000

.field public static final greylist-max-o DEVICE_IN_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final greylist DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final greylist DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final greylist-max-o DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final greylist-max-o DEVICE_NONE:I = 0x0

.field public static final blacklist DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_OUT_ALL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEVICE_OUT_ALL_USB:I = 0x4006000

.field public static final blacklist DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final greylist-max-o DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final greylist DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final greylist-max-o DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final greylist-max-o DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final greylist-max-o DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final blacklist DEVICE_OUT_BLE_BROADCAST:I = 0x20000002

.field public static final blacklist DEVICE_OUT_BLE_BROADCAST_NAME:Ljava/lang/String; = "ble_broadcast"

.field public static final blacklist DEVICE_OUT_BLE_HEADSET:I = 0x20000000

.field public static final blacklist DEVICE_OUT_BLE_HEADSET_NAME:Ljava/lang/String; = "ble_headset"

.field public static final blacklist DEVICE_OUT_BLE_SPEAKER:I = 0x20000001

.field public static final blacklist DEVICE_OUT_BLE_SPEAKER_NAME:Ljava/lang/String; = "ble_speaker"

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final greylist DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final greylist DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final greylist DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final greylist-max-o DEVICE_OUT_BUS:I = 0x1000000

.field public static final greylist-max-o DEVICE_OUT_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final greylist-max-o DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final greylist DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final greylist-max-o DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final greylist DEVICE_OUT_EARPIECE:I = 0x1

.field public static final greylist-max-o DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final blacklist DEVICE_OUT_ECHO_CANCELLER:I = 0x10000000

.field public static final blacklist DEVICE_OUT_ECHO_CANCELLER_NAME:Ljava/lang/String; = "echo_canceller"

.field public static final greylist DEVICE_OUT_FM:I = 0x100000

.field public static final greylist-max-o DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final greylist-max-o DEVICE_OUT_HDMI:I = 0x400

.field public static final greylist-max-o DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final greylist-max-o DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hdmi_arc"

.field public static final blacklist DEVICE_OUT_HDMI_EARC:I = 0x40001

.field public static final blacklist DEVICE_OUT_HDMI_EARC_NAME:Ljava/lang/String; = "hdmi_earc"

.field public static final greylist-max-o DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final greylist-max-o DEVICE_OUT_HEARING_AID:I = 0x8000000

.field public static final greylist-max-o DEVICE_OUT_HEARING_AID_NAME:Ljava/lang/String; = "hearing_aid_out"

.field public static final greylist-max-o DEVICE_OUT_IP:I = 0x800000

.field public static final greylist-max-o DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final greylist-max-o DEVICE_OUT_LINE:I = 0x20000

.field public static final greylist-max-o DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final blacklist DEVICE_OUT_MULTICHANNEL_GROUP:I = 0x800001

.field public static final blacklist DEVICE_OUT_MULTICHANNEL_GROUP_NAME:Ljava/lang/String; = "multichannel_group"

.field public static final blacklist DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEVICE_OUT_PROXY:I = 0x2000000

.field public static final greylist-max-o DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final greylist DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final greylist-max-o DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final greylist-max-o DEVICE_OUT_SPDIF:I = 0x80000

.field public static final greylist-max-o DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final greylist DEVICE_OUT_SPEAKER:I = 0x2

.field public static final greylist-max-o DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final greylist-max-o DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final greylist-max-o DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final greylist DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final greylist-max-o DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final greylist DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final greylist-max-o DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final greylist DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final greylist-max-o DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final greylist-max-o DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final greylist-max-o DEVICE_OUT_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final greylist DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final greylist-max-o DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final greylist DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final greylist-max-o DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final blacklist DEVICE_ROLE_DISABLED:I = 0x2

.field public static final blacklist DEVICE_ROLE_NONE:I = 0x0

.field public static final blacklist DEVICE_ROLE_PREFERRED:I = 0x1

.field public static final greylist DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final greylist DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final blacklist DIRECT_BITSTREAM_SUPPORTED:I = 0x4

.field public static final blacklist DIRECT_NOT_SUPPORTED:I = 0x0

.field public static final blacklist DIRECT_OFFLOAD_GAPLESS_SUPPORTED:I = 0x3

.field public static final blacklist DIRECT_OFFLOAD_SUPPORTED:I = 0x1

.field private static final greylist-max-o DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final greylist-max-o ERROR:I = -0x1

.field public static final blacklist FCC_24:I = 0x18

.field public static final greylist FORCE_ANALOG_DOCK:I = 0x8

.field public static final greylist-max-o FORCE_BT_A2DP:I = 0x4

.field public static final blacklist FORCE_BT_BLE:I = 0x10

.field public static final greylist FORCE_BT_CAR_DOCK:I = 0x6

.field public static final greylist FORCE_BT_DESK_DOCK:I = 0x7

.field public static final greylist-max-o FORCE_BT_SCO:I = 0x3

.field public static final greylist-max-o FORCE_DEFAULT:I = 0x0

.field public static final greylist FORCE_DIGITAL_DOCK:I = 0x9

.field public static final greylist-max-o FORCE_ENCODED_SURROUND_ALWAYS:I = 0xe

.field public static final greylist-max-o FORCE_ENCODED_SURROUND_MANUAL:I = 0xf

.field public static final greylist-max-o FORCE_ENCODED_SURROUND_NEVER:I = 0xd

.field public static final greylist-max-o FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final greylist-max-o FORCE_HEADPHONES:I = 0x2

.field public static final greylist FORCE_NONE:I = 0x0

.field public static final greylist-max-o FORCE_NO_BT_A2DP:I = 0xa

.field public static final greylist-max-o FORCE_SPEAKER:I = 0x1

.field public static final greylist-max-o FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final greylist-max-o FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final greylist-max-o FOR_COMMUNICATION:I = 0x0

.field public static final greylist-max-o FOR_DOCK:I = 0x3

.field public static final greylist-max-o FOR_ENCODED_SURROUND:I = 0x6

.field public static final greylist-max-o FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final greylist-max-o FOR_MEDIA:I = 0x1

.field public static final greylist-max-o FOR_RECORD:I = 0x2

.field public static final greylist-max-o FOR_SYSTEM:I = 0x4

.field public static final greylist-max-o FOR_VIBRATE_RINGING:I = 0x7

.field public static final greylist-max-o INVALID_OPERATION:I = -0x3

.field public static final greylist-max-o IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final blacklist LEGACY_REMOTE_SUBMIX_ADDRESS:Ljava/lang/String; = "0"

.field private static final blacklist MAX_DEVICE_ROUTING:I = 0x4

.field public static final blacklist MODE_CALL_REDIRECT:I = 0x5

.field public static final blacklist MODE_CALL_SCREENING:I = 0x4

.field public static final blacklist MODE_COMMUNICATION_REDIRECT:I = 0x6

.field public static final greylist-max-o MODE_CURRENT:I = -0x1

.field public static final greylist-max-o MODE_INVALID:I = -0x2

.field public static final greylist-max-o MODE_IN_CALL:I = 0x2

.field public static final greylist-max-o MODE_IN_COMMUNICATION:I = 0x3

.field public static final greylist-max-o MODE_NORMAL:I = 0x0

.field public static final greylist-max-o MODE_RINGTONE:I = 0x1

.field static final greylist-max-o NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final greylist-max-o NO_INIT:I = -0x5

.field private static final greylist-max-o NUM_DEVICE_STATES:I = 0x1

.field public static final greylist-max-o NUM_FORCE_CONFIG:I = 0x11

.field private static final greylist-max-o NUM_FORCE_USE:I = 0x8

.field public static final greylist-max-o NUM_MODES:I = 0x7

.field public static final greylist-max-o NUM_STREAMS:I = 0x5

.field private static final greylist-max-o NUM_STREAM_TYPES:I = 0xc

.field public static final blacklist OFFLOAD_GAPLESS_SUPPORTED:I = 0x2

.field public static final blacklist OFFLOAD_NOT_SUPPORTED:I = 0x0

.field public static final blacklist OFFLOAD_SUPPORTED:I = 0x1

.field public static final blacklist OUT_CHANNEL_COUNT_MAX:I

.field public static final greylist-max-o PERMISSION_DENIED:I = -0x4

.field public static final greylist-max-o PHONE_STATE_INCALL:I = 0x2

.field public static final greylist-max-o PHONE_STATE_OFFCALL:I = 0x0

.field public static final greylist-max-o PHONE_STATE_RINGING:I = 0x1

.field public static final blacklist PLATFORM_AUTOMOTIVE:I = 0x3

.field public static final greylist-max-o PLATFORM_DEFAULT:I = 0x0

.field public static final greylist-max-o PLATFORM_TELEVISION:I = 0x2

.field public static final greylist-max-o PLATFORM_VOICE:I = 0x1

.field public static final greylist-max-o PLAY_SOUND_DELAY:I = 0x12c

.field public static final greylist-max-o ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SAMPLE_RATE_HZ_MAX:I

.field public static final blacklist SAMPLE_RATE_HZ_MIN:I

.field public static final greylist-max-o STREAM_ACCESSIBILITY:I = 0xa

.field public static final greylist-max-o STREAM_ALARM:I = 0x4

.field public static final blacklist STREAM_ASSISTANT:I = 0xb

.field public static final greylist-max-o STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final greylist-max-o STREAM_DEFAULT:I = -0x1

.field public static final greylist-max-o STREAM_DTMF:I = 0x8

.field public static final greylist-max-o STREAM_MUSIC:I = 0x3

.field public static final greylist-max-o STREAM_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o STREAM_NOTIFICATION:I = 0x5

.field public static final greylist-max-o STREAM_RING:I = 0x2

.field public static final greylist-max-o STREAM_SYSTEM:I = 0x1

.field public static final greylist-max-r STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final greylist-max-o STREAM_TTS:I = 0x9

.field public static final greylist-max-o STREAM_VOICE_CALL:I = 0x0

.field public static final greylist-max-o SUCCESS:I = 0x0

.field public static final greylist-max-o SYNC_EVENT_NONE:I = 0x0

.field public static final greylist-max-o SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field public static final blacklist SYNC_EVENT_SHARE_AUDIO_HISTORY:I = 0x64

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioSystem"

.field public static final greylist-max-o WOULD_BLOCK:I = -0x7

.field private static greylist-max-o sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private static blacklist sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private static greylist-max-o sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

.field private static blacklist sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

.field private static blacklist sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 23

    .line 129
    invoke-static {}, Landroid/media/AudioSystem;->native_getMaxChannelCount()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    .line 135
    invoke-static {}, Landroid/media/AudioSystem;->native_getMaxSampleRate()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    .line 141
    invoke-static {}, Landroid/media/AudioSystem;->native_getMinSampleRate()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MIN:I

    .line 159
    const-string v11, "STREAM_ACCESSIBILITY"

    const-string v12, "STREAM_ASSISTANT"

    const-string v1, "STREAM_VOICE_CALL"

    const-string v2, "STREAM_SYSTEM"

    const-string v3, "STREAM_RING"

    const-string v4, "STREAM_MUSIC"

    const-string v5, "STREAM_ALARM"

    const-string v6, "STREAM_NOTIFICATION"

    const-string v7, "STREAM_BLUETOOTH_SCO"

    const-string v8, "STREAM_SYSTEM_ENFORCED"

    const-string v9, "STREAM_DTMF"

    const-string v10, "STREAM_TTS"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 1141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    .line 1142
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1143
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1144
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1145
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1146
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1147
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1148
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1149
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1150
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1151
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v9, 0x200

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1152
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v10, 0x400

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1153
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v10, 0x800

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1154
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v10, 0x1000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1155
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v10, 0x2000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1156
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/16 v11, 0x4000

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1157
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const v12, 0x8000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1158
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v12, 0x10000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1159
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v12, 0x20000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1160
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v12, 0x40000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1161
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const v13, 0x40001

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1162
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v14, 0x80000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1163
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v15, 0x100000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1164
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v15, 0x200000

    move/from16 v16, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1165
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v12, 0x400000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1166
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v12, 0x800000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1167
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const v12, 0x800001

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1168
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v12, 0x1000000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1169
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v12, 0x2000000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1170
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v12, 0x4000000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1171
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v17, 0x8000000

    move/from16 v18, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1172
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v13, 0x10000000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1173
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v13, 0x20000000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1174
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const v19, 0x20000001

    move/from16 v20, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1175
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const v19, 0x20000002

    move/from16 v21, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1176
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v22, v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 1179
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1180
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1181
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 1184
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1185
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1186
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    .line 1189
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1190
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1191
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;

    .line 1194
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1195
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1196
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1197
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;

    .line 1200
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;

    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1201
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1203
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 1204
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1205
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1206
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    .line 1209
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1210
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1211
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1213
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1214
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1215
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1216
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1217
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1218
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1219
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1220
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1221
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1222
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_PICK_FOR_VOLUME_SET:Ljava/util/Set;

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1314
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    .line 1315
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1316
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7ffffffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1317
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7ffffffc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1318
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7ffffff8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1319
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7ffffff0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1320
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fffffe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1321
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fffffc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1322
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fffff80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1323
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fffff00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1324
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7ffffe00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1325
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7ffffc00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1326
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7ffff800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1327
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7ffff000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1328
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fffe000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1329
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fffc000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1330
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fff8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1331
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x7fff0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1332
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x7ffe0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1333
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x7ffc0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1334
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x7ff80000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1335
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x7ff00000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1336
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x7f000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1337
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x7e000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x7c000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1339
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x78000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1340
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x77ffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1341
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x70000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1342
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x60000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1343
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    .line 1346
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    const v1, -0x7ffffff8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1348
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_USB_SET:Ljava/util/Set;

    .line 1349
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_USB_SET:Ljava/util/Set;

    const v1, -0x7ffff800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1350
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_USB_SET:Ljava/util/Set;

    const v1, -0x7ffff000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1351
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_USB_SET:Ljava/util/Set;

    const/high16 v1, -0x7e000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1353
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    .line 1354
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    const/high16 v1, -0x60000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2537
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_45e

    sput-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    return-void

    nop

    :array_45e
    .array-data 4
        0x4
        0x7
        0x5
        0x5
        0x6
        0x5
        0x7
        0x7
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Trying to instantiate AudioSystem"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist addDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 6
    .param p0, "capturePreset"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2353
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2354
    const/4 v0, -0x2

    return v0

    .line 2356
    :cond_8
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 2357
    .local v0, "typeAddresses":Landroid/util/Pair;, "Landroid/util/Pair<[I[Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->addDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native blacklist addDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static blacklist audioFormatToBluetoothLeAudioSourceCodec(I)I
    .registers 3
    .param p0, "audioFormat"    # I

    .line 312
    packed-switch p0, :pswitch_data_2c

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio format 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to BT LE audio codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const v0, 0xf4240

    return v0

    .line 313
    :pswitch_29
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x2b000000
        :pswitch_29
    .end packed-switch
.end method

.method public static blacklist audioFormatToBluetoothSourceCodec(I)I
    .registers 3
    .param p0, "audioFormat"    # I

    .line 291
    sparse-switch p0, :sswitch_data_38

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio format 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to BT codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const v0, 0xf4240

    return v0

    .line 297
    :sswitch_29
    const/4 v0, 0x5

    return v0

    .line 296
    :sswitch_2b
    const/4 v0, 0x4

    return v0

    .line 295
    :sswitch_2d
    const/4 v0, 0x3

    return v0

    .line 294
    :sswitch_2f
    const/4 v0, 0x2

    return v0

    .line 293
    :sswitch_31
    const/4 v0, 0x0

    return v0

    .line 298
    :sswitch_33
    const/4 v0, 0x6

    return v0

    .line 292
    :sswitch_35
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_38
    .sparse-switch
        0x4000000 -> :sswitch_35
        0x8000000 -> :sswitch_33
        0x1f000000 -> :sswitch_31
        0x20000000 -> :sswitch_2f
        0x21000000 -> :sswitch_2d
        0x23000000 -> :sswitch_2b
        0x2b000000 -> :sswitch_29
    .end sparse-switch
.end method

.method public static blacklist audioFormatToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "audioFormat"    # I

    .line 375
    sparse-switch p0, :sswitch_data_156

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUDIO_FORMAT_("

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

    .line 585
    :sswitch_1d
    const-string v0, "AUDIO_FORMAT_IAMF_BASE_ENHANCED_PCM"

    return-object v0

    .line 583
    :sswitch_20
    const-string v0, "AUDIO_FORMAT_IAMF_BASE_ENHANCED_FLAC"

    return-object v0

    .line 581
    :sswitch_23
    const-string v0, "AUDIO_FORMAT_IAMF_BASE_ENHANCED_AAC"

    return-object v0

    .line 579
    :sswitch_26
    const-string v0, "AUDIO_FORMAT_IAMF_BASE_ENHANCED_OPUS"

    return-object v0

    .line 577
    :sswitch_29
    const-string v0, "AUDIO_FORMAT_IAMF_BASE_PCM"

    return-object v0

    .line 575
    :sswitch_2c
    const-string v0, "AUDIO_FORMAT_IAMF_BASE_FLAC"

    return-object v0

    .line 573
    :sswitch_2f
    const-string v0, "AUDIO_FORMAT_IAMF_BASE_AAC"

    return-object v0

    .line 571
    :sswitch_32
    const-string v0, "AUDIO_FORMAT_IAMF_BASE_OPUS"

    return-object v0

    .line 569
    :sswitch_35
    const-string v0, "AUDIO_FORMAT_IAMF_SIMPLE_PCM"

    return-object v0

    .line 567
    :sswitch_38
    const-string v0, "AUDIO_FORMAT_IAMF_SIMPLE_FLAC"

    return-object v0

    .line 565
    :sswitch_3b
    const-string v0, "AUDIO_FORMAT_IAMF_SIMPLE_AAC"

    return-object v0

    .line 563
    :sswitch_3e
    const-string v0, "AUDIO_FORMAT_IAMF_SIMPLE_OPUS"

    return-object v0

    .line 479
    :sswitch_41
    const-string v0, "AUDIO_FORMAT_DTS_UHD_P2"

    return-object v0

    .line 477
    :sswitch_44
    const-string v0, "AUDIO_FORMAT_DTS_HD_MA"

    return-object v0

    .line 475
    :sswitch_47
    const-string v0, "AUDIO_FORMAT_APTX_ADAPTIVE_R4"

    return-object v0

    .line 473
    :sswitch_4a
    const-string v0, "AUDIO_FORMAT_APTX_ADAPTIVE_QLEA"

    return-object v0

    .line 471
    :sswitch_4d
    const-string v0, "AUDIO_FORMAT_DRA"

    return-object v0

    .line 469
    :sswitch_50
    const-string v0, "AUDIO_FORMAT_DTS_UHD"

    return-object v0

    .line 467
    :sswitch_53
    const-string v0, "AUDIO_FORMAT_IEC60958"

    return-object v0

    .line 561
    :sswitch_56
    const-string v0, "AUDIO_FORMAT_MPEGH_SUB_LC_L4"

    return-object v0

    .line 559
    :sswitch_59
    const-string v0, "AUDIO_FORMAT_MPEGH_SUB_LC_L3"

    return-object v0

    .line 557
    :sswitch_5c
    const-string v0, "AUDIO_FORMAT_MPEGH_SUB_BL_L4"

    return-object v0

    .line 555
    :sswitch_5f
    const-string v0, "AUDIO_FORMAT_MPEGH_SUB_BL_L3"

    return-object v0

    .line 465
    :sswitch_62
    const-string v0, "AUDIO_FORMAT_MPEGH"

    return-object v0

    .line 463
    :sswitch_65
    const-string v0, "AUDIO_FORMAT_LC3"

    return-object v0

    .line 461
    :sswitch_68
    const-string v0, "AUDIO_FORMAT_APTX_TWSP"

    return-object v0

    .line 459
    :sswitch_6b
    const-string v0, "AUDIO_FORMAT_LHDC_LL"

    return-object v0

    .line 457
    :sswitch_6e
    const-string v0, "AUDIO_FORMAT_LHDC"

    return-object v0

    .line 455
    :sswitch_71
    const-string v0, "AUDIO_FORMAT_APTX_ADAPTIVE"

    return-object v0

    .line 453
    :sswitch_74
    const-string v0, "AUDIO_FORMAT_CELT"

    return-object v0

    .line 543
    :sswitch_77
    const-string v0, "AUDIO_FORMAT_AAC_LATM_HE_V2"

    return-object v0

    .line 541
    :sswitch_7a
    const-string v0, "AUDIO_FORMAT_AAC_LATM_HE_V1"

    return-object v0

    .line 539
    :sswitch_7d
    const-string v0, "AUDIO_FORMAT_AAC_LATM_LC"

    return-object v0

    .line 451
    :sswitch_80
    const-string v0, "AUDIO_FORMAT_AAC_LATM"

    return-object v0

    .line 553
    :sswitch_83
    const-string v0, "AUDIO_FORMAT_MAT_2_1"

    return-object v0

    .line 551
    :sswitch_86
    const-string v0, "AUDIO_FORMAT_MAT_2_0"

    return-object v0

    .line 549
    :sswitch_89
    const-string v0, "AUDIO_FORMAT_MAT_1_0"

    return-object v0

    .line 449
    :sswitch_8c
    const-string v0, "AUDIO_FORMAT_MAT"

    return-object v0

    .line 447
    :sswitch_8f
    const-string v0, "AUDIO_FORMAT_LDAC"

    return-object v0

    .line 547
    :sswitch_92
    const-string v0, "AUDIO_FORMAT_AC4_L4"

    return-object v0

    .line 445
    :sswitch_95
    const-string v0, "AUDIO_FORMAT_AC4"

    return-object v0

    .line 443
    :sswitch_98
    const-string v0, "AUDIO_FORMAT_APTX_HD"

    return-object v0

    .line 441
    :sswitch_9b
    const-string v0, "AUDIO_FORMAT_APTX"

    return-object v0

    .line 439
    :sswitch_9e
    const-string v0, "AUDIO_FORMAT_SBC"

    return-object v0

    .line 537
    :sswitch_a1
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_XHE"

    return-object v0

    .line 535
    :sswitch_a4
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_ELD"

    return-object v0

    .line 533
    :sswitch_a7
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_HE_V2"

    return-object v0

    .line 531
    :sswitch_aa
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LD"

    return-object v0

    .line 529
    :sswitch_ad
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_ERLC"

    return-object v0

    .line 527
    :sswitch_b0
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_SCALABLE"

    return-object v0

    .line 525
    :sswitch_b3
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_HE_V1"

    return-object v0

    .line 523
    :sswitch_b6
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LTP"

    return-object v0

    .line 521
    :sswitch_b9
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_SSR"

    return-object v0

    .line 519
    :sswitch_bc
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LC"

    return-object v0

    .line 517
    :sswitch_bf
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_MAIN"

    return-object v0

    .line 437
    :sswitch_c2
    const-string v0, "AUDIO_FORMAT_AAC_ADTS"

    return-object v0

    .line 435
    :sswitch_c5
    const-string v0, "AUDIO_FORMAT_APE"

    return-object v0

    .line 433
    :sswitch_c8
    const-string v0, "AUDIO_FORMAT_ALAC"

    return-object v0

    .line 431
    :sswitch_cb
    const-string v0, "AUDIO_FORMAT_FLAC"

    return-object v0

    .line 429
    :sswitch_ce
    const-string v0, "AUDIO_FORMAT_DSD"

    return-object v0

    .line 427
    :sswitch_d1
    const-string v0, "AUDIO_FORMAT_QCELP"

    return-object v0

    .line 425
    :sswitch_d4
    const-string v0, "AUDIO_FORMAT_MP2"

    return-object v0

    .line 423
    :sswitch_d7
    const-string v0, "AUDIO_FORMAT_AMR_WB_PLUS"

    return-object v0

    .line 421
    :sswitch_da
    const-string v0, "AUDIO_FORMAT_WMA_PRO"

    return-object v0

    .line 419
    :sswitch_dd
    const-string v0, "AUDIO_FORMAT_WMA"

    return-object v0

    .line 417
    :sswitch_e0
    const-string v0, "AUDIO_FORMAT_AAC_ADIF"

    return-object v0

    .line 415
    :sswitch_e3
    const-string v0, "AUDIO_FORMAT_EVRCNW"

    return-object v0

    .line 413
    :sswitch_e6
    const-string v0, "AUDIO_FORMAT_EVRCWB"

    return-object v0

    .line 411
    :sswitch_e9
    const-string v0, "AUDIO_FORMAT_EVRCB"

    return-object v0

    .line 409
    :sswitch_ec
    const-string v0, "AUDIO_FORMAT_EVRC"

    return-object v0

    .line 407
    :sswitch_ef
    const-string v0, "AUDIO_FORMAT_DOLBY_TRUEHD"

    return-object v0

    .line 405
    :sswitch_f2
    const-string v0, "AUDIO_FORMAT_IEC61937"

    return-object v0

    .line 403
    :sswitch_f5
    const-string v0, "AUDIO_FORMAT_DTS_HD"

    return-object v0

    .line 401
    :sswitch_f8
    const-string v0, "AUDIO_FORMAT_DTS"

    return-object v0

    .line 545
    :sswitch_fb
    const-string v0, "AUDIO_FORMAT_E_AC3_JOC"

    return-object v0

    .line 399
    :sswitch_fe
    const-string v0, "AUDIO_FORMAT_E_AC3"

    return-object v0

    .line 397
    :sswitch_101
    const-string v0, "AUDIO_FORMAT_AC3"

    return-object v0

    .line 395
    :sswitch_104
    const-string v0, "AUDIO_FORMAT_OPUS"

    return-object v0

    .line 393
    :sswitch_107
    const-string v0, "AUDIO_FORMAT_VORBIS"

    return-object v0

    .line 391
    :sswitch_10a
    const-string v0, "AUDIO_FORMAT_HE_AAC_V2"

    return-object v0

    .line 389
    :sswitch_10d
    const-string v0, "AUDIO_FORMAT_HE_AAC_V1"

    return-object v0

    .line 515
    :sswitch_110
    const-string v0, "AUDIO_FORMAT_AAC_XHE"

    return-object v0

    .line 513
    :sswitch_113
    const-string v0, "AUDIO_FORMAT_AAC_ELD"

    return-object v0

    .line 511
    :sswitch_116
    const-string v0, "AUDIO_FORMAT_AAC_HE_V2"

    return-object v0

    .line 509
    :sswitch_119
    const-string v0, "AUDIO_FORMAT_AAC_LD"

    return-object v0

    .line 507
    :sswitch_11c
    const-string v0, "AUDIO_FORMAT_AAC_ERLC"

    return-object v0

    .line 505
    :sswitch_11f
    const-string v0, "AUDIO_FORMAT_AAC_SCALABLE"

    return-object v0

    .line 503
    :sswitch_122
    const-string v0, "AUDIO_FORMAT_AAC_HE_V1"

    return-object v0

    .line 501
    :sswitch_125
    const-string v0, "AUDIO_FORMAT_AAC_LTP"

    return-object v0

    .line 499
    :sswitch_128
    const-string v0, "AUDIO_FORMAT_AAC_SSR"

    return-object v0

    .line 497
    :sswitch_12b
    const-string v0, "AUDIO_FORMAT_AAC_LC"

    return-object v0

    .line 495
    :sswitch_12e
    const-string v0, "AUDIO_FORMAT_AAC_MAIN"

    return-object v0

    .line 387
    :sswitch_131
    const-string v0, "AUDIO_FORMAT_AAC"

    return-object v0

    .line 385
    :sswitch_134
    const-string v0, "AUDIO_FORMAT_AMR_WB"

    return-object v0

    .line 383
    :sswitch_137
    const-string v0, "AUDIO_FORMAT_AMR_NB"

    return-object v0

    .line 381
    :sswitch_13a
    const-string v0, "AUDIO_FORMAT_MP3"

    return-object v0

    .line 493
    :sswitch_13d
    const-string v0, "AUDIO_FORMAT_PCM_24_BIT_PACKED"

    return-object v0

    .line 491
    :sswitch_140
    const-string v0, "AUDIO_FORMAT_PCM_FLOAT"

    return-object v0

    .line 489
    :sswitch_143
    const-string v0, "AUDIO_FORMAT_PCM_8_24_BIT"

    return-object v0

    .line 487
    :sswitch_146
    const-string v0, "AUDIO_FORMAT_PCM_32_BIT"

    return-object v0

    .line 485
    :sswitch_149
    const-string v0, "AUDIO_FORMAT_PCM_8_BIT"

    return-object v0

    .line 483
    :sswitch_14c
    const-string v0, "AUDIO_FORMAT_PCM_16_BIT"

    return-object v0

    .line 379
    :sswitch_14f
    const-string v0, "AUDIO_FORMAT_DEFAULT"

    return-object v0

    .line 377
    :sswitch_152
    const-string v0, "AUDIO_FORMAT_INVALID"

    return-object v0

    nop

    :sswitch_data_156
    .sparse-switch
        -0x1 -> :sswitch_152
        0x0 -> :sswitch_14f
        0x1 -> :sswitch_14c
        0x2 -> :sswitch_149
        0x3 -> :sswitch_146
        0x4 -> :sswitch_143
        0x5 -> :sswitch_140
        0x6 -> :sswitch_13d
        0x1000000 -> :sswitch_13a
        0x2000000 -> :sswitch_137
        0x3000000 -> :sswitch_134
        0x4000000 -> :sswitch_131
        0x4000001 -> :sswitch_12e
        0x4000002 -> :sswitch_12b
        0x4000004 -> :sswitch_128
        0x4000008 -> :sswitch_125
        0x4000010 -> :sswitch_122
        0x4000020 -> :sswitch_11f
        0x4000040 -> :sswitch_11c
        0x4000080 -> :sswitch_119
        0x4000100 -> :sswitch_116
        0x4000200 -> :sswitch_113
        0x4000300 -> :sswitch_110
        0x5000000 -> :sswitch_10d
        0x6000000 -> :sswitch_10a
        0x7000000 -> :sswitch_107
        0x8000000 -> :sswitch_104
        0x9000000 -> :sswitch_101
        0xa000000 -> :sswitch_fe
        0xa000001 -> :sswitch_fb
        0xb000000 -> :sswitch_f8
        0xc000000 -> :sswitch_f5
        0xd000000 -> :sswitch_f2
        0xe000000 -> :sswitch_ef
        0x10000000 -> :sswitch_ec
        0x11000000 -> :sswitch_e9
        0x12000000 -> :sswitch_e6
        0x13000000 -> :sswitch_e3
        0x14000000 -> :sswitch_e0
        0x15000000 -> :sswitch_dd
        0x16000000 -> :sswitch_da
        0x17000000 -> :sswitch_d7
        0x18000000 -> :sswitch_d4
        0x19000000 -> :sswitch_d1
        0x1a000000 -> :sswitch_ce
        0x1b000000 -> :sswitch_cb
        0x1c000000 -> :sswitch_c8
        0x1d000000 -> :sswitch_c5
        0x1e000000 -> :sswitch_c2
        0x1e000001 -> :sswitch_bf
        0x1e000002 -> :sswitch_bc
        0x1e000004 -> :sswitch_b9
        0x1e000008 -> :sswitch_b6
        0x1e000010 -> :sswitch_b3
        0x1e000020 -> :sswitch_b0
        0x1e000040 -> :sswitch_ad
        0x1e000080 -> :sswitch_aa
        0x1e000100 -> :sswitch_a7
        0x1e000200 -> :sswitch_a4
        0x1e000300 -> :sswitch_a1
        0x1f000000 -> :sswitch_9e
        0x20000000 -> :sswitch_9b
        0x21000000 -> :sswitch_98
        0x22000000 -> :sswitch_95
        0x22000001 -> :sswitch_92
        0x23000000 -> :sswitch_8f
        0x24000000 -> :sswitch_8c
        0x24000001 -> :sswitch_89
        0x24000002 -> :sswitch_86
        0x24000003 -> :sswitch_83
        0x25000000 -> :sswitch_80
        0x25000002 -> :sswitch_7d
        0x25000010 -> :sswitch_7a
        0x25000100 -> :sswitch_77
        0x26000000 -> :sswitch_74
        0x27000000 -> :sswitch_71
        0x28000000 -> :sswitch_6e
        0x29000000 -> :sswitch_6b
        0x2a000000 -> :sswitch_68
        0x2b000000 -> :sswitch_65
        0x2c000000 -> :sswitch_62
        0x2c000013 -> :sswitch_5f
        0x2c000014 -> :sswitch_5c
        0x2c000023 -> :sswitch_59
        0x2c000024 -> :sswitch_56
        0x2d000000 -> :sswitch_53
        0x2e000000 -> :sswitch_50
        0x2f000000 -> :sswitch_4d
        0x30000000 -> :sswitch_4a
        0x31000000 -> :sswitch_47
        0x32000000 -> :sswitch_44
        0x33000000 -> :sswitch_41
        0x34010001 -> :sswitch_3e
        0x34010002 -> :sswitch_3b
        0x34010004 -> :sswitch_38
        0x34010008 -> :sswitch_35
        0x34020001 -> :sswitch_32
        0x34020002 -> :sswitch_2f
        0x34020004 -> :sswitch_2c
        0x34020008 -> :sswitch_29
        0x34040001 -> :sswitch_26
        0x34040002 -> :sswitch_23
        0x34040004 -> :sswitch_20
        0x34040008 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static blacklist audioSystemErrorToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "error"    # I

    .line 985
    packed-switch p0, :pswitch_data_30

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 987
    :pswitch_17
    const-string v0, "SUCCESS"

    return-object v0

    .line 989
    :pswitch_1a
    const-string v0, "ERROR"

    return-object v0

    .line 991
    :pswitch_1d
    const-string v0, "BAD_VALUE"

    return-object v0

    .line 993
    :pswitch_20
    const-string v0, "INVALID_OPERATION"

    return-object v0

    .line 995
    :pswitch_23
    const-string v0, "PERMISSION_DENIED"

    return-object v0

    .line 997
    :pswitch_26
    const-string v0, "NO_INIT"

    return-object v0

    .line 999
    :pswitch_29
    const-string v0, "DEAD_OBJECT"

    return-object v0

    .line 1001
    :pswitch_2c
    const-string v0, "WOULD_BLOCK"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch -0x7
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public static blacklist bluetoothA2dpCodecToAudioFormat(I)I
    .registers 3
    .param p0, "btCodec"    # I

    .line 329
    packed-switch p0, :pswitch_data_3c

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown A2DP BT codec 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to audio format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    return v0

    .line 343
    :pswitch_27
    const/high16 v0, 0x8000000

    return v0

    .line 341
    :pswitch_2a
    const/high16 v0, 0x2b000000

    return v0

    .line 339
    :pswitch_2d
    const/high16 v0, 0x23000000

    return v0

    .line 337
    :pswitch_30
    const/high16 v0, 0x21000000

    return v0

    .line 335
    :pswitch_33
    const/high16 v0, 0x20000000

    return v0

    .line 333
    :pswitch_36
    const/high16 v0, 0x4000000

    return v0

    .line 331
    :pswitch_39
    const/high16 v0, 0x1f000000

    return v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
    .end packed-switch
.end method

.method public static blacklist bluetoothLeCodecToAudioFormat(I)I
    .registers 3
    .param p0, "btCodec"    # I

    .line 359
    packed-switch p0, :pswitch_data_2a

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown LE Audio BT codec 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to audio format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x0

    return v0

    .line 361
    :pswitch_27
    const/high16 v0, 0x2b000000

    return v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
    .end packed-switch
.end method

.method public static native blacklist canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z
.end method

.method public static native greylist checkAudioFlinger()I
.end method

.method public static native blacklist clearDevicesRoleForCapturePreset(II)I
.end method

.method public static native blacklist clearDevicesRoleForStrategy(II)I
.end method

.method public static native blacklist clearPreferredMixerAttributes(Landroid/media/AudioAttributes;II)I
.end method

.method public static native greylist-max-o createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method public static blacklist deviceSetToString(Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1934
    .local p0, "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1935
    .local v0, "n":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1936
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1937
    .local v3, "device":Ljava/lang/Integer;
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "n":I
    .local v4, "n":I
    if-lez v0, :cond_1f

    .line 1938
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    .end local v3    # "device":Ljava/lang/Integer;
    move v0, v4

    goto :goto_a

    .line 1943
    .end local v4    # "n":I
    .restart local v0    # "n":I
    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o deviceStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 1438
    packed-switch p0, :pswitch_data_24

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state ("

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

    .line 1440
    :pswitch_1d
    const-string v0, "DEVICE_STATE_AVAILABLE"

    return-object v0

    .line 1439
    :pswitch_20
    const-string v0, "DEVICE_STATE_UNAVAILABLE"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private static greylist-max-r dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .registers 7
    .param p0, "event"    # I
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 763
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 764
    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 765
    .local v1, "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_29

    .line 766
    if-eqz v1, :cond_28

    .line 767
    packed-switch p0, :pswitch_data_2c

    .line 772
    const-string v0, "AudioSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicPolicyCallbackFromNative: unknown event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 769
    :pswitch_24
    invoke-interface {v1, p1, p2}, Landroid/media/AudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    .line 770
    nop

    .line 775
    :cond_28
    :goto_28
    return-void

    .line 765
    .end local v1    # "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
    .end packed-switch
.end method

.method private static greylist errorCallbackFromNative(I)V
    .registers 3
    .param p0, "error"    # I

    .line 726
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 727
    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 728
    .local v1, "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 729
    if-eqz v1, :cond_b

    .line 730
    invoke-interface {v1, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 732
    :cond_b
    return-void

    .line 728
    .end local v1    # "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static greylist-max-o forceUseConfigToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "config"    # I

    .line 1698
    packed-switch p0, :pswitch_data_50

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown config ("

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

    .line 1715
    :pswitch_1d
    const-string v0, "FORCE_BT_BLE"

    return-object v0

    .line 1714
    :pswitch_20
    const-string v0, "FORCE_ENCODED_SURROUND_MANUAL"

    return-object v0

    .line 1713
    :pswitch_23
    const-string v0, "FORCE_ENCODED_SURROUND_ALWAYS"

    return-object v0

    .line 1712
    :pswitch_26
    const-string v0, "FORCE_ENCODED_SURROUND_NEVER"

    return-object v0

    .line 1711
    :pswitch_29
    const-string v0, "FORCE_HDMI_SYSTEM_AUDIO_ENFORCED"

    return-object v0

    .line 1710
    :pswitch_2c
    const-string v0, "FORCE_SYSTEM_ENFORCED"

    return-object v0

    .line 1709
    :pswitch_2f
    const-string v0, "FORCE_NO_BT_A2DP"

    return-object v0

    .line 1708
    :pswitch_32
    const-string v0, "FORCE_DIGITAL_DOCK"

    return-object v0

    .line 1707
    :pswitch_35
    const-string v0, "FORCE_ANALOG_DOCK"

    return-object v0

    .line 1706
    :pswitch_38
    const-string v0, "FORCE_BT_DESK_DOCK"

    return-object v0

    .line 1705
    :pswitch_3b
    const-string v0, "FORCE_BT_CAR_DOCK"

    return-object v0

    .line 1704
    :pswitch_3e
    const-string v0, "FORCE_WIRED_ACCESSORY"

    return-object v0

    .line 1703
    :pswitch_41
    const-string v0, "FORCE_BT_A2DP"

    return-object v0

    .line 1702
    :pswitch_44
    const-string v0, "FORCE_BT_SCO"

    return-object v0

    .line 1701
    :pswitch_47
    const-string v0, "FORCE_HEADPHONES"

    return-object v0

    .line 1700
    :pswitch_4a
    const-string v0, "FORCE_SPEAKER"

    return-object v0

    .line 1699
    :pswitch_4d
    const-string v0, "FORCE_NONE"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4a
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

.method public static greylist-max-o forceUseUsageToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usage"    # I

    .line 1738
    packed-switch p0, :pswitch_data_36

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown usage ("

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

    .line 1746
    :pswitch_1d
    const-string v0, "FOR_VIBRATE_RINGING"

    return-object v0

    .line 1745
    :pswitch_20
    const-string v0, "FOR_ENCODED_SURROUND"

    return-object v0

    .line 1744
    :pswitch_23
    const-string v0, "FOR_HDMI_SYSTEM_AUDIO"

    return-object v0

    .line 1743
    :pswitch_26
    const-string v0, "FOR_SYSTEM"

    return-object v0

    .line 1742
    :pswitch_29
    const-string v0, "FOR_DOCK"

    return-object v0

    .line 1741
    :pswitch_2c
    const-string v0, "FOR_RECORD"

    return-object v0

    .line 1740
    :pswitch_2f
    const-string v0, "FOR_MEDIA"

    return-object v0

    .line 1739
    :pswitch_32
    const-string v0, "FOR_COMMUNICATION"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
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

.method public static blacklist generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2608
    .local p0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2609
    .local v0, "deviceTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 2610
    .local v2, "device":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2611
    .end local v2    # "device":Landroid/media/AudioDeviceAttributes;
    goto :goto_9

    .line 2612
    :cond_21
    return-object v0
.end method

.method public static native greylist-max-o getAudioHwSyncForSession(I)I
.end method

.method public static greylist-max-o getDefaultStreamVolume(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 2533
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method public static native greylist getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static blacklist getDeviceMaskFromSet(Ljava/util/Set;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1913
    .local p0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1914
    .local v0, "deviceMask":I
    const/high16 v1, -0x80000000

    .line 1915
    .local v1, "deviceInChecksum":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "AudioSystem"

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1916
    .local v3, "device":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    if-eqz v5, :cond_3d

    .line 1917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceMaskFromSet skipping multi-bit device value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    goto :goto_7

    .line 1920
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 1921
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v1, v4

    .line 1922
    .end local v3    # "device":Ljava/lang/Integer;
    goto :goto_7

    .line 1925
    :cond_48
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eq v1, v2, :cond_6d

    .line 1926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceMaskFromSet: Invalid set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroid/media/AudioSystem;->deviceSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_6d
    return v0
.end method

.method public static blacklist getDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "device"    # I

    .line 1664
    invoke-static {p0}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1665
    invoke-static {p0}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1667
    :cond_b
    invoke-static {p0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist getDevicesForAttributes(Landroid/media/AudioAttributes;[Landroid/media/AudioDeviceAttributes;Z)I
.end method

.method public static blacklist getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .registers 8
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "forVolume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 1956
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    .line 1958
    .local v0, "devices":[Landroid/media/AudioDeviceAttributes;
    invoke-static {p0, v0, p1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;[Landroid/media/AudioDeviceAttributes;Z)I

    move-result v1

    .line 1959
    .local v1, "res":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1960
    .local v2, "routeDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceAttributes;>;"
    if-eqz v1, :cond_3e

    .line 1961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in getDevicesForAttributes attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioSystem"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    return-object v2

    .line 1966
    :cond_3e
    array-length v3, v0

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v3, :cond_4c

    aget-object v5, v0, v4

    .line 1967
    .local v5, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v5, :cond_49

    .line 1968
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    .end local v5    # "device":Landroid/media/AudioDeviceAttributes;
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1971
    :cond_4c
    return-object v2
.end method

.method public static native blacklist getDevicesForRoleAndCapturePreset(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native blacklist getDevicesForRoleAndStrategy(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation
.end method

.method public static greylist getDevicesForStream(I)I
    .registers 3
    .param p0, "stream"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1897
    nop

    .line 1898
    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1899
    .local v0, "attr":Landroid/media/AudioAttributes;
    nop

    .line 1900
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1899
    invoke-static {v1}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v1

    return v1
.end method

.method public static native blacklist getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
.end method

.method public static native blacklist getDirectProfilesForAttributes(Landroid/media/AudioAttributes;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioProfile;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native greylist getForceUse(I)I
.end method

.method public static native blacklist getHwOffloadFormatsSupportedForBluetoothMedia(ILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public static greylist-max-o getInputDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "device"    # I

    .line 1594
    sparse-switch p0, :sswitch_data_5c

    .line 1653
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1650
    :sswitch_8
    const-string v0, "ble_headset"

    return-object v0

    .line 1644
    :sswitch_b
    const-string v0, "echo_reference"

    return-object v0

    .line 1648
    :sswitch_e
    const-string v0, "hdmi_earc"

    return-object v0

    .line 1646
    :sswitch_11
    const-string v0, "hdmi_arc"

    return-object v0

    .line 1642
    :sswitch_14
    const-string v0, "bt_ble"

    return-object v0

    .line 1640
    :sswitch_17
    const-string v0, "usb_headset"

    return-object v0

    .line 1638
    :sswitch_1a
    const-string v0, "proxy"

    return-object v0

    .line 1636
    :sswitch_1d
    const-string v0, "bus"

    return-object v0

    .line 1634
    :sswitch_20
    const-string v0, "ip"

    return-object v0

    .line 1632
    :sswitch_23
    const-string v0, "loopback"

    return-object v0

    .line 1630
    :sswitch_26
    const-string v0, "bt_a2dp"

    return-object v0

    .line 1628
    :sswitch_29
    const-string v0, "spdif"

    return-object v0

    .line 1626
    :sswitch_2c
    const-string v0, "line"

    return-object v0

    .line 1624
    :sswitch_2f
    const-string v0, "tv_tuner"

    return-object v0

    .line 1622
    :sswitch_32
    const-string v0, "fm_tuner"

    return-object v0

    .line 1620
    :sswitch_35
    const-string v0, "usb_device"

    return-object v0

    .line 1618
    :sswitch_38
    const-string v0, "usb_accessory"

    return-object v0

    .line 1616
    :sswitch_3b
    const-string v0, "digital_dock"

    return-object v0

    .line 1614
    :sswitch_3e
    const-string v0, "analog_dock"

    return-object v0

    .line 1612
    :sswitch_41
    const-string v0, "remote_submix"

    return-object v0

    .line 1610
    :sswitch_44
    const-string v0, "back_mic"

    return-object v0

    .line 1608
    :sswitch_47
    const-string v0, "telephony_rx"

    return-object v0

    .line 1606
    :sswitch_4a
    const-string v0, "aux_digital"

    return-object v0

    .line 1604
    :sswitch_4d
    const-string v0, "headset"

    return-object v0

    .line 1602
    :sswitch_50
    const-string v0, "bt_sco_hs"

    return-object v0

    .line 1600
    :sswitch_53
    const-string v0, "mic"

    return-object v0

    .line 1598
    :sswitch_56
    const-string v0, "ambient"

    return-object v0

    .line 1596
    :sswitch_59
    const-string v0, "communication"

    return-object v0

    :sswitch_data_5c
    .sparse-switch
        -0x7fffffff -> :sswitch_59
        -0x7ffffffe -> :sswitch_56
        -0x7ffffffc -> :sswitch_53
        -0x7ffffff8 -> :sswitch_50
        -0x7ffffff0 -> :sswitch_4d
        -0x7fffffe0 -> :sswitch_4a
        -0x7fffffc0 -> :sswitch_47
        -0x7fffff80 -> :sswitch_44
        -0x7fffff00 -> :sswitch_41
        -0x7ffffe00 -> :sswitch_3e
        -0x7ffffc00 -> :sswitch_3b
        -0x7ffff800 -> :sswitch_38
        -0x7ffff000 -> :sswitch_35
        -0x7fffe000 -> :sswitch_32
        -0x7fffc000 -> :sswitch_2f
        -0x7fff8000 -> :sswitch_2c
        -0x7fff0000 -> :sswitch_29
        -0x7ffe0000 -> :sswitch_26
        -0x7ffc0000 -> :sswitch_23
        -0x7ff80000 -> :sswitch_20
        -0x7ff00000 -> :sswitch_1d
        -0x7f000000 -> :sswitch_1a
        -0x7e000000 -> :sswitch_17
        -0x7c000000 -> :sswitch_14
        -0x78000000 -> :sswitch_11
        -0x77ffffff -> :sswitch_e
        -0x70000000 -> :sswitch_b
        -0x60000000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static native blacklist getMasterBalance()F
.end method

.method public static native greylist-max-o getMasterMono()Z
.end method

.method public static native greylist-max-r getMasterMute()Z
.end method

.method public static native greylist-max-o getMasterVolume()F
.end method

.method public static native blacklist getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
.end method

.method public static native greylist-max-o getMicrophones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native blacklist getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
.end method

.method public static final greylist getNumStreamTypes()I
    .registers 1

    .line 156
    const/16 v0, 0xc

    return v0
.end method

.method static blacklist getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .registers 7
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 2128
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 2129
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    .line 2130
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v4

    .line 2128
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/AudioSystem;->native_get_offload_support(IIIII)I

    move-result v0

    return v0
.end method

.method public static greylist getOutputDeviceName(I)Ljava/lang/String;
    .registers 3
    .param p0, "device"    # I

    .line 1516
    sparse-switch p0, :sswitch_data_82

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1584
    :sswitch_1b
    const-string v0, "ble_broadcast"

    return-object v0

    .line 1582
    :sswitch_1e
    const-string v0, "ble_speaker"

    return-object v0

    .line 1580
    :sswitch_21
    const-string v0, "ble_headset"

    return-object v0

    .line 1578
    :sswitch_24
    const-string v0, "echo_canceller"

    return-object v0

    .line 1576
    :sswitch_27
    const-string v0, "hearing_aid_out"

    return-object v0

    .line 1574
    :sswitch_2a
    const-string v0, "usb_headset"

    return-object v0

    .line 1572
    :sswitch_2d
    const-string v0, "proxy"

    return-object v0

    .line 1570
    :sswitch_30
    const-string v0, "bus"

    return-object v0

    .line 1568
    :sswitch_33
    const-string v0, "multichannel_group"

    return-object v0

    .line 1566
    :sswitch_36
    const-string v0, "ip"

    return-object v0

    .line 1564
    :sswitch_39
    const-string v0, "speaker_safe"

    return-object v0

    .line 1562
    :sswitch_3c
    const-string v0, "aux_line"

    return-object v0

    .line 1560
    :sswitch_3f
    const-string v0, "fm_transmitter"

    return-object v0

    .line 1558
    :sswitch_42
    const-string v0, "spdif"

    return-object v0

    .line 1556
    :sswitch_45
    const-string v0, "hdmi_earc"

    return-object v0

    .line 1554
    :sswitch_48
    const-string v0, "hdmi_arc"

    return-object v0

    .line 1552
    :sswitch_4b
    const-string v0, "line"

    return-object v0

    .line 1550
    :sswitch_4e
    const-string v0, "telephony_tx"

    return-object v0

    .line 1548
    :sswitch_51
    const-string v0, "remote_submix"

    return-object v0

    .line 1546
    :sswitch_54
    const-string v0, "usb_device"

    return-object v0

    .line 1544
    :sswitch_57
    const-string v0, "usb_accessory"

    return-object v0

    .line 1542
    :sswitch_5a
    const-string v0, "digital_dock"

    return-object v0

    .line 1540
    :sswitch_5d
    const-string v0, "analog_dock"

    return-object v0

    .line 1538
    :sswitch_60
    const-string v0, "hdmi"

    return-object v0

    .line 1536
    :sswitch_63
    const-string v0, "bt_a2dp_spk"

    return-object v0

    .line 1534
    :sswitch_66
    const-string v0, "bt_a2dp_hp"

    return-object v0

    .line 1532
    :sswitch_69
    const-string v0, "bt_a2dp"

    return-object v0

    .line 1530
    :sswitch_6c
    const-string v0, "bt_sco_carkit"

    return-object v0

    .line 1528
    :sswitch_6f
    const-string v0, "bt_sco_hs"

    return-object v0

    .line 1526
    :sswitch_72
    const-string v0, "bt_sco"

    return-object v0

    .line 1524
    :sswitch_75
    const-string v0, "headphone"

    return-object v0

    .line 1522
    :sswitch_78
    const-string v0, "headset"

    return-object v0

    .line 1520
    :sswitch_7b
    const-string v0, "speaker"

    return-object v0

    .line 1518
    :sswitch_7e
    const-string v0, "earpiece"

    return-object v0

    nop

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_7e
        0x2 -> :sswitch_7b
        0x4 -> :sswitch_78
        0x8 -> :sswitch_75
        0x10 -> :sswitch_72
        0x20 -> :sswitch_6f
        0x40 -> :sswitch_6c
        0x80 -> :sswitch_69
        0x100 -> :sswitch_66
        0x200 -> :sswitch_63
        0x400 -> :sswitch_60
        0x800 -> :sswitch_5d
        0x1000 -> :sswitch_5a
        0x2000 -> :sswitch_57
        0x4000 -> :sswitch_54
        0x8000 -> :sswitch_51
        0x10000 -> :sswitch_4e
        0x20000 -> :sswitch_4b
        0x40000 -> :sswitch_48
        0x40001 -> :sswitch_45
        0x80000 -> :sswitch_42
        0x100000 -> :sswitch_3f
        0x200000 -> :sswitch_3c
        0x400000 -> :sswitch_39
        0x800000 -> :sswitch_36
        0x800001 -> :sswitch_33
        0x1000000 -> :sswitch_30
        0x2000000 -> :sswitch_2d
        0x4000000 -> :sswitch_2a
        0x8000000 -> :sswitch_27
        0x10000000 -> :sswitch_24
        0x20000000 -> :sswitch_21
        0x20000001 -> :sswitch_1e
        0x20000002 -> :sswitch_1b
    .end sparse-switch
.end method

.method public static native greylist getOutputLatency(I)I
.end method

.method public static native greylist getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static greylist-max-o getPlatformType(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2579
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2580
    const/4 v0, 0x3

    return v0

    .line 2581
    :cond_e
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2582
    const/4 v0, 0x1

    return v0

    .line 2583
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2584
    const/4 v0, 0x2

    return v0

    .line 2586
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public static native blacklist getPreferredMixerAttributes(Landroid/media/AudioAttributes;ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "I",
            "Ljava/util/List<",
            "Landroid/media/AudioMixerAttributes;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native greylist getPrimaryOutputFrameCount()I
.end method

.method public static native greylist getPrimaryOutputSamplingRate()I
.end method

.method public static native blacklist getRegisteredPolicyMixes(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native blacklist getReportedSurroundFormats(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public static blacklist getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;
    .registers 2
    .param p0, "callback"    # Landroid/media/ISoundDoseCallback;

    .line 2481
    invoke-static {p0}, Landroid/media/AudioSystem;->nativeGetSoundDose(Landroid/media/ISoundDoseCallback;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISoundDose$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISoundDose;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;
    .registers 2
    .param p0, "callback"    # Landroid/media/INativeSpatializerCallback;

    .line 2448
    invoke-static {p0}, Landroid/media/AudioSystem;->nativeGetSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializer;

    move-result-object v0

    return-object v0
.end method

.method public static native greylist-max-o getStreamVolumeDB(III)F
.end method

.method public static native greylist-max-o getStreamVolumeIndex(II)I
.end method

.method public static native blacklist getSupportedDeviceTypes(ILandroid/util/IntArray;)I
.end method

.method public static native blacklist getSupportedMixerAttributes(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioMixerAttributes;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native blacklist getSurroundFormats(Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation
.end method

.method public static greylist-max-o getValueForVibrateSetting(III)I
    .registers 5
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 2523
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x3

    shl-int v0, v1, v0

    not-int v0, v0

    and-int/2addr p0, v0

    .line 2526
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 2528
    return p0
.end method

.method public static native blacklist getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I
.end method

.method public static native blacklist handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native greylist initStreamVolume(III)I
.end method

.method public static blacklist intersectionAudioDeviceTypes(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2621
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2622
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 2623
    return-object v0
.end method

.method public static blacklist isBluetoothA2dpOutDevice(I)Z
    .registers 3
    .param p0, "deviceType"    # I

    .line 1384
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isBluetoothDevice(I)Z
    .registers 2
    .param p0, "deviceType"    # I

    .line 1364
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1365
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1366
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1364
    :goto_16
    return v0
.end method

.method public static blacklist isBluetoothInDevice(I)Z
    .registers 2
    .param p0, "deviceType"    # I

    .line 1378
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothScoInDevice(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1379
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothLeInDevice(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1378
    :goto_10
    return v0
.end method

.method public static blacklist isBluetoothLeDevice(I)Z
    .registers 2
    .param p0, "deviceType"    # I

    .line 1415
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothLeOutDevice(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1416
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothLeInDevice(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1415
    :goto_10
    return v0
.end method

.method public static blacklist isBluetoothLeInDevice(I)Z
    .registers 3
    .param p0, "deviceType"    # I

    .line 1410
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isBluetoothLeOutDevice(I)Z
    .registers 3
    .param p0, "deviceType"    # I

    .line 1405
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isBluetoothOutDevice(I)Z
    .registers 2
    .param p0, "deviceType"    # I

    .line 1371
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1372
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1373
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothLeOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1371
    :goto_16
    return v0
.end method

.method public static blacklist isBluetoothScoDevice(I)Z
    .registers 2
    .param p0, "deviceType"    # I

    .line 1399
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1400
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothScoInDevice(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1399
    :goto_10
    return v0
.end method

.method public static blacklist isBluetoothScoInDevice(I)Z
    .registers 3
    .param p0, "deviceType"    # I

    .line 1394
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isBluetoothScoOutDevice(I)Z
    .registers 3
    .param p0, "deviceType"    # I

    .line 1389
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static native blacklist isBluetoothVariableLatencyEnabled()Z
.end method

.method public static native blacklist isCallScreeningModeSupported()Z
.end method

.method public static native blacklist isHapticPlaybackSupported()Z
.end method

.method public static blacklist isInputDevice(I)Z
    .registers 3
    .param p0, "deviceType"    # I

    .line 1359
    const/high16 v0, -0x80000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isLeAudioDeviceType(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 2639
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static native greylist isMicrophoneMuted()Z
.end method

.method public static blacklist isRemoteSubmixDevice(I)Z
    .registers 2
    .param p0, "deviceType"    # I

    .line 1421
    const v0, -0x7fffff00

    if-eq p0, v0, :cond_d

    const v0, 0x8000

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static blacklist isSingleAudioDeviceType(Ljava/util/Set;I)Z
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 2631
    .local p0, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static greylist-max-o isSingleVolume(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2595
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2597
    .local v0, "forceSingleVolume":Z
    invoke-static {p0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method public static native greylist isSourceActive(I)Z
.end method

.method public static native greylist isStreamActive(II)Z
.end method

.method public static native greylist-max-o isStreamActiveRemotely(II)Z
.end method

.method public static native blacklist isUltrasoundSupported()Z
.end method

.method public static native greylist-max-o listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native greylist-max-o listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native blacklist listenForSystemPropertyChange(Ljava/lang/String;Ljava/lang/Runnable;)J
.end method

.method public static greylist-max-o modeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 218
    packed-switch p0, :pswitch_data_38

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown mode ("

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

    .line 227
    :pswitch_1d
    const-string v0, "MODE_COMMUNICATION_REDIRECT"

    return-object v0

    .line 226
    :pswitch_20
    const-string v0, "MODE_CALL_REDIRECT"

    return-object v0

    .line 225
    :pswitch_23
    const-string v0, "MODE_CALL_SCREENING"

    return-object v0

    .line 221
    :pswitch_26
    const-string v0, "MODE_IN_COMMUNICATION"

    return-object v0

    .line 220
    :pswitch_29
    const-string v0, "MODE_IN_CALL"

    return-object v0

    .line 224
    :pswitch_2c
    const-string v0, "MODE_RINGTONE"

    return-object v0

    .line 223
    :pswitch_2f
    const-string v0, "MODE_NORMAL"

    return-object v0

    .line 219
    :pswitch_32
    const-string v0, "MODE_CURRENT"

    return-object v0

    .line 222
    :pswitch_35
    const-string v0, "MODE_INVALID"

    return-object v0

    :pswitch_data_38
    .packed-switch -0x2
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

.method public static native greylist muteMicrophone(Z)I
.end method

.method private static native blacklist nativeGetSoundDose(Landroid/media/ISoundDoseCallback;)Landroid/os/IBinder;
.end method

.method private static native blacklist nativeGetSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/os/IBinder;
.end method

.method private static native blacklist native_getMaxChannelCount()I
.end method

.method private static native blacklist native_getMaxSampleRate()I
.end method

.method private static native blacklist native_getMinSampleRate()I
.end method

.method private static native blacklist native_get_offload_support(IIIII)I
.end method

.method private static final native greylist-max-o native_register_dynamic_policy_callback()V
.end method

.method private static final native greylist-max-o native_register_recording_callback()V
.end method

.method private static native blacklist native_register_routing_callback()V
.end method

.method private static native blacklist native_register_vol_range_init_req_callback()V
.end method

.method public static native greylist-max-o newAudioPlayerId()I
.end method

.method public static native blacklist newAudioRecorderId()I
.end method

.method public static native greylist-max-o newAudioSessionId()I
.end method

.method private static blacklist populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Landroid/util/Pair<",
            "[I[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2300
    .local p0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2301
    .local v0, "types":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2302
    .local v1, "addresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 2303
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    aput v3, v0, v2

    .line 2304
    aget v3, v0, v2

    if-nez v3, :cond_3e

    .line 2305
    nop

    .line 2306
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2305
    invoke-static {v3, v4}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    .line 2308
    :cond_3e
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2302
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2310
    .end local v2    # "i":I
    :cond_4d
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static greylist-max-r recordingCallbackFromNative(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;I)V
    .registers 27
    .param p0, "event"    # I
    .param p1, "riid"    # I
    .param p2, "uid"    # I
    .param p3, "session"    # I
    .param p4, "source"    # I
    .param p5, "portId"    # I
    .param p6, "silenced"    # Z
    .param p7, "recordingFormat"    # [I
    .param p8, "clientEffects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p9, "effects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p10, "activeSource"    # I

    .line 842
    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 843
    :try_start_7
    sget-object v0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 844
    .local v0, "cb":Landroid/media/AudioSystem$AudioRecordingCallback;
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_69

    .line 846
    array-length v1, v9

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string v1, "None"

    goto :goto_15

    :cond_11
    aget-object v1, v9, v2

    iget-object v1, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    :goto_15
    move-object v13, v1

    .line 847
    .local v13, "clientEffectName":Ljava/lang/String;
    array-length v1, v10

    if-nez v1, :cond_1c

    const-string v1, "None"

    goto :goto_20

    :cond_1c
    aget-object v1, v10, v2

    iget-object v1, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    :goto_20
    move-object v14, v1

    .line 849
    .local v14, "effectName":Ljava/lang/String;
    if-eqz v0, :cond_68

    .line 850
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 851
    .local v15, "audioPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    invoke-static {v15}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_51

    .line 852
    const/4 v1, 0x0

    .line 853
    .local v1, "patchFound":Z
    const/4 v2, 0x6

    aget v2, p7, v2

    .line 854
    .local v2, "patchHandle":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPatch;

    .line 855
    .local v4, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v4}, Landroid/media/AudioPatch;->id()I

    move-result v5

    if-ne v5, v2, :cond_4b

    .line 856
    const/4 v1, 0x1

    .line 857
    goto :goto_4c

    .line 859
    .end local v4    # "patch":Landroid/media/AudioPatch;
    :cond_4b
    goto :goto_37

    .line 860
    :cond_4c
    :goto_4c
    if-nez v1, :cond_51

    .line 864
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 868
    .end local v1    # "patchFound":Z
    .end local v2    # "patchHandle":I
    :cond_51
    const-string v12, ""

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p10

    invoke-interface/range {v0 .. v12}, Landroid/media/AudioSystem$AudioRecordingCallback;->onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V

    .line 871
    .end local v15    # "audioPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_68
    return-void

    .line 844
    .end local v0    # "cb":Landroid/media/AudioSystem$AudioRecordingCallback;
    .end local v13    # "clientEffectName":Ljava/lang/String;
    .end local v14    # "effectName":Ljava/lang/String;
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public static native blacklist registerAudioVolumeGroupCallback(Landroid/media/INativeAudioVolumeGroupCallback;)I
.end method

.method public static native greylist-max-o registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native greylist-max-o releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static blacklist removeDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 6
    .param p0, "capturePreset"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2383
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2384
    const/4 v0, -0x2

    return v0

    .line 2386
    :cond_8
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 2387
    .local v0, "typeAddresses":Landroid/util/Pair;, "Landroid/util/Pair<[I[Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native blacklist removeDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static blacklist removeDevicesRoleForStrategy(IILjava/util/List;)I
    .registers 7
    .param p0, "strategy"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2251
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2252
    const/4 v0, -0x2

    return v0

    .line 2254
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2255
    .local v0, "types":[I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2256
    .local v1, "addresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 2257
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    aput v3, v0, v2

    .line 2258
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2256
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2260
    .end local v2    # "i":I
    :cond_36
    invoke-static {p0, p1, v0, v1}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(II[I[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static native blacklist removeDevicesRoleForStrategy(II[I[Ljava/lang/String;)I
.end method

.method public static native blacklist removeUidDeviceAffinities(I)I
.end method

.method public static native blacklist removeUserIdDeviceAffinities(I)I
.end method

.method private static blacklist routingCallbackFromNative()V
    .registers 3

    .line 897
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 898
    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

    .line 899
    .local v1, "cb":Landroid/media/AudioSystem$RoutingUpdateCallback;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    .line 900
    if-nez v1, :cond_10

    .line 901
    const-string v0, "AudioSystem"

    const-string v2, "routing update from APM was not captured"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void

    .line 904
    :cond_10
    invoke-interface {v1}, Landroid/media/AudioSystem$RoutingUpdateCallback;->onRoutingUpdated()V

    .line 905
    return-void

    .line 899
    .end local v1    # "cb":Landroid/media/AudioSystem$RoutingUpdateCallback;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static native blacklist setA11yServicesUids([I)I
.end method

.method public static native blacklist setActiveAssistantServicesUids([I)I
.end method

.method public static native blacklist setAllowedCapturePolicy(II)I
.end method

.method public static native blacklist setAssistantServicesUids([I)I
.end method

.method public static native blacklist setAudioFlingerBinder(Landroid/os/IBinder;)V
.end method

.method public static native blacklist setAudioHalPids([I)I
.end method

.method public static native greylist-max-o setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native blacklist setBluetoothVariableLatencyEnabled(Z)I
.end method

.method public static native blacklist setCurrentImeUid(I)I
.end method

.method public static native greylist setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I
.end method

.method public static native greylist setDeviceConnectionState(ILandroid/os/Parcel;IZ)I
.end method

.method public static greylist setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I
    .registers 4
    .param p0, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p1, "state"    # I
    .param p2, "codecFormat"    # I

    .line 1776
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I
    .registers 7
    .param p0, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p1, "state"    # I
    .param p2, "codecFormat"    # I
    .param p3, "deviceSwitch"    # Z

    .line 1784
    nop

    .line 1785
    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDeviceAttributes_AudioPort(Landroid/media/AudioDeviceAttributes;)Landroid/media/audio/common/AudioPort;

    move-result-object v0

    .line 1786
    .local v0, "port":Landroid/media/audio/common/AudioPort;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1787
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/audio/common/AudioPort;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1788
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1790
    :try_start_10
    invoke-static {p1, v1, p2, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(ILandroid/os/Parcel;IZ)I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1790
    return v2

    .line 1792
    :catchall_18
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    throw v2
.end method

.method public static blacklist setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 6
    .param p0, "capturePreset"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2323
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2324
    const/4 v0, -0x2

    return v0

    .line 2326
    :cond_8
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 2327
    .local v0, "typeAddresses":Landroid/util/Pair;, "Landroid/util/Pair<[I[Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native blacklist setDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static blacklist setDevicesRoleForStrategy(IILjava/util/List;)I
    .registers 7
    .param p0, "strategy"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2217
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2218
    const/4 v0, -0x2

    return v0

    .line 2220
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2221
    .local v0, "types":[I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2222
    .local v1, "addresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 2223
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    aput v3, v0, v2

    .line 2224
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2222
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2226
    .end local v2    # "i":I
    :cond_36
    invoke-static {p0, p1, v0, v1}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(II[I[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static native blacklist setDevicesRoleForStrategy(II[I[Ljava/lang/String;)I
.end method

.method public static greylist-max-o setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 753
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 754
    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 755
    invoke-static {}, Landroid/media/AudioSystem;->native_register_dynamic_policy_callback()V

    .line 756
    monitor-exit v0

    .line 757
    return-void

    .line 756
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static greylist setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/AudioSystem$ErrorCallback;

    .line 714
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 715
    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 716
    if-eqz p0, :cond_e

    .line 717
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 719
    :cond_e
    monitor-exit v0

    .line 720
    return-void

    .line 719
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static native greylist setForceUse(II)I
.end method

.method public static native greylist-max-o setLowRamDevice(ZJ)I
.end method

.method public static native blacklist setMasterBalance(F)I
.end method

.method public static native greylist-max-o setMasterMono(Z)I
.end method

.method public static native greylist setMasterMute(Z)I
.end method

.method public static native greylist-max-o setMasterVolume(F)I
.end method

.method public static native greylist setParameters(Ljava/lang/String;)I
.end method

.method public static greylist setPhoneState(I)I
    .registers 3
    .param p0, "state"    # I

    .line 1814
    const-string v0, "AudioSystem"

    const-string v1, "Do not use this method! Use AudioManager.setMode() instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/4 v0, 0x0

    return v0
.end method

.method public static native blacklist setPhoneState(II)I
.end method

.method public static native blacklist setPreferredMixerAttributes(Landroid/media/AudioAttributes;IILandroid/media/AudioMixerAttributes;)I
.end method

.method public static greylist-max-o setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 813
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 814
    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 815
    invoke-static {}, Landroid/media/AudioSystem;->native_register_recording_callback()V

    .line 816
    monitor-exit v0

    .line 817
    return-void

    .line 816
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/AudioSystem$RoutingUpdateCallback;

    .line 889
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 890
    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

    .line 891
    invoke-static {}, Landroid/media/AudioSystem;->native_register_routing_callback()V

    .line 892
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static native blacklist setRttEnabled(Z)I
.end method

.method private static native greylist setStreamVolumeIndex(IIZI)I
.end method

.method public static blacklist setStreamVolumeIndexAS(IIZI)I
    .registers 5
    .param p0, "stream"    # I
    .param p1, "index"    # I
    .param p2, "muted"    # Z
    .param p3, "device"    # I

    .line 1757
    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioSystem;->setStreamVolumeIndex(IIZI)I

    move-result v0

    return v0
.end method

.method public static native blacklist setSupportedSystemUsages([I)I
.end method

.method public static native greylist-max-o setSurroundFormatEnabled(IZ)I
.end method

.method public static native blacklist setUidDeviceAffinities(I[I[Ljava/lang/String;)I
.end method

.method public static native blacklist setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
.end method

.method public static native blacklist setVibratorInfos(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Vibrator;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native blacklist setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IZI)I
.end method

.method public static blacklist setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;

    .line 923
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 924
    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;

    .line 925
    invoke-static {}, Landroid/media/AudioSystem;->native_register_vol_range_init_req_callback()V

    .line 926
    monitor-exit v0

    .line 927
    return-void

    .line 926
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static native blacklist startAudioSource(Landroid/media/AudioPortConfig;Landroid/media/AudioAttributes;)I
.end method

.method public static native blacklist stopAudioSource(I)I
.end method

.method public static greylist-max-o streamToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "stream"    # I

    .line 2555
    if-ltz p0, :cond_c

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 2556
    :cond_c
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_13

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    return-object v0

    .line 2557
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist supportsBluetoothVariableLatency()Z
.end method

.method public static native greylist-max-o systemReady()I
.end method

.method public static native blacklist triggerSystemPropertyUpdate(J)V
.end method

.method public static native blacklist unregisterAudioVolumeGroupCallback(Landroid/media/INativeAudioVolumeGroupCallback;)I
.end method

.method public static native blacklist updatePolicyMixes([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;)I
.end method

.method private static blacklist volRangeInitReqCallbackFromNative()V
    .registers 3

    .line 931
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 932
    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;

    .line 933
    .local v1, "cb":Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    .line 934
    if-nez v1, :cond_10

    .line 935
    const-string v0, "AudioSystem"

    const-string v2, "APM requested volume range initialization, but no callback found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void

    .line 938
    :cond_10
    invoke-interface {v1}, Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;->onVolumeRangeInitializationRequested()V

    .line 939
    return-void

    .line 933
    .end local v1    # "cb":Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
