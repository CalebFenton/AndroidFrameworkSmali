.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$OnAudioFocusChangeListener;,
        Landroid/media/AudioManager$FocusEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAudioPortUpdateListener;,
        Landroid/media/AudioManager$OnAmPortUpdateListener;,
        Landroid/media/AudioManager$NativeEventHandlerDelegate;,
        Landroid/media/AudioManager$1;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_MUTE:I = -0x64

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final ADJUST_TOGGLE_MUTE:I = 0x65

.field public static final ADJUST_UNMUTE:I = 0x64

.field public static final AUDIOFOCUS_FLAGS_APPS:I = 0x3

.field public static final AUDIOFOCUS_FLAGS_SYSTEM:I = 0x7

.field public static final AUDIOFOCUS_FLAG_DELAY_OK:I = 0x1

.field public static final AUDIOFOCUS_FLAG_LOCK:I = 0x4

.field public static final AUDIOFOCUS_FLAG_PAUSES_ON_DUCKABLE_LOSS:I = 0x2

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_NONE:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_DELAYED:I = 0x2

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field static final AUDIOPORT_GENERATION_INIT:I = 0x0

.field public static final AUDIO_SESSION_ID_GENERATE:I = 0x0

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field public static final ERROR_NO_INIT:I = -0x5

.field public static final ERROR_PERMISSION_DENIED:I = -0x4

.field public static final EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field public static final EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field public static final EXTRA_PREV_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_STREAM_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE_ALIAS:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ACTIVE_MEDIA_ONLY:I = 0x200

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40

.field public static final FLAG_FIXED_VOLUME:I = 0x20

.field public static final FLAG_FROM_KEY:I = 0x1000

.field public static final FLAG_HDMI_SYSTEM_AUDIO_VOLUME:I = 0x100

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_SILENT_HINT:I = 0x80

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final FLAG_SHOW_VIBRATE_HINT:I = 0x800

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_INVALID:I = 0x9

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final GET_DEVICES_ALL:I = 0x3

.field public static final GET_DEVICES_INPUTS:I = 0x1

.field public static final GET_DEVICES_OUTPUTS:I = 0x2

.field public static final INTERNAL_RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field private static final MSG_DEVICES_CALLBACK_REGISTERED:I = 0x0

.field private static final MSG_DEVICES_DEVICES_ADDED:I = 0x1

.field private static final MSG_DEVICES_DEVICES_REMOVED:I = 0x2

.field public static final NUM_SOUND_EFFECTS:I = 0xa

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final PROPERTY_SUPPORT_MIC_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

.field public static final PROPERTY_SUPPORT_SPEAKER_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field public static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

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

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field static sAudioPatchesCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

.field static sAudioPortGeneration:Ljava/lang/Integer;

.field static sAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field static sPreviousAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field private final mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioDeviceCallback;",
            "Landroid/media/AudioManager$NativeEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mICallBack:Landroid/os/IBinder;

.field private mOriginalContext:Landroid/content/Context;

.field private mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

.field private mPreviousPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseFixedVolume:Z

.field private final mUseVolumeKeySounds:Z

.field private mVolumeKeyUpTime:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->broadcastDeviceListChange(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 68
    const-string/jumbo v0, "AudioManager"

    #@4
    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@6
    .line 69
    new-instance v0, Landroid/media/AudioPortEventHandler;

    #@8
    invoke-direct {v0}, Landroid/media/AudioPortEventHandler;-><init>()V

    #@b
    sput-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    #@d
    .line 491
    const/16 v0, 0xd

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    .line 492
    const-string/jumbo v1, "FLAG_SHOW_UI"

    #@14
    aput-object v1, v0, v3

    #@16
    .line 493
    const-string/jumbo v1, "FLAG_ALLOW_RINGER_MODES"

    #@19
    const/4 v2, 0x1

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 494
    const-string/jumbo v1, "FLAG_PLAY_SOUND"

    #@1f
    const/4 v2, 0x2

    #@20
    aput-object v1, v0, v2

    #@22
    .line 495
    const-string/jumbo v1, "FLAG_REMOVE_SOUND_AND_VIBRATE"

    #@25
    const/4 v2, 0x3

    #@26
    aput-object v1, v0, v2

    #@28
    .line 496
    const-string/jumbo v1, "FLAG_VIBRATE"

    #@2b
    const/4 v2, 0x4

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 497
    const-string/jumbo v1, "FLAG_FIXED_VOLUME"

    #@31
    const/4 v2, 0x5

    #@32
    aput-object v1, v0, v2

    #@34
    .line 498
    const-string/jumbo v1, "FLAG_BLUETOOTH_ABS_VOLUME"

    #@37
    const/4 v2, 0x6

    #@38
    aput-object v1, v0, v2

    #@3a
    .line 499
    const-string/jumbo v1, "FLAG_SHOW_SILENT_HINT"

    #@3d
    const/4 v2, 0x7

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 500
    const-string/jumbo v1, "FLAG_HDMI_SYSTEM_AUDIO_VOLUME"

    #@43
    const/16 v2, 0x8

    #@45
    aput-object v1, v0, v2

    #@47
    .line 501
    const-string/jumbo v1, "FLAG_ACTIVE_MEDIA_ONLY"

    #@4a
    const/16 v2, 0x9

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 502
    const-string/jumbo v1, "FLAG_SHOW_UI_WARNINGS"

    #@51
    const/16 v2, 0xa

    #@53
    aput-object v1, v0, v2

    #@55
    .line 503
    const-string/jumbo v1, "FLAG_SHOW_VIBRATE_HINT"

    #@58
    const/16 v2, 0xb

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 504
    const-string/jumbo v1, "FLAG_FROM_KEY"

    #@5f
    const/16 v2, 0xc

    #@61
    aput-object v1, v0, v2

    #@63
    .line 491
    sput-object v0, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    #@65
    .line 3584
    new-instance v0, Ljava/lang/Integer;

    #@67
    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    #@6a
    sput-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    #@6c
    .line 3585
    new-instance v0, Ljava/util/ArrayList;

    #@6e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@71
    sput-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    #@73
    .line 3586
    new-instance v0, Ljava/util/ArrayList;

    #@75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@78
    sput-object v0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    #@7a
    .line 3587
    new-instance v0, Ljava/util/ArrayList;

    #@7c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7f
    sput-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    #@81
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2106
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 2105
    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    #@a
    .line 2111
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    #@11
    .line 2121
    new-instance v0, Landroid/media/AudioManager$FocusEventHandlerDelegate;

    #@13
    invoke-direct {v0, p0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V

    #@16
    .line 2120
    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    #@18
    .line 2161
    new-instance v0, Landroid/media/AudioManager$1;

    #@1a
    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    #@1d
    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    #@1f
    .line 2848
    new-instance v0, Landroid/os/Binder;

    #@21
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@24
    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    #@26
    .line 3710
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    #@29
    .line 3725
    new-instance v0, Landroid/util/ArrayMap;

    #@2b
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@2e
    .line 3724
    iput-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@30
    .line 3904
    new-instance v0, Ljava/util/ArrayList;

    #@32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@35
    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    #@37
    .line 629
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    #@3a
    .line 630
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@41
    move-result-object v0

    #@42
    .line 631
    const v1, 0x1120010

    #@45
    .line 630
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@48
    move-result v0

    #@49
    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    #@4b
    .line 632
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@52
    move-result-object v0

    #@53
    .line 633
    const v1, 0x1120079

    #@56
    .line 632
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@59
    move-result v0

    #@5a
    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    #@5c
    .line 628
    return-void
.end method

.method private broadcastDeviceListChange(Landroid/os/Handler;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 3914
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 3915
    .local v1, "current_ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    #@a
    move-result v5

    #@b
    .line 3916
    .local v5, "status":I
    if-eqz v5, :cond_0

    #@d
    .line 3917
    return-void

    #@e
    .line 3920
    :cond_0
    if-eqz p1, :cond_2

    #@10
    .line 3923
    invoke-static {v1, v7}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    #@13
    move-result-object v2

    #@14
    .line 3925
    .local v2, "deviceList":[Landroid/media/AudioDeviceInfo;
    invoke-static {p1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v6

    #@18
    .line 3924
    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    .line 3953
    .end local v2    # "deviceList":[Landroid/media/AudioDeviceInfo;
    :cond_1
    :goto_0
    iput-object v1, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    #@1d
    .line 3910
    return-void

    #@1e
    .line 3928
    :cond_2
    iget-object v6, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    #@20
    invoke-static {v6, v1, v7}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    #@23
    move-result-object v0

    #@24
    .line 3930
    .local v0, "added_devices":[Landroid/media/AudioDeviceInfo;
    iget-object v6, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    #@26
    invoke-static {v1, v6, v7}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    #@29
    move-result-object v4

    #@2a
    .line 3932
    .local v4, "removed_devices":[Landroid/media/AudioDeviceInfo;
    array-length v6, v0

    #@2b
    if-nez v6, :cond_3

    #@2d
    array-length v6, v4

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 3933
    :cond_3
    iget-object v7, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@32
    monitor-enter v7

    #@33
    .line 3934
    const/4 v3, 0x0

    #@34
    .local v3, "i":I
    :goto_1
    :try_start_0
    iget-object v6, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@36
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@39
    move-result v6

    #@3a
    if-ge v3, v6, :cond_6

    #@3c
    .line 3935
    iget-object v6, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    #@44
    invoke-virtual {v6}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@47
    move-result-object p1

    #@48
    .line 3936
    if-eqz p1, :cond_5

    #@4a
    .line 3937
    array-length v6, v0

    #@4b
    if-eqz v6, :cond_4

    #@4d
    .line 3939
    const/4 v6, 0x1

    #@4e
    .line 3938
    invoke-static {p1, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@55
    .line 3942
    :cond_4
    array-length v6, v4

    #@56
    if-eqz v6, :cond_5

    #@58
    .line 3944
    const/4 v6, 0x2

    #@59
    .line 3943
    invoke-static {p1, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    .line 3934
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_1

    #@63
    :cond_6
    monitor-exit v7

    #@64
    goto :goto_0

    #@65
    .line 3933
    :catchall_0
    move-exception v6

    #@66
    monitor-exit v7

    #@67
    throw v6
.end method

.method private static calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .locals 7
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    #@0
    .prologue
    .line 3816
    .local p0, "ports_A":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    .local p1, "ports_B":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 3818
    .local v3, "delta_ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v1, 0x0

    #@6
    .line 3819
    .local v1, "cur_port":Landroid/media/AudioDevicePort;
    const/4 v0, 0x0

    #@7
    .end local v1    # "cur_port":Landroid/media/AudioDevicePort;
    .local v0, "cur_index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v5

    #@b
    if-ge v0, v5, :cond_4

    #@d
    .line 3820
    const/4 v2, 0x0

    #@e
    .line 3821
    .local v2, "cur_port_found":Z
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/media/AudioDevicePort;

    #@14
    .line 3822
    .local v1, "cur_port":Landroid/media/AudioDevicePort;
    const/4 v4, 0x0

    #@15
    .line 3823
    .local v4, "prev_index":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    if-ge v4, v5, :cond_0

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 3828
    :cond_0
    if-nez v2, :cond_1

    #@1f
    .line 3829
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 3819
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 3825
    :cond_2
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->id()I

    #@28
    move-result v6

    #@29
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Landroid/media/AudioDevicePort;

    #@2f
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->id()I

    #@32
    move-result v5

    #@33
    if-ne v6, v5, :cond_3

    #@35
    const/4 v2, 0x1

    #@36
    .line 3824
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_1

    #@39
    .line 3825
    :cond_3
    const/4 v2, 0x0

    #@3a
    goto :goto_2

    #@3b
    .line 3833
    .end local v1    # "cur_port":Landroid/media/AudioDevicePort;
    .end local v2    # "cur_port_found":Z
    .end local v4    # "prev_index":I
    :cond_4
    invoke-static {v3, p2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    #@3e
    move-result-object v5

    #@3f
    return-object v5
.end method

.method private static checkFlags(Landroid/media/AudioDevicePort;I)Z
    .locals 4
    .param p0, "port"    # Landroid/media/AudioDevicePort;
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3756
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x2

    #@7
    if-ne v2, v3, :cond_1

    #@9
    and-int/lit8 v2, p1, 0x2

    #@b
    if-eqz v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    .line 3757
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    #@11
    move-result v2

    #@12
    if-ne v2, v0, :cond_2

    #@14
    and-int/lit8 v2, p1, 0x1

    #@16
    if-nez v2, :cond_0

    #@18
    :cond_2
    move v0, v1

    #@19
    goto :goto_0
.end method

.method private static checkTypes(Landroid/media/AudioDevicePort;)Z
    .locals 3
    .param p0, "port"    # Landroid/media/AudioDevicePort;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3761
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    #@4
    move-result v1

    #@5
    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3763
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    #@e
    move-result v1

    #@f
    const v2, -0x7fffff80

    #@12
    if-eq v1, v2, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    .line 3761
    :cond_0
    return v0
.end method

.method public static createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
    .locals 1
    .param p0, "patch"    # [Landroid/media/AudioPatch;
    .param p1, "sources"    # [Landroid/media/AudioPortConfig;
    .param p2, "sinks"    # [Landroid/media/AudioPortConfig;

    #@0
    .prologue
    .line 3495
    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3461
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@3
    .line 3462
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 3463
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    instance-of v1, v1, Landroid/media/AudioDevicePort;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 3464
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/media/AudioDevicePort;

    #@18
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 3462
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 3460
    :cond_1
    return-void
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2114
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@8
    return-object v0
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "flags"    # I

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 510
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    #@a
    array-length v3, v3

    #@b
    if-ge v1, v3, :cond_2

    #@d
    .line 511
    const/4 v3, 0x1

    #@e
    shl-int v0, v3, v1

    #@10
    .line 512
    .local v0, "flag":I
    and-int v3, p0, v0

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@17
    move-result v3

    #@18
    if-lez v3, :cond_0

    #@1a
    .line 514
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 516
    :cond_0
    sget-object v3, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    #@1f
    aget-object v3, v3, v1

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 517
    not-int v3, v0

    #@25
    and-int/2addr p0, v3

    #@26
    .line 510
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 520
    .end local v0    # "flag":I
    :cond_2
    if-eqz p0, :cond_4

    #@2b
    .line 521
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@2e
    move-result v3

    #@2f
    if-lez v3, :cond_3

    #@31
    .line 522
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 524
    :cond_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    .line 526
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    return-object v3
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 637
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 638
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    #@6
    invoke-direct {p0, v0}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    #@9
    .line 640
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 641
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    #@f
    return-object v0

    #@10
    .line 643
    :cond_1
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    #@12
    return-object v0
.end method

.method public static getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;
    .locals 3
    .param p0, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3847
    new-instance v0, Ljava/util/ArrayList;

    #@3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 3848
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    #@9
    move-result v1

    #@a
    .line 3849
    .local v1, "status":I
    if-eqz v1, :cond_0

    #@c
    .line 3851
    new-array v2, v2, [Landroid/media/AudioDeviceInfo;

    #@e
    return-object v2

    #@f
    .line 3854
    :cond_0
    invoke-static {v0, p0}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    #@12
    move-result-object v2

    #@13
    return-object v2
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@0
    .prologue
    .line 2171
    if-nez p1, :cond_0

    #@2
    .line 2172
    new-instance v0, Ljava/lang/String;

    #@4
    invoke-virtual {p0}, Landroid/media/AudioManager;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0

    #@c
    .line 2174
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {p0}, Landroid/media/AudioManager;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@2a
    return-object v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    #@0
    .prologue
    .line 657
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 658
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    #@6
    return-object v1

    #@7
    .line 660
    :cond_0
    const-string/jumbo v1, "audio"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 661
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    #@14
    .line 662
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    #@16
    return-object v1
.end method

.method private static infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .locals 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    #@0
    .prologue
    .line 3786
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v1, 0x0

    #@1
    .line 3787
    .local v1, "numRecs":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v3

    #@5
    .local v3, "port$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_1

    #@b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/media/AudioDevicePort;

    #@11
    .line 3788
    .local v2, "port":Landroid/media/AudioDevicePort;
    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_0

    #@17
    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 3789
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 3794
    .end local v2    # "port":Landroid/media/AudioDevicePort;
    :cond_1
    new-array v0, v1, [Landroid/media/AudioDeviceInfo;

    #@22
    .line 3795
    .local v0, "deviceList":[Landroid/media/AudioDeviceInfo;
    const/4 v4, 0x0

    #@23
    .line 3796
    .local v4, "slot":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v3

    #@27
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_3

    #@2d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/media/AudioDevicePort;

    #@33
    .line 3797
    .restart local v2    # "port":Landroid/media/AudioDevicePort;
    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_2

    #@39
    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 3798
    add-int/lit8 v5, v4, 0x1

    #@41
    .end local v4    # "slot":I
    .local v5, "slot":I
    new-instance v6, Landroid/media/AudioDeviceInfo;

    #@43
    invoke-direct {v6, v2}, Landroid/media/AudioDeviceInfo;-><init>(Landroid/media/AudioDevicePort;)V

    #@46
    aput-object v6, v0, v4

    #@48
    move v4, v5

    #@49
    .end local v5    # "slot":I
    .restart local v4    # "slot":I
    goto :goto_1

    #@4a
    .line 3802
    .end local v2    # "port":Landroid/media/AudioDevicePort;
    :cond_3
    return-object v0
.end method

.method public static isInputDevice(I)Z
    .locals 2
    .param p0, "device"    # I

    #@0
    .prologue
    const/high16 v1, -0x80000000

    #@2
    .line 3059
    and-int v0, p0, v1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static isOutputDevice(I)Z
    .locals 2
    .param p0, "device"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3050
    const/high16 v1, -0x80000000

    #@3
    and-int/2addr v1, p0

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public static isValidRingerMode(I)Z
    .locals 5
    .param p0, "ringerMode"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 909
    if-ltz p0, :cond_0

    #@3
    const/4 v2, 0x2

    #@4
    if-le p0, v2, :cond_1

    #@6
    .line 910
    :cond_0
    return v4

    #@7
    .line 912
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@a
    move-result-object v1

    #@b
    .line 914
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->isValidRingerMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v2

    #@f
    return v2

    #@10
    .line 915
    :catch_0
    move-exception v0

    #@11
    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v3, "Dead object in isValidRingerMode"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 917
    return v4
.end method

.method public static listAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v2, 0x0

    #@1
    .line 3431
    if-nez p0, :cond_0

    #@3
    .line 3432
    const/4 v2, -0x2

    #@4
    return v2

    #@5
    .line 3434
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 3435
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    invoke-static {v0, v2, v2}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    #@d
    move-result v1

    #@e
    .line 3436
    .local v1, "status":I
    if-nez v1, :cond_1

    #@10
    .line 3437
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@13
    .line 3439
    :cond_1
    return v1
.end method

.method public static listAudioPatches(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v0, 0x0

    #@1
    .line 3519
    invoke-static {v0, p0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static listAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    #@1
    .line 3412
    invoke-static {p0, v0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static listPreviousAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v2, 0x0

    #@1
    .line 3448
    if-nez p0, :cond_0

    #@3
    .line 3449
    const/4 v2, -0x2

    #@4
    return v2

    #@5
    .line 3451
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 3452
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    invoke-static {v2, v2, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    #@d
    move-result v1

    #@e
    .line 3453
    .local v1, "status":I
    if-nez v1, :cond_1

    #@10
    .line 3454
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@13
    .line 3456
    :cond_1
    return v1
.end method

.method public static listPreviousAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    #@1
    .line 3422
    invoke-static {v0, v0, p0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private querySoundEffectsEnabled(I)Z
    .locals 3
    .param p1, "user"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1991
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v1

    #@9
    .line 1992
    const-string/jumbo v2, "sound_effects_enabled"

    #@c
    .line 1991
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    return v0
.end method

.method public static releaseAudioPatch(Landroid/media/AudioPatch;)I
    .locals 1
    .param p0, "patch"    # Landroid/media/AudioPatch;

    #@0
    .prologue
    .line 3510
    invoke-static {p0}, Landroid/media/AudioSystem;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static resetAudioPortGeneration()I
    .locals 3

    #@0
    .prologue
    .line 3591
    sget-object v2, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    #@2
    monitor-enter v2

    #@3
    .line 3592
    :try_start_0
    sget-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    #@5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@8
    move-result v0

    #@9
    .line 3593
    .local v0, "generation":I
    const/4 v1, 0x0

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    sput-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 3595
    return v0

    #@12
    .line 3591
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public static setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I
    .locals 7
    .param p0, "port"    # Landroid/media/AudioPort;
    .param p1, "gain"    # Landroid/media/AudioGainConfig;

    #@0
    .prologue
    .line 3528
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 3529
    :cond_0
    const/4 v1, -0x2

    #@5
    return v1

    #@6
    .line 3531
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioPort;->activeConfig()Landroid/media/AudioPortConfig;

    #@9
    move-result-object v6

    #@a
    .line 3532
    .local v6, "activeConfig":Landroid/media/AudioPortConfig;
    new-instance v0, Landroid/media/AudioPortConfig;

    #@c
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->samplingRate()I

    #@f
    move-result v2

    #@10
    .line 3533
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->channelMask()I

    #@13
    move-result v3

    #@14
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->format()I

    #@17
    move-result v4

    #@18
    move-object v1, p0

    #@19
    move-object v5, p1

    #@1a
    .line 3532
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    #@1d
    .line 3534
    .local v0, "config":Landroid/media/AudioPortConfig;
    const/16 v1, 0x8

    #@1f
    iput v1, v0, Landroid/media/AudioPortConfig;->mConfigMask:I

    #@21
    .line 3535
    invoke-static {v0}, Landroid/media/AudioSystem;->setAudioPortConfig(Landroid/media/AudioPortConfig;)I

    #@24
    move-result v1

    #@25
    return v1
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 647
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    #@7
    .line 648
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 649
    iput-object v1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    #@d
    .line 646
    :goto_0
    return-void

    #@e
    .line 651
    :cond_0
    iput-object p1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    #@10
    goto :goto_0
.end method

.method static updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 3600
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .local p2, "previousPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    sget-object v12, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    #@2
    invoke-virtual {v12}, Landroid/media/AudioPortEventHandler;->init()V

    #@5
    .line 3601
    sget-object v13, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    #@7
    monitor-enter v13

    #@8
    .line 3603
    :try_start_0
    sget-object v12, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    #@a
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v12

    #@e
    if-nez v12, :cond_c

    #@10
    .line 3604
    const/4 v12, 0x1

    #@11
    new-array v8, v12, [I

    #@13
    .line 3605
    .local v8, "patchGeneration":[I
    const/4 v12, 0x1

    #@14
    new-array v10, v12, [I

    #@16
    .line 3607
    .local v10, "portGeneration":[I
    new-instance v7, Ljava/util/ArrayList;

    #@18
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 3608
    .local v7, "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 3611
    .local v6, "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@23
    .line 3612
    invoke-static {v7, v10}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    #@26
    move-result v11

    #@27
    .line 3613
    .local v11, "status":I
    if-eqz v11, :cond_1

    #@29
    .line 3614
    sget-object v12, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@2b
    const-string/jumbo v14, "updateAudioPortCache: listAudioPorts failed"

    #@2e
    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    monitor-exit v13

    #@32
    .line 3615
    return v11

    #@33
    .line 3617
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@36
    .line 3618
    invoke-static {v6, v8}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    #@39
    move-result v11

    #@3a
    .line 3619
    if-eqz v11, :cond_2

    #@3c
    .line 3620
    sget-object v12, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@3e
    const-string/jumbo v14, "updateAudioPortCache: listAudioPatches failed"

    #@41
    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v13

    #@45
    .line 3621
    return v11

    #@46
    .line 3623
    :cond_2
    const/4 v12, 0x0

    #@47
    :try_start_2
    aget v12, v8, v12

    #@49
    const/4 v14, 0x0

    #@4a
    aget v14, v10, v14

    #@4c
    if-ne v12, v14, :cond_0

    #@4e
    .line 3625
    const/4 v2, 0x0

    #@4f
    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v12

    #@53
    if-ge v2, v12, :cond_5

    #@55
    .line 3626
    const/4 v4, 0x0

    #@56
    .local v4, "j":I
    :goto_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v12

    #@5a
    check-cast v12, Landroid/media/AudioPatch;

    #@5c
    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    #@5f
    move-result-object v12

    #@60
    array-length v12, v12

    #@61
    if-ge v4, v12, :cond_3

    #@63
    .line 3627
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v12

    #@67
    check-cast v12, Landroid/media/AudioPatch;

    #@69
    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    #@6c
    move-result-object v12

    #@6d
    aget-object v12, v12, v4

    #@6f
    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    #@72
    move-result-object v9

    #@73
    .line 3629
    .local v9, "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v12

    #@77
    check-cast v12, Landroid/media/AudioPatch;

    #@79
    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    #@7c
    move-result-object v12

    #@7d
    aput-object v9, v12, v4

    #@7f
    .line 3626
    add-int/lit8 v4, v4, 0x1

    #@81
    goto :goto_1

    #@82
    .line 3631
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_3
    const/4 v4, 0x0

    #@83
    :goto_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@86
    move-result-object v12

    #@87
    check-cast v12, Landroid/media/AudioPatch;

    #@89
    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    #@8c
    move-result-object v12

    #@8d
    array-length v12, v12

    #@8e
    if-ge v4, v12, :cond_4

    #@90
    .line 3632
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@93
    move-result-object v12

    #@94
    check-cast v12, Landroid/media/AudioPatch;

    #@96
    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    #@99
    move-result-object v12

    #@9a
    aget-object v12, v12, v4

    #@9c
    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    #@9f
    move-result-object v9

    #@a0
    .line 3634
    .restart local v9    # "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a3
    move-result-object v12

    #@a4
    check-cast v12, Landroid/media/AudioPatch;

    #@a6
    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    #@a9
    move-result-object v12

    #@aa
    aput-object v9, v12, v4

    #@ac
    .line 3631
    add-int/lit8 v4, v4, 0x1

    #@ae
    goto :goto_2

    #@af
    .line 3625
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@b1
    goto :goto_0

    #@b2
    .line 3637
    .end local v4    # "j":I
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@b5
    move-result-object v3

    #@b6
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b9
    move-result v12

    #@ba
    if-eqz v12, :cond_b

    #@bc
    .line 3638
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bf
    move-result-object v5

    #@c0
    check-cast v5, Landroid/media/AudioPatch;

    #@c2
    .line 3639
    .local v5, "newPatch":Landroid/media/AudioPatch;
    const/4 v1, 0x0

    #@c3
    .line 3640
    .local v1, "hasInvalidPort":Z
    invoke-virtual {v5}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    #@c6
    move-result-object v14

    #@c7
    const/4 v12, 0x0

    #@c8
    array-length v15, v14

    #@c9
    :goto_4
    if-ge v12, v15, :cond_7

    #@cb
    aget-object v9, v14, v12

    #@cd
    .line 3641
    .restart local v9    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v9, :cond_9

    #@cf
    .line 3642
    const/4 v1, 0x1

    #@d0
    .line 3646
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_7
    invoke-virtual {v5}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    #@d3
    move-result-object v14

    #@d4
    const/4 v12, 0x0

    #@d5
    array-length v15, v14

    #@d6
    :goto_5
    if-ge v12, v15, :cond_8

    #@d8
    aget-object v9, v14, v12

    #@da
    .line 3647
    .restart local v9    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v9, :cond_a

    #@dc
    .line 3648
    const/4 v1, 0x1

    #@dd
    .line 3652
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_8
    if-eqz v1, :cond_6

    #@df
    .line 3655
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e2
    goto :goto_3

    #@e3
    .line 3601
    .end local v1    # "hasInvalidPort":Z
    .end local v2    # "i":I
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    .end local v5    # "newPatch":Landroid/media/AudioPatch;
    .end local v6    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v7    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v8    # "patchGeneration":[I
    .end local v10    # "portGeneration":[I
    .end local v11    # "status":I
    :catchall_0
    move-exception v12

    #@e4
    monitor-exit v13

    #@e5
    throw v12

    #@e6
    .line 3640
    .restart local v1    # "hasInvalidPort":Z
    .restart local v2    # "i":I
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    .restart local v5    # "newPatch":Landroid/media/AudioPatch;
    .restart local v6    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .restart local v7    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .restart local v8    # "patchGeneration":[I
    .restart local v9    # "portCfg":Landroid/media/AudioPortConfig;
    .restart local v10    # "portGeneration":[I
    .restart local v11    # "status":I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    #@e8
    goto :goto_4

    #@e9
    .line 3646
    :cond_a
    add-int/lit8 v12, v12, 0x1

    #@eb
    goto :goto_5

    #@ec
    .line 3659
    .end local v1    # "hasInvalidPort":Z
    .end local v5    # "newPatch":Landroid/media/AudioPatch;
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_b
    :try_start_3
    sget-object v12, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    #@ee
    sput-object v12, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    #@f0
    .line 3660
    sput-object v7, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    #@f2
    .line 3661
    sput-object v6, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    #@f4
    .line 3662
    const/4 v12, 0x0

    #@f5
    aget v12, v10, v12

    #@f7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fa
    move-result-object v12

    #@fb
    sput-object v12, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    #@fd
    .line 3664
    .end local v2    # "i":I
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    .end local v6    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v7    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v8    # "patchGeneration":[I
    .end local v10    # "portGeneration":[I
    .end local v11    # "status":I
    :cond_c
    if-eqz p0, :cond_d

    #@ff
    .line 3665
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->clear()V

    #@102
    .line 3666
    sget-object v12, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    #@104
    move-object/from16 v0, p0

    #@106
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@109
    .line 3668
    :cond_d
    if-eqz p1, :cond_e

    #@10b
    .line 3669
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    #@10e
    .line 3670
    sget-object v12, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    #@110
    move-object/from16 v0, p1

    #@112
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@115
    .line 3672
    :cond_e
    if-eqz p2, :cond_f

    #@117
    .line 3673
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    #@11a
    .line 3674
    sget-object v12, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    #@11c
    move-object/from16 v0, p2

    #@11e
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@121
    :cond_f
    monitor-exit v13

    #@122
    .line 3677
    const/4 v12, 0x0

    #@123
    return v12
.end method

.method static updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;
    .locals 8
    .param p0, "portCfg"    # Landroid/media/AudioPortConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioPortConfig;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)",
            "Landroid/media/AudioPortConfig;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v7, 0x0

    #@1
    .line 3681
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    #@4
    move-result-object v3

    #@5
    .line 3683
    .local v3, "port":Landroid/media/AudioPort;
    const/4 v2, 0x0

    #@6
    .local v2, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v4

    #@a
    if-ge v2, v4, :cond_0

    #@c
    .line 3686
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/media/AudioPort;

    #@12
    invoke-virtual {v4}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v4, v5}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 3687
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    .end local v3    # "port":Landroid/media/AudioPort;
    check-cast v3, Landroid/media/AudioPort;

    #@26
    .line 3691
    .restart local v3    # "port":Landroid/media/AudioPort;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v4

    #@2a
    if-ne v2, v4, :cond_2

    #@2c
    .line 3693
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@2e
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "updatePortConfig port not found for handle: "

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Landroid/media/AudioHandle;->id()I

    #@41
    move-result v6

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 3694
    return-object v7

    #@4e
    .line 3683
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 3696
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->gain()Landroid/media/AudioGainConfig;

    #@54
    move-result-object v1

    #@55
    .line 3697
    .local v1, "gainCfg":Landroid/media/AudioGainConfig;
    if-eqz v1, :cond_3

    #@57
    .line 3698
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->index()I

    #@5a
    move-result v4

    #@5b
    invoke-virtual {v3, v4}, Landroid/media/AudioPort;->gain(I)Landroid/media/AudioGain;

    #@5e
    move-result-object v0

    #@5f
    .line 3699
    .local v0, "gain":Landroid/media/AudioGain;
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->mode()I

    #@62
    move-result v4

    #@63
    .line 3700
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->channelMask()I

    #@66
    move-result v5

    #@67
    .line 3701
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->values()[I

    #@6a
    move-result-object v6

    #@6b
    .line 3702
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->rampDurationMs()I

    #@6e
    move-result v7

    #@6f
    .line 3699
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    #@72
    move-result-object v1

    #@73
    .line 3704
    .end local v0    # "gain":Landroid/media/AudioGain;
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->samplingRate()I

    #@76
    move-result v4

    #@77
    .line 3705
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->channelMask()I

    #@7a
    move-result v5

    #@7b
    .line 3706
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->format()I

    #@7e
    move-result v6

    #@7f
    .line 3704
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/media/AudioPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;

    #@82
    move-result-object v4

    #@83
    return-object v4
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@0
    .prologue
    .line 2458
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 2470
    const/4 v2, 0x0

    #@1
    .line 2471
    .local v2, "status":I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    #@4
    .line 2472
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@7
    move-result-object v1

    #@8
    .line 2474
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    #@a
    .line 2475
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 2474
    invoke-interface {v1, v3, v4, p2}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 2479
    :goto_0
    return v2

    #@13
    .line 2476
    :catch_0
    move-exception v0

    #@14
    .line 2477
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@16
    const-string/jumbo v4, "Can\'t call abandonAudioFocus() on AudioService:"

    #@19
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method

.method public abandonAudioFocusForCall()V
    .locals 5

    #@0
    .prologue
    .line 2443
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 2445
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    const-string/jumbo v2, "AudioFocus_For_Phone_Ring_And_Calls"

    #@7
    const/4 v3, 0x0

    #@8
    .line 2446
    const/4 v4, 0x0

    #@9
    .line 2445
    invoke-interface {v1, v3, v2, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 2442
    :goto_0
    return-void

    #@d
    .line 2447
    :catch_0
    move-exception v0

    #@e
    .line 2448
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@10
    const-string/jumbo v3, "Can\'t call abandonAudioFocusForCall() on AudioService:"

    #@13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 806
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 809
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 808
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 805
    :goto_0
    return-void

    #@10
    .line 810
    :catch_0
    move-exception v0

    #@11
    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v3, "Dead object in adjustStreamVolume"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 868
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@7
    move-result-object v0

    #@8
    .line 869
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p2, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    #@b
    .line 867
    return-void
.end method

.method public adjustVolume(II)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 839
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@7
    move-result-object v0

    #@8
    .line 840
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/high16 v1, -0x80000000

    #@a
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    #@d
    .line 838
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    #@0
    .prologue
    .line 2837
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 2839
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2836
    :goto_0
    return-void

    #@8
    .line 2840
    :catch_0
    move-exception v0

    #@9
    .line 2841
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v3, "Dead object in avrcpSupportsAbsoluteVolume"

    #@e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public disableSafeMediaVolume()V
    .locals 3

    #@0
    .prologue
    .line 3298
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/media/IAudioService;->disableSafeMediaVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3296
    :goto_0
    return-void

    #@e
    .line 3299
    :catch_0
    move-exception v0

    #@f
    .line 3300
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@11
    const-string/jumbo v2, "Error disabling safe media volume"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 689
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@7
    move-result-object v0

    #@8
    .line 690
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    #@c
    .line 688
    return-void
.end method

.method public forceVolumeControlStream(I)V
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1152
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1154
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1151
    :goto_0
    return-void

    #@a
    .line 1155
    :catch_0
    move-exception v0

    #@b
    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v3, "Dead object in forceVolumeControlStream"

    #@10
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public generateAudioSessionId()I
    .locals 3

    #@0
    .prologue
    .line 1771
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    #@3
    move-result v0

    #@4
    .line 1772
    .local v0, "session":I
    if-lez v0, :cond_0

    #@6
    .line 1773
    return v0

    #@7
    .line 1775
    :cond_0
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Failure to generate a new audio session ID"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1776
    const/4 v1, -0x1

    #@10
    return v1
.end method

.method public getDevices(I)[Landroid/media/AudioDeviceInfo;
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 3775
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDevicesForStream(I)I
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 3108
    packed-switch p1, :pswitch_data_0

    #@3
    .line 3118
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 3116
    :pswitch_1
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 3108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 980
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 982
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 983
    :catch_0
    move-exception v0

    #@a
    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in getLastAudibleStreamVolume"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 985
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public getMode()I
    .locals 4

    #@0
    .prologue
    .line 1607
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1609
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 1610
    :catch_0
    move-exception v0

    #@a
    .line 1611
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in getMode"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1612
    const/4 v2, -0x2

    #@13
    return v2
.end method

.method public getOutputLatency(I)I
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 3236
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keys"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1827
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3208
    const-string/jumbo v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    #@4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 3209
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    #@d
    move-result v1

    #@e
    .line 3210
    .local v1, "outputSampleRate":I
    if-lez v1, :cond_0

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    :cond_0
    return-object v2

    #@15
    .line 3211
    .end local v1    # "outputSampleRate":I
    :cond_1
    const-string/jumbo v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_3

    #@1e
    .line 3212
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    #@21
    move-result v0

    #@22
    .line 3213
    .local v0, "outputFramesPerBuffer":I
    if-lez v0, :cond_2

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    :cond_2
    return-object v2

    #@29
    .line 3214
    .end local v0    # "outputFramesPerBuffer":I
    :cond_3
    const-string/jumbo v3, "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_4

    #@32
    .line 3217
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@39
    move-result-object v2

    #@3a
    .line 3218
    const v3, 0x112009c

    #@3d
    .line 3217
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@40
    move-result v2

    #@41
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    return-object v2

    #@46
    .line 3219
    :cond_4
    const-string/jumbo v3, "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

    #@49
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_5

    #@4f
    .line 3220
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@56
    move-result-object v2

    #@57
    .line 3221
    const v3, 0x112009d

    #@5a
    .line 3220
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@5d
    move-result v2

    #@5e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    return-object v2

    #@63
    .line 3224
    :cond_5
    return-object v2
.end method

.method public getRingerMode()I
    .locals 4

    #@0
    .prologue
    .line 891
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 893
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeExternal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 894
    :catch_0
    move-exception v0

    #@a
    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in getRingerMode"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 896
    const/4 v2, 0x2

    #@13
    return v2
.end method

.method public getRingerModeInternal()I
    .locals 3

    #@0
    .prologue
    .line 3322
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeInternal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 3323
    :catch_0
    move-exception v0

    #@a
    .line 3324
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Error calling getRingerModeInternal"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 3325
    const/4 v1, 0x2

    #@13
    return v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 2

    #@0
    .prologue
    .line 3165
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 3166
    :catch_0
    move-exception v0

    #@a
    .line 3167
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getRouting(I)I
    .locals 1
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1716
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 929
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 931
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 932
    :catch_0
    move-exception v0

    #@a
    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in getStreamMaxVolume"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 934
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public getStreamMinVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 947
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 949
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 950
    :catch_0
    move-exception v0

    #@a
    .line 951
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in getStreamMinVolume"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 952
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public getStreamVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 965
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 967
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 968
    :catch_0
    move-exception v0

    #@a
    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in getStreamVolume"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 970
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public getUiSoundsStreamType()I
    .locals 4

    #@0
    .prologue
    .line 996
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 998
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getUiSoundsStreamType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 999
    :catch_0
    move-exception v0

    #@a
    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in getUiSoundsStreamType"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1001
    const/4 v2, 0x2

    #@13
    return v2
.end method

.method public getVibrateSetting(I)I
    .locals 4
    .param p1, "vibrateType"    # I

    #@0
    .prologue
    .line 1207
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1209
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 1210
    :catch_0
    move-exception v0

    #@a
    .line 1211
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in getVibrateSetting"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1212
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public handleKeyDown(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 718
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v0

    #@5
    .line 719
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    #@8
    .line 717
    :cond_0
    :goto_0
    return-void

    #@9
    .line 727
    :sswitch_0
    const/16 v1, 0x18

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 728
    const/4 v1, 0x1

    #@e
    .line 731
    :goto_1
    const/16 v2, 0x11

    #@10
    .line 726
    invoke-virtual {p0, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    #@13
    goto :goto_0

    #@14
    .line 729
    :cond_1
    const/4 v1, -0x1

    #@15
    goto :goto_1

    #@16
    .line 734
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 735
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@27
    goto :goto_0

    #@28
    .line 719
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleKeyUp(Landroid/view/KeyEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 746
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v0

    #@5
    .line 747
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    #@8
    .line 745
    :goto_0
    return-void

    #@9
    .line 754
    :sswitch_0
    iget-boolean v1, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 758
    const/4 v1, 0x4

    #@e
    .line 755
    invoke-virtual {p0, v2, p2, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    #@11
    .line 760
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    #@17
    goto :goto_0

    #@18
    .line 763
    :sswitch_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@23
    goto :goto_0

    #@24
    .line 747
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public isAudioFocusExclusive()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1745
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@4
    move-result-object v1

    #@5
    .line 1747
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v3

    #@9
    const/4 v4, 0x4

    #@a
    if-ne v3, v4, :cond_0

    #@c
    const/4 v2, 0x1

    #@d
    :cond_0
    return v2

    #@e
    .line 1748
    :catch_0
    move-exception v0

    #@f
    .line 1749
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@11
    const-string/jumbo v4, "Dead object in isAudioFocusExclusive()"

    #@14
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 1750
    return v2
.end method

.method public isBluetoothA2dpOn()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1509
    const-string/jumbo v0, ""

    #@4
    const/16 v1, 0x80

    #@6
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1511
    return v2

    #@d
    .line 1513
    :cond_0
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 2

    #@0
    .prologue
    .line 1358
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 1359
    const v1, 0x112004f

    #@b
    .line 1358
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 4

    #@0
    .prologue
    .line 1485
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1487
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 1488
    :catch_0
    move-exception v0

    #@a
    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in isBluetoothScoOn"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1490
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 3

    #@0
    .prologue
    .line 3365
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 3366
    :catch_0
    move-exception v0

    #@a
    .line 3367
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Error querying system audio mode"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 3368
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public isMasterMute()Z
    .locals 4

    #@0
    .prologue
    .line 1135
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1137
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isMasterMute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 1138
    :catch_0
    move-exception v0

    #@a
    .line 1139
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in isMasterMute"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1140
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public isMicrophoneMute()Z
    .locals 1

    #@0
    .prologue
    .line 1572
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isMusicActive()Z
    .locals 2

    #@0
    .prologue
    .line 1725
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMusicActiveRemotely()Z
    .locals 2

    #@0
    .prologue
    .line 1735
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSilentMode()Z
    .locals 3

    #@0
    .prologue
    .line 2860
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    #@3
    move-result v0

    #@4
    .line 2862
    .local v0, "ringerMode":I
    if-eqz v0, :cond_0

    #@6
    .line 2863
    const/4 v2, 0x1

    #@7
    if-ne v0, v2, :cond_1

    #@9
    const/4 v1, 0x1

    #@a
    .line 2864
    .local v1, "silentMode":Z
    :goto_0
    return v1

    #@b
    .line 2862
    .end local v1    # "silentMode":Z
    :cond_0
    const/4 v1, 0x1

    #@c
    .restart local v1    # "silentMode":Z
    goto :goto_0

    #@d
    .line 2863
    .end local v1    # "silentMode":Z
    :cond_1
    const/4 v1, 0x0

    #@e
    .restart local v1    # "silentMode":Z
    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 4

    #@0
    .prologue
    .line 1267
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1269
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 1270
    :catch_0
    move-exception v0

    #@a
    .line 1271
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in isSpeakerphoneOn"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1272
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 3285
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamAffectedByMute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 3286
    :catch_0
    move-exception v0

    #@a
    .line 3287
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Error calling isStreamAffectedByMute"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 3288
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 3272
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 3273
    :catch_0
    move-exception v0

    #@a
    .line 3274
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Error calling isStreamAffectedByRingerMode"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 3275
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public isStreamMute(I)Z
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1120
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1122
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 1123
    :catch_0
    move-exception v0

    #@a
    .line 1124
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in isStreamMute"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1125
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public isVolumeFixed()Z
    .locals 1

    #@0
    .prologue
    .line 786
    iget-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    #@2
    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1537
    const-string/jumbo v0, ""

    #@4
    const/4 v1, 0x4

    #@5
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1539
    const-string/jumbo v0, ""

    #@e
    const/16 v1, 0x8

    #@10
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1541
    return v2

    #@17
    .line 1543
    :cond_0
    const/4 v0, 0x1

    #@18
    return v0
.end method

.method public loadSoundEffects()V
    .locals 5

    #@0
    .prologue
    .line 2001
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 2003
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2000
    :goto_0
    return-void

    #@8
    .line 2004
    :catch_0
    move-exception v0

    #@9
    .line 2005
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Dead object in loadSoundEffects"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 3260
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3258
    :goto_0
    return-void

    #@8
    .line 3261
    :catch_0
    move-exception v0

    #@9
    .line 3262
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "Error notifying about volume controller visibility"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .param p1, "effectType"    # I

    #@0
    .prologue
    .line 1904
    if-ltz p1, :cond_0

    #@2
    const/16 v2, 0xa

    #@4
    if-lt p1, v2, :cond_1

    #@6
    .line 1905
    :cond_0
    return-void

    #@7
    .line 1908
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@e
    move-result v2

    #@f
    invoke-direct {p0, v2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_2

    #@15
    .line 1909
    return-void

    #@16
    .line 1912
    :cond_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@19
    move-result-object v1

    #@1a
    .line 1914
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1903
    :goto_0
    return-void

    #@1e
    .line 1915
    :catch_0
    move-exception v0

    #@1f
    .line 1916
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Dead object in playSoundEffect"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_0
.end method

.method public playSoundEffect(IF)V
    .locals 5
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    #@0
    .prologue
    .line 1975
    if-ltz p1, :cond_0

    #@2
    const/16 v2, 0xa

    #@4
    if-lt p1, v2, :cond_1

    #@6
    .line 1976
    :cond_0
    return-void

    #@7
    .line 1979
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@a
    move-result-object v1

    #@b
    .line 1981
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1974
    :goto_0
    return-void

    #@f
    .line 1982
    :catch_0
    move-exception v0

    #@10
    .line 1983
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Dead object in playSoundEffect"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    goto :goto_0
.end method

.method public playSoundEffect(II)V
    .locals 5
    .param p1, "effectType"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1939
    if-ltz p1, :cond_0

    #@2
    const/16 v2, 0xa

    #@4
    if-lt p1, v2, :cond_1

    #@6
    .line 1940
    :cond_0
    return-void

    #@7
    .line 1943
    :cond_1
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_2

    #@d
    .line 1944
    return-void

    #@e
    .line 1947
    :cond_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@11
    move-result-object v1

    #@12
    .line 1949
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1938
    :goto_0
    return-void

    #@16
    .line 1950
    :catch_0
    move-exception v0

    #@17
    .line 1951
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Dead object in playSoundEffect"

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_0
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    #@0
    .prologue
    .line 701
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@3
    move-result v0

    #@4
    .line 702
    .local v0, "keyCode":I
    const/16 v1, 0x19

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/16 v1, 0x18

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 703
    const/16 v1, 0xa4

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 704
    iget-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    #@12
    const-wide/16 v4, 0x12c

    #@14
    add-long/2addr v2, v4

    #@15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v4

    #@19
    cmp-long v1, v2, v4

    #@1b
    if-lez v1, :cond_0

    #@1d
    .line 709
    const/4 v1, 0x0

    #@1e
    .line 710
    const/16 v2, 0x8

    #@20
    .line 709
    invoke-virtual {p0, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    #@23
    .line 696
    :cond_0
    return-void
.end method

.method public registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/AudioDeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 3868
    iget-object v2, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@2
    monitor-enter v2

    #@3
    .line 3869
    if-eqz p1, :cond_0

    #@5
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    monitor-exit v2

    #@e
    .line 3867
    return-void

    #@f
    .line 3870
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_3

    #@17
    .line 3871
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 3872
    new-instance v1, Landroid/media/AudioManager$OnAmPortUpdateListener;

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-direct {v1, p0, v3}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAmPortUpdateListener;)V

    #@21
    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    #@23
    .line 3874
    :cond_2
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    #@25
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    #@28
    .line 3877
    :cond_3
    new-instance v0, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    #@2a
    invoke-direct {v0, p0, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    #@2d
    .line 3878
    .local v0, "delegate":Landroid/media/AudioManager$NativeEventHandlerDelegate;
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 3879
    invoke-virtual {v0}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@35
    move-result-object v1

    #@36
    invoke-direct {p0, v1}, Landroid/media/AudioManager;->broadcastDeviceListChange(Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 3868
    .end local v0    # "delegate":Landroid/media/AudioManager$NativeEventHandlerDelegate;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@0
    .prologue
    .line 2186
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2187
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    #@5
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    monitor-exit v1

    #@10
    .line 2188
    return-void

    #@11
    .line 2190
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    #@13
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 2185
    return-void

    #@1c
    .line 2186
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 7
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 2776
    if-nez p1, :cond_0

    #@3
    .line 2777
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "Illegal null AudioPolicy argument"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 2779
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@f
    move-result-object v2

    #@10
    .line 2781
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@17
    move-result-object v4

    #@18
    .line 2782
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->hasFocusListener()Z

    #@1b
    move-result v5

    #@1c
    .line 2781
    invoke-interface {v2, v3, v4, v5}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 2783
    .local v1, "regId":Ljava/lang/String;
    if-nez v1, :cond_1

    #@22
    .line 2784
    return v6

    #@23
    .line 2786
    :cond_1
    invoke-virtual {p1, v1}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 2793
    const/4 v3, 0x0

    #@27
    return v3

    #@28
    .line 2789
    .end local v1    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@29
    .line 2790
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@2b
    const-string/jumbo v4, "Dead object in registerAudioPolicyAsync()"

    #@2e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    .line 2791
    return v6
.end method

.method public registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@0
    .prologue
    .line 3567
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    #@5
    .line 3568
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    #@7
    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    #@a
    .line 3566
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2525
    if-nez p1, :cond_0

    #@3
    .line 2526
    return-void

    #@4
    .line 2528
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    #@7
    .line 2524
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2494
    if-nez p1, :cond_0

    #@3
    .line 2495
    return-void

    #@4
    .line 2497
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 2498
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@18
    const-string/jumbo v3, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    #@1b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 2500
    return-void

    #@1f
    .line 2503
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@21
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    #@24
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@27
    .line 2505
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@2a
    .line 2506
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@31
    move-result-object v1

    #@32
    .line 2508
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    #@35
    .line 2493
    return-void
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2536
    if-nez p1, :cond_0

    #@2
    .line 2537
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@4
    const-string/jumbo v2, "Cannot call registerMediaButtonIntent() with a null parameter"

    #@7
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 2538
    return-void

    #@b
    .line 2540
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@12
    move-result-object v0

    #@13
    .line 2541
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V

    #@1a
    .line 2535
    return-void
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2596
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 2597
    :cond_0
    return-void

    #@9
    .line 2599
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    #@14
    .line 2595
    return-void
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 2674
    invoke-virtual {p0, p1, v0, v0}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    #@4
    .line 2672
    return-void
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 2688
    if-nez p1, :cond_0

    #@2
    .line 2689
    return-void

    #@3
    .line 2691
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@6
    move-result-object v1

    #@7
    .line 2693
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2687
    :goto_0
    return-void

    #@b
    .line 2694
    :catch_0
    move-exception v0

    #@c
    .line 2695
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Dead object in registerRemoteControlDisplay "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public registerRemoteController(Landroid/media/RemoteController;)Z
    .locals 1
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2636
    if-nez p1, :cond_0

    #@2
    .line 2637
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 2639
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->startListeningToSessions()V

    #@7
    .line 2640
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public reloadAudioSettings()V
    .locals 5

    #@0
    .prologue
    .line 2822
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 2824
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2821
    :goto_0
    return-void

    #@8
    .line 2825
    :catch_0
    move-exception v0

    #@9
    .line 2826
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Dead object in reloadAudioSettings"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 2726
    if-nez p1, :cond_0

    #@2
    .line 2727
    return-void

    #@3
    .line 2729
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@6
    move-result-object v1

    #@7
    .line 2731
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2725
    :goto_0
    return-void

    #@b
    .line 2732
    :catch_0
    move-exception v0

    #@c
    .line 2733
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Dead object in remoteControlDisplayUsesBitmapSize "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    #@0
    .prologue
    .line 2752
    if-nez p1, :cond_0

    #@2
    .line 2753
    return-void

    #@3
    .line 2755
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@6
    move-result-object v1

    #@7
    .line 2757
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2751
    :goto_0
    return-void

    #@b
    .line 2758
    :catch_0
    move-exception v0

    #@c
    .line 2759
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Dead object in remoteControlDisplayWantsPlaybackPositionSync "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 4
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    #@0
    .prologue
    .line 2244
    const/4 v1, 0x0

    #@1
    .line 2251
    .local v1, "status":I
    :try_start_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    #@3
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@6
    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@d
    move-result-object v2

    #@e
    .line 2254
    const/4 v3, 0x0

    #@f
    .line 2250
    invoke-virtual {p0, p1, v2, p3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v1

    #@13
    .line 2259
    :goto_0
    return v1

    #@14
    .line 2255
    :catch_0
    move-exception v0

    #@15
    .line 2256
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@17
    const-string/jumbo v3, "Audio focus request denied due to "

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .locals 6
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "durationHint"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 2337
    and-int/lit8 v0, p4, 0x3

    #@2
    if-eq p4, v0, :cond_0

    #@4
    .line 2338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid flags 0x"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 2339
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 2338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 2342
    :cond_0
    and-int/lit8 v4, p4, 0x3

    #@28
    .line 2343
    const/4 v5, 0x0

    #@29
    move-object v0, p0

    #@2a
    move-object v1, p1

    #@2b
    move-object v2, p2

    #@2c
    move v3, p3

    #@2d
    .line 2341
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I

    #@30
    move-result v0

    #@31
    return v0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I
    .locals 11
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "durationHint"    # I
    .param p4, "flags"    # I
    .param p5, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 2377
    if-nez p2, :cond_0

    #@2
    .line 2378
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Illegal null AudioAttributes argument"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2380
    :cond_0
    const/4 v1, 0x1

    #@c
    if-lt p3, v1, :cond_1

    #@e
    .line 2381
    const/4 v1, 0x4

    #@f
    if-le p3, v1, :cond_2

    #@11
    .line 2382
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Invalid duration hint"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 2384
    :cond_2
    and-int/lit8 v1, p4, 0x7

    #@1c
    if-eq p4, v1, :cond_3

    #@1e
    .line 2385
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Illegal flags 0x"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 2386
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 2385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 2388
    :cond_3
    and-int/lit8 v1, p4, 0x1

    #@42
    const/4 v2, 0x1

    #@43
    if-ne v1, v2, :cond_4

    #@45
    if-nez p1, :cond_4

    #@47
    .line 2389
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@49
    .line 2390
    const-string/jumbo v2, "Illegal null focus listener when flagged as accepting delayed focus grant"

    #@4c
    .line 2389
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 2392
    :cond_4
    and-int/lit8 v1, p4, 0x4

    #@52
    const/4 v2, 0x4

    #@53
    if-ne v1, v2, :cond_5

    #@55
    if-nez p5, :cond_5

    #@57
    .line 2393
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@59
    .line 2394
    const-string/jumbo v2, "Illegal null audio policy when locking audio focus"

    #@5c
    .line 2393
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v1

    #@60
    .line 2397
    :cond_5
    const/4 v10, 0x0

    #@61
    .line 2398
    .local v10, "status":I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    #@64
    .line 2399
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@67
    move-result-object v0

    #@68
    .line 2401
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    #@6a
    .line 2402
    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    #@6c
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .line 2403
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    .line 2404
    if-eqz p5, :cond_6

    #@7a
    invoke-virtual/range {p5 .. p5}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@7d
    move-result-object v8

    #@7e
    :goto_0
    move-object v1, p2

    #@7f
    move v2, p3

    #@80
    move v7, p4

    #@81
    .line 2401
    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    move-result v10

    #@85
    .line 2408
    :goto_1
    return v10

    #@86
    .line 2404
    :cond_6
    const/4 v8, 0x0

    #@87
    goto :goto_0

    #@88
    .line 2405
    :catch_0
    move-exception v9

    #@89
    .line 2406
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@8b
    const-string/jumbo v2, "Can\'t call requestAudioFocus() on AudioService:"

    #@8e
    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@91
    goto :goto_1
.end method

.method public requestAudioFocusForCall(II)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "durationHint"    # I

    #@0
    .prologue
    .line 2422
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v0

    #@4
    .line 2424
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    #@6
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@9
    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@10
    move-result-object v1

    #@11
    .line 2426
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    #@13
    .line 2427
    const-string/jumbo v5, "AudioFocus_For_Phone_Ring_And_Calls"

    #@16
    .line 2428
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    .line 2426
    const/4 v4, 0x0

    #@1f
    .line 2429
    const/4 v7, 0x4

    #@20
    .line 2430
    const/4 v8, 0x0

    #@21
    move v2, p2

    #@22
    .line 2424
    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 2421
    :goto_0
    return-void

    #@26
    .line 2431
    :catch_0
    move-exception v9

    #@27
    .line 2432
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@29
    const-string/jumbo v2, "Can\'t call requestAudioFocusForCall() on AudioService:"

    #@2c
    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    #@0
    .prologue
    .line 3152
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v2

    #@4
    .line 3153
    .local v2, "service":Landroid/media/IAudioService;
    const/4 v0, 0x0

    #@5
    .line 3155
    .local v0, "delay":I
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v0

    #@9
    .line 3159
    :goto_0
    return v0

    #@a
    .line 3156
    :catch_0
    move-exception v1

    #@b
    .line 3157
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Dead object in setBluetoothA2dpDeviceConnectionState "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1499
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1470
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1472
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1469
    :goto_0
    return-void

    #@8
    .line 1473
    :catch_0
    move-exception v0

    #@9
    .line 1474
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v3, "Dead object in setBluetoothScoOn"

    #@e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 3
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 3350
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 3351
    :catch_0
    move-exception v0

    #@a
    .line 3352
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Error setting system audio mode"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 3353
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public setMasterMute(ZI)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 874
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 876
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 877
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@f
    move-result v3

    #@10
    .line 876
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 873
    :goto_0
    return-void

    #@14
    .line 878
    :catch_0
    move-exception v0

    #@15
    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@17
    const-string/jumbo v3, "Dead object in setMasterMute"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 4
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1557
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1559
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1560
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@f
    move-result v3

    #@10
    .line 1559
    invoke-interface {v1, p1, v2, v3}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1556
    :goto_0
    return-void

    #@14
    .line 1561
    :catch_0
    move-exception v0

    #@15
    .line 1562
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@17
    const-string/jumbo v3, "Dead object in setMicrophoneMute"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 1591
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1593
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    #@6
    iget-object v3, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v1, p1, v2, v3}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1590
    :goto_0
    return-void

    #@10
    .line 1594
    :catch_0
    move-exception v0

    #@11
    .line 1595
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v3, "Dead object in setMode"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    #@1b
    .line 1804
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1816
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@3
    .line 1815
    return-void
.end method

.method public setRingerMode(I)V
    .locals 4
    .param p1, "ringerMode"    # I

    #@0
    .prologue
    .line 1019
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1020
    return-void

    #@7
    .line 1022
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@a
    move-result-object v1

    #@b
    .line 1024
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setRingerModeExternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 1018
    :goto_0
    return-void

    #@17
    .line 1025
    :catch_0
    move-exception v0

    #@18
    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@1a
    const-string/jumbo v3, "Dead object in setRingerMode"

    #@1d
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method

.method public setRingerModeInternal(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    #@0
    .prologue
    .line 3310
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setRingerModeInternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3308
    :goto_0
    return-void

    #@10
    .line 3311
    :catch_0
    move-exception v0

    #@11
    .line 3312
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v2, "Error calling setRingerModeInternal"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method public setRouting(III)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "routes"    # I
    .param p3, "mask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1702
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1253
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1255
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1252
    :goto_0
    return-void

    #@8
    .line 1256
    :catch_0
    move-exception v0

    #@9
    .line 1257
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v3, "Dead object in setSpeakerphoneOn"

    #@e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public setStreamMute(IZ)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1103
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@3
    const-string/jumbo v2, "setStreamMute is deprecated. adjustStreamVolume should be used instead."

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1104
    if-eqz p2, :cond_0

    #@b
    const/16 v0, -0x64

    #@d
    .line 1105
    .local v0, "direction":I
    :goto_0
    const/high16 v1, -0x80000000

    #@f
    if-ne p1, v1, :cond_1

    #@11
    .line 1106
    invoke-virtual {p0, v0, p1, v3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    #@14
    .line 1102
    :goto_1
    return-void

    #@15
    .line 1104
    .end local v0    # "direction":I
    :cond_0
    const/16 v0, 0x64

    #@17
    .restart local v0    # "direction":I
    goto :goto_0

    #@18
    .line 1108
    :cond_1
    invoke-virtual {p0, p1, v0, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    #@1b
    goto :goto_1
.end method

.method public setStreamSolo(IZ)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1066
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "setStreamSolo has been deprecated. Do not use."

    #@5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    .line 1065
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1043
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1045
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1042
    :goto_0
    return-void

    #@10
    .line 1046
    :catch_0
    move-exception v0

    #@11
    .line 1047
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v3, "Dead object in setStreamVolume"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method public setVibrateSetting(II)V
    .locals 4
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    #@0
    .prologue
    .line 1235
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1237
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1234
    :goto_0
    return-void

    #@8
    .line 1238
    :catch_0
    move-exception v0

    #@9
    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v3, "Dead object in setVibrateSetting"

    #@e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    #@0
    .prologue
    .line 3246
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3244
    :goto_0
    return-void

    #@8
    .line 3247
    :catch_0
    move-exception v0

    #@9
    .line 3248
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "Error setting volume controller"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    #@0
    .prologue
    .line 3335
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3333
    :goto_0
    return-void

    #@8
    .line 3336
    :catch_0
    move-exception v0

    #@9
    .line 3337
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "Error calling setVolumePolicy"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3130
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v0

    #@4
    .line 3133
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    move v1, p1

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    .line 3132
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 3129
    :goto_0
    return-void

    #@12
    .line 3134
    :catch_0
    move-exception v6

    #@13
    .line 3135
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Dead object in setWiredDeviceConnectionState "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method

.method public setWiredHeadsetOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1524
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 4
    .param p1, "vibrateType"    # I

    #@0
    .prologue
    .line 1180
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1182
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 1183
    :catch_0
    move-exception v0

    #@a
    .line 1184
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v3, "Dead object in shouldVibrate"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1185
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public startBluetoothSco()V
    .locals 4

    #@0
    .prologue
    .line 1408
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1410
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    #@6
    .line 1411
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@d
    move-result-object v3

    #@e
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@10
    .line 1410
    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1407
    :goto_0
    return-void

    #@14
    .line 1412
    :catch_0
    move-exception v0

    #@15
    .line 1413
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@17
    const-string/jumbo v3, "Dead object in startBluetoothSco"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method public startBluetoothScoVirtualCall()V
    .locals 4

    #@0
    .prologue
    .line 1433
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1435
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1432
    :goto_0
    return-void

    #@a
    .line 1436
    :catch_0
    move-exception v0

    #@b
    .line 1437
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v3, "Dead object in startBluetoothScoVirtualCall"

    #@10
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public stopBluetoothSco()V
    .locals 4

    #@0
    .prologue
    .line 1452
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 1454
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1451
    :goto_0
    return-void

    #@a
    .line 1455
    :catch_0
    move-exception v0

    #@b
    .line 1456
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v3, "Dead object in stopBluetoothSco"

    #@10
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 5

    #@0
    .prologue
    .line 2015
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@3
    move-result-object v1

    #@4
    .line 2017
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2014
    :goto_0
    return-void

    #@8
    .line 2018
    :catch_0
    move-exception v0

    #@9
    .line 2019
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Dead object in unloadSoundEffects"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method

.method public unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/AudioDeviceCallback;

    #@0
    .prologue
    .line 3891
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 3892
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 3893
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 3894
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 3895
    iget-object v0, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    #@1a
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_0
    monitor-exit v1

    #@1e
    .line 3890
    return-void

    #@1f
    .line 3891
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@0
    .prologue
    .line 2202
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2203
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    #@5
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 2199
    return-void

    #@e
    .line 2202
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 4
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    #@0
    .prologue
    .line 2802
    if-nez p1, :cond_0

    #@2
    .line 2803
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Illegal null AudioPolicy argument"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 2805
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@e
    move-result-object v1

    #@f
    .line 2807
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    #@16
    .line 2808
    const/4 v2, 0x0

    #@17
    invoke-virtual {p1, v2}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 2801
    :goto_0
    return-void

    #@1b
    .line 2809
    :catch_0
    move-exception v0

    #@1c
    .line 2810
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@1e
    const-string/jumbo v3, "Dead object in unregisterAudioPolicyAsync()"

    #@21
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0
.end method

.method public unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@0
    .prologue
    .line 3576
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    #@2
    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    #@5
    .line 3575
    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2572
    if-nez p1, :cond_0

    #@2
    .line 2573
    return-void

    #@3
    .line 2575
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    #@6
    .line 2571
    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2552
    if-nez p1, :cond_0

    #@3
    .line 2553
    return-void

    #@4
    .line 2556
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@6
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    #@9
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 2558
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 2559
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@16
    move-result-object v1

    #@17
    .line 2561
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    #@1a
    .line 2551
    return-void
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2582
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@7
    move-result-object v0

    #@8
    .line 2583
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->removeMediaButtonListener(Landroid/app/PendingIntent;)V

    #@b
    .line 2581
    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2611
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 2612
    :cond_0
    return-void

    #@9
    .line 2614
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    #@14
    .line 2610
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    #@0
    .prologue
    .line 2705
    if-nez p1, :cond_0

    #@2
    .line 2706
    return-void

    #@3
    .line 2708
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    #@6
    move-result-object v1

    #@7
    .line 2710
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2704
    :goto_0
    return-void

    #@b
    .line 2711
    :catch_0
    move-exception v0

    #@c
    .line 2712
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Dead object in unregisterRemoteControlDisplay "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public unregisterRemoteController(Landroid/media/RemoteController;)V
    .locals 0
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2655
    if-nez p1, :cond_0

    #@2
    .line 2656
    return-void

    #@3
    .line 2658
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->stopListeningToSessions()V

    #@6
    .line 2654
    return-void
.end method
