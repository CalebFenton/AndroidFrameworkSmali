.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$ErrorCallback;,
        Landroid/media/AudioSystem$DynamicPolicyCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final BAD_VALUE:I = -0x2

.field public static final DEAD_OBJECT:I = -0x6

.field public static final DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x2e

.field public static DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER:I = 0x2c0002

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL:I = -0x3ff00001

.field public static final DEVICE_IN_ALL_SCO:I = -0x7ffffff8

.field public static final DEVICE_IN_ALL_USB:I = -0x7fffe800

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_IP:I = -0x7ff80000

.field public static final DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ALL:I = 0x40ffffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO:I = 0x2c0000

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x6000

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hmdi_arc"

.field public static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final DEVICE_OUT_IP:I = 0x800000

.field public static final DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field private static final DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_SYSTEM:I = 0x4

.field public static final INVALID_OPERATION:I = -0x3

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field static final NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final NO_INIT:I = -0x5

.field private static final NUM_DEVICE_STATES:I = 0x1

.field private static final NUM_FORCE_CONFIG:I = 0xd

.field private static final NUM_FORCE_USE:I = 0x6

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xa

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final PLATFORM_DEFAULT:I = 0x0

.field public static final PLATFORM_TELEVISION:I = 0x2

.field public static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NAMES:[Ljava/lang/String;

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioSystem"

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private static sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 73
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 74
    const-string/jumbo v1, "STREAM_VOICE_CALL"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 75
    const-string/jumbo v1, "STREAM_SYSTEM"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 76
    const-string/jumbo v1, "STREAM_RING"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 77
    const-string/jumbo v1, "STREAM_MUSIC"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 78
    const-string/jumbo v1, "STREAM_ALARM"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 79
    const-string/jumbo v1, "STREAM_NOTIFICATION"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 80
    const-string/jumbo v1, "STREAM_BLUETOOTH_SCO"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 81
    const-string/jumbo v1, "STREAM_SYSTEM_ENFORCED"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 82
    const-string/jumbo v1, "STREAM_DTMF"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 83
    const-string/jumbo v1, "STREAM_TTS"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 73
    sput-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    #@44
    .line 690
    new-array v0, v3, [I

    #@46
    fill-array-data v0, :array_0

    #@49
    sput-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@4b
    .line 34
    return-void

    #@4c
    .line 690
    :array_0
    .array-data 4
        0x4
        0x7
        0x5
        0xb
        0x6
        0x5
        0x7
        0x7
        0xb
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native checkAudioFlinger()I
.end method

.method public static native createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method private static dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .locals 4
    .param p0, "event"    # I
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "val"    # I

    #@0
    .prologue
    .line 253
    const/4 v0, 0x0

    #@1
    .line 254
    .local v0, "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    const-class v2, Landroid/media/AudioSystem;

    #@3
    monitor-enter v2

    #@4
    .line 255
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 256
    sget-object v0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .end local v0    # "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    :cond_0
    monitor-exit v2

    #@b
    .line 259
    if-eqz v0, :cond_1

    #@d
    .line 260
    packed-switch p0, :pswitch_data_0

    #@10
    .line 265
    const-string/jumbo v1, "AudioSystem"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "dynamicPolicyCallbackFromNative: unknown event "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 251
    :cond_1
    :goto_0
    return-void

    #@2b
    .line 254
    .restart local v0    # "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1

    #@2e
    .line 262
    .end local v0    # "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    :pswitch_0
    invoke-interface {v0, p1, p2}, Landroid/media/AudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    #@31
    goto :goto_0

    #@32
    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static errorCallbackFromNative(I)V
    .locals 3
    .param p0, "error"    # I

    #@0
    .prologue
    .line 218
    const/4 v0, 0x0

    #@1
    .line 219
    .local v0, "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    const-class v2, Landroid/media/AudioSystem;

    #@3
    monitor-enter v2

    #@4
    .line 220
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 221
    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .end local v0    # "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    :cond_0
    monitor-exit v2

    #@b
    .line 224
    if-eqz v0, :cond_1

    #@d
    .line 225
    invoke-interface {v0, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    #@10
    .line 216
    :cond_1
    return-void

    #@11
    .line 219
    .restart local v0    # "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method public static native getAudioHwSyncForSession(I)I
.end method

.method public static getDefaultStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    #@0
    .prologue
    .line 687
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@2
    aget v0, v0, p0

    #@4
    return v0
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static getInputDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # I

    #@0
    .prologue
    .line 525
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 568
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 527
    :sswitch_0
    const-string/jumbo v0, "communication"

    #@b
    return-object v0

    #@c
    .line 529
    :sswitch_1
    const-string/jumbo v0, "ambient"

    #@f
    return-object v0

    #@10
    .line 531
    :sswitch_2
    const-string/jumbo v0, "mic"

    #@13
    return-object v0

    #@14
    .line 533
    :sswitch_3
    const-string/jumbo v0, "bt_sco_hs"

    #@17
    return-object v0

    #@18
    .line 535
    :sswitch_4
    const-string/jumbo v0, "headset"

    #@1b
    return-object v0

    #@1c
    .line 537
    :sswitch_5
    const-string/jumbo v0, "aux_digital"

    #@1f
    return-object v0

    #@20
    .line 539
    :sswitch_6
    const-string/jumbo v0, "telephony_rx"

    #@23
    return-object v0

    #@24
    .line 541
    :sswitch_7
    const-string/jumbo v0, "back_mic"

    #@27
    return-object v0

    #@28
    .line 543
    :sswitch_8
    const-string/jumbo v0, "remote_submix"

    #@2b
    return-object v0

    #@2c
    .line 545
    :sswitch_9
    const-string/jumbo v0, "analog_dock"

    #@2f
    return-object v0

    #@30
    .line 547
    :sswitch_a
    const-string/jumbo v0, "digital_dock"

    #@33
    return-object v0

    #@34
    .line 549
    :sswitch_b
    const-string/jumbo v0, "usb_accessory"

    #@37
    return-object v0

    #@38
    .line 551
    :sswitch_c
    const-string/jumbo v0, "usb_device"

    #@3b
    return-object v0

    #@3c
    .line 553
    :sswitch_d
    const-string/jumbo v0, "fm_tuner"

    #@3f
    return-object v0

    #@40
    .line 555
    :sswitch_e
    const-string/jumbo v0, "tv_tuner"

    #@43
    return-object v0

    #@44
    .line 557
    :sswitch_f
    const-string/jumbo v0, "line"

    #@47
    return-object v0

    #@48
    .line 559
    :sswitch_10
    const-string/jumbo v0, "spdif"

    #@4b
    return-object v0

    #@4c
    .line 561
    :sswitch_11
    const-string/jumbo v0, "bt_a2dp"

    #@4f
    return-object v0

    #@50
    .line 563
    :sswitch_12
    const-string/jumbo v0, "loopback"

    #@53
    return-object v0

    #@54
    .line 565
    :sswitch_13
    const-string/jumbo v0, "ip"

    #@57
    return-object v0

    #@58
    .line 525
    :sswitch_data_0
    .sparse-switch
        -0x7fffffff -> :sswitch_0
        -0x7ffffffe -> :sswitch_1
        -0x7ffffffc -> :sswitch_2
        -0x7ffffff8 -> :sswitch_3
        -0x7ffffff0 -> :sswitch_4
        -0x7fffffe0 -> :sswitch_5
        -0x7fffffc0 -> :sswitch_6
        -0x7fffff80 -> :sswitch_7
        -0x7fffff00 -> :sswitch_8
        -0x7ffffe00 -> :sswitch_9
        -0x7ffffc00 -> :sswitch_a
        -0x7ffff800 -> :sswitch_b
        -0x7ffff000 -> :sswitch_c
        -0x7fffe000 -> :sswitch_d
        -0x7fffc000 -> :sswitch_e
        -0x7fff8000 -> :sswitch_f
        -0x7fff0000 -> :sswitch_10
        -0x7ffe0000 -> :sswitch_11
        -0x7ffc0000 -> :sswitch_12
        -0x7ff80000 -> :sswitch_13
    .end sparse-switch
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static final getNumStreamTypes()I
    .locals 1

    #@0
    .prologue
    .line 71
    const/16 v0, 0xa

    #@2
    return v0
.end method

.method public static getOutputDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # I

    #@0
    .prologue
    .line 468
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 519
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 470
    :sswitch_0
    const-string/jumbo v0, "earpiece"

    #@b
    return-object v0

    #@c
    .line 472
    :sswitch_1
    const-string/jumbo v0, "speaker"

    #@f
    return-object v0

    #@10
    .line 474
    :sswitch_2
    const-string/jumbo v0, "headset"

    #@13
    return-object v0

    #@14
    .line 476
    :sswitch_3
    const-string/jumbo v0, "headphone"

    #@17
    return-object v0

    #@18
    .line 478
    :sswitch_4
    const-string/jumbo v0, "bt_sco"

    #@1b
    return-object v0

    #@1c
    .line 480
    :sswitch_5
    const-string/jumbo v0, "bt_sco_hs"

    #@1f
    return-object v0

    #@20
    .line 482
    :sswitch_6
    const-string/jumbo v0, "bt_sco_carkit"

    #@23
    return-object v0

    #@24
    .line 484
    :sswitch_7
    const-string/jumbo v0, "bt_a2dp"

    #@27
    return-object v0

    #@28
    .line 486
    :sswitch_8
    const-string/jumbo v0, "bt_a2dp_hp"

    #@2b
    return-object v0

    #@2c
    .line 488
    :sswitch_9
    const-string/jumbo v0, "bt_a2dp_spk"

    #@2f
    return-object v0

    #@30
    .line 490
    :sswitch_a
    const-string/jumbo v0, "hdmi"

    #@33
    return-object v0

    #@34
    .line 492
    :sswitch_b
    const-string/jumbo v0, "analog_dock"

    #@37
    return-object v0

    #@38
    .line 494
    :sswitch_c
    const-string/jumbo v0, "digital_dock"

    #@3b
    return-object v0

    #@3c
    .line 496
    :sswitch_d
    const-string/jumbo v0, "usb_accessory"

    #@3f
    return-object v0

    #@40
    .line 498
    :sswitch_e
    const-string/jumbo v0, "usb_device"

    #@43
    return-object v0

    #@44
    .line 500
    :sswitch_f
    const-string/jumbo v0, "remote_submix"

    #@47
    return-object v0

    #@48
    .line 502
    :sswitch_10
    const-string/jumbo v0, "telephony_tx"

    #@4b
    return-object v0

    #@4c
    .line 504
    :sswitch_11
    const-string/jumbo v0, "line"

    #@4f
    return-object v0

    #@50
    .line 506
    :sswitch_12
    const-string/jumbo v0, "hmdi_arc"

    #@53
    return-object v0

    #@54
    .line 508
    :sswitch_13
    const-string/jumbo v0, "spdif"

    #@57
    return-object v0

    #@58
    .line 510
    :sswitch_14
    const-string/jumbo v0, "fm_transmitter"

    #@5b
    return-object v0

    #@5c
    .line 512
    :sswitch_15
    const-string/jumbo v0, "aux_line"

    #@5f
    return-object v0

    #@60
    .line 514
    :sswitch_16
    const-string/jumbo v0, "speaker_safe"

    #@63
    return-object v0

    #@64
    .line 516
    :sswitch_17
    const-string/jumbo v0, "ip"

    #@67
    return-object v0

    #@68
    .line 468
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
        0x100000 -> :sswitch_14
        0x200000 -> :sswitch_15
        0x400000 -> :sswitch_16
        0x800000 -> :sswitch_17
    .end sparse-switch
.end method

.method public static native getOutputLatency(I)I
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPlatformType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const v1, 0x1120053

    #@7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 726
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 727
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, "android.software.leanback"

    #@16
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 728
    const/4 v0, 0x2

    #@1d
    return v0

    #@1e
    .line 730
    :cond_1
    const/4 v0, 0x0

    #@1f
    return v0
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    #@0
    .prologue
    .line 678
    mul-int/lit8 v0, p1, 0x2

    #@2
    const/4 v1, 0x3

    #@3
    shl-int v0, v1, v0

    #@5
    not-int v0, v0

    #@6
    and-int/2addr p0, v0

    #@7
    .line 681
    and-int/lit8 v0, p2, 0x3

    #@9
    mul-int/lit8 v1, p1, 0x2

    #@b
    shl-int/2addr v0, v1

    #@c
    or-int/2addr p0, v0

    #@d
    .line 683
    return p0
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native isStreamActiveRemotely(II)Z
.end method

.method public static native listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native muteMicrophone(Z)I
.end method

.method private static final native native_register_dynamic_policy_callback()V
.end method

.method public static native newAudioSessionId()I
.end method

.method public static native registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static native setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$DynamicPolicyCallback;

    #@0
    .prologue
    .line 245
    const-class v1, Landroid/media/AudioSystem;

    #@2
    monitor-enter v1

    #@3
    .line 246
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    #@5
    .line 247
    invoke-static {}, Landroid/media/AudioSystem;->native_register_dynamic_policy_callback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 243
    return-void

    #@a
    .line 245
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$ErrorCallback;

    #@0
    .prologue
    .line 208
    const-class v1, Landroid/media/AudioSystem;

    #@2
    monitor-enter v1

    #@3
    .line 209
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    #@5
    .line 210
    if-eqz p0, :cond_0

    #@7
    .line 211
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    #@a
    move-result v0

    #@b
    invoke-interface {p0, v0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 206
    return-void

    #@10
    .line 208
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setLowRamDevice(Z)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static native setStreamVolumeIndex(III)I
.end method

.method public static streamToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # I

    #@0
    .prologue
    .line 704
    if-ltz p0, :cond_0

    #@2
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    #@4
    array-length v0, v0

    #@5
    if-ge p0, v0, :cond_0

    #@7
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    #@9
    aget-object v0, v0, p0

    #@b
    return-object v0

    #@c
    .line 705
    :cond_0
    const/high16 v0, -0x80000000

    #@e
    if-ne p0, v0, :cond_1

    #@10
    const-string/jumbo v0, "USE_DEFAULT_STREAM_TYPE"

    #@13
    return-object v0

    #@14
    .line 706
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v1, "UNKNOWN_STREAM_"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public static native systemReady()I
.end method
