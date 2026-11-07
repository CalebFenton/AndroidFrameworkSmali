.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$DevRoleListeners;,
        Landroid/media/AudioManager$ServiceEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAmPortUpdateListener;,
        Landroid/media/AudioManager$VolumeCacheQuery;,
        Landroid/media/AudioManager$DevRoleListenerInfo;,
        Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;,
        Landroid/media/AudioManager$FocusRequestInfo;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;,
        Landroid/media/AudioManager$BlockingFocusResultReceiver;,
        Landroid/media/AudioManager$AudioPlaybackCallback;,
        Landroid/media/AudioManager$AudioPlaybackCallbackInfo;,
        Landroid/media/AudioManager$AudioRecordingCallback;,
        Landroid/media/AudioManager$AudioRecordingCallbackInfo;,
        Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;,
        Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;,
        Landroid/media/AudioManager$OnAudioPortUpdateListener;,
        Landroid/media/AudioManager$NativeEventHandlerDelegate;,
        Landroid/media/AudioManager$AudioServerStateCallback;,
        Landroid/media/AudioManager$CallInjectionModeChangedListener;,
        Landroid/media/AudioManager$OnModeChangedListener;,
        Landroid/media/AudioManager$CallIRedirectionClientInfo;,
        Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;,
        Landroid/media/AudioManager$StreamAliasingDispatcherStub;,
        Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub;,
        Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;,
        Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;,
        Landroid/media/AudioManager$ModeDispatcherStub;,
        Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub;,
        Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;,
        Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;,
        Landroid/media/AudioManager$MuteAwaitConnectionCallback;,
        Landroid/media/AudioManager$CallRedirectionMode;,
        Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;,
        Landroid/media/AudioManager$VolumeGroupCallback;,
        Landroid/media/AudioManager$AudioDeviceRole;,
        Landroid/media/AudioManager$CsdWarning;,
        Landroid/media/AudioManager$AudioDeviceCategory;,
        Landroid/media/AudioManager$DeviceVolumeBehavior;,
        Landroid/media/AudioManager$RecordConfigChangeCallbackData;,
        Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;,
        Landroid/media/AudioManager$SafeWaitObject;,
        Landroid/media/AudioManager$FocusRequestResult;,
        Landroid/media/AudioManager$SystemSoundEffect;,
        Landroid/media/AudioManager$AudioMode;,
        Landroid/media/AudioManager$AudioOffloadMode;,
        Landroid/media/AudioManager$AudioDirectPlaybackMode;,
        Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;,
        Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;,
        Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;,
        Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;,
        Landroid/media/AudioManager$PublicStreamTypes;,
        Landroid/media/AudioManager$QueryVolCommand;,
        Landroid/media/AudioManager$DeviceConnectionState;,
        Landroid/media/AudioManager$SystemVolumeFlags;,
        Landroid/media/AudioManager$PublicVolumeFlags;,
        Landroid/media/AudioManager$Flags;,
        Landroid/media/AudioManager$EncodedSurroundOutputMode;,
        Landroid/media/AudioManager$VolumeAdjustment;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final whitelist ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final whitelist ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final whitelist ACTION_MICROPHONE_MUTE_CHANGED:Ljava/lang/String; = "android.media.action.MICROPHONE_MUTE_CHANGED"

.field public static final whitelist ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final whitelist ACTION_SPEAKERPHONE_STATE_CHANGED:Ljava/lang/String; = "android.media.action.SPEAKERPHONE_STATE_CHANGED"

.field public static final whitelist ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADJUST_LOWER:I = -0x1

.field public static final whitelist ADJUST_MUTE:I = -0x64

.field public static final whitelist ADJUST_RAISE:I = 0x1

.field public static final whitelist ADJUST_SAME:I = 0x0

.field public static final whitelist ADJUST_TOGGLE_MUTE:I = 0x65

.field public static final whitelist ADJUST_UNMUTE:I = 0x64

.field public static final greylist-max-o AUDIOFOCUS_FLAGS_APPS:I = 0x3

.field public static final greylist-max-o AUDIOFOCUS_FLAGS_SYSTEM:I = 0x7

.field public static final whitelist AUDIOFOCUS_FLAG_DELAY_OK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIOFOCUS_FLAG_LOCK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIOFOCUS_FLAG_PAUSES_ON_DUCKABLE_LOSS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist AUDIOFOCUS_FLAG_TEST:I = 0x8

.field public static final whitelist AUDIOFOCUS_GAIN:I = 0x1

.field public static final whitelist AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final whitelist AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final whitelist AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final whitelist AUDIOFOCUS_LOSS:I = -0x1

.field public static final whitelist AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final whitelist AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final whitelist AUDIOFOCUS_NONE:I = 0x0

.field public static final whitelist AUDIOFOCUS_REQUEST_DELAYED:I = 0x2

.field public static final whitelist AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final whitelist AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field public static final greylist-max-o AUDIOFOCUS_REQUEST_WAITING_FOR_EXT_POLICY:I = 0x64

.field private static final greylist-max-o AUDIOPORT_GENERATION_INIT:I = 0x0

.field public static final blacklist AUDIO_DEVICE_CATEGORY_CARKIT:I = 0x4

.field public static final blacklist AUDIO_DEVICE_CATEGORY_HEADPHONES:I = 0x3

.field public static final blacklist AUDIO_DEVICE_CATEGORY_HEARING_AID:I = 0x6

.field public static final blacklist AUDIO_DEVICE_CATEGORY_OTHER:I = 0x1

.field public static final blacklist AUDIO_DEVICE_CATEGORY_RECEIVER:I = 0x7

.field public static final blacklist AUDIO_DEVICE_CATEGORY_SPEAKER:I = 0x2

.field public static final blacklist AUDIO_DEVICE_CATEGORY_UNKNOWN:I = 0x0

.field public static final blacklist AUDIO_DEVICE_CATEGORY_WATCH:I = 0x5

.field public static final whitelist AUDIO_SESSION_ID_GENERATE:I = 0x0

.field public static final blacklist CALL_REDIRECTION_AUDIO_MODES:J = 0xb4b1f8bL

.field public static final blacklist CALL_REDIRECT_NONE:I = 0x0

.field public static final blacklist CALL_REDIRECT_PSTN:I = 0x1

.field public static final blacklist CALL_REDIRECT_VOIP:I = 0x2

.field public static final blacklist CSD_WARNING_ACCUMULATION_START:I = 0x4

.field public static final blacklist CSD_WARNING_DOSE_REACHED_1X:I = 0x1

.field public static final blacklist CSD_WARNING_DOSE_REPEATED_5X:I = 0x2

.field public static final blacklist CSD_WARNING_MOMENTARY_EXPOSURE:I = 0x3

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist DEVICE_CONNECTION_STATE_CONNECTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_CONNECTION_STATE_DISCONNECTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final greylist-max-o DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final blacklist DEVICE_IN_BLE_HEADSET:I = -0x60000000

.field public static final greylist-max-o DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final greylist-max-o DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final greylist-max-o DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final blacklist DEVICE_IN_ECHO_REFERENCE:I = -0x70000000

.field public static final greylist-max-o DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final greylist-max-o DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final blacklist DEVICE_IN_HDMI_ARC:I = -0x78000000

.field public static final blacklist DEVICE_IN_HDMI_EARC:I = -0x77ffffff

.field public static final greylist-max-o DEVICE_IN_LINE:I = -0x7fff8000

.field public static final greylist-max-o DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final greylist-max-o DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final greylist-max-o DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final greylist-max-o DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final greylist-max-o DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final greylist-max-o DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final greylist-max-o DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final greylist-max-o DEVICE_NONE:I = 0x0

.field public static final greylist DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final greylist-max-o DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final blacklist DEVICE_OUT_BLE_BROADCAST:I = 0x20000002

.field public static final blacklist DEVICE_OUT_BLE_HEADSET:I = 0x20000000

.field public static final blacklist DEVICE_OUT_BLE_SPEAKER:I = 0x20000001

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final greylist DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final greylist-max-o DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final greylist DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final greylist DEVICE_OUT_EARPIECE:I = 0x1

.field public static final blacklist DEVICE_OUT_ECHO_CANCELLER:I = 0x10000000

.field public static final greylist-max-o DEVICE_OUT_FM:I = 0x100000

.field public static final greylist DEVICE_OUT_HDMI:I = 0x400

.field public static final greylist-max-o DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final blacklist DEVICE_OUT_HDMI_EARC:I = 0x40001

.field public static final greylist-max-o DEVICE_OUT_LINE:I = 0x20000

.field public static final blacklist DEVICE_OUT_MULTICHANNEL_GROUP:I = 0x800001

.field public static final greylist-max-o DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final greylist-max-o DEVICE_OUT_SPDIF:I = 0x80000

.field public static final greylist DEVICE_OUT_SPEAKER:I = 0x2

.field public static final greylist-max-o DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final greylist-max-o DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final greylist-max-o DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final greylist-max-o DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final greylist DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final greylist DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_ADJUST_ONLY:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_MULTI_MODE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_FIXED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_UNSET:I = -0x1

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_VARIABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DIRECT_PLAYBACK_BITSTREAM_SUPPORTED:I = 0x4

.field public static final whitelist DIRECT_PLAYBACK_NOT_SUPPORTED:I = 0x0

.field public static final whitelist DIRECT_PLAYBACK_OFFLOAD_GAPLESS_SUPPORTED:I = 0x3

.field public static final whitelist DIRECT_PLAYBACK_OFFLOAD_SUPPORTED:I = 0x1

.field public static final whitelist ENCODED_SURROUND_OUTPUT_ALWAYS:I = 0x2

.field public static final whitelist ENCODED_SURROUND_OUTPUT_AUTO:I = 0x0

.field public static final whitelist ENCODED_SURROUND_OUTPUT_MANUAL:I = 0x3

.field public static final whitelist ENCODED_SURROUND_OUTPUT_NEVER:I = 0x1

.field public static final whitelist ENCODED_SURROUND_OUTPUT_UNKNOWN:I = -0x1

.field public static final whitelist ERROR:I = -0x1

.field public static final greylist-max-o ERROR_BAD_VALUE:I = -0x2

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x6

.field public static final greylist-max-o ERROR_INVALID_OPERATION:I = -0x3

.field public static final greylist-max-o ERROR_NO_INIT:I = -0x5

.field public static final greylist-max-o ERROR_PERMISSION_DENIED:I = -0x4

.field public static final whitelist EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field public static final whitelist EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field public static final greylist-max-o EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final whitelist EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field public static final greylist-max-o EXTRA_PREV_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

.field public static final greylist-max-o EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final whitelist EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final whitelist EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final whitelist EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final greylist-max-o EXTRA_STREAM_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field public static final whitelist EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final whitelist EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final greylist-max-o EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final whitelist EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_VOLUME_STREAM_TYPE_ALIAS:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

.field public static final whitelist EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o EXT_FOCUS_POLICY_TIMEOUT_MS:I = 0xfa

.field public static final blacklist FLAG_ABSOLUTE_VOLUME:I = 0x2000

.field public static final greylist-max-o FLAG_ACTIVE_MEDIA_ONLY:I = 0x200

.field public static final whitelist FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final whitelist FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_FIXED_VOLUME:I = 0x20

.field public static final greylist-max-o FLAG_FROM_KEY:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_HDMI_SYSTEM_AUDIO_VOLUME:I = 0x100

.field private static final blacklist FLAG_NAMES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_PLAY_SOUND:I = 0x4

.field public static final whitelist FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final greylist-max-o FLAG_SHOW_SILENT_HINT:I = 0x80

.field public static final whitelist FLAG_SHOW_UI:I = 0x1

.field public static final greylist-max-o FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final greylist-max-o FLAG_SHOW_VIBRATE_HINT:I = 0x800

.field public static final whitelist FLAG_VIBRATE:I = 0x10

.field private static final greylist-max-o FOCUS_CLIENT_ID_STRING:Ljava/lang/String; = "android_audio_focus_client_id"

.field public static final whitelist FX_BACK:I = 0xa

.field public static final whitelist FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final whitelist FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final blacklist FX_FOCUS_NAVIGATION_REPEAT_1:I = 0xc

.field public static final blacklist FX_FOCUS_NAVIGATION_REPEAT_2:I = 0xd

.field public static final blacklist FX_FOCUS_NAVIGATION_REPEAT_3:I = 0xe

.field public static final blacklist FX_FOCUS_NAVIGATION_REPEAT_4:I = 0xf

.field public static final whitelist FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final whitelist FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final blacklist FX_HOME:I = 0xb

.field public static final whitelist FX_KEYPRESS_DELETE:I = 0x7

.field public static final whitelist FX_KEYPRESS_INVALID:I = 0x9

.field public static final whitelist FX_KEYPRESS_RETURN:I = 0x8

.field public static final whitelist FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final whitelist FX_KEYPRESS_STANDARD:I = 0x5

.field public static final whitelist FX_KEY_CLICK:I = 0x0

.field public static final whitelist GET_DEVICES_ALL:I = 0x3

.field public static final whitelist GET_DEVICES_INPUTS:I = 0x1

.field public static final whitelist GET_DEVICES_OUTPUTS:I = 0x2

.field public static final greylist-max-o INTERNAL_RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

.field public static final greylist-max-o MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final whitelist MODE_CALL_REDIRECT:I = 0x5

.field public static final whitelist MODE_CALL_SCREENING:I = 0x4

.field public static final whitelist MODE_COMMUNICATION_REDIRECT:I = 0x6

.field public static final whitelist MODE_CURRENT:I = -0x1

.field public static final whitelist MODE_INVALID:I = -0x2

.field public static final whitelist MODE_IN_CALL:I = 0x2

.field public static final whitelist MODE_IN_COMMUNICATION:I = 0x3

.field public static final whitelist MODE_NORMAL:I = 0x0

.field public static final whitelist MODE_RINGTONE:I = 0x1

.field private static final greylist-max-o MSG_DEVICES_CALLBACK_REGISTERED:I = 0x0

.field private static final greylist-max-o MSG_DEVICES_DEVICES_ADDED:I = 0x1

.field private static final greylist-max-o MSG_DEVICES_DEVICES_REMOVED:I = 0x2

.field private static final greylist-max-o MSSG_FOCUS_CHANGE:I = 0x0

.field private static final greylist-max-o MSSG_PLAYBACK_CONFIG_CHANGE:I = 0x2

.field private static final greylist-max-o MSSG_RECORDING_CONFIG_CHANGE:I = 0x1

.field public static final blacklist NUM_NAVIGATION_REPEAT_SOUND_EFFECTS:I = 0x4

.field public static final greylist-max-r NUM_SOUND_EFFECTS:I = 0x10

.field public static final whitelist NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PLAYBACK_OFFLOAD_GAPLESS_SUPPORTED:I = 0x2

.field public static final whitelist PLAYBACK_OFFLOAD_NOT_SUPPORTED:I = 0x0

.field public static final whitelist PLAYBACK_OFFLOAD_SUPPORTED:I = 0x1

.field public static final whitelist PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final whitelist PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final whitelist PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED:Ljava/lang/String; = "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

.field public static final whitelist PROPERTY_SUPPORT_MIC_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

.field public static final whitelist PROPERTY_SUPPORT_SPEAKER_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

.field private static final blacklist PUBLIC_STREAM_TYPES:[I

.field private static final blacklist QUERY_VOL:I = 0x3

.field private static final blacklist QUERY_VOL_MAX:I = 0x2

.field private static final blacklist QUERY_VOL_MIN:I = 0x1

.field public static final blacklist RECORDER_STATE_STARTED:I = 0x0

.field public static final blacklist RECORDER_STATE_STOPPED:I = 0x1

.field public static final blacklist RECORD_CONFIG_EVENT_NONE:I = -0x1

.field public static final blacklist RECORD_CONFIG_EVENT_RELEASE:I = 0x3

.field public static final greylist-max-o RECORD_CONFIG_EVENT_START:I = 0x0

.field public static final greylist-max-o RECORD_CONFIG_EVENT_STOP:I = 0x1

.field public static final blacklist RECORD_CONFIG_EVENT_UPDATE:I = 0x2

.field public static final blacklist RECORD_RIID_INVALID:I = -0x1

.field public static final blacklist RETURN_DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_ADJUST_ONLY:J = 0xe583a8eL

.field public static final whitelist RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field public static final greylist-max-o RINGER_MODE_MAX:I = 0x2

.field public static final whitelist RINGER_MODE_NORMAL:I = 0x2

.field public static final whitelist RINGER_MODE_SILENT:I = 0x0

.field public static final whitelist RINGER_MODE_VIBRATE:I = 0x1

.field public static final whitelist ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final whitelist SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final whitelist SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final whitelist SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final whitelist STREAM_ACCESSIBILITY:I = 0xa

.field public static final whitelist STREAM_ALARM:I = 0x4

.field public static final whitelist STREAM_ASSISTANT:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STREAM_BLUETOOTH_SCO:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final whitelist STREAM_DTMF:I = 0x8

.field public static final whitelist STREAM_MUSIC:I = 0x3

.field public static final greylist-max-o STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field public static final whitelist STREAM_NOTIFICATION:I = 0x5

.field public static final whitelist STREAM_RING:I = 0x2

.field public static final whitelist STREAM_SYSTEM:I = 0x1

.field public static final greylist STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final greylist STREAM_TTS:I = 0x9

.field public static final whitelist STREAM_VOICE_CALL:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioManager"

.field public static final whitelist USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final whitelist VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final whitelist VIBRATE_SETTING_OFF:I = 0x0

.field public static final whitelist VIBRATE_SETTING_ON:I = 0x1

.field public static final whitelist VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final whitelist VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final whitelist VIBRATE_TYPE_RINGER:I = 0x0

.field public static final blacklist VOLUME_CACHING_API:Ljava/lang/String; = "getStreamVolume"

.field private static final blacklist VOLUME_CACHING_SIZE:I = 0x10

.field public static final greylist VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final blacklist VOLUME_MAX_CACHING_API:Ljava/lang/String; = "getStreamMaxVolume"

.field public static final blacklist VOLUME_MIN_CACHING_API:Ljava/lang/String; = "getStreamMinVolume"

.field private static final greylist-max-o VOLUME_MIN_DB:F = -758.0f

.field private static greylist-max-o sAudioPatchesCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

.field private static blacklist sAudioPortGeneration:I

.field private static blacklist sAudioPortGenerationLock:Ljava/lang/Object;

.field private static greylist-max-o sAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sPreviousAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sService:Landroid/media/IAudioService;


# instance fields
.field private greylist-max-o mApplicationContext:Landroid/content/Context;

.field private final greylist-max-o mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final greylist mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$FocusRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

.field private final greylist-max-o mAudioServerStateCbLock:Ljava/lang/Object;

.field private final greylist-max-o mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

.field private greylist-max-o mAudioServerStateExec:Ljava/util/concurrent/Executor;

.field private blacklist mCallIRedirectionClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$CallIRedirectionClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallRedirectionLock:Ljava/lang/Object;

.field private blacklist mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

.field private final blacklist mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDevRoleForCapturePresetListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

.field private final greylist-max-o mDeviceCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioDeviceCallback;",
            "Landroid/media/AudioManager$NativeEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceRoleListenersStatus:I

.field private final blacklist mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;",
            "Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

.field private greylist-max-o mFocusRequestsAwaitingResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$BlockingFocusResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFocusRequestsLock:Ljava/lang/Object;

.field private final greylist-max-o mICallBack:Landroid/os/IBinder;

.field private blacklist mIsAutomotive:Z

.field private final blacklist mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioManager$OnModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

.field private final blacklist mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

.field private blacklist mMuteAwaitConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/AudioManager$MuteAwaitConnectionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNonDefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOriginalContext:Landroid/content/Context;

.field private blacklist mOriginalContextDeviceId:I

.field private final greylist-max-o mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

.field private greylist-max-o mPlaybackCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioManager$AudioPlaybackCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPlaybackCallbackLock:Ljava/lang/Object;

.field private greylist-max-o mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

.field private final blacklist mPrefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPrefMixerAttributesListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreviousPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRecCb:Landroid/media/IRecordingConfigDispatcher;

.field private greylist-max-o mRecordCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioManager$AudioRecordingCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRecordCallbackLock:Ljava/lang/Object;

.field private final greylist-max-o mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

.field private final blacklist mStreamAliasingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

.field private final blacklist mVolCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/media/AudioManager$VolumeCacheQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVolMaxCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/media/AudioManager$VolumeCacheQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVolMinCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/media/AudioManager$VolumeCacheQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVolQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/media/AudioManager$VolumeCacheQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVolumeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioManager$VolumeGroupCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$HKM65DRYvETkSoZ1TuK79MVdIm0(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioManager;->lambda$addOnModeChangedListener$2()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$LEvpE2354yaNthQbaYAccBTHjyY(Landroid/media/AudioManager;)Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioManager;->lambda$registerMuteAwaitConnectionCallback$5()Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$S5pfTdB5Si61DWceaRaELl7BIZU(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioManager;->lambda$addOnPreferredDevicesForStrategyChangedListener$0()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$UUAI-FJzhxngHKDYpAONIMiieN8(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioManager;->lambda$addOnNonDefaultDevicesForStrategyChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$iooLODgct1Q_I3eBTSFga8OLu3w(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioManager;->lambda$addOnCommunicationDeviceChangedListener$4()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$q40HbNYos0Vu8Trl_Hsvaxnb9fE(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioManager;->lambda$addOnStreamAliasingChangedListener$9()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$t-OiVSbdy37FC1FUXfVLcUEbTvI(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioManager;->lambda$registerVolumeGroupCallback$3()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wZfl8tn1L4_M9T_cn2B5L_LQ3ns(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioManager;->lambda$addOnPreferredMixerAttributesChangedListener$8()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioServerStateCb(Landroid/media/AudioManager;)Landroid/media/AudioManager$AudioServerStateCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioServerStateCbLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioServerStateExec(Landroid/media/AudioManager;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallRedirectionLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCommDeviceChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevRoleForCapturePresetListeners(Landroid/media/AudioManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceCallbacks(Landroid/media/AudioManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusRequestsAwaitingResult(Landroid/media/AudioManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusRequestsLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModeChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMuteAwaitConnectionListenerLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMuteAwaitConnectionListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonDefDevListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mNonDefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlaybackCallbackList(Landroid/media/AudioManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlaybackCallbackLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefDevListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mPrefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefMixerAttributesListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mPrefMixerAttributesListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordCallbackList(Landroid/media/AudioManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordCallbackLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceEventHandlerDelegate(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamAliasingListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mStreamAliasingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager;->mVolumeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbroadcastDeviceListChange_sync(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->broadcastDeviceListChange_sync(Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindFocusRequestInfo(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusRequestInfo(Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 131
    new-instance v0, Landroid/media/AudioPortEventHandler;

    invoke-direct {v0}, Landroid/media/AudioPortEventHandler;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    .line 440
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_e8

    sput-object v1, Landroid/media/AudioManager;->PUBLIC_STREAM_TYPES:[I

    .line 768
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    .line 771
    sget-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FLAG_SHOW_UI"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FLAG_ALLOW_RINGER_MODES"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FLAG_PLAY_SOUND"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_REMOVE_SOUND_AND_VIBRATE"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_VIBRATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_FIXED_VOLUME"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_BLUETOOTH_ABS_VOLUME"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_SHOW_SILENT_HINT"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_HDMI_SYSTEM_AUDIO_VOLUME"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_ACTIVE_MEDIA_ONLY"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_SHOW_UI_WARNINGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_SHOW_VIBRATE_HINT"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_FROM_KEY"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_ABSOLUTE_VOLUME"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7797
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortGenerationLock:Ljava/lang/Object;

    .line 7799
    const/4 v0, 0x0

    sput v0, Landroid/media/AudioManager;->sAudioPortGeneration:I

    .line 7800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 7801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    .line 7802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    return-void

    :array_e8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x8
        0xa
    .end array-data
.end method

.method public constructor greylist-max-r <init>()V
    .registers 11

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioManager;->mOriginalContextDeviceId:I

    .line 1251
    new-instance v1, Landroid/media/AudioManager$1;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mVolQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 1273
    new-instance v2, Landroid/os/IpcDataCache;

    const-string v6, "getStreamMinVolume"

    iget-object v7, p0, Landroid/media/AudioManager;->mVolQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v3, 0x10

    const-string v4, "system_server"

    const-string v5, "getStreamMinVolume"

    invoke-direct/range {v2 .. v7}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v2, p0, Landroid/media/AudioManager;->mVolMinCache:Landroid/os/IpcDataCache;

    .line 1277
    new-instance v3, Landroid/os/IpcDataCache;

    const-string v7, "getStreamMaxVolume"

    iget-object v8, p0, Landroid/media/AudioManager;->mVolQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v4, 0x10

    const-string v5, "system_server"

    const-string v6, "getStreamMaxVolume"

    invoke-direct/range {v3 .. v8}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v3, p0, Landroid/media/AudioManager;->mVolMaxCache:Landroid/os/IpcDataCache;

    .line 1281
    new-instance v4, Landroid/os/IpcDataCache;

    const-string v8, "getStreamVolume"

    iget-object v9, p0, Landroid/media/AudioManager;->mVolQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v5, 0x10

    const-string v6, "system_server"

    const-string v7, "getStreamVolume"

    invoke-direct/range {v4 .. v9}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v4, p0, Landroid/media/AudioManager;->mVolCache:Landroid/os/IpcDataCache;

    .line 2524
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPrefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 2531
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mNonDefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 2835
    nop

    .line 2836
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$DevRoleListeners;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/AudioManager$DevRoleListeners;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    .line 2835
    invoke-static {v1, v2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2882
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    .line 2887
    iput v0, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 3538
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 4379
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4391
    new-instance v1, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v1, p0, v3}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    .line 4467
    new-instance v1, Landroid/media/AudioManager$2;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4574
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    .line 5838
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    .line 5869
    new-instance v1, Landroid/media/AudioManager$3;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$3;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 6052
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    .line 6083
    new-instance v1, Landroid/media/AudioManager$4;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$4;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    .line 6124
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 6505
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7933
    iput-object v3, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 7946
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    .line 8380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 8467
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    .line 8469
    new-instance v1, Landroid/media/AudioManager$5;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$5;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    .line 8815
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mVolumeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 9296
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 9431
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    .line 10075
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPrefMixerAttributesListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 10196
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mStreamAliasingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 10387
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    .line 10428
    iput-boolean v0, p0, Landroid/media/AudioManager;->mIsAutomotive:Z

    .line 935
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioManager;->mOriginalContextDeviceId:I

    .line 1251
    new-instance v1, Landroid/media/AudioManager$1;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mVolQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 1273
    new-instance v2, Landroid/os/IpcDataCache;

    const-string v6, "getStreamMinVolume"

    iget-object v7, p0, Landroid/media/AudioManager;->mVolQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v3, 0x10

    const-string v4, "system_server"

    const-string v5, "getStreamMinVolume"

    invoke-direct/range {v2 .. v7}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v2, p0, Landroid/media/AudioManager;->mVolMinCache:Landroid/os/IpcDataCache;

    .line 1277
    new-instance v3, Landroid/os/IpcDataCache;

    const-string v7, "getStreamMaxVolume"

    iget-object v8, p0, Landroid/media/AudioManager;->mVolQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v4, 0x10

    const-string v5, "system_server"

    const-string v6, "getStreamMaxVolume"

    invoke-direct/range {v3 .. v8}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v3, p0, Landroid/media/AudioManager;->mVolMaxCache:Landroid/os/IpcDataCache;

    .line 1281
    new-instance v4, Landroid/os/IpcDataCache;

    const-string v8, "getStreamVolume"

    iget-object v9, p0, Landroid/media/AudioManager;->mVolQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v5, 0x10

    const-string v6, "system_server"

    const-string v7, "getStreamVolume"

    invoke-direct/range {v4 .. v9}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v4, p0, Landroid/media/AudioManager;->mVolCache:Landroid/os/IpcDataCache;

    .line 2524
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPrefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 2531
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mNonDefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 2835
    nop

    .line 2836
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$DevRoleListeners;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/AudioManager$DevRoleListeners;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    .line 2835
    invoke-static {v1, v2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2882
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    .line 2887
    iput v0, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 3538
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 4379
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4391
    new-instance v1, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v1, p0, v3}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    .line 4467
    new-instance v1, Landroid/media/AudioManager$2;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4574
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    .line 5838
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    .line 5869
    new-instance v1, Landroid/media/AudioManager$3;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$3;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 6052
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    .line 6083
    new-instance v1, Landroid/media/AudioManager$4;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$4;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    .line 6124
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 6505
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7933
    iput-object v3, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 7946
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    .line 8380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 8467
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    .line 8469
    new-instance v1, Landroid/media/AudioManager$5;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$5;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    .line 8815
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mVolumeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 9296
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 9431
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    .line 10075
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPrefMixerAttributesListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 10196
    new-instance v1, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v1}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mStreamAliasingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 10387
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    .line 10428
    iput-boolean v0, p0, Landroid/media/AudioManager;->mIsAutomotive:Z

    .line 942
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 943
    invoke-direct {p0}, Landroid/media/AudioManager;->initPlatform()V

    .line 944
    return-void
.end method

.method private blacklist addClientIdToFocusReceiverLocked(Ljava/lang/String;)Landroid/media/AudioManager$BlockingFocusResultReceiver;
    .registers 4
    .param p1, "clientId"    # Ljava/lang/String;

    .line 5079
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 5080
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    .line 5083
    :cond_c
    new-instance v0, Landroid/media/AudioManager$BlockingFocusResultReceiver;

    invoke-direct {v0, p1}, Landroid/media/AudioManager$BlockingFocusResultReceiver;-><init>(Ljava/lang/String;)V

    .line 5084
    .local v0, "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5085
    return-object v0
.end method

.method private greylist-max-o addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 8258
    .local p1, "microphones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    .local p2, "filterTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 8259
    .local v0, "devices":[Landroid/media/AudioDeviceInfo;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 8260
    .local v3, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 8261
    goto :goto_21

    .line 8263
    :cond_1a
    invoke-static {v3}, Landroid/media/AudioManager;->microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;

    move-result-object v4

    .line 8264
    .local v4, "microphone":Landroid/media/MicrophoneInfo;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8259
    .end local v3    # "device":Landroid/media/AudioDeviceInfo;
    .end local v4    # "microphone":Landroid/media/MicrophoneInfo;
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 8266
    :cond_24
    return-void
.end method

.method private blacklist addOnDevRoleForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)I
    .registers 12
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "deviceRole"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;I)I"
        }
    .end annotation

    .line 2761
    .local p2, "listener":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2762
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    iget-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2764
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$DevRoleListeners;

    .line 2765
    .local v0, "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    if-nez v0, :cond_16

    .line 2766
    const/4 v1, -0x1

    return v1

    .line 2768
    :cond_16
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmDevRoleListenersLock(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2769
    :try_start_1b
    invoke-static {v0, p2}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$mhasDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2770
    monitor-exit v1

    const/4 v1, -0x2

    return v1

    .line 2773
    :cond_24
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_32

    .line 2774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fputmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;Ljava/util/ArrayList;)V

    .line 2776
    :cond_32
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2777
    .local v2, "oldCbCount":I
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Landroid/media/AudioManager$DevRoleListenerInfo;

    invoke-direct {v4, p0, p1, p2}, Landroid/media/AudioManager$DevRoleListenerInfo;-><init>(Landroid/media/AudioManager;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2778
    const/4 v3, 0x0

    if-nez v2, :cond_85

    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_85

    .line 2780
    iget-object v4, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_56
    .catchall {:try_start_1b .. :try_end_56} :catchall_87

    .line 2781
    :try_start_56
    iget v5, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 2782
    .local v5, "deviceRoleListenerStatus":I
    iget v6, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, p3

    or-int/2addr v6, v7

    iput v6, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 2783
    if-eqz v5, :cond_64

    .line 2785
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_82

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_87

    return v3

    .line 2787
    :cond_64
    :try_start_64
    iget-object v6, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    if-nez v6, :cond_70

    .line 2788
    new-instance v6, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    iput-object v6, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_82

    .line 2792
    :cond_70
    :try_start_70
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v6

    iget-object v7, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    invoke-interface {v6, v7}, Landroid/media/IAudioService;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_79} :catch_7c
    .catchall {:try_start_70 .. :try_end_79} :catchall_82

    .line 2796
    nop

    .line 2797
    .end local v5    # "deviceRoleListenerStatus":I
    :try_start_7a
    monitor-exit v4

    goto :goto_85

    .line 2794
    .restart local v5    # "deviceRoleListenerStatus":I
    :catch_7c
    move-exception v3

    .line 2795
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    .end local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .end local v2    # "oldCbCount":I
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/lang/Object;, "TT;"
    .end local p3    # "deviceRole":I
    throw v6

    .line 2797
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "deviceRoleListenerStatus":I
    .restart local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .restart local v2    # "oldCbCount":I
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p3    # "deviceRole":I
    :catchall_82
    move-exception v3

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_82

    .end local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/lang/Object;, "TT;"
    .end local p3    # "deviceRole":I
    :try_start_84
    throw v3

    .line 2799
    .end local v2    # "oldCbCount":I
    .restart local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p3    # "deviceRole":I
    :cond_85
    :goto_85
    monitor-exit v1

    .line 2800
    return v3

    .line 2799
    :catchall_87
    move-exception v2

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_87

    throw v2
.end method

.method public static final greylist-max-o adjustToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "adj"    # I

    .line 515
    sparse-switch p0, :sswitch_data_26

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown adjust mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 521
    :sswitch_13
    const-string v0, "ADJUST_TOGGLE_MUTE"

    return-object v0

    .line 520
    :sswitch_16
    const-string v0, "ADJUST_UNMUTE"

    return-object v0

    .line 516
    :sswitch_19
    const-string v0, "ADJUST_RAISE"

    return-object v0

    .line 518
    :sswitch_1c
    const-string v0, "ADJUST_SAME"

    return-object v0

    .line 517
    :sswitch_1f
    const-string v0, "ADJUST_LOWER"

    return-object v0

    .line 519
    :sswitch_22
    const-string v0, "ADJUST_MUTE"

    return-object v0

    nop

    :sswitch_data_26
    .sparse-switch
        -0x64 -> :sswitch_22
        -0x1 -> :sswitch_1f
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_19
        0x64 -> :sswitch_16
        0x65 -> :sswitch_13
    .end sparse-switch
.end method

.method private blacklist applyAutoHardening()Z
    .registers 2

    .line 10443
    iget-boolean v0, p0, Landroid/media/AudioManager;->mIsAutomotive:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->autoPublicVolumeApiHardening()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10444
    const/4 v0, 0x1

    return v0

    .line 10446
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist audioDeviceCategoryToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "audioDeviceCategory"    # I

    .line 7405
    packed-switch p0, :pswitch_data_2c

    .line 7415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown AudioDeviceCategory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7415
    return-object v0

    .line 7413
    :pswitch_13
    const-string v0, "AUDIO_DEVICE_CATEGORY_RECEIVER"

    return-object v0

    .line 7412
    :pswitch_16
    const-string v0, "AUDIO_DEVICE_CATEGORY_HEARING_AID"

    return-object v0

    .line 7411
    :pswitch_19
    const-string v0, "AUDIO_DEVICE_CATEGORY_WATCH"

    return-object v0

    .line 7410
    :pswitch_1c
    const-string v0, "AUDIO_DEVICE_CATEGORY_CARKIT"

    return-object v0

    .line 7409
    :pswitch_1f
    const-string v0, "AUDIO_DEVICE_CATEGORY_HEADPHONES"

    return-object v0

    .line 7408
    :pswitch_22
    const-string v0, "AUDIO_DEVICE_CATEGORY_SPEAKER"

    return-object v0

    .line 7407
    :pswitch_25
    const-string v0, "AUDIO_DEVICE_CATEGORY_OTHER"

    return-object v0

    .line 7406
    :pswitch_28
    const-string v0, "AUDIO_DEVICE_CATEGORY_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static blacklist audioFocusToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "focus"    # I

    .line 4264
    packed-switch p0, :pswitch_data_36

    .line 4282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUDIO_FOCUS_UNKNOWN("

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

    .line 4274
    :pswitch_1d
    const-string v0, "AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE"

    return-object v0

    .line 4272
    :pswitch_20
    const-string v0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    return-object v0

    .line 4270
    :pswitch_23
    const-string v0, "AUDIOFOCUS_GAIN_TRANSIENT"

    return-object v0

    .line 4268
    :pswitch_26
    const-string v0, "AUDIOFOCUS_GAIN"

    return-object v0

    .line 4266
    :pswitch_29
    const-string v0, "AUDIOFOCUS_NONE"

    return-object v0

    .line 4276
    :pswitch_2c
    const-string v0, "AUDIOFOCUS_LOSS"

    return-object v0

    .line 4278
    :pswitch_2f
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT"

    return-object v0

    .line 4280
    :pswitch_32
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch -0x3
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

.method private greylist-max-o broadcastDeviceListChange_sync(Landroid/os/Handler;)V
    .registers 8
    .param p1, "handler"    # Landroid/os/Handler;

    .line 8390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8391
    .local v0, "current_ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    .line 8392
    .local v1, "status":I
    if-eqz v1, :cond_c

    .line 8393
    return-void

    .line 8396
    :cond_c
    const/4 v2, 0x3

    if-eqz p1, :cond_1e

    .line 8398
    nop

    .line 8399
    invoke-static {v0, v2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 8400
    .local v2, "deviceList":[Landroid/media/AudioDeviceInfo;
    nop

    .line 8401
    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 8400
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8402
    .end local v2    # "deviceList":[Landroid/media/AudioDeviceInfo;
    goto :goto_60

    .line 8403
    :cond_1e
    iget-object v3, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 8404
    invoke-static {v3, v0, v2}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 8405
    .local v3, "added_devices":[Landroid/media/AudioDeviceInfo;
    iget-object v4, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 8406
    invoke-static {v0, v4, v2}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 8407
    .local v2, "removed_devices":[Landroid/media/AudioDeviceInfo;
    array-length v4, v3

    if-nez v4, :cond_30

    array-length v4, v2

    if-eqz v4, :cond_60

    .line 8408
    :cond_30
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    iget-object v5, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_60

    .line 8409
    iget-object v5, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-virtual {v5}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 8410
    if-eqz p1, :cond_5d

    .line 8411
    array-length v5, v2

    if-eqz v5, :cond_52

    .line 8412
    const/4 v5, 0x2

    invoke-static {p1, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8416
    :cond_52
    array-length v5, v3

    if-eqz v5, :cond_5d

    .line 8417
    const/4 v5, 0x1

    invoke-static {p1, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8408
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 8426
    .end local v2    # "removed_devices":[Landroid/media/AudioDeviceInfo;
    .end local v3    # "added_devices":[Landroid/media/AudioDeviceInfo;
    .end local v4    # "i":I
    :cond_60
    :goto_60
    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 8427
    return-void
.end method

.method private static greylist-max-o calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .registers 9
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    .line 8096
    .local p0, "ports_A":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    .local p1, "ports_B":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8097
    .local v0, "delta_ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v1, 0x0

    .local v1, "cur_index":I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 8098
    const/4 v2, 0x0

    .line 8099
    .local v2, "cur_port_found":Z
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    .line 8100
    .local v3, "cur_port":Landroid/media/AudioDevicePort;
    const/4 v4, 0x0

    .line 8101
    .local v4, "prev_index":I
    :goto_14
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_29

    if-nez v2, :cond_29

    .line 8105
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDevicePort;

    invoke-virtual {v3, v5}, Landroid/media/AudioDevicePort;->isSameAs(Landroid/media/AudioDevicePort;)Z

    move-result v2

    .line 8102
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 8108
    .end local v4    # "prev_index":I
    :cond_29
    if-nez v2, :cond_2e

    .line 8109
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8097
    .end local v2    # "cur_port_found":Z
    .end local v3    # "cur_port":Landroid/media/AudioDevicePort;
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 8113
    .end local v1    # "cur_index":I
    :cond_31
    invoke-static {v0, p2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method private blacklist checkCallRedirectionFormat(Landroid/media/AudioFormat;Z)V
    .registers 6
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "isOutput"    # Z

    .line 9408
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_17

    .line 9409
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    if-ne v0, v2, :cond_f

    goto :goto_17

    .line 9410
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported encoding "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9412
    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_5b

    .line 9413
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    const v1, 0xbb80

    if-gt v0, v1, :cond_5b

    .line 9416
    const/16 v0, 0xc

    if-eqz p2, :cond_41

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    if-eq v1, v2, :cond_41

    .line 9417
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    if-ne v1, v0, :cond_39

    goto :goto_41

    .line 9418
    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported output channel mask "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9420
    :cond_41
    :goto_41
    if-nez p2, :cond_5a

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_5a

    .line 9421
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    if-ne v1, v0, :cond_52

    goto :goto_5a

    .line 9422
    :cond_52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported input channel mask "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9424
    :cond_5a
    :goto_5a
    return-void

    .line 9414
    :cond_5b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported sample rate "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkFlags(Landroid/media/AudioDevicePort;I)Z
    .registers 5
    .param p0, "port"    # Landroid/media/AudioDevicePort;
    .param p1, "flags"    # I

    .line 7986
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_16

    .line 7987
    :cond_c
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    if-ne v0, v2, :cond_17

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_17

    :cond_16
    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 7986
    :goto_18
    return v2
.end method

.method private static greylist-max-o checkTypes(Landroid/media/AudioDevicePort;)Z
    .registers 2
    .param p0, "port"    # Landroid/media/AudioDevicePort;

    .line 7991
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist clearVolumeCache(Ljava/lang/String;)V
    .registers 3
    .param p0, "api"    # Ljava/lang/String;

    .line 1290
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->cacheGetStreamMinMaxVolume()Z

    move-result v0

    const-string v1, "system_server"

    if-eqz v0, :cond_1c

    const-string v0, "getStreamMaxVolume"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1291
    const-string v0, "getStreamMinVolume"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1292
    :cond_18
    invoke-static {v1, p0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 1293
    :cond_1c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->cacheGetStreamVolume()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "getStreamVolume"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1294
    invoke-static {v1, p0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 1296
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid clearVolumeCache for api "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :goto_46
    return-void
.end method

.method public static greylist createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
    .registers 4
    .param p0, "patch"    # [Landroid/media/AudioPatch;
    .param p1, "sources"    # [Landroid/media/AudioPortConfig;
    .param p2, "sinks"    # [Landroid/media/AudioPortConfig;

    .line 7704
    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v0

    return v0
.end method

.method private blacklist delegateSoundEffectToVdm(I)Z
    .registers 4
    .param p1, "effectType"    # I

    .line 4213
    invoke-direct {p0}, Landroid/media/AudioManager;->hasCustomPolicyVirtualDeviceContext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4214
    invoke-direct {p0}, Landroid/media/AudioManager;->getVirtualDeviceManager()Landroid/companion/virtual/VirtualDeviceManager;

    move-result-object v0

    .line 4215
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v0, :cond_13

    .line 4216
    iget v1, p0, Landroid/media/AudioManager;->mOriginalContextDeviceId:I

    invoke-virtual {v0, v1, p1}, Landroid/companion/virtual/VirtualDeviceManager;->playSoundEffect(II)V

    .line 4217
    const/4 v1, 0x1

    return v1

    .line 4220
    .end local v0    # "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .line 7669
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 7671
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/AudioDevicePort;

    if-eqz v1, :cond_1b

    .line 7672
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7670
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7675
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private greylist-max-o findFocusRequestInfo(Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 4384
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$FocusRequestInfo;

    return-object v0
.end method

.method public static greylist-max-o flagsToString(I)Ljava/lang/String;
    .registers 7
    .param p0, "flags"    # I

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x2c

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 791
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 792
    .local v4, "flag":I
    and-int v5, p0, v4

    if-eqz v5, :cond_3f

    .line 793
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_34

    .line 794
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    :cond_34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    not-int v3, v4

    and-int/2addr p0, v3

    .line 799
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "flag":I
    :cond_3f
    goto :goto_f

    .line 800
    :cond_40
    if-eqz p0, :cond_4e

    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 802
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 804
    :cond_4b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 3

    .line 2062
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2063
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_b

    .line 2064
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 2063
    :goto_f
    return-object v1
.end method

.method public static whitelist getAudioProductStrategies()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 8734
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8736
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 8737
    :catch_9
    move-exception v1

    .line 8738
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist getAudioVolumeGroups()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 8755
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8757
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 8758
    :catch_9
    move-exception v1

    .line 8759
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getCallRedirectMode()I
    .registers 4

    .line 9397
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 9398
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v2, 0x4

    if-eq v0, v2, :cond_18

    const/4 v2, 0x5

    if-ne v0, v2, :cond_e

    goto :goto_18

    .line 9401
    :cond_e
    const/4 v2, 0x3

    if-eq v0, v2, :cond_17

    const/4 v2, 0x6

    if-ne v0, v2, :cond_15

    goto :goto_17

    .line 9404
    :cond_15
    const/4 v1, 0x0

    return v1

    .line 9402
    :cond_17
    :goto_17
    return v1

    .line 9400
    :cond_18
    :goto_18
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 947
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 948
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 950
    :cond_9
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    .line 951
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    return-object v0

    .line 953
    :cond_10
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method public static blacklist getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;
    .registers 8
    .param p0, "portId"    # I
    .param p1, "flags"    # I

    .line 8150
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 8151
    return-object v0

    .line 8153
    :cond_4
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 8154
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    .line 8155
    .local v4, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    if-ne v5, p0, :cond_15

    .line 8156
    return-object v4

    .line 8154
    .end local v4    # "device":Landroid/media/AudioDeviceInfo;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 8159
    :cond_18
    return-object v0
.end method

.method public static blacklist getDeviceInfoFromType(I)Landroid/media/AudioDeviceInfo;
    .registers 2
    .param p0, "deviceType"    # I

    .line 9242
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;
    .registers 8
    .param p0, "type"    # I
    .param p1, "address"    # Ljava/lang/String;

    .line 9265
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 9266
    .local v0, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v1, 0x0

    .line 9267
    .local v1, "deviceForType":Landroid/media/AudioDeviceInfo;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_23

    aget-object v4, v0, v3

    .line 9268
    .local v4, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    if-ne v5, p0, :cond_20

    .line 9269
    move-object v1, v4

    .line 9270
    if-eqz p1, :cond_1f

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 9271
    :cond_1f
    return-object v4

    .line 9267
    .end local v4    # "device":Landroid/media/AudioDeviceInfo;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 9275
    :cond_23
    return-object v1
.end method

.method public static greylist-max-o getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;
    .registers 4
    .param p0, "flags"    # I

    .line 8129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8130
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    .line 8131
    .local v1, "status":I
    if-eqz v1, :cond_f

    .line 8133
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/AudioDeviceInfo;

    return-object v2

    .line 8136
    :cond_f
    invoke-static {v0, p0}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .registers 3
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 3003
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3005
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public static blacklist getHalVersion()Landroid/media/AudioHalVersionInfo;
    .registers 3

    .line 9922
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getHalVersion()Landroid/media/AudioHalVersionInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 9923
    :catch_9
    move-exception v0

    .line 9924
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioManager"

    const-string v2, "Error querying getHalVersion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9925
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getHwOffloadFormatsSupportedForLeAudio(I)Ljava/util/List;
    .registers 9
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    .line 8328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8329
    .local v0, "formatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8331
    .local v1, "leAudioCodecConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothLeAudioCodecConfig;>;"
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->getHwOffloadFormatsSupportedForBluetoothMedia(ILjava/util/ArrayList;)I

    move-result v2

    .line 8333
    .local v2, "status":I
    if-eqz v2, :cond_29

    .line 8334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHwOffloadEncodingFormatsSupportedForLeAudio failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8335
    return-object v1

    .line 8338
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 8339
    .local v4, "format":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/media/AudioSystem;->audioFormatToBluetoothLeAudioSourceCodec(I)I

    move-result v5

    .line 8340
    .local v5, "btLeAudioCodec":I
    const v6, 0xf4240

    if-eq v5, v6, :cond_56

    .line 8341
    new-instance v6, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;

    invoke-direct {v6}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;-><init>()V

    .line 8342
    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;

    move-result-object v6

    .line 8343
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object v6

    .line 8341
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8345
    .end local v4    # "format":Ljava/lang/Integer;
    .end local v5    # "btLeAudioCodec":I
    :cond_56
    goto :goto_2d

    .line 8346
    :cond_57
    return-object v1
.end method

.method private greylist-max-o getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .registers 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4501
    if-nez p1, :cond_c

    .line 4502
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4504
    :cond_c
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getNthNavigationRepeatSoundEffect(I)I
    .registers 3
    .param p0, "n"    # I

    .line 4080
    packed-switch p0, :pswitch_data_2a

    .line 4090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid navigation repeat sound effect id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    const/4 v0, -0x1

    return v0

    .line 4088
    :pswitch_1d
    const/16 v0, 0xf

    return v0

    .line 4086
    :pswitch_20
    const/16 v0, 0xe

    return v0

    .line 4084
    :pswitch_23
    const/16 v0, 0xd

    return v0

    .line 4082
    :pswitch_26
    const/16 v0, 0xc

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static whitelist getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .registers 4
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3074
    if-eqz p0, :cond_11

    .line 3077
    if-eqz p1, :cond_9

    .line 3080
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 3078
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3075
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final blacklist getPublicStreamTypes()[I
    .registers 1

    .line 448
    sget-object v0, Landroid/media/AudioManager;->PUBLIC_STREAM_TYPES:[I

    return-object v0
.end method

.method static greylist getService()Landroid/media/IAudioService;
    .registers 2

    .line 973
    sget-object v0, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_7

    .line 974
    sget-object v0, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 976
    :cond_7
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 977
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 978
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private blacklist getVirtualDeviceManager()Landroid/companion/virtual/VirtualDeviceManager;
    .registers 3

    .line 982
    iget-object v0, p0, Landroid/media/AudioManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v0, :cond_7

    .line 983
    iget-object v0, p0, Landroid/media/AudioManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    return-object v0

    .line 985
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/media/AudioManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 986
    iget-object v0, p0, Landroid/media/AudioManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    return-object v0
.end method

.method private blacklist handleExternalAudioPolicyWaitIfNeeded(Ljava/lang/String;Landroid/media/AudioManager$BlockingFocusResultReceiver;Landroid/media/AudioFocusRequest;)I
    .registers 8
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "focusReceiver"    # Landroid/media/AudioManager$BlockingFocusResultReceiver;
    .param p3, "afr"    # Landroid/media/AudioFocusRequest;

    .line 5090
    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->waitForResult(J)V

    .line 5091
    invoke-virtual {p2}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->receivedResult()Z

    move-result v0

    if-nez v0, :cond_30

    .line 5098
    :try_start_b
    invoke-virtual {p3}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    .line 5102
    goto :goto_30

    .line 5099
    :catch_13
    move-exception v0

    .line 5100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExternalAudioPolicyWaitIfNeeded failed to abandon audio focus after time out, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5101
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5100
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_30
    :goto_30
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5106
    :try_start_33
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5107
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3e

    .line 5108
    invoke-virtual {p2}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->requestResult()I

    move-result v0

    return v0

    .line 5107
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private blacklist hasCustomPolicyVirtualDeviceContext()Z
    .registers 5

    .line 4224
    iget v0, p0, Landroid/media/AudioManager;->mOriginalContextDeviceId:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4225
    return v1

    .line 4228
    :cond_6
    invoke-direct {p0}, Landroid/media/AudioManager;->getVirtualDeviceManager()Landroid/companion/virtual/VirtualDeviceManager;

    move-result-object v0

    .line 4229
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v0, :cond_16

    iget v2, p0, Landroid/media/AudioManager;->mOriginalContextDeviceId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result v2

    if-eqz v2, :cond_16

    move v1, v3

    :cond_16
    return v1
.end method

.method public static blacklist hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 8877
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8879
    if-eqz p0, :cond_a

    .line 8880
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0

    .line 8883
    :cond_a
    sget-object v0, Landroid/media/AudioManager;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 8884
    .local v0, "cachedContext":Landroid/content/Context;
    if-eqz v0, :cond_19

    .line 8888
    invoke-static {v0, p1}, Landroid/media/AudioManager;->hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 8896
    :cond_19
    :try_start_19
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_22

    return v1

    .line 8897
    :catch_22
    move-exception v1

    .line 8898
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 8852
    const-string v0, "haptic-channel-count"

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 8854
    .local v1, "extractor":Landroid/media/MediaExtractor;
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v1, p0, p1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 8855
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 8856
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 8857
    .local v3, "format":Landroid/media/MediaFormat;
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 8858
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_20} :catch_28

    if-lez v4, :cond_24

    .line 8859
    const/4 v0, 0x1

    return v0

    .line 8855
    .end local v3    # "format":Landroid/media/MediaFormat;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 8864
    .end local v2    # "i":I
    :cond_27
    goto :goto_41

    .line 8862
    :catch_28
    move-exception v0

    .line 8863
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasHapticChannels failure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8865
    .end local v0    # "e":Ljava/io/IOException;
    :goto_41
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o hasPlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z
    .registers 4
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 5844
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 5845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 5846
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5847
    const/4 v1, 0x1

    return v1

    .line 5845
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5851
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .registers 4
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 6058
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 6059
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 6060
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 6061
    const/4 v1, 0x1

    return v1

    .line 6059
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6065
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .registers 9
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    .line 8066
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v0, 0x0

    .line 8067
    .local v0, "numRecs":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 8068
    .local v2, "port":Landroid/media/AudioDevicePort;
    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 8069
    add-int/lit8 v0, v0, 0x1

    .line 8071
    .end local v2    # "port":Landroid/media/AudioDevicePort;
    :cond_1f
    goto :goto_5

    .line 8074
    :cond_20
    new-array v1, v0, [Landroid/media/AudioDeviceInfo;

    .line 8075
    .local v1, "deviceList":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .line 8076
    .local v2, "slot":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDevicePort;

    .line 8077
    .local v4, "port":Landroid/media/AudioDevicePort;
    invoke-static {v4}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-static {v4, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 8078
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "slot":I
    .local v5, "slot":I
    new-instance v6, Landroid/media/AudioDeviceInfo;

    invoke-direct {v6, v4}, Landroid/media/AudioDeviceInfo;-><init>(Landroid/media/AudioDevicePort;)V

    aput-object v6, v1, v2

    move v2, v5

    .line 8080
    .end local v4    # "port":Landroid/media/AudioDevicePort;
    .end local v5    # "slot":I
    .restart local v2    # "slot":I
    :cond_49
    goto :goto_27

    .line 8082
    :cond_4a
    return-object v1
.end method

.method private blacklist initPlatform()V
    .registers 4

    .line 10432
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10433
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_12

    .line 10434
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    .line 10435
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioManager;->mIsAutomotive:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 10439
    .end local v0    # "context":Landroid/content/Context;
    :cond_12
    goto :goto_1b

    .line 10437
    :catch_13
    move-exception v0

    .line 10438
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AudioManager"

    const-string v2, "Error querying system feature for AUTOMOTIVE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public static whitelist isHapticPlaybackSupported()Z
    .registers 1

    .line 8670
    invoke-static {}, Landroid/media/AudioSystem;->isHapticPlaybackSupported()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isInputDevice(I)Z
    .registers 2
    .param p0, "device"    # I

    .line 6395
    invoke-static {p0}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z
    .registers 4
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 3024
    if-eqz p0, :cond_16

    .line 3027
    if-eqz p1, :cond_e

    .line 3030
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 3028
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3025
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o isOutputDevice(I)Z
    .registers 2
    .param p0, "device"    # I

    .line 6386
    invoke-static {p0}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static greylist-max-o isPublicStreamType(I)Z
    .registers 2
    .param p0, "streamType"    # I

    .line 1462
    packed-switch p0, :pswitch_data_8

    .line 1473
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1471
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-r isValidRingerMode(I)Z
    .registers 4
    .param p0, "ringerMode"    # I

    .line 1223
    if-ltz p0, :cond_15

    const/4 v0, 0x2

    if-le p0, v0, :cond_6

    goto :goto_15

    .line 1226
    :cond_6
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1228
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_a
    invoke-interface {v0, p0}, Landroid/media/IAudioService;->isValidRingerMode(I)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v1

    .line 1229
    :catch_f
    move-exception v1

    .line 1230
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1224
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic blacklist lambda$addOnCommunicationDeviceChangedListener$4()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 9309
    new-instance v0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnModeChangedListener$2()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 2

    .line 3574
    new-instance v0, Landroid/media/AudioManager$ModeDispatcherStub;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$ModeDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnNonDefaultDevicesForStrategyChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 2502
    new-instance v0, Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnPreferredDevicesForStrategyChangedListener$0()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 2437
    new-instance v0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnPreferredMixerAttributesChangedListener$8()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 10090
    new-instance v0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnStreamAliasingChangedListener$9()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 2

    .line 10232
    new-instance v0, Landroid/media/AudioManager$StreamAliasingDispatcherStub;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$StreamAliasingDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$registerMuteAwaitConnectionCallback$5()Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;
    .registers 3

    .line 9781
    new-instance v0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerMuteAwaitConnectionCallback$6(Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;)V
    .registers 2
    .param p0, "stub"    # Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    .line 9782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->register(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$registerVolumeGroupCallback$3()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 2

    .line 8795
    new-instance v0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$unregisterMuteAwaitConnectionCallback$7(Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;)V
    .registers 2
    .param p0, "stub"    # Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    .line 9803
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->register(Z)V

    return-void
.end method

.method public static greylist-max-o listAudioDevicePorts(Ljava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    .line 7639
    .local p0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    if-nez p0, :cond_4

    .line 7640
    const/4 v0, -0x2

    return v0

    .line 7642
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7643
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    .line 7644
    .local v1, "status":I
    if-nez v1, :cond_13

    .line 7645
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7647
    :cond_13
    return v1
.end method

.method public static greylist listAudioPatches(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    .line 7730
    .local p0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static greylist listAudioPorts(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .line 7620
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o listPreviousAudioDevicePorts(Ljava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    .line 7656
    .local p0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    if-nez p0, :cond_4

    .line 7657
    const/4 v0, -0x2

    return v0

    .line 7659
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7660
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    .line 7661
    .local v1, "status":I
    if-nez v1, :cond_13

    .line 7662
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7664
    :cond_13
    return v1
.end method

.method public static greylist-max-o listPreviousAudioPorts(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .line 7630
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;
    .registers 18
    .param p0, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 8236
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    .line 8237
    .local v0, "deviceType":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_13

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 8239
    :cond_d
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_14

    .line 8240
    :cond_11
    const/4 v1, 0x3

    goto :goto_14

    .line 8238
    :cond_13
    :goto_13
    const/4 v1, 0x1

    .line 8240
    :goto_14
    move v6, v1

    .line 8241
    .local v6, "micLocation":I
    new-instance v2, Landroid/media/MicrophoneInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8242
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8243
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Landroid/media/MicrophoneInfo;->POSITION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    sget-object v10, Landroid/media/MicrophoneInfo;->ORIENTATION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const v15, -0x800001

    const/16 v16, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const v13, -0x800001

    const v14, -0x800001

    invoke-direct/range {v2 .. v16}, Landroid/media/MicrophoneInfo;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/media/MicrophoneInfo$Coordinate3F;Landroid/media/MicrophoneInfo$Coordinate3F;Ljava/util/List;Ljava/util/List;FFFI)V

    .line 8249
    .local v2, "microphone":Landroid/media/MicrophoneInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/MicrophoneInfo;->setId(I)V

    .line 8250
    return-object v2
.end method

.method static blacklist registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I
    .registers 11
    .param p0, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 5601
    if-eqz p0, :cond_42

    .line 5604
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5606
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_6
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    .line 5607
    .local v0, "projection":Landroid/media/projection/MediaProjection;
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 5608
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->hasFocusListener()Z

    move-result v4

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isFocusPolicy()Z

    move-result v5

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isTestFocusPolicy()Z

    move-result v6

    .line 5609
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isVolumeController()Z

    move-result v7

    .line 5610
    if-nez v0, :cond_26

    const/4 v8, 0x0

    goto :goto_2a

    :cond_26
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v8

    .line 5611
    :goto_2a
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    .line 5607
    invoke-interface/range {v1 .. v9}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    .line 5612
    .local v2, "regId":Ljava/lang/String;
    if-nez v2, :cond_36

    .line 5613
    const/4 v3, -0x1

    return v3

    .line 5615
    :cond_36
    invoke-virtual {p0, v2}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_39} :catch_3c

    .line 5620
    .end local v0    # "projection":Landroid/media/projection/MediaProjection;
    .end local v2    # "regId":Ljava/lang/String;
    nop

    .line 5621
    const/4 v0, 0x0

    return v0

    .line 5618
    :catch_3c
    move-exception v0

    .line 5619
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5602
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/media/IAudioService;
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist releaseAudioPatch(Landroid/media/AudioPatch;)I
    .registers 2
    .param p0, "patch"    # Landroid/media/AudioPatch;

    .line 7720
    invoke-static {p0}, Landroid/media/AudioSystem;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result v0

    return v0
.end method

.method private blacklist removeOnDevRoleForCapturePresetChangedListener(Ljava/lang/Object;I)I
    .registers 9
    .param p2, "deviceRole"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)I"
        }
    .end annotation

    .line 2805
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2806
    iget-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2807
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$DevRoleListeners;

    .line 2808
    .local v0, "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    if-nez v0, :cond_13

    .line 2809
    const/4 v1, -0x1

    return v1

    .line 2811
    :cond_13
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmDevRoleListenersLock(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2812
    :try_start_18
    invoke-static {v0, p1}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$mremoveDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 2813
    monitor-exit v1

    const/4 v1, -0x2

    return v1

    .line 2815
    :cond_21
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_52

    .line 2817
    iget-object v2, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_54

    .line 2818
    :try_start_2f
    iget v4, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    const/4 v5, 0x1

    shl-int/2addr v5, p2

    xor-int/2addr v4, v5

    iput v4, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 2819
    iget v4, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    if-eqz v4, :cond_3d

    .line 2821
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_4f

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_54

    return v3

    .line 2824
    :cond_3d
    :try_start_3d
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    invoke-interface {v4, v5}, Landroid/media/IAudioService;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_49
    .catchall {:try_start_3d .. :try_end_46} :catchall_4f

    .line 2828
    nop

    .line 2829
    :try_start_47
    monitor-exit v2

    goto :goto_52

    .line 2826
    :catch_49
    move-exception v3

    .line 2827
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "listener":Ljava/lang/Object;, "TT;"
    .end local p2    # "deviceRole":I
    throw v4

    .line 2829
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p2    # "deviceRole":I
    :catchall_4f
    move-exception v3

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_4f

    .end local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "listener":Ljava/lang/Object;, "TT;"
    .end local p2    # "deviceRole":I
    :try_start_51
    throw v3

    .line 2831
    .restart local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p2    # "deviceRole":I
    :cond_52
    :goto_52
    monitor-exit v1

    .line 2832
    return v3

    .line 2831
    :catchall_54
    move-exception v2

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_54

    throw v2
.end method

.method private greylist-max-o removePlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z
    .registers 4
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 5858
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-eqz v0, :cond_27

    .line 5859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 5860
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 5861
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5862
    const/4 v1, 0x1

    return v1

    .line 5859
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5866
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .registers 4
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 6072
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-eqz v0, :cond_27

    .line 6073
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 6074
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 6075
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6076
    const/4 v1, 0x1

    return v1

    .line 6073
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6080
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method static greylist-max-o resetAudioPortGeneration()I
    .registers 3

    .line 7806
    sget-object v0, Landroid/media/AudioManager;->sAudioPortGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7807
    :try_start_3
    sget v1, Landroid/media/AudioManager;->sAudioPortGeneration:I

    .line 7808
    .local v1, "generation":I
    const/4 v2, 0x0

    sput v2, Landroid/media/AudioManager;->sAudioPortGeneration:I

    .line 7809
    monitor-exit v0

    .line 7810
    return v1

    .line 7809
    .end local v1    # "generation":I
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static greylist-max-o setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I
    .registers 9
    .param p0, "port"    # Landroid/media/AudioPort;
    .param p1, "gain"    # Landroid/media/AudioGainConfig;

    .line 7739
    if-eqz p0, :cond_27

    if-nez p1, :cond_7

    move-object v2, p0

    move-object v6, p1

    goto :goto_29

    .line 7742
    :cond_7
    invoke-virtual {p0}, Landroid/media/AudioPort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v0

    .line 7743
    .local v0, "activeConfig":Landroid/media/AudioPortConfig;
    new-instance v1, Landroid/media/AudioPortConfig;

    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v3

    .line 7744
    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->format()I

    move-result v5

    move-object v2, p0

    move-object v6, p1

    .end local p0    # "port":Landroid/media/AudioPort;
    .end local p1    # "gain":Landroid/media/AudioGainConfig;
    .local v2, "port":Landroid/media/AudioPort;
    .local v6, "gain":Landroid/media/AudioGainConfig;
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    .line 7745
    .local v1, "config":Landroid/media/AudioPortConfig;
    const/16 p0, 0x8

    iput p0, v1, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 7746
    invoke-static {v1}, Landroid/media/AudioSystem;->setAudioPortConfig(Landroid/media/AudioPortConfig;)I

    move-result p0

    return p0

    .line 7739
    .end local v0    # "activeConfig":Landroid/media/AudioPortConfig;
    .end local v1    # "config":Landroid/media/AudioPortConfig;
    .end local v2    # "port":Landroid/media/AudioPort;
    .end local v6    # "gain":Landroid/media/AudioGainConfig;
    .restart local p0    # "port":Landroid/media/AudioPort;
    .restart local p1    # "gain":Landroid/media/AudioGainConfig;
    :cond_27
    move-object v2, p0

    move-object v6, p1

    .line 7740
    .end local p0    # "port":Landroid/media/AudioPort;
    .end local p1    # "gain":Landroid/media/AudioGainConfig;
    .restart local v2    # "port":Landroid/media/AudioPort;
    .restart local v6    # "gain":Landroid/media/AudioGainConfig;
    :goto_29
    const/4 p0, -0x2

    return p0
.end method

.method private greylist-max-o setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 957
    if-nez p1, :cond_3

    .line 958
    return-void

    .line 960
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    iput v0, p0, Landroid/media/AudioManager;->mOriginalContextDeviceId:I

    .line 961
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 962
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_19

    .line 965
    :cond_17
    iput-object p1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    .line 967
    :goto_19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/AudioManager;->sContext:Ljava/lang/ref/WeakReference;

    .line 968
    return-void
.end method

.method public static greylist-max-o setPortIdForMicrophones(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)V"
        }
    .end annotation

    .line 8211
    .local p0, "microphones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 8212
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_8c

    .line 8213
    const/4 v0, 0x0

    .line 8214
    .local v0, "foundPortId":Z
    array-length v3, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_4d

    aget-object v5, v1, v4

    .line 8215
    .local v5, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->type()I

    move-result v6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MicrophoneInfo;

    invoke-virtual {v7}, Landroid/media/MicrophoneInfo;->getInternalDeviceType()I

    move-result v7

    if-ne v6, v7, :cond_4a

    .line 8216
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MicrophoneInfo;

    invoke-virtual {v7}, Landroid/media/MicrophoneInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 8217
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MicrophoneInfo;

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MicrophoneInfo;->setId(I)V

    .line 8218
    const/4 v0, 0x1

    .line 8219
    goto :goto_4d

    .line 8214
    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 8222
    :cond_4d
    :goto_4d
    if-nez v0, :cond_88

    .line 8223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find port id for device with type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8224
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MicrophoneInfo;

    invoke-virtual {v4}, Landroid/media/MicrophoneInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8225
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MicrophoneInfo;

    invoke-virtual {v4}, Landroid/media/MicrophoneInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8223
    const-string v4, "AudioManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8226
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8212
    .end local v0    # "foundPortId":Z
    :cond_88
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_a

    .line 8229
    .end local v2    # "i":I
    :cond_8c
    return-void
.end method

.method private blacklist setPreferredDevicesForCapturePreset(ILjava/util/List;)Z
    .registers 7
    .param p1, "capturePreset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)Z"
        }
    .end annotation

    .line 2659
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2660
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2661
    return v1

    .line 2663
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    .line 2667
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 2668
    .local v3, "device":Landroid/media/AudioDeviceAttributes;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2669
    .end local v3    # "device":Landroid/media/AudioDeviceAttributes;
    goto :goto_16

    .line 2672
    :cond_26
    :try_start_26
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_32

    .line 2673
    .local v0, "status":I
    if-nez v0, :cond_31

    move v1, v2

    :cond_31
    return v1

    .line 2674
    .end local v0    # "status":I
    :catch_32
    move-exception v0

    .line 2675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2664
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only support setting one preferred devices for capture preset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setRttEnabled(Z)V
    .registers 3
    .param p0, "rttEnabled"    # Z

    .line 8910
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->setRttEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 8913
    nop

    .line 8914
    return-void

    .line 8911
    :catch_9
    move-exception v0

    .line 8912
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 4
    .param p0, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 5636
    if-eqz p0, :cond_18

    .line 5639
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5641
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_6
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 5642
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->reset()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 5645
    nop

    .line 5646
    return-void

    .line 5643
    :catch_12
    move-exception v1

    .line 5644
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5637
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .line 7815
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .local p2, "previousPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    .line 7816
    sget-object v4, Landroid/media/AudioManager;->sAudioPortGenerationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 7818
    :try_start_e
    sget v0, Landroid/media/AudioManager;->sAudioPortGeneration:I

    const/4 v5, 0x0

    if-nez v0, :cond_102

    .line 7819
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 7820
    .local v6, "patchGeneration":[I
    new-array v0, v0, [I

    .line 7822
    .local v0, "portGeneration":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7823
    .local v7, "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7826
    .local v8, "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 7827
    invoke-static {v7, v0}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v9

    .line 7828
    .local v9, "status":I
    if-eqz v9, :cond_34

    .line 7829
    const-string v5, "AudioManager"

    const-string v10, "updateAudioPortCache: listAudioPorts failed"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7830
    monitor-exit v4

    return v9

    .line 7832
    :cond_34
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 7833
    invoke-static {v8, v6}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v10

    .line 7834
    .end local v9    # "status":I
    .local v10, "status":I
    if-eqz v10, :cond_46

    .line 7835
    const-string v5, "AudioManager"

    const-string v9, "updateAudioPortCache: listAudioPatches failed"

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7836
    monitor-exit v4

    return v10

    .line 7840
    :cond_46
    aget v9, v6, v5

    aget v11, v0, v5

    if-eq v9, v11, :cond_50

    if-eqz v1, :cond_22

    if-eqz v2, :cond_22

    .line 7844
    :cond_50
    aget v9, v6, v5

    aget v11, v0, v5

    if-eq v9, v11, :cond_59

    .line 7845
    monitor-exit v4

    const/4 v4, -0x1

    return v4

    .line 7848
    :cond_59
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_bd

    .line 7849
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_61
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_8d

    .line 7850
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v12

    .line 7852
    .local v12, "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioPatch;

    invoke-virtual {v13}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v13

    aput-object v12, v13, v11

    .line 7849
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    add-int/lit8 v11, v11, 0x1

    goto :goto_61

    .line 7854
    .end local v11    # "j":I
    :cond_8d
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_8e
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_ba

    .line 7855
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v12

    .line 7857
    .restart local v12    # "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioPatch;

    invoke-virtual {v13}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v13

    aput-object v12, v13, v11

    .line 7854
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    add-int/lit8 v11, v11, 0x1

    goto :goto_8e

    .line 7848
    .end local v11    # "j":I
    :cond_ba
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 7860
    .end local v9    # "i":I
    :cond_bd
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    :goto_c1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 7861
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioPatch;

    .line 7862
    .local v11, "newPatch":Landroid/media/AudioPatch;
    const/4 v12, 0x0

    .line 7863
    .local v12, "hasInvalidPort":Z
    invoke-virtual {v11}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v13

    array-length v14, v13

    move v15, v5

    :goto_d4
    if-ge v15, v14, :cond_df

    aget-object v16, v13, v15

    .line 7864
    .local v16, "portCfg":Landroid/media/AudioPortConfig;
    if-nez v16, :cond_dc

    .line 7865
    const/4 v12, 0x1

    .line 7866
    goto :goto_df

    .line 7863
    .end local v16    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_dc
    add-int/lit8 v15, v15, 0x1

    goto :goto_d4

    .line 7869
    :cond_df
    :goto_df
    invoke-virtual {v11}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v13

    array-length v14, v13

    move v15, v5

    :goto_e5
    if-ge v15, v14, :cond_f0

    aget-object v16, v13, v15

    .line 7870
    .restart local v16    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v16, :cond_ed

    .line 7871
    const/4 v12, 0x1

    .line 7872
    goto :goto_f0

    .line 7869
    .end local v16    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_ed
    add-int/lit8 v15, v15, 0x1

    goto :goto_e5

    .line 7875
    :cond_f0
    :goto_f0
    if-eqz v12, :cond_f5

    .line 7878
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 7880
    .end local v11    # "newPatch":Landroid/media/AudioPatch;
    .end local v12    # "hasInvalidPort":Z
    :cond_f5
    goto :goto_c1

    .line 7882
    .end local v9    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    :cond_f6
    sget-object v9, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    sput-object v9, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    .line 7883
    sput-object v7, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 7884
    sput-object v8, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    .line 7885
    aget v9, v0, v5

    sput v9, Landroid/media/AudioManager;->sAudioPortGeneration:I

    .line 7887
    .end local v0    # "portGeneration":[I
    .end local v6    # "patchGeneration":[I
    .end local v7    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v8    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v10    # "status":I
    :cond_102
    if-eqz v1, :cond_10c

    .line 7888
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7889
    sget-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7891
    :cond_10c
    if-eqz v2, :cond_116

    .line 7892
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 7893
    sget-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7895
    :cond_116
    if-eqz v3, :cond_120

    .line 7896
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7897
    sget-object v0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7899
    :cond_120
    monitor-exit v4

    .line 7900
    return v5

    .line 7899
    :catchall_122
    move-exception v0

    monitor-exit v4
    :try_end_124
    .catchall {:try_start_e .. :try_end_124} :catchall_122

    throw v0
.end method

.method static greylist-max-o updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;
    .registers 10
    .param p0, "portCfg"    # Landroid/media/AudioPortConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioPortConfig;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)",
            "Landroid/media/AudioPortConfig;"
        }
    .end annotation

    .line 7904
    .local p1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v0

    .line 7906
    .local v0, "port":Landroid/media/AudioPort;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 7909
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPort;

    invoke-virtual {v2}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 7910
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/AudioPort;

    .line 7911
    goto :goto_2a

    .line 7906
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7914
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_32

    .line 7917
    const/4 v2, 0x0

    return-object v2

    .line 7919
    :cond_32
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object v2

    .line 7920
    .local v2, "gainCfg":Landroid/media/AudioGainConfig;
    if-eqz v2, :cond_54

    .line 7921
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->index()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/AudioPort;->gain(I)Landroid/media/AudioGain;

    move-result-object v3

    .line 7922
    .local v3, "gain":Landroid/media/AudioGain;
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->mode()I

    move-result v4

    .line 7923
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->channelMask()I

    move-result v5

    .line 7924
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->values()[I

    move-result-object v6

    .line 7925
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->rampDurationMs()I

    move-result v7

    .line 7922
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v2

    .line 7927
    .end local v3    # "gain":Landroid/media/AudioGain;
    :cond_54
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v3

    .line 7928
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v4

    .line 7929
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->format()I

    move-result v5

    .line 7927
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/media/AudioPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .registers 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 5369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I
    .registers 7
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "aa"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5384
    invoke-direct {p0}, Landroid/media/AudioManager;->hasCustomPolicyVirtualDeviceContext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5387
    const/4 v0, 0x1

    return v0

    .line 5389
    :cond_8
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 5390
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5392
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_f
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 5393
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5392
    invoke-interface {v0, v1, v2, p2, v3}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_22

    return v1

    .line 5394
    :catch_22
    move-exception v1

    .line 5395
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r abandonAudioFocusForCall()V
    .registers 5

    .line 5353
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5355
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 5356
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5355
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_14

    .line 5359
    nop

    .line 5360
    return-void

    .line 5357
    :catch_14
    move-exception v1

    .line 5358
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist abandonAudioFocusForTest(Landroid/media/AudioFocusRequest;Ljava/lang/String;)I
    .registers 7
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;
    .param p2, "clientFakeId"    # Ljava/lang/String;

    .line 4876
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4877
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4879
    :try_start_6
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4880
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    const-string v3, "com.android.test.fakeclient"

    .line 4879
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/media/IAudioService;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 4881
    :catch_17
    move-exception v0

    .line 4882
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    .registers 4
    .param p1, "focusRequest"    # Landroid/media/AudioFocusRequest;

    .line 4695
    if-eqz p1, :cond_f

    .line 4698
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    .line 4699
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 4698
    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 4696
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addAssistantServicesUids([I)V
    .registers 4
    .param p1, "assistantUids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9820
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->addAssistantServicesUids([I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 9823
    nop

    .line 9824
    return-void

    .line 9821
    :catch_9
    move-exception v0

    .line 9822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addOnCommunicationDeviceChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 9307
    iget-object v0, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda8;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "addOnCommunicationDeviceChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 9310
    return-void
.end method

.method public whitelist addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V
    .registers 7
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6571
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6572
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6573
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6575
    iget-object v0, p0, Landroid/media/AudioManager;->mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 6576
    :try_start_c
    iget-object v1, p0, Landroid/media/AudioManager;->mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6577
    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;

    .line 6579
    .local v1, "callbackStub":Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;
    if-nez v1, :cond_21

    .line 6580
    new-instance v2, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;

    invoke-direct {v2, p3, p2}, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;-><init>(Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;Ljava/util/concurrent/Executor;)V

    move-object v1, v2

    .line 6581
    iget-object v2, p0, Landroid/media/AudioManager;->mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6584
    :cond_21
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->register(ZLandroid/media/AudioAttributes;)V

    .line 6585
    .end local v1    # "callbackStub":Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;
    monitor-exit v0

    .line 6586
    return-void

    .line 6585
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnModeChangedListener;

    .line 3573
    iget-object v0, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda3;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "addOnModeChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 3575
    return-void
.end method

.method public whitelist addOnNonDefaultDevicesForStrategyChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2497
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    iget-object v0, p0, Landroid/media/AudioManager;->mNonDefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda7;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "addOnNonDefaultDevicesForStrategyChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 2503
    return-void
.end method

.method public whitelist addOnPreferredDeviceForStrategyChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2403
    return-void
.end method

.method public whitelist addOnPreferredDevicesForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2720
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioManager;->addOnDevRoleForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)I

    move-result v0

    .line 2724
    .local v0, "status":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 2728
    const/4 v1, -0x2

    if-eq v0, v1, :cond_12

    .line 2733
    return-void

    .line 2729
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to call addOnPreferredDevicesForCapturePresetChangedListener() on a previously registered listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2726
    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown error happened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addOnPreferredDevicesForStrategyChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2433
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda4;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "addOnPreferredDevicesForStrategyChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 2438
    return-void
.end method

.method public whitelist addOnPreferredMixerAttributesChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;

    .line 10086
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10087
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10088
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefMixerAttributesListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "addOnPreferredMixerAttributesChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 10091
    return-void
.end method

.method public whitelist addOnStreamAliasingChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "onStreamAliasingChangedListener"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10230
    iget-object v0, p0, Landroid/media/AudioManager;->mStreamAliasingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda5;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "addOnStreamAliasingChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 10233
    return-void
.end method

.method public whitelist adjustStreamVolume(III)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .line 1076
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1078
    .local v1, "service":Landroid/media/IAudioService;
    nop

    .line 1079
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_20

    .line 1078
    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "streamType":I
    .end local p2    # "direction":I
    .end local p3    # "flags":I
    .local v2, "streamType":I
    .local v3, "direction":I
    .local v4, "flags":I
    :try_start_18
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    .line 1082
    nop

    .line 1083
    return-void

    .line 1080
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .end local v2    # "streamType":I
    .end local v3    # "direction":I
    .end local v4    # "flags":I
    .restart local p1    # "streamType":I
    .restart local p2    # "direction":I
    .restart local p3    # "flags":I
    :catch_20
    move-exception v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 1081
    .end local p2    # "direction":I
    .end local p3    # "flags":I
    .restart local v2    # "streamType":I
    .restart local v3    # "direction":I
    .restart local v4    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist adjustStreamVolumeForUid(IIILjava/lang/String;III)V
    .registers 17
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "targetSdkVersion"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 8998
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8999
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 8998
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 9002
    nop

    .line 9003
    return-void

    .line 9000
    :catch_15
    move-exception v0

    .line 9001
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist adjustSuggestedStreamVolume(III)V
    .registers 7
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I

    .line 1148
    invoke-direct {p0}, Landroid/media/AudioManager;->applyAutoHardening()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1149
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1151
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(III)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    .line 1154
    nop

    .line 1155
    .end local v0    # "service":Landroid/media/IAudioService;
    goto :goto_20

    .line 1152
    .restart local v0    # "service":Landroid/media/IAudioService;
    :catch_f
    move-exception v1

    .line 1153
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1156
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1157
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p2, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    .line 1159
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :goto_20
    return-void
.end method

.method public blacklist adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    .registers 17
    .param p1, "suggestedStreamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "targetSdkVersion"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 8954
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8955
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 8954
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 8958
    nop

    .line 8959
    return-void

    .line 8956
    :catch_15
    move-exception v0

    .line 8957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist adjustVolume(II)V
    .registers 6
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 1109
    invoke-direct {p0}, Landroid/media/AudioManager;->applyAutoHardening()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1110
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1112
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->adjustVolume(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    .line 1115
    nop

    .line 1116
    .end local v0    # "service":Landroid/media/IAudioService;
    goto :goto_22

    .line 1113
    .restart local v0    # "service":Landroid/media/IAudioService;
    :catch_f
    move-exception v1

    .line 1114
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1117
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1118
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    .line 1120
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :goto_22
    return-void
.end method

.method public whitelist adjustVolumeGroupVolume(III)V
    .registers 7
    .param p1, "groupId"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .line 1769
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1771
    .local v0, "service":Landroid/media/IAudioService;
    nop

    .line 1772
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1771
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/IAudioService;->adjustVolumeGroupVolume(IIILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 1775
    nop

    .line 1776
    return-void

    .line 1773
    :catch_12
    move-exception v1

    .line 1774
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist areNavigationRepeatSoundEffectsEnabled()Z
    .registers 3

    .line 4112
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 4113
    :catch_9
    move-exception v0

    .line 4114
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V
    .registers 4
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 9695
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9697
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 9700
    nop

    .line 9701
    return-void

    .line 9698
    :catch_c
    move-exception v0

    .line 9699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearAudioServerStateCallback()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8536
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8537
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    if-eqz v1, :cond_17

    .line 8538
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    .line 8540
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_b
    iget-object v2, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_1e

    .line 8544
    goto :goto_17

    .line 8542
    :catch_11
    move-exception v2

    .line 8543
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_12
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/media/AudioManager;
    throw v3

    .line 8546
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    :cond_17
    :goto_17
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    .line 8547
    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    .line 8548
    monitor-exit v0

    .line 8549
    return-void

    .line 8548
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist clearCommunicationDevice()V
    .registers 5

    .line 9147
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/media/AudioManager;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/media/IAudioService;->setCommunicationDevice(Landroid/os/IBinder;ILandroid/content/AttributionSource;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 9150
    nop

    .line 9151
    return-void

    .line 9148
    :catch_10
    move-exception v0

    .line 9149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearPreferredDevicesForCapturePreset(I)Z
    .registers 4
    .param p1, "capturePreset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2623
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2624
    return v1

    .line 2627
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->clearPreferredDevicesForCapturePreset(I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_14

    .line 2628
    .local v0, "status":I
    if-nez v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 2629
    .end local v0    # "status":I
    :catch_14
    move-exception v0

    .line 2630
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearPreferredMixerAttributes(Landroid/media/AudioAttributes;Landroid/media/AudioDeviceInfo;)Z
    .registers 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "device"    # Landroid/media/AudioDeviceInfo;

    .line 10034
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10035
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10037
    :try_start_6
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10038
    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    .line 10037
    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->clearPreferredMixerAttributes(Landroid/media/AudioAttributes;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_18

    .line 10039
    .local v0, "status":I
    if-nez v0, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    .line 10040
    .end local v0    # "status":I
    :catch_18
    move-exception v0

    .line 10041
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o disableSafeMediaVolume()V
    .registers 3

    .line 7174
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->disableSafeMediaVolume(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 7177
    nop

    .line 7178
    return-void

    .line 7175
    :catch_f
    move-exception v0

    .line 7176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dispatchAudioFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)I
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I
    .param p3, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5267
    if-eqz p1, :cond_1f

    .line 5270
    if-eqz p3, :cond_17

    .line 5273
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5275
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_8
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    return v1

    .line 5276
    :catch_11
    move-exception v1

    .line 5277
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5271
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioPolicy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5268
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist dispatchAudioFocusChangeWithFade(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;Ljava/util/List;Landroid/media/FadeManagerConfiguration;)I
    .registers 13
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I
    .param p3, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .param p5, "transientFadeMgrConfig"    # Landroid/media/FadeManagerConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioFocusInfo;",
            "I",
            "Landroid/media/audiopolicy/AudioPolicy;",
            "Ljava/util/List<",
            "Landroid/media/AudioFocusInfo;",
            ">;",
            "Landroid/media/FadeManagerConfiguration;",
            ")I"
        }
    .end annotation

    .line 5332
    .local p4, "otherActiveAfis":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    const-string v0, "AudioFocusInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5333
    const-string v0, "AudioPolicy cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5334
    const-string v0, "Other active AudioFocusInfo list cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5336
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5338
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_13
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_23

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "afi":Landroid/media/AudioFocusInfo;
    .end local p2    # "focusChange":I
    .end local p4    # "otherActiveAfis":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .end local p5    # "transientFadeMgrConfig":Landroid/media/FadeManagerConfiguration;
    .local v2, "afi":Landroid/media/AudioFocusInfo;
    .local v3, "focusChange":I
    .local v5, "otherActiveAfis":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .local v6, "transientFadeMgrConfig":Landroid/media/FadeManagerConfiguration;
    :try_start_1b
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->dispatchFocusChangeWithFade(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;Ljava/util/List;Landroid/media/FadeManagerConfiguration;)I

    move-result p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1f} :catch_20

    return p1

    .line 5340
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .end local v2    # "afi":Landroid/media/AudioFocusInfo;
    .end local v3    # "focusChange":I
    .end local v5    # "otherActiveAfis":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .end local v6    # "transientFadeMgrConfig":Landroid/media/FadeManagerConfiguration;
    .restart local p1    # "afi":Landroid/media/AudioFocusInfo;
    .restart local p2    # "focusChange":I
    .restart local p4    # "otherActiveAfis":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .restart local p5    # "transientFadeMgrConfig":Landroid/media/FadeManagerConfiguration;
    :catch_23
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 5341
    .end local p2    # "focusChange":I
    .end local p4    # "otherActiveAfis":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .end local p5    # "transientFadeMgrConfig":Landroid/media/FadeManagerConfiguration;
    .restart local v2    # "afi":Landroid/media/AudioFocusInfo;
    .restart local v3    # "focusChange":I
    .restart local v5    # "otherActiveAfis":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .restart local v6    # "transientFadeMgrConfig":Landroid/media/FadeManagerConfiguration;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1001
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1002
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 1003
    return-void
.end method

.method public blacklist enterAudioFocusFreezeForTest(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 4975
    .local p1, "exemptedUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4977
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 4978
    .local v0, "uids":[I
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/media/IAudioService;->enterAudioFocusFreezeForTest(Landroid/os/IBinder;[I)Z

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_1f

    return v1

    .line 4979
    .end local v0    # "uids":[I
    :catch_1f
    move-exception v0

    .line 4980
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist exitAudioFocusFreezeForTest()Z
    .registers 3

    .line 4995
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->exitAudioFocusFreezeForTest(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 4996
    :catch_b
    move-exception v0

    .line 4997
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceComputeCsdOnAllDevices(Z)V
    .registers 4
    .param p1, "computeCsdOnAllDevices"    # Z

    .line 7274
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->forceComputeCsdOnAllDevices(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7277
    nop

    .line 7278
    return-void

    .line 7275
    :catch_9
    move-exception v0

    .line 7276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceUseFrameworkMel(Z)V
    .registers 4
    .param p1, "useFrameworkMel"    # Z

    .line 7260
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->forceUseFrameworkMel(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7263
    nop

    .line 7264
    return-void

    .line 7261
    :catch_9
    move-exception v0

    .line 7262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist forceVolumeControlStream(I)V
    .registers 5
    .param p1, "streamType"    # I

    .line 1952
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1954
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 1957
    nop

    .line 1958
    return-void

    .line 1955
    :catch_b
    move-exception v1

    .line 1956
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist generateAudioSessionId()I
    .registers 4

    .line 3803
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 3804
    .local v0, "session":I
    if-lez v0, :cond_7

    .line 3805
    return v0

    .line 3807
    :cond_7
    const-string v1, "AudioManager"

    const-string v2, "Failure to generate a new audio session ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getActiveAssistantServicesUids()[I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9905
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getActiveAssistantServiceUids()[I

    move-result-object v0

    .line 9906
    .local v0, "uids":[I
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 9907
    .end local v0    # "uids":[I
    :catch_e
    move-exception v0

    .line 9908
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActivePlaybackConfigurations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 5823
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5825
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 5826
    :catch_9
    move-exception v1

    .line 5827
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getActiveRecordingConfigurations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 6013
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6015
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 6016
    :catch_9
    move-exception v1

    .line 6017
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;)J
    .registers 4
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7023
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7025
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_11

    return-wide v0

    .line 7026
    :catch_11
    move-exception v0

    .line 7027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllowedCapturePolicy()I
    .registers 5

    .line 2128
    const/4 v0, 0x1

    .line 2130
    .local v0, "result":I
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getAllowedCapturePolicy()I

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    .line 2133
    goto :goto_24

    .line 2131
    :catch_b
    move-exception v1

    .line 2132
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query allowed capture policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return v0
.end method

.method public whitelist getAssistantServicesUids()[I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9862
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getAssistantServicesUids()[I

    move-result-object v0

    .line 9863
    .local v0, "uids":[I
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 9864
    .end local v0    # "uids":[I
    :catch_e
    move-exception v0

    .line 9865
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAudioDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .registers 12
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 6628
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6629
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6630
    .local v0, "service":Landroid/media/IAudioService;
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_50

    .line 6634
    .end local v0    # "service":Landroid/media/IAudioService;
    .local v1, "devicesForAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    nop

    .line 6637
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 6638
    .local v0, "outputDeviceInfos":[Landroid/media/AudioDeviceInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6639
    .local v2, "deviceInfosForAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 6640
    .local v4, "deviceForAttributes":Landroid/media/AudioDeviceAttributes;
    array-length v5, v0

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_4a

    aget-object v7, v0, v6

    .line 6641
    .local v7, "deviceInfo":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v8

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v9

    if-ne v8, v9, :cond_47

    .line 6642
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 6643
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 6642
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 6644
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6640
    .end local v7    # "deviceInfo":Landroid/media/AudioDeviceInfo;
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 6647
    .end local v4    # "deviceForAttributes":Landroid/media/AudioDeviceAttributes;
    :cond_4a
    goto :goto_1a

    .line 6648
    :cond_4b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 6631
    .end local v0    # "outputDeviceInfos":[Landroid/media/AudioDeviceInfo;
    .end local v1    # "devicesForAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "deviceInfosForAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :catch_50
    move-exception v0

    .line 6632
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AudioManager"

    const-string v2, "No audio devices available for specified attributes."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6633
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAudioHwSyncForSession(I)I
    .registers 5
    .param p1, "sessionId"    # I

    .line 9067
    invoke-static {p1}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v0

    .line 9068
    .local v0, "hwSyncId":I
    if-eqz v0, :cond_7

    .line 9071
    return v0

    .line 9069
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "HW A/V synchronization is not supported."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAvailableCommunicationDevices()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 9183
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9184
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceInfo;>;"
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getAvailableCommunicationDeviceIds()[I

    move-result-object v1

    .line 9185
    .local v1, "portIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_21

    aget v4, v1, v3

    .line 9186
    .local v4, "portId":I
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v5

    .line 9187
    .local v5, "device":Landroid/media/AudioDeviceInfo;
    if-nez v5, :cond_1b

    .line 9188
    goto :goto_1e

    .line 9190
    :cond_1b
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_22

    .line 9185
    .end local v4    # "portId":I
    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 9192
    :cond_21
    return-object v0

    .line 9193
    .end local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceInfo;>;"
    .end local v1    # "portIds":[I
    :catch_22
    move-exception v0

    .line 9194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBluetoothAudioDeviceCategory(Ljava/lang/String;)I
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 7446
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7447
    :catch_9
    move-exception v0

    .line 7448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCallDownlinkExtractionAudioRecord(Landroid/media/AudioFormat;)Landroid/media/AudioRecord;
    .registers 9
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9535
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9536
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->checkCallRedirectionFormat(Landroid/media/AudioFormat;Z)V

    .line 9538
    const/4 v0, 0x0

    .line 9539
    .local v0, "record":Landroid/media/AudioRecord;
    invoke-direct {p0}, Landroid/media/AudioManager;->getCallRedirectMode()I

    move-result v1

    .line 9540
    .local v1, "redirectMode":I
    if-eqz v1, :cond_b1

    .line 9543
    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    invoke-virtual {p0}, Landroid/media/AudioManager;->isPstnCallAudioInterceptable()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_20

    .line 9544
    :cond_18
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, " PSTN Call audio not accessible "

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9547
    :cond_20
    :goto_20
    new-instance v2, Landroid/media/AudioRecord$Builder;

    invoke-direct {v2}, Landroid/media/AudioRecord$Builder;-><init>()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9549
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 9550
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 9548
    invoke-virtual {v2, v3}, Landroid/media/AudioRecord$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    .line 9551
    invoke-virtual {v2, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    .line 9552
    invoke-virtual {v2, v1}, Landroid/media/AudioRecord$Builder;->setCallRedirectionMode(I)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    .line 9553
    invoke-virtual {v2}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    .line 9555
    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-eqz v2, :cond_a9

    .line 9556
    iget-object v2, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9557
    :try_start_4e
    iget-object v3, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    if-nez v3, :cond_90

    .line 9558
    new-instance v3, Landroid/media/AudioManager$CallInjectionModeChangedListener;

    invoke-direct {v3, p0}, Landroid/media/AudioManager$CallInjectionModeChangedListener;-><init>(Landroid/media/AudioManager;)V

    iput-object v3, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_a6

    .line 9560
    nop

    .line 9561
    :try_start_5a
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    .line 9560
    invoke-virtual {p0, v3, v4}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_6c
    .catchall {:try_start_5a .. :try_end_63} :catchall_a6

    .line 9566
    nop

    .line 9567
    :try_start_64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    goto :goto_90

    .line 9562
    :catch_6c
    move-exception v3

    .line 9563
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOnModeChangedListener failed with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9564
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    .line 9565
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, " Cannot register mode listener "

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "record":Landroid/media/AudioRecord;
    .end local v1    # "redirectMode":I
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "format":Landroid/media/AudioFormat;
    throw v4

    .line 9569
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "record":Landroid/media/AudioRecord;
    .restart local v1    # "redirectMode":I
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "format":Landroid/media/AudioFormat;
    :cond_90
    :goto_90
    new-instance v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;

    invoke-direct {v3, p0}, Landroid/media/AudioManager$CallIRedirectionClientInfo;-><init>(Landroid/media/AudioManager;)V

    .line 9570
    .local v3, "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    iput v1, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    .line 9571
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->trackOrRecord:Ljava/lang/ref/WeakReference;

    .line 9572
    iget-object v4, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9573
    nop

    .end local v3    # "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    monitor-exit v2

    .line 9577
    return-object v0

    .line 9573
    :catchall_a6
    move-exception v3

    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_64 .. :try_end_a8} :catchall_a6

    throw v3

    .line 9575
    :cond_a9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, " Cannot create the AudioRecord"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9541
    :cond_b1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not available in mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9542
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getCallUplinkInjectionAudioTrack(Landroid/media/AudioFormat;)Landroid/media/AudioTrack;
    .registers 9
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9463
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9464
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->checkCallRedirectionFormat(Landroid/media/AudioFormat;Z)V

    .line 9466
    const/4 v1, 0x0

    .line 9467
    .local v1, "track":Landroid/media/AudioTrack;
    invoke-direct {p0}, Landroid/media/AudioManager;->getCallRedirectMode()I

    move-result v2

    .line 9468
    .local v2, "redirectMode":I
    if-eqz v2, :cond_b5

    .line 9471
    if-ne v2, v0, :cond_1f

    invoke-virtual {p0}, Landroid/media/AudioManager;->isPstnCallAudioInterceptable()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_1f

    .line 9472
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, " PSTN Call audio not accessible "

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9475
    :cond_1f
    :goto_1f
    new-instance v3, Landroid/media/AudioTrack$Builder;

    invoke-direct {v3}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9477
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setSystemUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 9478
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 9479
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 9476
    invoke-virtual {v3, v0}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 9480
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 9481
    invoke-virtual {v0, v2}, Landroid/media/AudioTrack$Builder;->setCallRedirectionMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 9482
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    .line 9484
    .end local v1    # "track":Landroid/media/AudioTrack;
    .local v0, "track":Landroid/media/AudioTrack;
    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eqz v1, :cond_ad

    .line 9485
    iget-object v1, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9486
    :try_start_52
    iget-object v3, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    if-nez v3, :cond_94

    .line 9487
    new-instance v3, Landroid/media/AudioManager$CallInjectionModeChangedListener;

    invoke-direct {v3, p0}, Landroid/media/AudioManager$CallInjectionModeChangedListener;-><init>(Landroid/media/AudioManager;)V

    iput-object v3, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_aa

    .line 9489
    nop

    .line 9490
    :try_start_5e
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    .line 9489
    invoke-virtual {p0, v3, v4}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_67} :catch_70
    .catchall {:try_start_5e .. :try_end_67} :catchall_aa

    .line 9495
    nop

    .line 9496
    :try_start_68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    goto :goto_94

    .line 9491
    :catch_70
    move-exception v3

    .line 9492
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOnModeChangedListener failed with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9493
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    .line 9494
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, " Cannot register mode listener "

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "track":Landroid/media/AudioTrack;
    .end local v2    # "redirectMode":I
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "format":Landroid/media/AudioFormat;
    throw v4

    .line 9498
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "track":Landroid/media/AudioTrack;
    .restart local v2    # "redirectMode":I
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "format":Landroid/media/AudioFormat;
    :cond_94
    :goto_94
    new-instance v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;

    invoke-direct {v3, p0}, Landroid/media/AudioManager$CallIRedirectionClientInfo;-><init>(Landroid/media/AudioManager;)V

    .line 9499
    .local v3, "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    iput v2, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    .line 9500
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->trackOrRecord:Ljava/lang/ref/WeakReference;

    .line 9501
    iget-object v4, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9502
    nop

    .end local v3    # "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    monitor-exit v1

    .line 9506
    return-object v0

    .line 9502
    :catchall_aa
    move-exception v3

    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_68 .. :try_end_ac} :catchall_aa

    throw v3

    .line 9504
    :cond_ad
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, " Cannot create the AudioTrack"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9469
    .end local v0    # "track":Landroid/media/AudioTrack;
    .restart local v1    # "track":Landroid/media/AudioTrack;
    :cond_b5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not available in mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9470
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 9169
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getCommunicationDevice()I

    move-result v0

    .line 9168
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 9170
    :catch_e
    move-exception v0

    .line 9171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCsd()F
    .registers 3

    .line 7228
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getCsd()F

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7229
    :catch_9
    move-exception v0

    .line 7230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .registers 6
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6801
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6803
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6805
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1

    .line 6806
    .local v1, "behavior":I
    const-wide/32 v2, 0xe583a8e

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_1a

    if-nez v2, :cond_19

    const/4 v2, 0x5

    if-ne v1, v2, :cond_19

    .line 6808
    const/4 v2, 0x1

    return v2

    .line 6810
    :cond_19
    return v1

    .line 6811
    .end local v1    # "behavior":I
    :catch_1a
    move-exception v1

    .line 6812
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getDevices(I)[Landroid/media/AudioDeviceInfo;
    .registers 3
    .param p1, "flags"    # I

    .line 8055
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .registers 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 6494
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6495
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6497
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v1

    .line 6498
    :catch_c
    move-exception v1

    .line 6499
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getDevicesForStream(I)I
    .registers 5
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6453
    packed-switch p1, :pswitch_data_14

    .line 6469
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 6462
    :pswitch_5
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6464
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_9
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDeviceMaskForStream(I)I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v1

    .line 6465
    :catch_e
    move-exception v1

    .line 6466
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public whitelist getDirectProfilesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .registers 6
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation

    .line 9215
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9217
    .local v0, "audioProfilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioProfile;>;"
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->getDirectProfilesForAttributes(Landroid/media/AudioAttributes;Ljava/util/ArrayList;)I

    move-result v1

    .line 9218
    .local v1, "status":I
    if-eqz v1, :cond_1b

    .line 9219
    const-string v2, "AudioManager"

    const-string v3, "getDirectProfilesForAttributes failed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 9222
    :cond_1b
    return-object v0
.end method

.method public whitelist getEncodedSurroundMode()I
    .registers 3

    .line 8587
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8588
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8587
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getEncodedSurroundMode(I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 8589
    :catch_13
    move-exception v0

    .line 8590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .registers 4
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 4897
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4899
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return-wide v0

    .line 4900
    :catch_c
    move-exception v0

    .line 4901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFocusDuckedUidsForTest()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4916
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getFocusDuckedUidsForTest()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 4917
    :catch_9
    move-exception v0

    .line 4918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFocusFadeOutDurationForTest()J
    .registers 3

    .line 4932
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getFocusFadeOutDurationForTest()J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 4933
    :catch_9
    move-exception v0

    .line 4934
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 6
    .param p1, "focusGain"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 5208
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5210
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 5211
    :catch_9
    move-exception v1

    .line 5212
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getFocusUnmuteDelayAfterFadeOutForTest()J
    .registers 3

    .line 4949
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getFocusUnmuteDelayAfterFadeOutForTest()J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 4950
    :catch_9
    move-exception v0

    .line 4951
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHwOffloadFormatsSupportedForA2dp()Ljava/util/List;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 8306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8307
    .local v0, "formatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8309
    .local v1, "codecConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothCodecConfig;>;"
    const/16 v2, 0x80

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getHwOffloadFormatsSupportedForBluetoothMedia(ILjava/util/ArrayList;)I

    move-result v2

    .line 8311
    .local v2, "status":I
    if-eqz v2, :cond_2b

    .line 8312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHwOffloadEncodingFormatsSupportedForA2DP failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8313
    return-object v1

    .line 8316
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 8317
    .local v4, "format":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/media/AudioSystem;->audioFormatToBluetoothSourceCodec(I)I

    move-result v5

    .line 8318
    .local v5, "btSourceCodec":I
    const v6, 0xf4240

    if-eq v5, v6, :cond_58

    .line 8319
    new-instance v6, Landroid/bluetooth/BluetoothCodecConfig$Builder;

    invoke-direct {v6}, Landroid/bluetooth/BluetoothCodecConfig$Builder;-><init>()V

    .line 8320
    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v6

    .line 8319
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8322
    .end local v4    # "format":Ljava/lang/Integer;
    .end local v5    # "btSourceCodec":I
    :cond_58
    goto :goto_2f

    .line 8323
    :cond_59
    return-object v1
.end method

.method public blacklist getHwOffloadFormatsSupportedForLeAudio()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    .line 8360
    const/high16 v0, 0x20000000

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->getHwOffloadFormatsSupportedForLeAudio(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHwOffloadFormatsSupportedForLeBroadcast()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    .line 8374
    const v0, 0x20000002

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->getHwOffloadFormatsSupportedForLeAudio(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIndependentStreamTypes()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 10299
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10301
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getIndependentStreamTypes()Ljava/util/List;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 10302
    :catch_9
    move-exception v1

    .line 10303
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getLastAudibleStreamVolume(I)I
    .registers 5
    .param p1, "streamType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1485
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1487
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1488
    :catch_9
    move-exception v1

    .line 1489
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getLastAudibleVolumeForVolumeGroup(I)I
    .registers 5
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1791
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1793
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getLastAudibleVolumeForVolumeGroup(I)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1794
    :catch_9
    move-exception v1

    .line 1795
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;)J
    .registers 4
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7044
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7046
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_11

    return-wide v0

    .line 7048
    :catch_11
    move-exception v0

    .line 7049
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1617
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1619
    .local v0, "service":Landroid/media/IAudioService;
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1620
    .local v1, "groupId":I
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getVolumeGroupMaxVolumeIndex(I)I

    move-result v2

    return v2
.end method

.method public whitelist getMicrophones()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MicrophoneInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8278
    .local v0, "microphones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    invoke-static {v0}, Landroid/media/AudioSystem;->getMicrophones(Ljava/util/ArrayList;)I

    move-result v1

    .line 8279
    .local v1, "status":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8280
    .local v2, "filterTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8281
    if-eqz v1, :cond_3d

    .line 8283
    const/4 v3, -0x3

    const-string v4, "AudioManager"

    if-eq v1, v3, :cond_34

    .line 8284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMicrophones failed:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8286
    :cond_34
    const-string v3, "fallback on device info"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8287
    invoke-direct {p0, v0, v2}, Landroid/media/AudioManager;->addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 8288
    return-object v0

    .line 8290
    :cond_3d
    invoke-static {v0}, Landroid/media/AudioManager;->setPortIdForMicrophones(Ljava/util/ArrayList;)V

    .line 8291
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8292
    invoke-direct {p0, v0, v2}, Landroid/media/AudioManager;->addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 8293
    return-object v0
.end method

.method public whitelist getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1635
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1637
    .local v0, "service":Landroid/media/IAudioService;
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1638
    .local v1, "groupId":I
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getVolumeGroupMinVolumeIndex(I)I

    move-result v2

    return v2
.end method

.method public whitelist getMode()I
    .registers 7

    .line 3498
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3500
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_39

    .line 3503
    .local v1, "mode":I
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_12} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_39

    .line 3507
    .local v2, "sdk":I
    goto :goto_17

    .line 3504
    .end local v2    # "sdk":I
    :catch_13
    move-exception v2

    .line 3506
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v2, v3

    .line 3508
    .local v2, "sdk":I
    :goto_17
    const/4 v3, 0x4

    if-ne v1, v3, :cond_20

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_20

    .line 3509
    const/4 v1, 0x2

    goto :goto_38

    .line 3510
    :cond_20
    const/4 v3, 0x5

    const-wide/32 v4, 0xb4b1f8b

    if-ne v1, v3, :cond_2e

    .line 3511
    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 3512
    const/4 v1, 0x2

    goto :goto_38

    .line 3513
    :cond_2e
    const/4 v3, 0x6

    if-ne v1, v3, :cond_38

    .line 3514
    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_35} :catch_39

    if-nez v3, :cond_38

    .line 3515
    const/4 v1, 0x3

    .line 3517
    :cond_38
    :goto_38
    return v1

    .line 3518
    .end local v1    # "mode":I
    .end local v2    # "sdk":I
    :catch_39
    move-exception v1

    .line 3519
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9675
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 9676
    :catch_9
    move-exception v0

    .line 9677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNonDefaultDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/util/List;
    .registers 4
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 2317
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getNonDefaultDevicesForStrategy(I)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return-object v0

    .line 2320
    :catch_10
    move-exception v0

    .line 2321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getOutputLatency(I)I
    .registers 3
    .param p1, "streamType"    # I

    .line 7062
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    move-result v0

    return v0
.end method

.method public whitelist getParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keys"    # Ljava/lang/String;

    .line 3930
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Landroid/media/AudioDeviceAttributes;
    .registers 4
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2195
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/util/List;

    move-result-object v0

    .line 2196
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    :goto_13
    return-object v1
.end method

.method public whitelist getPreferredDevicesForCapturePreset(I)Ljava/util/List;
    .registers 4
    .param p1, "capturePreset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 2646
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2650
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    return-object v0

    .line 2651
    :catch_15
    move-exception v0

    .line 2652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/util/List;
    .registers 4
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 2247
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return-object v0

    .line 2250
    :catch_10
    move-exception v0

    .line 2251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPreferredMixerAttributes(Landroid/media/AudioAttributes;Landroid/media/AudioDeviceInfo;)Landroid/media/AudioMixerAttributes;
    .registers 8
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "device"    # Landroid/media/AudioDeviceInfo;

    .line 10007
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10008
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10010
    .local v0, "mixerAttrList":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioMixerAttributes;>;"
    nop

    .line 10011
    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    .line 10010
    invoke-static {p1, v1, v0}, Landroid/media/AudioSystem;->getPreferredMixerAttributes(Landroid/media/AudioAttributes;ILjava/util/List;)I

    move-result v1

    .line 10012
    .local v1, "ret":I
    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 10013
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_25

    :cond_1e
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioMixerAttributes;

    :goto_25
    return-object v2

    .line 10015
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed calling getPreferredMixerAttributes, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10016
    return-object v2
.end method

.method public whitelist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 6955
    const-string v0, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 6956
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v0

    .line 6957
    .local v0, "outputSampleRate":I
    if-lez v0, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_13
    return-object v1

    .line 6958
    .end local v0    # "outputSampleRate":I
    :cond_14
    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6959
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    move-result v0

    .line 6960
    .local v0, "outputFramesPerBuffer":I
    if-lez v0, :cond_26

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_26
    return-object v1

    .line 6961
    .end local v0    # "outputFramesPerBuffer":I
    :cond_27
    const-string v0, "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 6964
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6966
    :cond_43
    const-string v0, "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 6967
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6969
    :cond_5f
    const-string v0, "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 6970
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6974
    :cond_7b
    return-object v1
.end method

.method public blacklist getRegisteredPolicyMixes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation

    .line 5677
    invoke-static {}, Landroid/media/audiopolicy/Flags;->audioMixTestApi()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5678
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5681
    :cond_b
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5683
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_f
    invoke-interface {v0}, Landroid/media/IAudioService;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 5684
    :catch_14
    move-exception v1

    .line 5685
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getReportedSurroundFormats()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8658
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 8659
    :catch_9
    move-exception v0

    .line 8660
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRingerMode()I
    .registers 4

    .line 1182
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1184
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerModeExternal()I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1185
    :catch_9
    move-exception v1

    .line 1186
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getRingerModeInternal()I
    .registers 3

    .line 7517
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerModeInternal()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7518
    :catch_9
    move-exception v0

    .line 7519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 3

    .line 6895
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 6896
    :catch_9
    move-exception v0

    .line 6897
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRouting(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3738
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getRs2Value()F
    .registers 3

    .line 7200
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getOutputRs2UpperBound()F

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7201
    :catch_9
    move-exception v0

    .line 7202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSpatializer()Landroid/media/Spatializer;
    .registers 2

    .line 3093
    new-instance v0, Landroid/media/Spatializer;

    invoke-direct {v0, p0}, Landroid/media/Spatializer;-><init>(Landroid/media/AudioManager;)V

    return-object v0
.end method

.method public whitelist getStreamMaxVolume(I)I
    .registers 6
    .param p1, "streamType"    # I

    .line 1338
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->cacheGetStreamMinMaxVolume()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1339
    iget-object v0, p0, Landroid/media/AudioManager;->mVolMaxCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/media/AudioManager$VolumeCacheQuery;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Landroid/media/AudioManager$VolumeCacheQuery;-><init>(IILandroid/media/AudioManager-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1341
    :cond_1a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1343
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_1e
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_23

    return v1

    .line 1344
    :catch_23
    move-exception v1

    .line 1345
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getStreamMinVolume(I)I
    .registers 5
    .param p1, "streamType"    # I

    .line 1359
    invoke-static {p1}, Landroid/media/AudioManager;->isPublicStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1362
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v0

    return v0

    .line 1360
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getStreamMinVolumeInt(I)I
    .registers 6
    .param p1, "streamType"    # I

    .line 1374
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->cacheGetStreamMinMaxVolume()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1375
    iget-object v0, p0, Landroid/media/AudioManager;->mVolMinCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/media/AudioManager$VolumeCacheQuery;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Landroid/media/AudioManager$VolumeCacheQuery;-><init>(IILandroid/media/AudioManager-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1377
    :cond_1a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1379
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_1e
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_23

    return v1

    .line 1380
    :catch_23
    move-exception v1

    .line 1381
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getStreamTypeAlias(I)I
    .registers 5
    .param p1, "sourceStreamType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10320
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10322
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamTypeAlias(I)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 10323
    :catch_9
    move-exception v1

    .line 10324
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getStreamVolume(I)I
    .registers 6
    .param p1, "streamType"    # I

    .line 1394
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->cacheGetStreamVolume()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1395
    iget-object v0, p0, Landroid/media/AudioManager;->mVolCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/media/AudioManager$VolumeCacheQuery;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Landroid/media/AudioManager$VolumeCacheQuery;-><init>(IILandroid/media/AudioManager-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1397
    :cond_1a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1399
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_1e
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_23

    return v1

    .line 1400
    :catch_23
    move-exception v1

    .line 1401
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getStreamVolumeDb(III)F
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "deviceType"    # I

    .line 1437
    invoke-static {p1}, Landroid/media/AudioManager;->isPublicStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1440
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-gt p2, v0, :cond_45

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    if-lt p2, v0, :cond_45

    .line 1443
    invoke-static {p3}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeOut(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1446
    nop

    .line 1447
    invoke-static {p3}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 1446
    invoke-static {p1, p2, v0}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v0

    .line 1448
    .local v0, "gain":F
    const v1, -0x3bc28000    # -758.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2b

    .line 1449
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    return v1

    .line 1451
    :cond_2b
    return v0

    .line 1444
    .end local v0    # "gain":F
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio output device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1441
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream volume index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSupportedDeviceTypes(I)Ljava/util/Set;
    .registers 7
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8015
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_2a

    .line 8016
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioManager.getSupportedDeviceTypes(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8017
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - Invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8020
    :cond_2a
    :goto_2a
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 8021
    .local v0, "internalDeviceTypes":Landroid/util/IntArray;
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->getSupportedDeviceTypes(ILandroid/util/IntArray;)I

    move-result v1

    .line 8022
    .local v1, "status":I
    if-eqz v1, :cond_57

    .line 8023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioManager.getSupportedDeviceTypes("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed. status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8028
    :cond_57
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8029
    .local v2, "externalDeviceTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_5d
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_76

    .line 8032
    nop

    .line 8034
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 8033
    invoke-static {v4}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 8032
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8029
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 8037
    .end local v3    # "index":I
    :cond_76
    return-object v2
.end method

.method public whitelist getSupportedMixerAttributes(Landroid/media/AudioDeviceInfo;)Ljava/util/List;
    .registers 4
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioMixerAttributes;",
            ">;"
        }
    .end annotation

    .line 9947
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9949
    .local v0, "mixerAttrs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioMixerAttributes;>;"
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getSupportedMixerAttributes(ILjava/util/List;)I

    move-result v1

    if-nez v1, :cond_14

    .line 9950
    move-object v1, v0

    goto :goto_19

    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9949
    :goto_19
    return-object v1
.end method

.method public whitelist getSupportedSystemUsages()[I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1842
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1844
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getSupportedSystemUsages()[I

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 1845
    :catch_9
    move-exception v1

    .line 1846
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getSurroundFormats()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 8604
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 8605
    :catch_9
    move-exception v0

    .line 8606
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getUiSoundsStreamType()I
    .registers 4

    .line 1500
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1502
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getUiSoundsStreamType()I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1503
    :catch_9
    move-exception v1

    .line 1504
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getVibrateSetting(I)I
    .registers 5
    .param p1, "vibrateType"    # I

    .line 2006
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2008
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 2009
    :catch_9
    move-exception v1

    .line 2010
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getVolumeController()Landroid/media/IVolumeController;
    .registers 3

    .line 7086
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getVolumeController()Landroid/media/IVolumeController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 7087
    :catch_9
    move-exception v0

    .line 7088
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I
    .registers 3
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 1649
    const-string v0, "Audio Attributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;Z)I

    move-result v0

    return v0
.end method

.method public whitelist getVolumeGroupMaxVolumeIndex(I)I
    .registers 5
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1721
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1723
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getVolumeGroupMaxVolumeIndex(I)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1724
    :catch_9
    move-exception v1

    .line 1725
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getVolumeGroupMinVolumeIndex(I)I
    .registers 5
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1745
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1747
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getVolumeGroupMinVolumeIndex(I)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1748
    :catch_9
    move-exception v1

    .line 1749
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getVolumeGroupVolumeIndex(I)I
    .registers 5
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1697
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1699
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getVolumeGroupVolumeIndex(I)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1700
    :catch_9
    move-exception v1

    .line 1701
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1599
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1601
    .local v0, "service":Landroid/media/IAudioService;
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1602
    .local v1, "groupId":I
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getVolumeGroupVolumeIndex(I)I

    move-result v2

    return v2
.end method

.method public blacklist getVolumePolicy()Landroid/media/VolumePolicy;
    .registers 3

    .line 7544
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getVolumePolicy()Landroid/media/VolumePolicy;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 7545
    :catch_9
    move-exception v0

    .line 7546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    .registers 7
    .param p1, "newDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "previousDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "info"    # Landroid/media/BluetoothProfileConnectionInfo;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6884
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6886
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 6889
    nop

    .line 6890
    return-void

    .line 6887
    :catch_9
    move-exception v1

    .line 6888
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist hasRegisteredDynamicPolicy()Z
    .registers 4

    .line 5695
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5697
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->hasRegisteredDynamicPolicy()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 5698
    :catch_9
    move-exception v1

    .line 5699
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o isAudioFocusExclusive()Z
    .registers 4

    .line 3778
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3780
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getCurrentAudioFocus()I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_f

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    .line 3781
    :catch_f
    move-exception v1

    .line 3782
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isAudioServerRunning()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8558
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8560
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->isAudioServerRunning()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 8561
    :catch_9
    move-exception v1

    .line 8562
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isBluetoothA2dpOn()Z
    .registers 4

    .line 3332
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    .line 3334
    return v2

    .line 3335
    :cond_c
    const/16 v0, 0x100

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_15

    .line 3337
    return v2

    .line 3338
    :cond_15
    const/16 v0, 0x200

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1e

    .line 3340
    return v2

    .line 3342
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 7460
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7461
    :catch_9
    move-exception v0

    .line 7462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isBluetoothScoAvailableOffCall()Z
    .registers 3

    .line 3178
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isBluetoothScoOn()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3310
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3312
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->isBluetoothScoOn()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 3313
    :catch_9
    move-exception v1

    .line 3314
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isBluetoothVariableLatencyEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10184
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isBluetoothVariableLatencyEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 10185
    :catch_9
    move-exception v0

    .line 10186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isCallScreeningModeSupported()Z
    .registers 4

    .line 3601
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3603
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->isCallScreeningModeSupported()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 3604
    :catch_9
    move-exception v1

    .line 3605
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isCsdAsAFeatureAvailable()Z
    .registers 3

    .line 7306
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isCsdAsAFeatureAvailable()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7307
    :catch_9
    move-exception v0

    .line 7308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isCsdAsAFeatureEnabled()Z
    .registers 3

    .line 7320
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isCsdAsAFeatureEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7321
    :catch_9
    move-exception v0

    .line 7322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isCsdEnabled()Z
    .registers 3

    .line 7291
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isCsdEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7292
    :catch_9
    move-exception v0

    .line 7293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isHdmiSystemAudioSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7574
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7575
    :catch_9
    move-exception v0

    .line 7576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isHomeSoundEffectEnabled()Z
    .registers 3

    .line 4136
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHomeSoundEffectEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 4137
    :catch_9
    move-exception v0

    .line 4138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isHotwordStreamSupported(Z)Z
    .registers 4
    .param p1, "lookbackAudio"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8711
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isHotwordStreamSupported(Z)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 8712
    :catch_9
    move-exception v0

    .line 8713
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public greylist isMasterMute()Z
    .registers 4

    .line 1934
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1936
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->isMasterMute()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1937
    :catch_9
    move-exception v1

    .line 1938
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isMicrophoneMute()Z
    .registers 4

    .line 3422
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3424
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->isMicrophoneMuted()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 3425
    :catch_9
    move-exception v1

    .line 3426
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isMusicActive()Z
    .registers 4

    .line 3747
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3749
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->isMusicActive(Z)Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return v1

    .line 3750
    :catch_a
    move-exception v1

    .line 3751
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r isMusicActiveRemotely()Z
    .registers 4

    .line 3763
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3765
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->isMusicActive(Z)Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return v1

    .line 3766
    :catch_a
    move-exception v1

    .line 3767
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isPstnCallAudioInterceptable()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9362
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9364
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->isPstnCallAudioInterceptable()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 9365
    :catch_9
    move-exception v1

    .line 9366
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isRampingRingerEnabled()Z
    .registers 4

    .line 1197
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "apply_ramping_ringer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method public greylist isSilentMode()Z
    .registers 3

    .line 6137
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 6138
    .local v0, "ringerMode":I
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 6141
    .local v1, "silentMode":Z
    :cond_b
    :goto_b
    return v1
.end method

.method public whitelist isSpeakerphoneOn()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2074
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2076
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 2077
    :catch_9
    move-exception v1

    .line 2078
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o isStreamAffectedByMute(I)Z
    .registers 4
    .param p1, "streamType"    # I

    .line 7145
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamAffectedByMute(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7146
    :catch_9
    move-exception v0

    .line 7147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isStreamAffectedByRingerMode(I)Z
    .registers 4
    .param p1, "streamType"    # I

    .line 7133
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7134
    :catch_9
    move-exception v0

    .line 7135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isStreamMutableByUi(I)Z
    .registers 4
    .param p1, "streamType"    # I

    .line 7162
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamMutableByUi(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7163
    :catch_9
    move-exception v0

    .line 7164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isStreamMute(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .line 1919
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1921
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1922
    :catch_9
    move-exception v1

    .line 1923
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isSurroundFormatEnabled(I)Z
    .registers 4
    .param p1, "audioFormat"    # I

    .line 8641
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isSurroundFormatEnabled(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 8642
    :catch_9
    move-exception v0

    .line 8643
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUltrasoundSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8690
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isUltrasoundSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 8691
    :catch_9
    move-exception v0

    .line 8692
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isVolumeControlUsingVolumeGroups()Z
    .registers 4

    .line 10337
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10339
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->isVolumeControlUsingVolumeGroups()Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 10340
    :catch_9
    move-exception v1

    .line 10341
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isVolumeFixed()Z
    .registers 5

    .line 1043
    const/4 v0, 0x0

    .line 1045
    .local v0, "res":Z
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->isVolumeFixed()Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    .line 1048
    goto :goto_13

    .line 1046
    :catch_b
    move-exception v1

    .line 1047
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error querying isVolumeFixed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1049
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return v0
.end method

.method public whitelist isVolumeGroupMuted(I)Z
    .registers 5
    .param p1, "groupId"    # I

    .line 1809
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1811
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isVolumeGroupMuted(I)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1812
    :catch_9
    move-exception v1

    .line 1813
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isWiredHeadsetOn()Z
    .registers 3

    .line 3365
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 3367
    const/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 3369
    const/high16 v0, 0x4000000

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 3371
    const/4 v0, 0x0

    return v0

    .line 3373
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist loadSoundEffects()V
    .registers 4

    .line 4238
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4240
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 4243
    nop

    .line 4244
    return-void

    .line 4241
    :catch_9
    move-exception v1

    .line 4242
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist lowerVolumeToRs1()V
    .registers 3

    .line 7186
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->lowerVolumeToRs1(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 7189
    nop

    .line 7190
    return-void

    .line 7187
    :catch_f
    move-exception v0

    .line 7188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "usagesToMute"    # [I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "timeout"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 9646
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2d

    .line 9649
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9650
    array-length v0, p1

    if-eqz v0, :cond_25

    .line 9653
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9654
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9656
    :try_start_12
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/media/IAudioService;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1f

    .line 9659
    nop

    .line 9660
    return-void

    .line 9657
    :catch_1f
    move-exception v0

    .line 9658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9651
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of usages to mute cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9647
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 5
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .line 7100
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7103
    nop

    .line 7104
    return-void

    .line 7101
    :catch_9
    move-exception v0

    .line 7102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist permissionUpdateBarrier()V
    .registers 4

    .line 10276
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10278
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->permissionUpdateBarrier()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 10281
    nop

    .line 10282
    return-void

    .line 10279
    :catch_9
    move-exception v1

    .line 10280
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist playSoundEffect(I)V
    .registers 3
    .param p1, "effectType"    # I

    .line 4149
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 4150
    return-void
.end method

.method public whitelist playSoundEffect(IF)V
    .registers 6
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .line 4187
    if-ltz p1, :cond_1d

    const/16 v0, 0x10

    if-lt p1, v0, :cond_7

    goto :goto_1d

    .line 4191
    :cond_7
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->delegateSoundEffectToVdm(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4192
    return-void

    .line 4195
    :cond_e
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4197
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    .line 4200
    nop

    .line 4201
    return-void

    .line 4198
    :catch_17
    move-exception v1

    .line 4199
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4188
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public greylist-max-o playSoundEffect(II)V
    .registers 6
    .param p1, "effectType"    # I
    .param p2, "userId"    # I

    .line 4161
    if-ltz p1, :cond_1d

    const/16 v0, 0x10

    if-lt p1, v0, :cond_7

    goto :goto_1d

    .line 4165
    :cond_7
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->delegateSoundEffectToVdm(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4166
    return-void

    .line 4169
    :cond_e
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4171
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->playSoundEffect(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    .line 4174
    nop

    .line 4175
    return-void

    .line 4172
    :catch_17
    move-exception v1

    .line 4173
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4162
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public greylist-max-o preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .line 1013
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1014
    .local v0, "keyCode":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_20

    const/16 v1, 0x18

    if-eq v0, v1, :cond_20

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_20

    .line 1016
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x12c

    cmp-long v1, v3, v1

    if-lez v1, :cond_20

    .line 1021
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 1024
    :cond_20
    return-void
.end method

.method public whitelist registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/AudioDeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 8173
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8174
    if-eqz p1, :cond_37

    :try_start_5
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 8175
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_26

    .line 8176
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    if-nez v1, :cond_21

    .line 8177
    new-instance v1, Landroid/media/AudioManager$OnAmPortUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 8179
    :cond_21
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 8181
    :cond_26
    new-instance v1, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 8183
    .local v1, "delegate":Landroid/media/AudioManager$NativeEventHandlerDelegate;
    iget-object v2, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8184
    invoke-virtual {v1}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/AudioManager;->broadcastDeviceListChange_sync(Landroid/os/Handler;)V

    .line 8186
    .end local v1    # "delegate":Landroid/media/AudioManager$NativeEventHandlerDelegate;
    :cond_37
    monitor-exit v0

    .line 8187
    return-void

    .line 8186
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public greylist-max-o registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V
    .registers 6
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;

    .line 4515
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4516
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/media/AudioManager$FocusRequestInfo;

    if-nez v0, :cond_a

    const/4 v2, 0x0

    goto :goto_13

    .line 4517
    :cond_a
    new-instance v2, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    invoke-virtual {v2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    :goto_13
    invoke-direct {v1, p1, v2}, Landroid/media/AudioManager$FocusRequestInfo;-><init>(Landroid/media/AudioFocusRequest;Landroid/os/Handler;)V

    .line 4518
    .local v1, "fri":Landroid/media/AudioManager$FocusRequestInfo;
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    .line 4519
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4520
    return-void
.end method

.method public whitelist registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V
    .registers 8
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5754
    if-eqz p1, :cond_56

    .line 5758
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5760
    :try_start_5
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-nez v1, :cond_10

    .line 5761
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    .line 5763
    :cond_10
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5764
    .local v1, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasPlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 5765
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    new-instance v3, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    new-instance v4, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v4, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5766
    invoke-virtual {v4}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;-><init>(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 5765
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5767
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_53

    .line 5768
    .local v2, "newCbCount":I
    if-nez v1, :cond_49

    if-lez v2, :cond_49

    .line 5771
    :try_start_39
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_43
    .catchall {:try_start_39 .. :try_end_42} :catchall_53

    .line 5774
    goto :goto_49

    .line 5772
    :catch_43
    move-exception v3

    .line 5773
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_44
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioPlaybackCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v4

    .line 5776
    .end local v2    # "newCbCount":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioPlaybackCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_49
    :goto_49
    goto :goto_51

    .line 5777
    :cond_4a
    const-string v2, "AudioManager"

    const-string v3, "attempt to call registerAudioPlaybackCallback() on a previouslyregistered callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5780
    .end local v1    # "oldCbCount":I
    :goto_51
    monitor-exit v0

    .line 5781
    return-void

    .line 5780
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_53

    throw v1

    .line 5755
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPlaybackCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I
    .registers 3
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5597
    invoke-static {p1}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0
.end method

.method public greylist registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .registers 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 7779
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    .line 7780
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 7781
    return-void
.end method

.method public whitelist registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V
    .registers 9
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5944
    if-eqz p1, :cond_56

    .line 5948
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5950
    :try_start_5
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-nez v1, :cond_10

    .line 5951
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    .line 5953
    :cond_10
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5954
    .local v1, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 5955
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    new-instance v3, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    new-instance v4, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v4, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5956
    invoke-virtual {v4}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/media/AudioManager$AudioRecordingCallbackInfo;-><init>(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    .line 5955
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5957
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5958
    .local v2, "newCbCount":I
    if-nez v1, :cond_49

    if-lez v2, :cond_49

    .line 5960
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_53

    .line 5962
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_3d
    iget-object v4, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_53

    .line 5965
    goto :goto_49

    .line 5963
    :catch_43
    move-exception v4

    .line 5964
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_44
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v5

    .line 5967
    .end local v2    # "newCbCount":I
    .end local v3    # "service":Landroid/media/IAudioService;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_49
    :goto_49
    goto :goto_51

    .line 5968
    :cond_4a
    const-string v2, "AudioManager"

    const-string v3, "attempt to call registerAudioRecordingCallback() on a previouslyregistered callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    .end local v1    # "oldCbCount":I
    :goto_51
    monitor-exit v0

    .line 5972
    return-void

    .line 5971
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_53

    throw v1

    .line 5945
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5443
    if-nez p1, :cond_3

    .line 5444
    return-void

    .line 5446
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5447
    return-void
.end method

.method public whitelist registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5411
    if-nez p1, :cond_3

    .line 5412
    return-void

    .line 5414
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5415
    const-string v0, "AudioManager"

    const-string v1, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    return-void

    .line 5420
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5422
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5423
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 5426
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5427
    return-void
.end method

.method public greylist-max-o registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;

    .line 5454
    if-nez p1, :cond_a

    .line 5455
    const-string v0, "AudioManager"

    const-string v1, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    return-void

    .line 5458
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 5459
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 5460
    return-void
.end method

.method public whitelist registerMuteAwaitConnectionCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V
    .registers 12
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9775
    iget-object v1, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9777
    :try_start_3
    const-string v2, "registerMuteAwaitConnectionCallback"

    iget-object v5, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/media/AudioManager;->mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    new-instance v7, Landroid/media/AudioManager$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioManager;)V

    new-instance v8, Landroid/media/AudioManager$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Landroid/media/AudioManager$$ExternalSyntheticLambda2;-><init>()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_27

    .line 9778
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "callback":Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    :try_start_15
    invoke-static/range {v2 .. v8}, Landroid/media/CallbackUtil;->addListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object p1

    .line 9783
    .local p1, "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/AudioManager$MuteAwaitConnectionCallback;>;>;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;>;"
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    .line 9784
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    iput-object p2, p0, Landroid/media/AudioManager;->mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    .line 9785
    .end local p1    # "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/AudioManager$MuteAwaitConnectionCallback;>;>;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;>;"
    monitor-exit v1

    .line 9786
    return-void

    .line 9785
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    .local p1, "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    :catchall_27
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object p1, v0

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "callback":Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2d

    throw p1

    :catchall_2d
    move-exception v0

    move-object p1, v0

    goto :goto_2b
.end method

.method public whitelist registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 3
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5515
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 5518
    :cond_9
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    .line 5519
    return-void

    .line 5516
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist registerRemoteController(Landroid/media/RemoteController;)Z
    .registers 3
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5555
    if-nez p1, :cond_4

    .line 5556
    const/4 v0, 0x0

    return v0

    .line 5558
    :cond_4
    invoke-virtual {p1}, Landroid/media/RemoteController;->startListeningToSessions()V

    .line 5559
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerVolumeGroupCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$VolumeGroupCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/AudioManager$VolumeGroupCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8794
    iget-object v0, p0, Landroid/media/AudioManager;->mVolumeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda9;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "registerVolumeGroupCallback"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 8796
    return-void
.end method

.method public greylist-max-r reloadAudioSettings()V
    .registers 4

    .line 6113
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6115
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 6118
    nop

    .line 6119
    return-void

    .line 6116
    :catch_9
    move-exception v1

    .line 6117
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeAssistantServicesUids([I)V
    .registers 4
    .param p1, "assistantUids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9837
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->removeAssistantServicesUids([I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 9840
    nop

    .line 9841
    return-void

    .line 9838
    :catch_9
    move-exception v0

    .line 9839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeDeviceAsNonDefaultForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z
    .registers 5
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2294
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    :try_start_6
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/media/IAudioService;->removeDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_18

    .line 2299
    .local v0, "status":I
    if-nez v0, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    .line 2300
    .end local v0    # "status":I
    :catch_18
    move-exception v0

    .line 2301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOnCommunicationDeviceChangedListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 9319
    iget-object v0, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnCommunicationDeviceChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9321
    return-void
.end method

.method public whitelist removeOnDevicesForAttributesChangedListener(Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6601
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6603
    iget-object v0, p0, Landroid/media/AudioManager;->mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 6604
    :try_start_6
    iget-object v1, p0, Landroid/media/AudioManager;->mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6605
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;

    .line 6606
    .local v1, "callbackStub":Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;
    if-eqz v1, :cond_15

    .line 6607
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->register(ZLandroid/media/AudioAttributes;)V

    .line 6610
    :cond_15
    iget-object v2, p0, Landroid/media/AudioManager;->mDevicesForAttributesListenerToStub:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6611
    nop

    .end local v1    # "callbackStub":Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;
    monitor-exit v0

    .line 6612
    return-void

    .line 6611
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnModeChangedListener;

    .line 3583
    iget-object v0, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnModeChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3584
    return-void
.end method

.method public whitelist removeOnNonDefaultDevicesForStrategyChangedListener(Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2515
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    iget-object v0, p0, Landroid/media/AudioManager;->mNonDefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnNonDefaultDevicesForStrategyChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2518
    return-void
.end method

.method public whitelist removeOnPreferredDeviceForStrategyChangedListener(Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2418
    return-void
.end method

.method public whitelist removeOnPreferredDevicesForCapturePresetChangedListener(Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2744
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->removeOnDevRoleForCapturePresetChangedListener(Ljava/lang/Object;I)I

    move-result v0

    .line 2747
    .local v0, "status":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 2751
    const/4 v1, -0x2

    if-eq v0, v1, :cond_f

    .line 2756
    return-void

    .line 2752
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to call removeOnPreferredDevicesForCapturePresetChangedListener() on an unregistered listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2749
    :cond_17
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown error happened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist removeOnPreferredDevicesForStrategyChangedListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2449
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnPreferredDevicesForStrategyChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2452
    return-void
.end method

.method public whitelist removeOnPreferredMixerAttributesChangedListener(Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;

    .line 10101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10102
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefMixerAttributesListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnPreferredMixerAttributesChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10104
    return-void
.end method

.method public whitelist removeOnStreamAliasingChangedListener(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "onStreamAliasingChangedListener"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10246
    iget-object v0, p0, Landroid/media/AudioManager;->mStreamAliasingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnStreamAliasingChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10248
    return-void
.end method

.method public whitelist removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z
    .registers 4
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2170
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->removePreferredDevicesForStrategy(I)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_15

    .line 2174
    .local v0, "status":I
    if-nez v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 2175
    .end local v0    # "status":I
    :catch_15
    move-exception v0

    .line 2176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    .registers 3
    .param p1, "focusRequest"    # Landroid/media/AudioFocusRequest;

    .line 4684
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I
    .registers 16
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;
    .param p2, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5019
    if-eqz p1, :cond_85

    .line 5023
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->locksFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_b

    goto :goto_13

    .line 5024
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null audio policy when locking audio focus"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5028
    :cond_13
    :goto_13
    invoke-direct {p0}, Landroid/media/AudioManager;->hasCustomPolicyVirtualDeviceContext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5034
    const/4 v0, 0x1

    return v0

    .line 5037
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V

    .line 5038
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5042
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_22
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2c} :catch_2e

    .line 5046
    .local v0, "sdk":I
    move v11, v0

    goto :goto_32

    .line 5043
    .end local v0    # "sdk":I
    :catch_2e
    move-exception v0

    .line 5045
    .local v0, "e":Ljava/lang/NullPointerException;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move v11, v2

    .line 5048
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v11, "sdk":I
    :goto_32
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v6

    .line 5050
    .local v6, "clientId":Ljava/lang/String;
    iget-object v12, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 5054
    :try_start_3d
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 5055
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v3

    iget-object v4, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 5058
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 5059
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 5060
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFlags()I

    move-result v9

    .line 5061
    if-eqz p2, :cond_64

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    goto :goto_65

    :cond_64
    const/4 v0, 0x0

    :goto_65
    move-object v10, v0

    .line 5054
    invoke-interface/range {v1 .. v11}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_6a} :catch_7d
    .catchall {:try_start_3d .. :try_end_6a} :catchall_7b

    .line 5065
    .local v0, "status":I
    nop

    .line 5066
    const/16 v2, 0x64

    if-eq v0, v2, :cond_71

    .line 5068
    :try_start_6f
    monitor-exit v12

    return v0

    .line 5070
    :cond_71
    invoke-direct {p0, v6}, Landroid/media/AudioManager;->addClientIdToFocusReceiverLocked(Ljava/lang/String;)Landroid/media/AudioManager$BlockingFocusResultReceiver;

    move-result-object v2

    .line 5071
    .local v2, "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    monitor-exit v12
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_7b

    .line 5073
    invoke-direct {p0, v6, v2, p1}, Landroid/media/AudioManager;->handleExternalAudioPolicyWaitIfNeeded(Ljava/lang/String;Landroid/media/AudioManager$BlockingFocusResultReceiver;Landroid/media/AudioFocusRequest;)I

    move-result v3

    return v3

    .line 5071
    .end local v0    # "status":I
    .end local v2    # "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    :catchall_7b
    move-exception v0

    goto :goto_83

    .line 5063
    :catch_7d
    move-exception v0

    .line 5064
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7e
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v6    # "clientId":Ljava/lang/String;
    .end local v11    # "sdk":I
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "afr":Landroid/media/AudioFocusRequest;
    .end local p2    # "ap":Landroid/media/audiopolicy/AudioPolicy;
    throw v2

    .line 5071
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "service":Landroid/media/IAudioService;
    .restart local v6    # "clientId":Ljava/lang/String;
    .restart local v11    # "sdk":I
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "afr":Landroid/media/AudioFocusRequest;
    .restart local p2    # "ap":Landroid/media/audiopolicy/AudioPolicy;
    :goto_83
    monitor-exit v12
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_7b

    throw v0

    .line 5020
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v6    # "clientId":Ljava/lang/String;
    .end local v11    # "sdk":I
    :cond_85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioFocusRequest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .registers 8
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    .line 4604
    const-string v0, "requestAudioFocus()"

    const-string v1, "AudioManager"

    invoke-static {p2, v1, v0}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 4606
    const/4 v0, 0x0

    .line 4612
    .local v0, "status":I
    :try_start_8
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4614
    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 4612
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, p3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_1a} :catch_1c

    move v0, v1

    .line 4619
    goto :goto_22

    .line 4617
    :catch_1c
    move-exception v2

    .line 4618
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Audio focus request denied due to "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4621
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_22
    return v0
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .registers 12
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "focusReqType"    # I
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4740
    and-int/lit8 v0, p4, 0x3

    if-ne p4, v0, :cond_10

    .line 4744
    and-int/lit8 v5, p4, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .end local p2    # "requestAttributes":Landroid/media/AudioAttributes;
    .end local p3    # "focusReqType":I
    .local v2, "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .local v3, "requestAttributes":Landroid/media/AudioAttributes;
    .local v4, "focusReqType":I
    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I

    move-result p1

    return p1

    .line 4741
    .end local v2    # "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .end local v3    # "requestAttributes":Landroid/media/AudioAttributes;
    .end local v4    # "focusReqType":I
    .restart local p1    # "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .restart local p2    # "requestAttributes":Landroid/media/AudioAttributes;
    .restart local p3    # "focusReqType":I
    :cond_10
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .end local p2    # "requestAttributes":Landroid/media/AudioAttributes;
    .end local p3    # "focusReqType":I
    .restart local v2    # "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .restart local v3    # "requestAttributes":Landroid/media/AudioAttributes;
    .restart local v4    # "focusReqType":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flags 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4742
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I
    .registers 12
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "focusReqType"    # I
    .param p4, "flags"    # I
    .param p5, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4785
    if-eqz p2, :cond_9d

    .line 4788
    invoke-static {p3}, Landroid/media/AudioFocusRequest;->isValidFocusGain(I)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 4791
    and-int/lit8 v0, p4, 0x7

    if-ne p4, v0, :cond_74

    .line 4795
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    if-eqz p1, :cond_14

    goto :goto_1c

    .line 4796
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null focus listener when flagged as accepting delayed focus grant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4799
    :cond_1c
    :goto_1c
    and-int/lit8 v0, p4, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2c

    if-eqz p1, :cond_24

    goto :goto_2c

    .line 4801
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null focus listener when flagged as pausing instead of ducking"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4804
    :cond_2c
    :goto_2c
    and-int/lit8 v0, p4, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3c

    if-eqz p5, :cond_34

    goto :goto_3c

    .line 4805
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null audio policy when locking audio focus"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4809
    :cond_3c
    :goto_3c
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 4810
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListenerInt(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 4811
    invoke-virtual {v0, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    and-int/lit8 v4, p4, 0x1

    const/4 v5, 0x0

    if-ne v4, v1, :cond_51

    move v4, v1

    goto :goto_52

    :cond_51
    move v4, v5

    .line 4812
    :goto_52
    invoke-virtual {v0, v4}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    and-int/lit8 v4, p4, 0x2

    if-ne v4, v2, :cond_5c

    move v2, v1

    goto :goto_5d

    :cond_5c
    move v2, v5

    .line 4814
    :goto_5d
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    and-int/lit8 v2, p4, 0x4

    if-ne v2, v3, :cond_66

    goto :goto_67

    :cond_66
    move v1, v5

    .line 4816
    :goto_67
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setLocksFocus(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 4817
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 4818
    .local v0, "afr":Landroid/media/AudioFocusRequest;
    invoke-virtual {p0, v0, p5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v1

    return v1

    .line 4792
    .end local v0    # "afr":Landroid/media/AudioFocusRequest;
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4793
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4789
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid duration hint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4786
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r requestAudioFocusForCall(II)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "focusReqType"    # I

    .line 5184
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5186
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5187
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const-string v6, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 5190
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 5191
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_25} :catch_32

    .line 5186
    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v3, p2

    .end local p2    # "focusReqType":I
    .local v3, "focusReqType":I
    :try_start_2a
    invoke-interface/range {v1 .. v11}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2f

    .line 5196
    nop

    .line 5197
    return-void

    .line 5194
    :catch_2f
    move-exception v0

    move-object p2, v0

    goto :goto_35

    .end local v3    # "focusReqType":I
    .restart local p2    # "focusReqType":I
    :catch_32
    move-exception v0

    move v3, p2

    move-object p2, v0

    .line 5195
    .restart local v3    # "focusReqType":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_35
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist requestAudioFocusForTest(Landroid/media/AudioFocusRequest;Ljava/lang/String;II)I
    .registers 17
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;
    .param p2, "clientFakeId"    # Ljava/lang/String;
    .param p3, "clientFakeUid"    # I
    .param p4, "clientTargetSdk"    # I

    .line 4836
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4837
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4840
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4842
    :try_start_9
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 4843
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const-string v8, "com.android.test.fakeclient"

    .line 4847
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFlags()I

    move-result v0

    or-int/lit8 v9, v0, 0x8

    .line 4842
    move-object v7, p2

    move v10, p3

    move/from16 v11, p4

    invoke-interface/range {v2 .. v11}, Landroid/media/IAudioService;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_3c
    .catchall {:try_start_9 .. :try_end_29} :catchall_3a

    .line 4851
    .local v0, "status":I
    nop

    .line 4852
    const/16 v2, 0x64

    if-eq v0, v2, :cond_30

    .line 4854
    :try_start_2e
    monitor-exit v1

    return v0

    .line 4857
    :cond_30
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->addClientIdToFocusReceiverLocked(Ljava/lang/String;)Landroid/media/AudioManager$BlockingFocusResultReceiver;

    move-result-object v2

    .line 4858
    .local v2, "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3a

    .line 4860
    invoke-direct {p0, p2, v2, p1}, Landroid/media/AudioManager;->handleExternalAudioPolicyWaitIfNeeded(Ljava/lang/String;Landroid/media/AudioManager$BlockingFocusResultReceiver;Landroid/media/AudioFocusRequest;)I

    move-result v1

    return v1

    .line 4858
    .end local v0    # "status":I
    .end local v2    # "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    :catchall_3a
    move-exception v0

    goto :goto_42

    .line 4849
    :catch_3c
    move-exception v0

    .line 4850
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "afr":Landroid/media/AudioFocusRequest;
    .end local p2    # "clientFakeId":Ljava/lang/String;
    .end local p3    # "clientFakeUid":I
    .end local p4    # "clientTargetSdk":I
    throw v2

    .line 4858
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "afr":Landroid/media/AudioFocusRequest;
    .restart local p2    # "clientFakeId":Ljava/lang/String;
    .restart local p3    # "clientFakeUid":I
    .restart local p4    # "clientTargetSdk":I
    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_3a

    throw v0
.end method

.method public blacklist setA2dpSuspended(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3896
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3898
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setA2dpSuspended(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 3901
    nop

    .line 3902
    return-void

    .line 3899
    :catch_9
    move-exception v1

    .line 3900
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setActiveAssistantServiceUids([I)V
    .registers 4
    .param p1, "assistantUids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9887
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setActiveAssistantServiceUids([I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 9890
    nop

    .line 9891
    return-void

    .line 9888
    :catch_9
    move-exception v0

    .line 9889
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;J)Z
    .registers 6
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .param p2, "delayMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7003
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7005
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1, p2, p3}, Landroid/media/IAudioService;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_11

    return v0

    .line 7007
    :catch_11
    move-exception v0

    .line 7008
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAllowedCapturePolicy(I)V
    .registers 7
    .param p1, "capturePolicy"    # I

    .line 2109
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2111
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setAllowedCapturePolicy(I)I

    move-result v1

    .line 2112
    .local v1, "result":I
    if-eqz v1, :cond_23

    .line 2113
    const-string v2, "AudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not setAllowedCapturePolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_25

    .line 2114
    return-void

    .line 2118
    .end local v1    # "result":I
    :cond_23
    nop

    .line 2119
    return-void

    .line 2116
    :catch_25
    move-exception v1

    .line 2117
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAudioServerStateCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioServerStateCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "stateCallback"    # Landroid/media/AudioManager$AudioServerStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8506
    if-eqz p2, :cond_34

    .line 8509
    if-eqz p1, :cond_2c

    .line 8514
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8515
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    if-nez v1, :cond_21

    .line 8519
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_29

    .line 8521
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_f
    iget-object v2, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1b
    .catchall {:try_start_f .. :try_end_14} :catchall_29

    .line 8524
    nop

    .line 8525
    :try_start_15
    iput-object p1, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    .line 8526
    iput-object p2, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    .line 8527
    .end local v1    # "service":Landroid/media/IAudioService;
    monitor-exit v0

    .line 8528
    return-void

    .line 8522
    .restart local v1    # "service":Landroid/media/IAudioService;
    :catch_1b
    move-exception v2

    .line 8523
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "stateCallback":Landroid/media/AudioManager$AudioServerStateCallback;
    throw v3

    .line 8516
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "stateCallback":Landroid/media/AudioManager$AudioServerStateCallback;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setAudioServerStateCallback called with already registered callabck"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "stateCallback":Landroid/media/AudioManager$AudioServerStateCallback;
    throw v1

    .line 8527
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "stateCallback":Landroid/media/AudioManager$AudioServerStateCallback;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw v1

    .line 8510
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the AudioServerStateCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8507
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioServerStateCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBluetoothA2dpOn(Z)V
    .registers 2
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3322
    return-void
.end method

.method public blacklist setBluetoothAudioDeviceCategory(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "btAudioDeviceCategory"    # I

    .line 7432
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setBluetoothAudioDeviceCategory(Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7433
    :catch_9
    move-exception v0

    .line 7434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBluetoothHeadsetProperties(Ljava/lang/String;ZZ)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hasNrecEnabled"    # Z
    .param p3, "hasWbsEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bt_headset_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";bt_headset_nrec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3886
    const-string v1, "on"

    const-string v2, "off"

    if-eqz p2, :cond_1d

    move-object v3, v1

    goto :goto_1e

    :cond_1d
    move-object v3, v2

    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";bt_wbs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3887
    if-eqz p3, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object v1, v2

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3885
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3888
    return-void
.end method

.method public whitelist setBluetoothScoOn(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 3294
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3296
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 3299
    nop

    .line 3300
    return-void

    .line 3297
    :catch_9
    move-exception v1

    .line 3298
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setBluetoothVariableLatencyEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10170
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setBluetoothVariableLatencyEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 10173
    nop

    .line 10174
    return-void

    .line 10171
    :catch_9
    move-exception v0

    .line 10172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 6
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;

    .line 9128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9130
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    if-nez v0, :cond_23

    .line 9131
    const-string v0, "AudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCommunicationDevice: device not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9132
    const/4 v0, 0x0

    return v0

    .line 9134
    :cond_23
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    .line 9135
    invoke-direct {p0}, Landroid/media/AudioManager;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 9134
    invoke-interface {v0, v1, v2, v3}, Landroid/media/IAudioService;->setCommunicationDevice(Landroid/os/IBinder;ILandroid/content/AttributionSource;)Z

    move-result v0
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_35} :catch_36

    return v0

    .line 9136
    :catch_36
    move-exception v0

    .line 9137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCsd(F)V
    .registers 4
    .param p1, "csd"    # F

    .line 7244
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setCsd(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7247
    nop

    .line 7248
    return-void

    .line 7245
    :catch_9
    move-exception v0

    .line 7246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCsdAsAFeatureEnabled(Z)V
    .registers 4
    .param p1, "csdToggleValue"    # Z

    .line 7334
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setCsdAsAFeatureEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7337
    nop

    .line 7338
    return-void

    .line 7335
    :catch_9
    move-exception v0

    .line 7336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDeviceAsNonDefaultForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z
    .registers 5
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2270
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    :try_start_6
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/media/IAudioService;->setDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_18

    .line 2275
    .local v0, "status":I
    if-nez v0, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    .line 2276
    .end local v0    # "status":I
    :catch_18
    move-exception v0

    .line 2277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V
    .registers 6
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "deviceVolumeBehavior"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6760
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6761
    invoke-static {p2}, Landroid/media/AudioDeviceVolumeManager;->enforceValidVolumeBehavior(I)V

    .line 6763
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6765
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_a
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 6766
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6765
    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    .line 6769
    nop

    .line 6770
    return-void

    .line 6767
    :catch_15
    move-exception v1

    .line 6768
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setEnableHardening(Z)V
    .registers 5
    .param p1, "shouldEnable"    # Z

    .line 10376
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10378
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setEnableHardening(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 10381
    nop

    .line 10382
    return-void

    .line 10379
    :catch_9
    move-exception v1

    .line 10380
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setEncodedSurroundMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 8574
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setEncodedSurroundMode(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 8575
    :catch_9
    move-exception v0

    .line 8576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFocusRequestResult(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)V
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .param p3, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5228
    if-eqz p1, :cond_1f

    .line 5231
    if-eqz p3, :cond_17

    .line 5234
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5236
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_8
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    .line 5239
    nop

    .line 5240
    return-void

    .line 5237
    :catch_11
    move-exception v1

    .line 5238
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5232
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5229
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setHdmiSystemAudioSupported(Z)I
    .registers 4
    .param p1, "on"    # Z

    .line 7559
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7560
    :catch_9
    move-exception v0

    .line 7561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setHfpEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3858
    return-void
.end method

.method public blacklist setHfpSamplingRate(I)V
    .registers 4
    .param p1, "rate"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_set_sampling_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3876
    return-void
.end method

.method public blacklist setHfpVolume(I)V
    .registers 4
    .param p1, "volume"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3867
    return-void
.end method

.method public blacklist setHomeSoundEffectEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 4124
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setHomeSoundEffectEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 4127
    goto :goto_9

    .line 4125
    :catch_8
    move-exception v0

    .line 4128
    :goto_9
    return-void
.end method

.method public blacklist setLeAudioSuspended(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3914
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3916
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setLeAudioSuspended(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 3919
    nop

    .line 3920
    return-void

    .line 3917
    :catch_9
    move-exception v1

    .line 3918
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist setMasterMute(ZI)V
    .registers 10
    .param p1, "mute"    # Z
    .param p2, "flags"    # I

    .line 1165
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1167
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1168
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_26

    .line 1167
    move v2, p1

    move v3, p2

    .end local p1    # "mute":Z
    .end local p2    # "flags":I
    .local v2, "mute":Z
    .local v3, "flags":I
    :try_start_1e
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_23

    .line 1171
    nop

    .line 1172
    return-void

    .line 1169
    :catch_23
    move-exception v0

    move-object p1, v0

    goto :goto_2a

    .end local v2    # "mute":Z
    .end local v3    # "flags":I
    .restart local p1    # "mute":Z
    .restart local p2    # "flags":I
    :catch_26
    move-exception v0

    move v2, p1

    move v3, p2

    move-object p1, v0

    .line 1170
    .end local p2    # "flags":I
    .restart local v2    # "mute":Z
    .restart local v3    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist setMicrophoneMute(Z)V
    .registers 6
    .param p1, "on"    # Z

    .line 3387
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3389
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3390
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3389
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21

    .line 3393
    nop

    .line 3394
    return-void

    .line 3391
    :catch_21
    move-exception v1

    .line 3392
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r setMicrophoneMuteFromSwitch(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 3408
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3410
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMicrophoneMuteFromSwitch(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 3413
    nop

    .line 3414
    return-void

    .line 3411
    :catch_9
    move-exception v1

    .line 3412
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 3475
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3477
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    .line 3480
    nop

    .line 3481
    return-void

    .line 3478
    :catch_11
    move-exception v1

    .line 3479
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setMultiAudioFocusEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 9050
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMultiAudioFocusEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 9053
    nop

    .line 9054
    return-void

    .line 9051
    :catch_9
    move-exception v0

    .line 9052
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setNavigationRepeatSoundEffectsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 4100
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setNavigationRepeatSoundEffectsEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 4103
    goto :goto_9

    .line 4101
    :catch_8
    move-exception v0

    .line 4104
    :goto_9
    return-void
.end method

.method public blacklist setNotifAliasRingForTest(Z)V
    .registers 5
    .param p1, "isAliased"    # Z

    .line 10259
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10261
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setNotifAliasRingForTest(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 10264
    nop

    .line 10265
    return-void

    .line 10262
    :catch_9
    move-exception v1

    .line 10263
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3838
    return-void
.end method

.method public whitelist setParameters(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 3848
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3849
    return-void
.end method

.method public whitelist setPreferredDeviceForCapturePreset(ILandroid/media/AudioDeviceAttributes;)Z
    .registers 5
    .param p1, "capturePreset"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2609
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->setPreferredDevicesForCapturePreset(ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z
    .registers 5
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2155
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->setPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)Z
    .registers 5
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)Z"
        }
    .end annotation

    .line 2216
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 2222
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2223
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    .end local v1    # "device":Landroid/media/AudioDeviceAttributes;
    goto :goto_10

    .line 2227
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/media/IAudioService;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_32

    .line 2228
    .local v0, "status":I
    if-nez v0, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1

    .line 2229
    .end local v0    # "status":I
    :catch_32
    move-exception v0

    .line 2230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2219
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to set preferred devices for strategy with a empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPreferredMixerAttributes(Landroid/media/AudioAttributes;Landroid/media/AudioDeviceInfo;Landroid/media/AudioMixerAttributes;)Z
    .registers 6
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "device"    # Landroid/media/AudioDeviceInfo;
    .param p3, "mixerAttributes"    # Landroid/media/AudioMixerAttributes;

    .line 9980
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9981
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9982
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9984
    :try_start_9
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9985
    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    .line 9984
    invoke-interface {v0, p1, v1, p3}, Landroid/media/IAudioService;->setPreferredMixerAttributes(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1b

    .line 9986
    .local v0, "status":I
    if-nez v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1

    .line 9987
    .end local v0    # "status":I
    :catch_1b
    move-exception v0

    .line 9988
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRampingRingerEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1209
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1210
    nop

    .line 1209
    const-string v1, "apply_ramping_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1211
    return-void
.end method

.method public whitelist setRingerMode(I)V
    .registers 5
    .param p1, "ringerMode"    # I

    .line 1525
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1526
    return-void

    .line 1528
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1530
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_b
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->setRingerModeExternal(ILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18

    .line 1533
    nop

    .line 1534
    return-void

    .line 1531
    :catch_18
    move-exception v1

    .line 1532
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist setRingerModeInternal(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .line 7504
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->setRingerModeInternal(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 7507
    nop

    .line 7508
    return-void

    .line 7505
    :catch_11
    move-exception v0

    .line 7506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRouting(III)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "routes"    # I
    .param p3, "mask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3725
    return-void
.end method

.method public blacklist setRs2Value(F)V
    .registers 4
    .param p1, "rs2Value"    # F

    .line 7214
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setOutputRs2UpperBound(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7217
    nop

    .line 7218
    return-void

    .line 7215
    :catch_9
    move-exception v0

    .line 7216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSpeakerphoneOn(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2053
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2055
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/media/AudioManager;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Landroid/media/IAudioService;->setSpeakerphoneOn(Landroid/os/IBinder;ZLandroid/content/AttributionSource;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 2058
    nop

    .line 2059
    return-void

    .line 2056
    :catch_f
    move-exception v1

    .line 2057
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setStreamMute(IZ)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1902
    const-string v0, "AudioManager"

    const-string v1, "setStreamMute is deprecated. adjustStreamVolume should be used instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    if-eqz p2, :cond_c

    const/16 v0, -0x64

    goto :goto_e

    :cond_c
    const/16 v0, 0x64

    .line 1904
    .local v0, "direction":I
    :goto_e
    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne p1, v1, :cond_17

    .line 1905
    invoke-virtual {p0, v0, p1, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_1a

    .line 1907
    :cond_17
    invoke-virtual {p0, p1, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1909
    :goto_1a
    return-void
.end method

.method public whitelist setStreamSolo(IZ)V
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1865
    const-string v0, "AudioManager"

    const-string v1, "setStreamSolo has been deprecated. Do not use."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    return-void
.end method

.method public whitelist setStreamVolume(III)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 1554
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1556
    .local v1, "service":Landroid/media/IAudioService;
    nop

    .line 1557
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_20

    .line 1556
    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "streamType":I
    .end local p2    # "index":I
    .end local p3    # "flags":I
    .local v2, "streamType":I
    .local v3, "index":I
    .local v4, "flags":I
    :try_start_18
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    .line 1560
    nop

    .line 1561
    return-void

    .line 1558
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .end local v2    # "streamType":I
    .end local v3    # "index":I
    .end local v4    # "flags":I
    .restart local p1    # "streamType":I
    .restart local p2    # "index":I
    .restart local p3    # "flags":I
    :catch_20
    move-exception v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 1559
    .end local p2    # "index":I
    .end local p3    # "flags":I
    .restart local v2    # "streamType":I
    .restart local v3    # "index":I
    .restart local v4    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist setStreamVolumeForUid(IIILjava/lang/String;III)V
    .registers 17
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "targetSdkVersion"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 9037
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9038
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 9037
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 9041
    nop

    .line 9042
    return-void

    .line 9039
    :catch_15
    move-exception v0

    .line 9040
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSupportedSystemUsages([I)V
    .registers 5
    .param p1, "systemUsages"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1825
    const-string v0, "systemUsages must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1826
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1828
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_9
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSupportedSystemUsages([I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 1831
    nop

    .line 1832
    return-void

    .line 1829
    :catch_e
    move-exception v1

    .line 1830
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setSurroundFormatEnabled(IZ)Z
    .registers 5
    .param p1, "audioFormat"    # I
    .param p2, "enabled"    # Z

    .line 8627
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSurroundFormatEnabled(IZ)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 8628
    :catch_9
    move-exception v0

    .line 8629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V
    .registers 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "connected"    # Z

    .line 6861
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6864
    nop

    .line 6865
    return-void

    .line 6862
    :catch_9
    move-exception v0

    .line 6863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setVibrateSetting(II)V
    .registers 6
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 2033
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2035
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2038
    nop

    .line 2039
    return-void

    .line 2036
    :catch_9
    move-exception v1

    .line 2037
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setVolumeController(Landroid/media/IVolumeController;)V
    .registers 4
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 7072
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7075
    nop

    .line 7076
    return-void

    .line 7073
    :catch_9
    move-exception v0

    .line 7074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setVolumeControllerLongPressTimeoutEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 7121
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setVolumeControllerLongPressTimeoutEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7124
    nop

    .line 7125
    return-void

    .line 7122
    :catch_9
    move-exception v0

    .line 7123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setVolumeGroupVolumeIndex(III)V
    .registers 11
    .param p1, "groupId"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1672
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1674
    .local v1, "service":Landroid/media/IAudioService;
    nop

    .line 1675
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_20

    .line 1674
    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "groupId":I
    .end local p2    # "index":I
    .end local p3    # "flags":I
    .local v2, "groupId":I
    .local v3, "index":I
    .local v4, "flags":I
    :try_start_18
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setVolumeGroupVolumeIndex(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    .line 1678
    nop

    .line 1679
    return-void

    .line 1676
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .end local v2    # "groupId":I
    .end local v3    # "index":I
    .end local v4    # "flags":I
    .restart local p1    # "groupId":I
    .restart local p2    # "index":I
    .restart local p3    # "flags":I
    :catch_20
    move-exception v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 1677
    .end local p2    # "index":I
    .end local p3    # "flags":I
    .restart local v2    # "groupId":I
    .restart local v3    # "index":I
    .restart local v4    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)V
    .registers 6
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1579
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1581
    .local v0, "service":Landroid/media/IAudioService;
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1582
    .local v1, "groupId":I
    invoke-virtual {p0, v1, p2, p3}, Landroid/media/AudioManager;->setVolumeGroupVolumeIndex(III)V

    .line 1583
    return-void
.end method

.method public greylist-max-o setVolumePolicy(Landroid/media/VolumePolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .line 7529
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 7532
    nop

    .line 7533
    return-void

    .line 7530
    :catch_9
    move-exception v0

    .line 7531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .line 6826
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v0, p1, p3, p4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 6827
    .local v0, "attributes":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {p0, v0, p2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 6828
    return-void
.end method

.method public whitelist setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .registers 6
    .param p1, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6841
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6843
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 6844
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6843
    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 6847
    nop

    .line 6848
    return-void

    .line 6845
    :catch_f
    move-exception v1

    .line 6846
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setWiredHeadsetOn(Z)V
    .registers 2
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3353
    return-void
.end method

.method public blacklist shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z
    .registers 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 10359
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10361
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 10362
    :catch_f
    move-exception v1

    .line 10363
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist shouldVibrate(I)Z
    .registers 5
    .param p1, "vibrateType"    # I

    .line 1980
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1982
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1983
    :catch_9
    move-exception v1

    .line 1984
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startBluetoothSco()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3229
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3231
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 3232
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3233
    invoke-direct {p0}, Landroid/media/AudioManager;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 3231
    invoke-interface {v0, v1, v2, v3}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    .line 3236
    nop

    .line 3237
    return-void

    .line 3234
    :catch_19
    move-exception v1

    .line 3235
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r startBluetoothScoVirtualCall()V
    .registers 4

    .line 3256
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3258
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/media/AudioManager;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;Landroid/content/AttributionSource;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 3261
    nop

    .line 3262
    return-void

    .line 3259
    :catch_f
    move-exception v1

    .line 3260
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist stopBluetoothSco()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3276
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3278
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/media/AudioManager;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;Landroid/content/AttributionSource;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 3281
    nop

    .line 3282
    return-void

    .line 3279
    :catch_f
    move-exception v1

    .line 3280
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist supportsBluetoothVariableLatency()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10153
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->supportsBluetoothVariableLatency()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 10154
    :catch_9
    move-exception v0

    .line 10155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unloadSoundEffects()V
    .registers 4

    .line 4252
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4254
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 4257
    nop

    .line 4258
    return-void

    .line 4255
    :catch_9
    move-exception v1

    .line 4256
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/AudioDeviceCallback;

    .line 8196
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8197
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 8198
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8199
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_1d

    .line 8200
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 8203
    :cond_1d
    monitor-exit v0

    .line 8204
    return-void

    .line 8203
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public greylist-max-o unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4529
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4530
    return-void
.end method

.method public whitelist unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V
    .registers 7
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 5789
    if-eqz p1, :cond_45

    .line 5792
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5793
    :try_start_5
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-nez v1, :cond_12

    .line 5794
    const-string v1, "AudioManager"

    const-string v2, "attempt to call unregisterAudioPlaybackCallback() on a callback that was never registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5796
    monitor-exit v0

    return-void

    .line 5798
    :cond_12
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5799
    .local v1, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removePlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 5800
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_42

    .line 5801
    .local v2, "newCbCount":I
    if-lez v1, :cond_38

    if-nez v2, :cond_38

    .line 5804
    :try_start_28
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_32
    .catchall {:try_start_28 .. :try_end_31} :catchall_42

    .line 5807
    goto :goto_38

    .line 5805
    :catch_32
    move-exception v3

    .line 5806
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioPlaybackCallback;
    throw v4

    .line 5809
    .end local v2    # "newCbCount":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioPlaybackCallback;
    :cond_38
    :goto_38
    goto :goto_40

    .line 5810
    :cond_39
    const-string v2, "AudioManager"

    const-string v3, "attempt to call unregisterAudioPlaybackCallback() on a callback already unregistered or never registered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5813
    .end local v1    # "oldCbCount":I
    :goto_40
    monitor-exit v0

    .line 5814
    return-void

    .line 5813
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_42

    throw v1

    .line 5790
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPlaybackCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 5
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5658
    const-string v0, "Illegal null AudioPolicy argument"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5659
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5661
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_9
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->invalidateCaptorsAndInjectors()V

    .line 5662
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 5663
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->reset()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_18

    .line 5666
    nop

    .line 5667
    return-void

    .line 5664
    :catch_18
    move-exception v1

    .line 5665
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5632
    invoke-static {p1}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 5633
    return-void
.end method

.method public greylist unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .registers 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 7789
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 7790
    return-void
.end method

.method public whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 8
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 5980
    if-eqz p1, :cond_3e

    .line 5983
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5984
    :try_start_5
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-nez v1, :cond_b

    .line 5985
    monitor-exit v0

    return-void

    .line 5987
    :cond_b
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5988
    .local v1, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 5989
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5990
    .local v2, "newCbCount":I
    if-lez v1, :cond_31

    if-nez v2, :cond_31

    .line 5992
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_3b

    .line 5994
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_25
    iget-object v4, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3b

    .line 5997
    goto :goto_31

    .line 5995
    :catch_2b
    move-exception v4

    .line 5996
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2c
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    throw v5

    .line 5999
    .end local v2    # "newCbCount":I
    .end local v3    # "service":Landroid/media/IAudioService;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    :cond_31
    :goto_31
    goto :goto_39

    .line 6000
    :cond_32
    const-string v2, "AudioManager"

    const-string v3, "attempt to call unregisterAudioRecordingCallback() on a callback already unregistered or never registered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6003
    .end local v1    # "oldCbCount":I
    :goto_39
    monitor-exit v0

    .line 6004
    return-void

    .line 6003
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3b

    throw v1

    .line 5981
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5491
    if-nez p1, :cond_3

    .line 5492
    return-void

    .line 5494
    :cond_3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 5495
    return-void
.end method

.method public whitelist unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5470
    if-nez p1, :cond_3

    .line 5471
    return-void

    .line 5474
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5476
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5477
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 5480
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 5481
    return-void
.end method

.method public greylist-max-o unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 5501
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 5502
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->removeMediaButtonListener(Landroid/app/PendingIntent;)V

    .line 5503
    return-void
.end method

.method public whitelist unregisterMuteAwaitConnectionCallback(Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9798
    iget-object v0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9800
    :try_start_3
    const-string v1, "unregisterMuteAwaitConnectionCallback"

    iget-object v2, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/media/AudioManager;->mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    new-instance v4, Landroid/media/AudioManager$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Landroid/media/AudioManager$$ExternalSyntheticLambda6;-><init>()V

    .line 9801
    invoke-static {v1, p1, v2, v3, v4}, Landroid/media/CallbackUtil;->removeListener(Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object v1

    .line 9804
    .local v1, "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/AudioManager$MuteAwaitConnectionCallback;>;>;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    .line 9805
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    iput-object v2, p0, Landroid/media/AudioManager;->mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    .line 9806
    .end local v1    # "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/AudioManager$MuteAwaitConnectionCallback;>;>;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;>;"
    monitor-exit v0

    .line 9807
    return-void

    .line 9806
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 3
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5530
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 5533
    :cond_9
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    .line 5534
    return-void

    .line 5531
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist unregisterRemoteController(Landroid/media/RemoteController;)V
    .registers 2
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5574
    if-nez p1, :cond_3

    .line 5575
    return-void

    .line 5577
    :cond_3
    invoke-virtual {p1}, Landroid/media/RemoteController;->stopListeningToSessions()V

    .line 5578
    return-void
.end method

.method public whitelist unregisterVolumeGroupCallback(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/AudioManager$VolumeGroupCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8809
    iget-object v0, p0, Landroid/media/AudioManager;->mVolumeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "unregisterVolumeGroupCallback"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8810
    return-void
.end method
