.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$DeviceListSpec;,
        Lcom/android/server/audio/AudioService$AudioOrientationEventListener;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$StreamOverride;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$ControllerService;,
        Lcom/android/server/audio/AudioService$1;,
        Lcom/android/server/audio/AudioService$2;,
        Lcom/android/server/audio/AudioService$3;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field private static MAX_STREAM_VOLUME:[I = null

.field private static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private final mUseFixedVolume:Z

.field private mVibrateSetting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumePolicy:Landroid/media/VolumePolicy;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@2
    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ControllerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/audio/AudioService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    #@2
    return v0
.end method

.method static synthetic -get19(Lcom/android/server/audio/AudioService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    #@2
    return v0
.end method

.method static synthetic -get2()Ljava/util/List;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@2
    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    #@2
    return v0
.end method

.method static synthetic -get23(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@2
    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    #@2
    return v0
.end method

.method static synthetic -get26(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    #@2
    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@2
    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/audio/AudioService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    #@2
    return v0
.end method

.method static synthetic -get29(Lcom/android/server/audio/AudioService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService;)[[I
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    #@2
    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    #@2
    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@2
    return-object v0
.end method

.method static synthetic -get37(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/audio/AudioService;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@2
    return-object v0
.end method

.method static synthetic -get40(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@2
    return v0
.end method

.method static synthetic -get41(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@2
    return v0
.end method

.method static synthetic -get42(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@2
    return-object v0
.end method

.method static synthetic -get43()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/audio/AudioService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    #@2
    return p1
.end method

.method static synthetic -set11(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@2
    return p1
.end method

.method static synthetic -set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    #@2
    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@2
    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@2
    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    #@2
    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    #@2
    return p1
.end method

.method static synthetic -set7(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    #@2
    return p1
.end method

.method static synthetic -set9(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "exceptPid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "skipStream"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p1, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/audio/AudioService;II)I
    .locals 1
    .param p1, "device"    # I
    .param p2, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p1, "userSwitch"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    #@3
    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p1, "usage"    # I
    .param p2, "config"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setRotationForAudioSystem()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p1, "stream"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p1, "stream"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/audio/AudioService;III)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    const/4 v1, 0x3

    #@3
    .line 145
    const-string/jumbo v0, "AudioService.MOD"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    #@c
    .line 148
    const-string/jumbo v0, "AudioService.AP"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@12
    move-result v0

    #@13
    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    #@15
    .line 151
    const-string/jumbo v0, "AudioService.VOL"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1b
    move-result v0

    #@1c
    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@1e
    .line 154
    const-string/jumbo v0, "AudioService.DEVICES"

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@24
    move-result v0

    #@25
    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@27
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    #@29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@2e
    .line 262
    new-array v0, v2, [I

    #@30
    fill-array-data v0, :array_0

    #@33
    sput-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@35
    .line 276
    new-array v0, v2, [I

    #@37
    fill-array-data v0, :array_1

    #@3a
    sput-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    #@3c
    .line 340
    new-array v0, v2, [I

    #@3e
    fill-array-data v0, :array_2

    #@41
    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    #@43
    .line 551
    new-instance v0, Ljava/lang/Long;

    #@45
    const-wide/16 v2, 0x0

    #@47
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@4a
    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    #@4c
    .line 5651
    new-array v0, v1, [Ljava/lang/String;

    #@4e
    .line 5652
    const-string/jumbo v1, "SILENT"

    #@51
    const/4 v2, 0x0

    #@52
    aput-object v1, v0, v2

    #@54
    .line 5653
    const-string/jumbo v1, "VIBRATE"

    #@57
    const/4 v2, 0x1

    #@58
    aput-object v1, v0, v2

    #@5a
    .line 5654
    const-string/jumbo v1, "NORMAL"

    #@5d
    const/4 v2, 0x2

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 5651
    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    #@62
    .line 140
    return-void

    #@63
    .line 262
    nop

    #@64
    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
    .end array-data

    #@7c
    .line 276
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    #@94
    .line 340
    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/16 v3, 0xa

    #@3
    const/4 v2, 0x3

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v6, 0x0

    #@6
    .line 576
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    #@9
    .line 183
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    #@b
    invoke-direct {v0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@10
    .line 184
    new-instance v0, Lcom/android/server/audio/AudioService$ControllerService;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$ControllerService;-><init>(Lcom/android/server/audio/AudioService;)V

    #@15
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@17
    .line 244
    iput v6, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@19
    .line 246
    new-instance v0, Ljava/lang/Object;

    #@1b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@20
    .line 249
    new-instance v0, Ljava/lang/Object;

    #@22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    #@27
    .line 259
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@29
    const/4 v1, 0x2

    #@2a
    filled-new-array {v3, v1}, [I

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, [[I

    #@34
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    #@36
    .line 298
    new-array v0, v3, [I

    #@38
    fill-array-data v0, :array_0

    #@3b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    #@3d
    .line 310
    new-array v0, v3, [I

    #@3f
    fill-array-data v0, :array_1

    #@42
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    #@44
    .line 322
    new-array v0, v3, [I

    #@46
    fill-array-data v0, :array_2

    #@49
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    #@4b
    .line 355
    new-instance v0, Lcom/android/server/audio/AudioService$1;

    #@4d
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    #@50
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    #@52
    .line 375
    iput v11, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@54
    .line 378
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@56
    .line 398
    new-instance v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    #@58
    invoke-direct {v0, p0, v5}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V

    #@5b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@5d
    .line 425
    new-instance v0, Landroid/util/ArrayMap;

    #@5f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@62
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@64
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    #@66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@69
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@6b
    .line 435
    new-instance v0, Ljava/util/ArrayList;

    #@6d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@70
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@72
    .line 486
    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    #@74
    .line 490
    iput v6, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    #@76
    .line 495
    iput v11, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@78
    .line 496
    new-instance v0, Ljava/lang/Object;

    #@7a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@7d
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    #@7f
    .line 500
    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@81
    .line 504
    iput v6, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    #@83
    .line 505
    iput v6, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    #@85
    .line 509
    new-instance v0, Ljava/lang/Object;

    #@87
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8a
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@8c
    .line 512
    new-instance v0, Landroid/media/AudioRoutesInfo;

    #@8e
    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    #@91
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@93
    .line 514
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@95
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@98
    .line 513
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    #@9a
    .line 517
    const v0, 0x2c1c00

    #@9d
    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@9f
    .line 523
    iput v6, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@a1
    .line 529
    const/4 v0, 0x1

    #@a2
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    #@a4
    .line 531
    iput v6, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    #@a6
    .line 545
    new-instance v0, Ljava/lang/Object;

    #@a8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@ab
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@ad
    .line 547
    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@af
    .line 554
    sget-object v0, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    #@b1
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@b3
    .line 1719
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@b5
    .line 1721
    new-instance v0, Ljava/util/ArrayList;

    #@b7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@ba
    .line 1720
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@bc
    .line 2957
    new-instance v0, Lcom/android/server/audio/AudioService$2;

    #@be
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    #@c1
    .line 2956
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@c3
    .line 4757
    const v0, 0x27f8c

    #@c6
    .line 4756
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@c8
    .line 5439
    iput v6, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    #@ca
    .line 5443
    const/16 v0, 0xc

    #@cc
    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    #@ce
    .line 5551
    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@d0
    .line 5562
    new-instance v0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    #@d2
    invoke-direct {v0, p0, v5}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;)V

    #@d5
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    #@d7
    .line 6079
    new-instance v0, Lcom/android/server/audio/AudioService$3;

    #@d9
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    #@dc
    .line 6078
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    #@de
    .line 6168
    new-instance v0, Ljava/util/HashMap;

    #@e0
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e3
    .line 6167
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@e5
    .line 6169
    iput v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    #@e7
    .line 577
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@e9
    .line 578
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ec
    move-result-object v0

    #@ed
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@ef
    .line 579
    const-string/jumbo v0, "appops"

    #@f2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f5
    move-result-object v0

    #@f6
    check-cast v0, Landroid/app/AppOpsManager;

    #@f8
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@fa
    .line 581
    invoke-static {p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    #@fd
    move-result v0

    #@fe
    iput v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@100
    .line 583
    const-string/jumbo v0, "power"

    #@103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@106
    move-result-object v9

    #@107
    check-cast v9, Landroid/os/PowerManager;

    #@109
    .line 584
    .local v9, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "handleAudioEvent"

    #@10c
    const/4 v1, 0x1

    #@10d
    invoke-virtual {v9, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@110
    move-result-object v0

    #@111
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@113
    .line 586
    const-string/jumbo v0, "vibrator"

    #@116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@119
    move-result-object v10

    #@11a
    check-cast v10, Landroid/os/Vibrator;

    #@11c
    .line 587
    .local v10, "vibrator":Landroid/os/Vibrator;
    if-nez v10, :cond_4

    #@11e
    move v0, v6

    #@11f
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@121
    .line 590
    const-string/jumbo v0, "ro.config.vc_call_vol_steps"

    #@124
    .line 591
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@126
    aget v1, v1, v6

    #@128
    .line 590
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@12b
    move-result v8

    #@12c
    .line 592
    .local v8, "maxVolume":I
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@12e
    aget v0, v0, v6

    #@130
    if-eq v8, v0, :cond_0

    #@132
    .line 593
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@134
    aput v8, v0, v6

    #@136
    .line 594
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@138
    mul-int/lit8 v1, v8, 0x3

    #@13a
    div-int/lit8 v1, v1, 0x4

    #@13c
    aput v1, v0, v6

    #@13e
    .line 596
    :cond_0
    const-string/jumbo v0, "ro.config.media_vol_steps"

    #@141
    .line 597
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@143
    aget v1, v1, v2

    #@145
    .line 596
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@148
    move-result v8

    #@149
    .line 598
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@14b
    aget v0, v0, v2

    #@14d
    if-eq v8, v0, :cond_1

    #@14f
    .line 599
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@151
    aput v8, v0, v2

    #@153
    .line 600
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@155
    mul-int/lit8 v1, v8, 0x3

    #@157
    div-int/lit8 v1, v1, 0x4

    #@159
    aput v1, v0, v2

    #@15b
    .line 603
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15e
    move-result-object v0

    #@15f
    .line 604
    const v1, 0x10e0004

    #@162
    .line 603
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@165
    move-result v0

    #@166
    sput v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    #@168
    .line 606
    iput v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@16a
    .line 608
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    #@16d
    .line 610
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    #@16f
    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    #@172
    .line 612
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    #@175
    move-result v7

    #@176
    .line 613
    .local v7, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    #@178
    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    #@17b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@17d
    .line 614
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@17f
    .line 618
    if-eqz v7, :cond_5

    #@181
    .line 619
    const/16 v4, 0xb

    #@183
    .line 615
    :goto_1
    const/16 v1, 0x8

    #@185
    .line 616
    const/4 v2, 0x2

    #@186
    .line 617
    const/4 v3, 0x4

    #@187
    .line 614
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@18a
    .line 623
    new-instance v0, Ljava/lang/Integer;

    #@18c
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@18e
    .line 624
    const-string/jumbo v2, "audio_safe_volume_state"

    #@191
    .line 623
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@194
    move-result v1

    #@195
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@198
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@19a
    .line 628
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@19c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19f
    move-result-object v0

    #@1a0
    .line 629
    const v1, 0x10e0086

    #@1a3
    .line 628
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@1a6
    move-result v0

    #@1a7
    mul-int/lit8 v0, v0, 0xa

    #@1a9
    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@1ab
    .line 631
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@1ad
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b0
    move-result-object v0

    #@1b1
    .line 632
    const v1, 0x1120079

    #@1b4
    .line 631
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1b7
    move-result v0

    #@1b8
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@1ba
    .line 636
    const-string/jumbo v0, "AudioService"

    #@1bd
    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    #@1c0
    .line 637
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    #@1c3
    .line 638
    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    #@1c5
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    #@1c8
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    #@1ca
    .line 639
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    #@1cd
    .line 641
    new-instance v0, Lcom/android/server/audio/MediaFocusControl;

    #@1cf
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@1d1
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    #@1d4
    move-result-object v1

    #@1d5
    .line 642
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@1d7
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@1d9
    .line 641
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V

    #@1dc
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@1de
    .line 644
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    #@1e1
    .line 648
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@1e3
    .line 649
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@1e6
    move-result v0

    #@1e7
    invoke-direct {p0, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@1ea
    .line 653
    new-instance v4, Landroid/content/IntentFilter;

    #@1ec
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    #@1ef
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1f2
    .line 654
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    #@1f5
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f8
    .line 655
    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    #@1fb
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1fe
    .line 656
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    #@201
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@204
    .line 657
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@207
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20a
    .line 658
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@20d
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@210
    .line 659
    const-string/jumbo v0, "android.intent.action.USER_BACKGROUND"

    #@213
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@216
    .line 660
    const-string/jumbo v0, "android.intent.action.USER_FOREGROUND"

    #@219
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@21c
    .line 661
    const-string/jumbo v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    #@21f
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@222
    .line 663
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    #@225
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@228
    .line 665
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    #@22b
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@22e
    move-result v0

    #@22f
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    #@231
    .line 666
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    #@233
    if-eqz v0, :cond_2

    #@235
    .line 667
    const-string/jumbo v0, "AudioService"

    #@238
    const-string/jumbo v1, "monitoring device orientation"

    #@23b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@23e
    .line 669
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    #@241
    .line 671
    :cond_2
    const-string/jumbo v0, "ro.audio.monitorRotation"

    #@244
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@247
    move-result v0

    #@248
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    #@24a
    .line 672
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    #@24c
    if-eqz v0, :cond_3

    #@24e
    .line 673
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@250
    const-string/jumbo v1, "window"

    #@253
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@256
    move-result-object v0

    #@257
    check-cast v0, Landroid/view/WindowManager;

    #@259
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@25c
    move-result-object v0

    #@25d
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    #@260
    move-result v0

    #@261
    iput v0, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    #@263
    .line 675
    const-string/jumbo v0, "AudioService"

    #@266
    new-instance v1, Ljava/lang/StringBuilder;

    #@268
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26b
    const-string/jumbo v2, "monitoring device rotation, initial="

    #@26e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v1

    #@272
    iget v2, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    #@274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@277
    move-result-object v1

    #@278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27b
    move-result-object v1

    #@27c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27f
    .line 677
    new-instance v0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    #@281
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@283
    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;-><init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    #@286
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    #@288
    .line 678
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    #@28a
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->enable()V

    #@28d
    .line 681
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setRotationForAudioSystem()V

    #@290
    .line 684
    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@292
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@294
    move-object v1, p1

    #@295
    move-object v6, v5

    #@296
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@299
    .line 686
    const-class v0, Landroid/media/AudioManagerInternal;

    #@29b
    new-instance v1, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    #@29d
    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    #@2a0
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@2a3
    .line 576
    return-void

    #@2a4
    .line 587
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "maxVolume":I
    :cond_4
    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    #@2a7
    move-result v0

    #@2a8
    goto/16 :goto_0

    #@2aa
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "maxVolume":I
    :cond_5
    move v4, v6

    #@2ab
    .line 619
    goto/16 :goto_1

    #@2ad
    .line 298
    nop

    #@2ae
    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data

    #@2c6
    .line 310
    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    #@2de
    .line 322
    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data
.end method

.method private adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 28
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    #@0
    .prologue
    .line 1134
    move-object/from16 v0, p0

    #@2
    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 1135
    return-void

    #@7
    .line 1137
    :cond_0
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@9
    if-eqz v5, :cond_1

    #@b
    const-string/jumbo v5, "AudioService"

    #@e
    new-instance v6, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v7, "adjustStreamVolume() stream="

    #@16
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v6

    #@1a
    move/from16 v0, p1

    #@1c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    const-string/jumbo v7, ", dir="

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    move/from16 v0, p2

    #@29
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 1138
    const-string/jumbo v7, ", flags="

    #@30
    .line 1137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    move/from16 v0, p3

    #@36
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 1138
    const-string/jumbo v7, ", caller="

    #@3d
    .line 1137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    move-object/from16 v0, p5

    #@43
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1140
    :cond_1
    move-object/from16 v0, p0

    #@50
    move/from16 v1, p2

    #@52
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    #@55
    .line 1141
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@58
    .line 1143
    move-object/from16 v0, p0

    #@5a
    move/from16 v1, p2

    #@5c
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    #@5f
    move-result v19

    #@60
    .line 1145
    .local v19, "isMuteAdjust":Z
    if-eqz v19, :cond_2

    #@62
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    #@65
    move-result v5

    #@66
    if-eqz v5, :cond_3

    #@68
    .line 1152
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@6c
    aget v8, v5, p1

    #@6e
    .line 1154
    .local v8, "streamTypeAlias":I
    move-object/from16 v0, p0

    #@70
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@72
    aget-object v14, v5, v8

    #@74
    .line 1156
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    #@76
    invoke-direct {v0, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@79
    move-result v12

    #@7a
    .line 1158
    .local v12, "device":I
    invoke-virtual {v14, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@7d
    move-result v17

    #@7e
    .line 1159
    .local v17, "aliasIndex":I
    const/16 v16, 0x1

    #@80
    .line 1164
    .local v16, "adjustVolume":Z
    and-int/lit16 v5, v12, 0x380

    #@82
    if-nez v5, :cond_4

    #@84
    .line 1165
    and-int/lit8 v5, p3, 0x40

    #@86
    if-eqz v5, :cond_4

    #@88
    .line 1166
    return-void

    #@89
    .line 1146
    .end local v8    # "streamTypeAlias":I
    .end local v12    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v16    # "adjustVolume":Z
    .end local v17    # "aliasIndex":I
    :cond_3
    return-void

    #@8a
    .line 1171
    .restart local v8    # "streamTypeAlias":I
    .restart local v12    # "device":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v16    # "adjustVolume":Z
    .restart local v17    # "aliasIndex":I
    :cond_4
    const/16 v5, 0x3e8

    #@8c
    move/from16 v0, p6

    #@8e
    if-ne v0, v5, :cond_5

    #@90
    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    #@93
    move-result v5

    #@94
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    #@97
    move-result v6

    #@98
    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    #@9b
    move-result p6

    #@9c
    .line 1174
    :cond_5
    move-object/from16 v0, p0

    #@9e
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@a0
    sget-object v6, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    #@a2
    aget v6, v6, v8

    #@a4
    move/from16 v0, p6

    #@a6
    move-object/from16 v1, p4

    #@a8
    invoke-virtual {v5, v6, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@ab
    move-result v5

    #@ac
    if-eqz v5, :cond_6

    #@ae
    .line 1176
    return-void

    #@af
    .line 1180
    :cond_6
    move-object/from16 v0, p0

    #@b1
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@b3
    monitor-enter v5

    #@b4
    .line 1181
    const/4 v6, 0x0

    #@b5
    :try_start_0
    move-object/from16 v0, p0

    #@b7
    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b9
    monitor-exit v5

    #@ba
    .line 1184
    and-int/lit8 p3, p3, -0x21

    #@bc
    .line 1185
    const/4 v5, 0x3

    #@bd
    if-ne v8, v5, :cond_12

    #@bf
    .line 1186
    move-object/from16 v0, p0

    #@c1
    iget v5, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@c3
    and-int/2addr v5, v12

    #@c4
    if-eqz v5, :cond_12

    #@c6
    .line 1187
    or-int/lit8 p3, p3, 0x20

    #@c8
    .line 1192
    move-object/from16 v0, p0

    #@ca
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@cc
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@cf
    move-result v5

    #@d0
    const/4 v6, 0x3

    #@d1
    if-ne v5, v6, :cond_11

    #@d3
    .line 1193
    and-int/lit8 v5, v12, 0xc

    #@d5
    if-eqz v5, :cond_11

    #@d7
    .line 1194
    move-object/from16 v0, p0

    #@d9
    iget v0, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@db
    move/from16 v26, v0

    #@dd
    .line 1198
    .local v26, "step":I
    :goto_0
    if-eqz v17, :cond_7

    #@df
    .line 1199
    move/from16 v17, v26

    #@e1
    .line 1208
    :cond_7
    :goto_1
    and-int/lit8 v5, p3, 0x2

    #@e3
    if-nez v5, :cond_8

    #@e5
    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    #@e8
    move-result v5

    #@e9
    if-ne v8, v5, :cond_b

    #@eb
    .line 1210
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@ee
    move-result v24

    #@ef
    .line 1212
    .local v24, "ringerMode":I
    const/4 v5, 0x1

    #@f0
    move/from16 v0, v24

    #@f2
    if-ne v0, v5, :cond_9

    #@f4
    .line 1213
    and-int/lit8 p3, p3, -0x11

    #@f6
    .line 1218
    :cond_9
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@f9
    move-result v5

    #@fa
    .line 1217
    move-object/from16 v0, p0

    #@fc
    move/from16 v1, v17

    #@fe
    move/from16 v2, p2

    #@100
    move/from16 v3, v26

    #@102
    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZ)I

    #@105
    move-result v23

    #@106
    .line 1219
    .local v23, "result":I
    and-int/lit8 v5, v23, 0x1

    #@108
    if-eqz v5, :cond_13

    #@10a
    const/16 v16, 0x1

    #@10c
    .line 1221
    :goto_2
    move/from16 v0, v23

    #@10e
    and-int/lit16 v5, v0, 0x80

    #@110
    if-eqz v5, :cond_a

    #@112
    .line 1222
    move/from16 v0, p3

    #@114
    or-int/lit16 v0, v0, 0x80

    #@116
    move/from16 p3, v0

    #@118
    .line 1225
    :cond_a
    move/from16 v0, v23

    #@11a
    and-int/lit16 v5, v0, 0x800

    #@11c
    if-eqz v5, :cond_b

    #@11e
    .line 1226
    move/from16 v0, p3

    #@120
    or-int/lit16 v0, v0, 0x800

    #@122
    move/from16 p3, v0

    #@124
    .line 1230
    .end local v23    # "result":I
    .end local v24    # "ringerMode":I
    :cond_b
    const/4 v5, 0x3

    #@125
    if-ne v8, v5, :cond_c

    #@127
    .line 1231
    move-object/from16 v0, p0

    #@129
    iget v5, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@12b
    and-int/lit8 v5, v5, 0x8

    #@12d
    if-eqz v5, :cond_c

    #@12f
    .line 1232
    const/16 v16, 0x0

    #@131
    .line 1235
    :cond_c
    move-object/from16 v0, p0

    #@133
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@135
    aget-object v5, v5, p1

    #@137
    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@13a
    move-result v22

    #@13b
    .line 1237
    .local v22, "oldIndex":I
    if-eqz v16, :cond_20

    #@13d
    if-eqz p2, :cond_20

    #@13f
    .line 1238
    move-object/from16 v0, p0

    #@141
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@143
    const/16 v6, 0x18

    #@145
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    #@148
    .line 1241
    const/4 v5, 0x3

    #@149
    if-ne v8, v5, :cond_e

    #@14b
    .line 1242
    and-int/lit16 v5, v12, 0x380

    #@14d
    if-eqz v5, :cond_e

    #@14f
    .line 1243
    and-int/lit8 v5, p3, 0x40

    #@151
    if-nez v5, :cond_e

    #@153
    .line 1244
    move-object/from16 v0, p0

    #@155
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@157
    monitor-enter v6

    #@158
    .line 1245
    :try_start_1
    move-object/from16 v0, p0

    #@15a
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@15c
    if-eqz v5, :cond_d

    #@15e
    move-object/from16 v0, p0

    #@160
    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@162
    if-eqz v5, :cond_d

    #@164
    .line 1246
    move-object/from16 v0, p0

    #@166
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@168
    move/from16 v0, p2

    #@16a
    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16d
    :cond_d
    monitor-exit v6

    #@16e
    .line 1251
    :cond_e
    if-eqz v19, :cond_19

    #@170
    .line 1253
    const/16 v5, 0x65

    #@172
    move/from16 v0, p2

    #@174
    if-ne v0, v5, :cond_15

    #@176
    .line 1254
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@179
    move-result v5

    #@17a
    if-eqz v5, :cond_14

    #@17c
    const/16 v25, 0x0

    #@17e
    .line 1258
    .local v25, "state":Z
    :goto_3
    const/4 v5, 0x3

    #@17f
    if-ne v8, v5, :cond_f

    #@181
    .line 1259
    move-object/from16 v0, p0

    #@183
    move/from16 v1, v25

    #@185
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    #@188
    .line 1261
    :cond_f
    const/16 v27, 0x0

    #@18a
    .local v27, "stream":I
    :goto_4
    move-object/from16 v0, p0

    #@18c
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@18e
    array-length v5, v5

    #@18f
    move/from16 v0, v27

    #@191
    if-ge v0, v5, :cond_1d

    #@193
    .line 1262
    move-object/from16 v0, p0

    #@195
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@197
    aget v5, v5, v27

    #@199
    if-ne v8, v5, :cond_10

    #@19b
    .line 1263
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    #@19e
    move-result v5

    #@19f
    if-eqz v5, :cond_18

    #@1a1
    .line 1264
    move-object/from16 v0, p0

    #@1a3
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@1a5
    aget-object v5, v5, v27

    #@1a7
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    #@1aa
    move-result v5

    #@1ab
    .line 1265
    const/4 v6, 0x7

    #@1ac
    .line 1264
    if-ne v5, v6, :cond_17

    #@1ae
    const/4 v5, 0x1

    #@1af
    .line 1263
    :goto_5
    if-nez v5, :cond_10

    #@1b1
    .line 1266
    move-object/from16 v0, p0

    #@1b3
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@1b5
    aget-object v5, v5, v27

    #@1b7
    move/from16 v0, v25

    #@1b9
    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@1bc
    .line 1261
    :cond_10
    add-int/lit8 v27, v27, 0x1

    #@1be
    goto :goto_4

    #@1bf
    .line 1180
    .end local v22    # "oldIndex":I
    .end local v25    # "state":Z
    .end local v26    # "step":I
    .end local v27    # "stream":I
    :catchall_0
    move-exception v6

    #@1c0
    monitor-exit v5

    #@1c1
    throw v6

    #@1c2
    .line 1196
    :cond_11
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@1c5
    move-result v26

    #@1c6
    .restart local v26    # "step":I
    goto/16 :goto_0

    #@1c8
    .line 1203
    .end local v26    # "step":I
    :cond_12
    const/16 v5, 0xa

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    move/from16 v1, p1

    #@1ce
    invoke-direct {v0, v5, v1, v8}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    #@1d1
    move-result v26

    #@1d2
    .restart local v26    # "step":I
    goto/16 :goto_1

    #@1d4
    .line 1219
    .restart local v23    # "result":I
    .restart local v24    # "ringerMode":I
    :cond_13
    const/16 v16, 0x0

    #@1d6
    goto/16 :goto_2

    #@1d8
    .line 1244
    .end local v23    # "result":I
    .end local v24    # "ringerMode":I
    .restart local v22    # "oldIndex":I
    :catchall_1
    move-exception v5

    #@1d9
    monitor-exit v6

    #@1da
    throw v5

    #@1db
    .line 1254
    :cond_14
    const/16 v25, 0x1

    #@1dd
    .restart local v25    # "state":Z
    goto :goto_3

    #@1de
    .line 1256
    .end local v25    # "state":Z
    :cond_15
    const/16 v5, -0x64

    #@1e0
    move/from16 v0, p2

    #@1e2
    if-ne v0, v5, :cond_16

    #@1e4
    const/16 v25, 0x1

    #@1e6
    .restart local v25    # "state":Z
    goto :goto_3

    #@1e7
    .end local v25    # "state":Z
    :cond_16
    const/16 v25, 0x0

    #@1e9
    .restart local v25    # "state":Z
    goto :goto_3

    #@1ea
    .line 1264
    .restart local v27    # "stream":I
    :cond_17
    const/4 v5, 0x0

    #@1eb
    goto :goto_5

    #@1ec
    .line 1263
    :cond_18
    const/4 v5, 0x0

    #@1ed
    goto :goto_5

    #@1ee
    .line 1270
    .end local v25    # "state":Z
    .end local v27    # "stream":I
    :cond_19
    const/4 v5, 0x1

    #@1ef
    move/from16 v0, p2

    #@1f1
    if-ne v0, v5, :cond_1a

    #@1f3
    .line 1271
    add-int v5, v17, v26

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    invoke-direct {v0, v8, v5, v12}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    #@1fa
    move-result v5

    #@1fb
    if-eqz v5, :cond_21

    #@1fd
    .line 1274
    :cond_1a
    mul-int v5, p2, v26

    #@1ff
    move-object/from16 v0, p5

    #@201
    invoke-virtual {v14, v5, v12, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    #@204
    move-result v5

    #@205
    if-nez v5, :cond_1b

    #@207
    .line 1275
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@20a
    move-result v5

    #@20b
    .line 1274
    if-eqz v5, :cond_1d

    #@20d
    .line 1278
    :cond_1b
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@210
    move-result v5

    #@211
    if-eqz v5, :cond_1c

    #@213
    .line 1280
    const/4 v5, 0x1

    #@214
    move/from16 v0, p2

    #@216
    if-ne v0, v5, :cond_22

    #@218
    .line 1282
    const/4 v5, 0x0

    #@219
    invoke-virtual {v14, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@21c
    .line 1290
    :cond_1c
    :goto_6
    move-object/from16 v0, p0

    #@21e
    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@220
    .line 1291
    const/4 v10, 0x0

    #@221
    .line 1292
    const/4 v11, 0x2

    #@222
    .line 1294
    const/4 v13, 0x0

    #@223
    .line 1296
    const/4 v15, 0x0

    #@224
    .line 1290
    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@227
    .line 1300
    :cond_1d
    :goto_7
    move-object/from16 v0, p0

    #@229
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@22b
    aget-object v5, v5, p1

    #@22d
    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@230
    move-result v21

    #@231
    .line 1301
    .local v21, "newIndex":I
    const/4 v5, 0x3

    #@232
    if-ne v8, v5, :cond_1e

    #@234
    .line 1302
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    #@237
    move-result v5

    #@238
    move-object/from16 v0, p0

    #@23a
    move/from16 v1, v22

    #@23c
    move/from16 v2, v21

    #@23e
    move/from16 v3, p3

    #@240
    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    #@243
    .line 1304
    :cond_1e
    move-object/from16 v0, p0

    #@245
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@247
    if-eqz v5, :cond_20

    #@249
    .line 1305
    move-object/from16 v0, p0

    #@24b
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@24d
    monitor-enter v6

    #@24e
    .line 1307
    :try_start_2
    move-object/from16 v0, p0

    #@250
    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    #@252
    if-eqz v5, :cond_1f

    #@254
    .line 1308
    const/4 v5, 0x3

    #@255
    if-ne v8, v5, :cond_1f

    #@257
    .line 1309
    move/from16 v0, v22

    #@259
    move/from16 v1, v21

    #@25b
    if-eq v0, v1, :cond_1f

    #@25d
    .line 1310
    move-object/from16 v0, p0

    #@25f
    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@261
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@262
    .line 1311
    const/4 v5, -0x1

    #@263
    move/from16 v0, p2

    #@265
    if-ne v0, v5, :cond_23

    #@267
    const/16 v20, 0x19

    #@269
    .line 1313
    .local v20, "keyCode":I
    :goto_8
    :try_start_3
    move-object/from16 v0, p0

    #@26b
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@26d
    const/4 v9, 0x1

    #@26e
    move/from16 v0, v20

    #@270
    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    #@273
    .line 1314
    move-object/from16 v0, p0

    #@275
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@277
    const/4 v9, 0x0

    #@278
    move/from16 v0, v20

    #@27a
    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@27d
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@27e
    .end local v20    # "keyCode":I
    :cond_1f
    monitor-exit v6

    #@27f
    .line 1320
    .end local v21    # "newIndex":I
    :cond_20
    move-object/from16 v0, p0

    #@281
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@283
    aget-object v5, v5, p1

    #@285
    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@288
    move-result v18

    #@289
    .line 1321
    .local v18, "index":I
    move-object/from16 v0, p0

    #@28b
    move/from16 v1, p1

    #@28d
    move/from16 v2, v22

    #@28f
    move/from16 v3, v18

    #@291
    move/from16 v4, p3

    #@293
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    #@296
    .line 1133
    return-void

    #@297
    .line 1272
    .end local v18    # "index":I
    :cond_21
    const-string/jumbo v5, "AudioService"

    #@29a
    new-instance v6, Ljava/lang/StringBuilder;

    #@29c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@29f
    const-string/jumbo v7, "adjustStreamVolume() safe volume index = "

    #@2a2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v6

    #@2a6
    move/from16 v0, v22

    #@2a8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v6

    #@2ac
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2af
    move-result-object v6

    #@2b0
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b3
    .line 1273
    move-object/from16 v0, p0

    #@2b5
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@2b7
    move/from16 v0, p3

    #@2b9
    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    #@2bc
    goto/16 :goto_7

    #@2be
    .line 1283
    :cond_22
    const/4 v5, -0x1

    #@2bf
    move/from16 v0, p2

    #@2c1
    if-ne v0, v5, :cond_1c

    #@2c3
    .line 1284
    move-object/from16 v0, p0

    #@2c5
    iget v5, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@2c7
    const/4 v6, 0x2

    #@2c8
    if-ne v5, v6, :cond_1c

    #@2ca
    .line 1285
    move-object/from16 v0, p0

    #@2cc
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2ce
    const/16 v6, 0x18

    #@2d0
    const/4 v7, 0x2

    #@2d1
    .line 1286
    const/4 v10, 0x0

    #@2d2
    const/16 v11, 0x15e

    #@2d4
    move/from16 v9, p3

    #@2d6
    .line 1285
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@2d9
    goto/16 :goto_6

    #@2db
    .line 1312
    .restart local v21    # "newIndex":I
    :cond_23
    const/16 v20, 0x18

    #@2dd
    .restart local v20    # "keyCode":I
    goto :goto_8

    #@2de
    .line 1310
    :catchall_2
    move-exception v5

    #@2df
    :try_start_5
    monitor-exit v7

    #@2e0
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@2e1
    .line 1305
    .end local v20    # "keyCode":I
    :catchall_3
    move-exception v5

    #@2e2
    monitor-exit v6

    #@2e3
    throw v5
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    #@0
    .prologue
    .line 1095
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "AudioService"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "adjustSuggestedStreamVolume() stream="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 1096
    const-string/jumbo v3, ", flags="

    #@1a
    .line 1095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1096
    const-string/jumbo v3, ", caller="

    #@25
    .line 1095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 1098
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    #@37
    move-result v7

    #@38
    .line 1099
    .local v7, "isMute":Z
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@3a
    const/4 v2, -0x1

    #@3b
    if-eq v0, v2, :cond_3

    #@3d
    .line 1100
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@3f
    .line 1104
    .local v1, "streamType":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@42
    .line 1105
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@44
    aget v8, v0, v1

    #@46
    .line 1108
    .local v8, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    #@48
    if-eqz v0, :cond_1

    #@4a
    .line 1109
    const/4 v0, 0x2

    #@4b
    if-eq v8, v0, :cond_1

    #@4d
    .line 1110
    and-int/lit8 p3, p3, -0x5

    #@4f
    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@51
    invoke-virtual {v0, v8, p3, v7}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_2

    #@57
    .line 1116
    const/4 p1, 0x0

    #@58
    .line 1117
    and-int/lit8 p3, p3, -0x5

    #@5a
    .line 1118
    and-int/lit8 p3, p3, -0x11

    #@5c
    .line 1119
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@5e
    if-eqz v0, :cond_2

    #@60
    const-string/jumbo v0, "AudioService"

    #@63
    const-string/jumbo v2, "Volume controller suppressed adjustment"

    #@66
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    :cond_2
    move-object v0, p0

    #@6a
    move v2, p1

    #@6b
    move v3, p3

    #@6c
    move-object v4, p4

    #@6d
    move-object v5, p5

    #@6e
    move v6, p6

    #@6f
    .line 1122
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@72
    .line 1094
    return-void

    #@73
    .line 1102
    .end local v1    # "streamType":I
    .end local v8    # "resolvedStream":I
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    #@76
    move-result v1

    #@77
    .restart local v1    # "streamType":I
    goto :goto_0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 1600
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1601
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@e
    .line 1602
    const/high16 v1, 0x24000000

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@13
    .line 1604
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@16
    .line 1599
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    #@0
    .prologue
    .line 3474
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    .line 3475
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_RINGER_MODE"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 3476
    const/high16 v1, 0x24000000

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@10
    .line 3478
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@13
    .line 3472
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2898
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@3
    const/16 v1, 0x13

    #@5
    .line 2899
    const/4 v2, 0x2

    #@6
    const/4 v5, 0x0

    #@7
    move v3, p1

    #@8
    move v6, v4

    #@9
    .line 2898
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@c
    .line 2897
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    #@0
    .prologue
    .line 3483
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 3484
    new-instance v0, Landroid/content/Intent;

    #@8
    const-string/jumbo v1, "android.media.VIBRATE_SETTING_CHANGED"

    #@b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 3485
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_VIBRATE_TYPE"

    #@11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 3486
    const-string/jumbo v1, "android.media.EXTRA_VIBRATE_SETTING"

    #@17
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1e
    .line 3487
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    #@21
    .line 3481
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    #@0
    .prologue
    .line 4605
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    #@6
    .line 4604
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    #@0
    .prologue
    .line 865
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v3

    #@3
    .line 866
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@6
    move-result v0

    #@7
    .line 867
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    #@8
    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 868
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@c
    aget v2, v2, v1

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 869
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@12
    aget-object v2, v2, v1

    #@14
    .line 870
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@16
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@18
    aget v5, v5, v1

    #@1a
    aget-object v4, v4, v5

    #@1c
    .line 871
    const-string/jumbo v5, "AudioService"

    #@1f
    .line 869
    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    #@22
    .line 874
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@24
    aget-object v2, v2, v1

    #@26
    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_1

    #@2c
    .line 875
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2e
    aget-object v2, v2, v1

    #@30
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 867
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    :cond_2
    monitor-exit v3

    #@37
    .line 864
    return-void

    #@38
    .line 865
    .end local v0    # "numStreamTypes":I
    .end local v1    # "streamType":I
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    #@0
    .prologue
    .line 883
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@3
    move-result v0

    #@4
    .line 884
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    #@5
    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 885
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@9
    aget-object v2, v2, v1

    #@b
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    #@e
    .line 884
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 881
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    #@7
    .line 889
    return-void
.end method

.method private checkForRingerModeChange(IIIZ)I
    .locals 11
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z

    #@0
    .prologue
    const/16 v10, 0x64

    #@2
    const/16 v9, 0x65

    #@4
    const/4 v8, 0x1

    #@5
    const/4 v7, 0x2

    #@6
    const/4 v6, -0x1

    #@7
    .line 3210
    iget v5, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@9
    if-ne v5, v7, :cond_1

    #@b
    const/4 v2, 0x1

    #@c
    .line 3211
    .local v2, "isTv":Z
    :goto_0
    const/4 v3, 0x1

    #@d
    .line 3212
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@10
    move-result v4

    #@11
    .line 3214
    .local v4, "ringerMode":I
    packed-switch v4, :pswitch_data_0

    #@14
    .line 3294
    const-string/jumbo v5, "AudioService"

    #@17
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v7, "checkForRingerModeChange() wrong ringer mode: "

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 3298
    :cond_0
    :goto_1
    const-string/jumbo v5, "AudioService.checkForRingerModeChange"

    #@31
    const/4 v6, 0x0

    #@32
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    #@35
    .line 3300
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    #@37
    .line 3302
    return v3

    #@38
    .line 3210
    .end local v2    # "isTv":Z
    .end local v3    # "result":I
    .end local v4    # "ringerMode":I
    :cond_1
    const/4 v2, 0x0

    #@39
    .restart local v2    # "isTv":Z
    goto :goto_0

    #@3a
    .line 3216
    .restart local v3    # "result":I
    .restart local v4    # "ringerMode":I
    :pswitch_0
    if-ne p2, v6, :cond_3

    #@3c
    .line 3217
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@3e
    if-eqz v5, :cond_2

    #@40
    .line 3223
    if-gt p3, p1, :cond_0

    #@42
    mul-int/lit8 v5, p3, 0x2

    #@44
    if-ge p1, v5, :cond_0

    #@46
    .line 3224
    const/4 v4, 0x1

    #@47
    .line 3225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4a
    move-result-wide v6

    #@4b
    iput-wide v6, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    #@4d
    goto :goto_1

    #@4e
    .line 3228
    :cond_2
    if-ne p1, p3, :cond_0

    #@50
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@52
    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@54
    if-eqz v5, :cond_0

    #@56
    .line 3229
    const/4 v4, 0x0

    #@57
    goto :goto_1

    #@58
    .line 3232
    :cond_3
    if-eqz v2, :cond_0

    #@5a
    if-eq p2, v9, :cond_4

    #@5c
    .line 3233
    const/16 v5, -0x64

    #@5e
    if-ne p2, v5, :cond_0

    #@60
    .line 3234
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@62
    if-eqz v5, :cond_5

    #@64
    .line 3235
    const/4 v4, 0x1

    #@65
    .line 3240
    :goto_2
    const/4 v3, 0x0

    #@66
    goto :goto_1

    #@67
    .line 3237
    :cond_5
    const/4 v4, 0x0

    #@68
    goto :goto_2

    #@69
    .line 3244
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@6b
    if-nez v5, :cond_6

    #@6d
    .line 3245
    const-string/jumbo v5, "AudioService"

    #@70
    const-string/jumbo v6, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    #@73
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    goto :goto_1

    #@77
    .line 3249
    :cond_6
    if-ne p2, v6, :cond_a

    #@79
    .line 3251
    if-eqz v2, :cond_8

    #@7b
    mul-int/lit8 v5, p3, 0x2

    #@7d
    if-lt p1, v5, :cond_8

    #@7f
    if-eqz p4, :cond_8

    #@81
    .line 3252
    const/4 v4, 0x2

    #@82
    .line 3270
    :cond_7
    :goto_3
    and-int/lit8 v3, v3, -0x2

    #@84
    .line 3271
    goto :goto_1

    #@85
    .line 3253
    :cond_8
    iget v5, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    #@87
    if-eq v5, v6, :cond_7

    #@89
    .line 3254
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@8b
    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@8d
    if-eqz v5, :cond_9

    #@8f
    .line 3255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@92
    move-result-wide v6

    #@93
    .line 3256
    iget-wide v8, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    #@95
    .line 3255
    sub-long v0, v6, v8

    #@97
    .line 3257
    .local v0, "diff":J
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@99
    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    #@9b
    int-to-long v6, v5

    #@9c
    cmp-long v5, v0, v6

    #@9e
    if-lez v5, :cond_7

    #@a0
    .line 3258
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@a2
    invoke-interface {v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    #@a5
    move-result v5

    #@a6
    .line 3257
    if-eqz v5, :cond_7

    #@a8
    .line 3259
    const/4 v4, 0x0

    #@a9
    goto :goto_3

    #@aa
    .line 3262
    .end local v0    # "diff":J
    :cond_9
    const/16 v3, 0x801

    #@ac
    goto :goto_3

    #@ad
    .line 3265
    :cond_a
    if-eq p2, v8, :cond_b

    #@af
    .line 3266
    if-ne p2, v9, :cond_c

    #@b1
    .line 3268
    :cond_b
    :goto_4
    const/4 v4, 0x2

    #@b2
    goto :goto_3

    #@b3
    .line 3267
    :cond_c
    if-ne p2, v10, :cond_7

    #@b5
    goto :goto_4

    #@b6
    .line 3273
    :pswitch_2
    if-eqz v2, :cond_e

    #@b8
    if-ne p2, v6, :cond_e

    #@ba
    mul-int/lit8 v5, p3, 0x2

    #@bc
    if-lt p1, v5, :cond_e

    #@be
    if-eqz p4, :cond_e

    #@c0
    .line 3275
    const/4 v4, 0x2

    #@c1
    .line 3291
    :cond_d
    :goto_5
    and-int/lit8 v3, v3, -0x2

    #@c3
    .line 3292
    goto/16 :goto_1

    #@c5
    .line 3276
    :cond_e
    if-eq p2, v8, :cond_f

    #@c7
    .line 3277
    if-ne p2, v9, :cond_10

    #@c9
    .line 3279
    :cond_f
    :goto_6
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@cb
    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    #@cd
    if-nez v5, :cond_11

    #@cf
    .line 3280
    const/16 v3, 0x81

    #@d1
    goto :goto_5

    #@d2
    .line 3278
    :cond_10
    if-ne p2, v10, :cond_d

    #@d4
    goto :goto_6

    #@d5
    .line 3282
    :cond_11
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@d7
    if-eqz v5, :cond_12

    #@d9
    if-ne p2, v8, :cond_12

    #@db
    .line 3283
    const/4 v4, 0x1

    #@dc
    .line 3282
    goto :goto_5

    #@dd
    .line 3287
    :cond_12
    const/4 v4, 0x2

    #@de
    goto :goto_5

    #@df
    .line 3214
    nop

    #@e0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    #@0
    .prologue
    .line 895
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    array-length v2, v2

    #@4
    if-ge v0, v2, :cond_1

    #@6
    .line 896
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@8
    aget-object v1, v2, v0

    #@a
    .line 897
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@d
    move-result v2

    #@e
    if-lez v2, :cond_0

    #@10
    .line 898
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    #@12
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@15
    move-result v3

    #@16
    const/4 v4, 0x1

    #@17
    shl-int v3, v4, v3

    #@19
    not-int v3, v3

    #@1a
    and-int/2addr v2, v3

    #@1b
    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    #@1d
    .line 895
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 893
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v2, 0x0

    #@2
    .line 5502
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@4
    monitor-enter v1

    #@5
    .line 5503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@a
    move-result v0

    #@b
    if-ne v0, v3, :cond_0

    #@d
    .line 5504
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@f
    aget v0, v0, p1

    #@11
    if-ne v0, v3, :cond_0

    #@13
    .line 5505
    and-int/lit8 v0, p3, 0xc

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 5506
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-le p2, v0, :cond_0

    #@1b
    monitor-exit v1

    #@1c
    .line 5507
    return v2

    #@1d
    .line 5509
    :cond_0
    const/4 v0, 0x1

    #@1e
    monitor-exit v1

    #@1f
    return v0

    #@20
    .line 5502
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method private checkScoAudioState()V
    .locals 2

    #@0
    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2807
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@a
    if-nez v0, :cond_0

    #@c
    .line 2808
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@10
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    #@13
    move-result v0

    #@14
    .line 2809
    const/16 v1, 0xa

    #@16
    .line 2808
    if-eq v0, v1, :cond_0

    #@18
    .line 2810
    const/4 v0, 0x2

    #@19
    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@1b
    .line 2805
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    #@0
    .prologue
    .line 4765
    const/4 v7, 0x0

    #@1
    .line 4766
    .local v7, "delay":I
    if-nez p2, :cond_2

    #@3
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@5
    and-int/2addr v0, p1

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 4767
    const/4 v9, 0x0

    #@9
    .line 4768
    .local v9, "devices":I
    const/4 v10, 0x0

    #@a
    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v0

    #@10
    if-ge v10, v0, :cond_1

    #@12
    .line 4769
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@1a
    iget v8, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    #@1c
    .line 4770
    .local v8, "dev":I
    const/high16 v0, -0x80000000

    #@1e
    and-int/2addr v0, v8

    #@1f
    if-nez v0, :cond_0

    #@21
    .line 4771
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@23
    and-int/2addr v0, v8

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 4772
    or-int/2addr v9, v8

    #@27
    .line 4768
    :cond_0
    add-int/lit8 v10, v10, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 4775
    .end local v8    # "dev":I
    :cond_1
    if-ne v9, p1, :cond_2

    #@2c
    .line 4776
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2e
    .line 4777
    const/16 v1, 0xf

    #@30
    .line 4778
    const/4 v2, 0x0

    #@31
    .line 4779
    const/4 v3, 0x0

    #@32
    .line 4780
    const/4 v4, 0x0

    #@33
    .line 4781
    const/4 v5, 0x0

    #@34
    .line 4782
    const/4 v6, 0x0

    #@35
    .line 4776
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@38
    .line 4783
    const/16 v7, 0x3e8

    #@3a
    .line 4787
    .end local v9    # "devices":I
    .end local v10    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@3c
    const/16 v1, 0x65

    #@3e
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_3

    #@44
    .line 4788
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@46
    const/16 v1, 0x66

    #@48
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    #@4b
    move-result v0

    #@4c
    .line 4787
    if-nez v0, :cond_3

    #@4e
    .line 4789
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@50
    const/16 v1, 0x64

    #@52
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    #@55
    move-result v0

    #@56
    .line 4787
    if-eqz v0, :cond_5

    #@58
    .line 4790
    :cond_3
    sget-object v1, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    #@5a
    monitor-enter v1

    #@5b
    .line 4791
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5e
    move-result-wide v12

    #@5f
    .line 4792
    .local v12, "time":J
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    #@61
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@64
    move-result-wide v2

    #@65
    cmp-long v0, v2, v12

    #@67
    if-lez v0, :cond_4

    #@69
    .line 4793
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    #@6b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6e
    move-result-wide v2

    #@6f
    sub-long/2addr v2, v12

    #@70
    long-to-int v0, v2

    #@71
    add-int/lit8 v7, v0, 0x1e

    #@73
    :cond_4
    monitor-exit v1

    #@74
    .line 4797
    .end local v12    # "time":J
    :cond_5
    return v7

    #@75
    .line 4790
    :catchall_0
    move-exception v0

    #@76
    monitor-exit v1

    #@77
    throw v0
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 4926
    const-string/jumbo v17, "android.media.action.HDMI_AUDIO_PLUG"

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v17

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    .line 4927
    const-string/jumbo v17, "android.media.extra.AUDIO_PLUG_STATE"

    #@d
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, v17

    #@11
    move/from16 v2, p2

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@16
    .line 4928
    const/16 v17, 0x1

    #@18
    move/from16 v0, p2

    #@1a
    move/from16 v1, v17

    #@1c
    if-ne v0, v1, :cond_8

    #@1e
    .line 4929
    new-instance v15, Ljava/util/ArrayList;

    #@20
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 4930
    .local v15, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v17, 0x1

    #@25
    move/from16 v0, v17

    #@27
    new-array v14, v0, [I

    #@29
    .line 4931
    .local v14, "portGeneration":[I
    invoke-static {v15, v14}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    #@2c
    move-result v16

    #@2d
    .line 4932
    .local v16, "status":I
    if-nez v16, :cond_8

    #@2f
    .line 4933
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v13

    #@33
    .local v13, "port$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v17

    #@37
    if-eqz v17, :cond_8

    #@39
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v12

    #@3d
    check-cast v12, Landroid/media/AudioPort;

    #@3f
    .line 4934
    .local v12, "port":Landroid/media/AudioPort;
    instance-of v0, v12, Landroid/media/AudioDevicePort;

    #@41
    move/from16 v17, v0

    #@43
    if-eqz v17, :cond_0

    #@45
    move-object v4, v12

    #@46
    .line 4935
    check-cast v4, Landroid/media/AudioDevicePort;

    #@48
    .line 4936
    .local v4, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    #@4b
    move-result v17

    #@4c
    const/16 v18, 0x400

    #@4e
    move/from16 v0, v17

    #@50
    move/from16 v1, v18

    #@52
    if-eq v0, v1, :cond_1

    #@54
    .line 4937
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    #@57
    move-result v17

    #@58
    const/high16 v18, 0x40000

    #@5a
    move/from16 v0, v17

    #@5c
    move/from16 v1, v18

    #@5e
    if-ne v0, v1, :cond_0

    #@60
    .line 4939
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->formats()[I

    #@63
    move-result-object v17

    #@64
    invoke-static/range {v17 .. v17}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    #@67
    move-result-object v8

    #@68
    .line 4940
    .local v8, "formats":[I
    array-length v0, v8

    #@69
    move/from16 v17, v0

    #@6b
    if-lez v17, :cond_5

    #@6d
    .line 4941
    new-instance v6, Ljava/util/ArrayList;

    #@6f
    const/16 v17, 0x1

    #@71
    move/from16 v0, v17

    #@73
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@76
    .line 4942
    .local v6, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    #@78
    array-length v0, v8

    #@79
    move/from16 v18, v0

    #@7b
    :goto_1
    move/from16 v0, v17

    #@7d
    move/from16 v1, v18

    #@7f
    if-ge v0, v1, :cond_3

    #@81
    aget v7, v8, v17

    #@83
    .line 4944
    .local v7, "format":I
    if-eqz v7, :cond_2

    #@85
    .line 4945
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v19

    #@89
    move-object/from16 v0, v19

    #@8b
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e
    .line 4942
    :cond_2
    add-int/lit8 v17, v17, 0x1

    #@90
    goto :goto_1

    #@91
    .line 4948
    .end local v7    # "format":I
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@94
    move-result v17

    #@95
    move/from16 v0, v17

    #@97
    new-array v5, v0, [I

    #@99
    .line 4949
    .local v5, "encodingArray":[I
    const/4 v9, 0x0

    #@9a
    .local v9, "i":I
    :goto_2
    array-length v0, v5

    #@9b
    move/from16 v17, v0

    #@9d
    move/from16 v0, v17

    #@9f
    if-ge v9, v0, :cond_4

    #@a1
    .line 4950
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a4
    move-result-object v17

    #@a5
    check-cast v17, Ljava/lang/Integer;

    #@a7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@aa
    move-result v17

    #@ab
    aput v17, v5, v9

    #@ad
    .line 4949
    add-int/lit8 v9, v9, 0x1

    #@af
    goto :goto_2

    #@b0
    .line 4952
    :cond_4
    const-string/jumbo v17, "android.media.extra.ENCODINGS"

    #@b3
    move-object/from16 v0, p1

    #@b5
    move-object/from16 v1, v17

    #@b7
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@ba
    .line 4955
    .end local v5    # "encodingArray":[I
    .end local v6    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    :cond_5
    const/4 v11, 0x0

    #@bb
    .line 4956
    .local v11, "maxChannels":I
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->channelMasks()[I

    #@be
    move-result-object v18

    #@bf
    const/16 v17, 0x0

    #@c1
    move-object/from16 v0, v18

    #@c3
    array-length v0, v0

    #@c4
    move/from16 v19, v0

    #@c6
    :goto_3
    move/from16 v0, v17

    #@c8
    move/from16 v1, v19

    #@ca
    if-ge v0, v1, :cond_7

    #@cc
    aget v10, v18, v17

    #@ce
    .line 4957
    .local v10, "mask":I
    invoke-static {v10}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@d1
    move-result v3

    #@d2
    .line 4958
    .local v3, "channelCount":I
    if-le v3, v11, :cond_6

    #@d4
    .line 4959
    move v11, v3

    #@d5
    .line 4956
    :cond_6
    add-int/lit8 v17, v17, 0x1

    #@d7
    goto :goto_3

    #@d8
    .line 4962
    .end local v3    # "channelCount":I
    .end local v10    # "mask":I
    :cond_7
    const-string/jumbo v17, "android.media.extra.MAX_CHANNEL_COUNT"

    #@db
    move-object/from16 v0, p1

    #@dd
    move-object/from16 v1, v17

    #@df
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e2
    goto/16 :goto_0

    #@e4
    .line 4925
    .end local v4    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v8    # "formats":[I
    .end local v11    # "maxChannels":I
    .end local v12    # "port":Landroid/media/AudioPort;
    .end local v13    # "port$iterator":Ljava/util/Iterator;
    .end local v14    # "portGeneration":[I
    .end local v15    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v16    # "status":I
    :cond_8
    return-void
.end method

.method private createAudioSystemThread()V
    .locals 1

    #@0
    .prologue
    .line 845
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    #@5
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    #@7
    .line 846
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    #@9
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    #@c
    .line 847
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    #@f
    .line 844
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    #@0
    .prologue
    .line 904
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@3
    move-result v1

    #@4
    .line 905
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@6
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@8
    .line 907
    .local v2, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@b
    .line 908
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@d
    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    #@f
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@11
    aget v5, v5, v0

    #@13
    aget-object v4, v4, v5

    #@15
    const/4 v5, 0x0

    #@16
    invoke-direct {v3, p0, v4, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState;)V

    #@19
    aput-object v3, v2, v0

    #@1b
    .line 907
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 911
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    #@21
    .line 912
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    #@24
    .line 913
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    #@27
    .line 903
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1696
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 1697
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 1698
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    #@12
    .line 1699
    .local v0, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1700
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    #@1b
    .line 1701
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@20
    .line 1702
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 1705
    .end local v0    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .param p1, "exceptPid"    # I

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v1, 0x2

    #@2
    .line 2867
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@4
    monitor-enter v7

    #@5
    .line 2868
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    #@8
    .line 2869
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 2870
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@e
    if-ne v0, v2, :cond_3

    #@10
    .line 2871
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 2872
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 2873
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@1a
    .line 2874
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@1c
    .line 2873
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 2875
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@24
    const/16 v1, 0x9

    #@26
    .line 2876
    const/4 v2, 0x0

    #@27
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x0

    #@29
    const/4 v5, 0x0

    #@2a
    const/4 v6, 0x0

    #@2b
    .line 2875
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_1
    :goto_0
    monitor-exit v7

    #@2f
    .line 2866
    return-void

    #@30
    .line 2878
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@32
    if-ne v0, v1, :cond_1

    #@34
    .line 2879
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    #@37
    move-result v0

    #@38
    .line 2878
    if-eqz v0, :cond_1

    #@3a
    .line 2880
    const/4 v0, 0x4

    #@3b
    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 2867
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v7

    #@40
    throw v0

    #@41
    .line 2884
    :cond_3
    const/4 v0, 0x1

    #@42
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_0
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 6067
    const-string/jumbo v2, "\nAudio policies:"

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 6068
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@8
    monitor-enter v3

    #@9
    .line 6069
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@b
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "policy$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@1f
    .line 6070
    .local v0, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 6068
    .end local v0    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v1    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .restart local v1    # "policy$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@2b
    .line 6066
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 5658
    const-string/jumbo v0, "\nRinger mode: "

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 5659
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "- mode (internal) = "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    #@14
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@16
    aget-object v1, v1, v2

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23
    .line 5660
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "- mode (external) = "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    #@31
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@33
    aget-object v1, v1, v2

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 5661
    const-string/jumbo v0, "affected"

    #@43
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@45
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    #@48
    .line 5662
    const-string/jumbo v0, "muted"

    #@4b
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@4d
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    #@50
    .line 5663
    const-string/jumbo v0, "- delegate = "

    #@53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5b
    .line 5657
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    .line 5667
    const-string/jumbo v3, "- ringer mode "

    #@5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    const-string/jumbo v3, " streams = 0x"

    #@e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 5668
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 5669
    if-eqz p3, :cond_5

    #@1a
    .line 5670
    const-string/jumbo v3, " ("

    #@1d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 5671
    const/4 v0, 0x1

    #@21
    .line 5672
    .local v0, "first":Z
    const/4 v1, 0x0

    #@22
    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    #@24
    array-length v3, v3

    #@25
    if-ge v1, v3, :cond_2

    #@27
    .line 5673
    const/4 v3, 0x1

    #@28
    shl-int v2, v3, v1

    #@2a
    .line 5674
    .local v2, "stream":I
    and-int v3, p3, v2

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 5675
    if-nez v0, :cond_0

    #@30
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@33
    .line 5676
    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    #@35
    aget-object v3, v3, v1

    #@37
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 5677
    not-int v3, v2

    #@3b
    and-int/2addr p3, v3

    #@3c
    .line 5678
    const/4 v0, 0x0

    #@3d
    .line 5672
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 5681
    .end local v2    # "stream":I
    :cond_2
    if-eqz p3, :cond_4

    #@42
    .line 5682
    if-nez v0, :cond_3

    #@44
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@47
    .line 5683
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@4a
    .line 5685
    :cond_4
    const/16 v3, 0x29

    #@4c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    #@4f
    .line 5687
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@52
    .line 5666
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 917
    const-string/jumbo v2, "\nStream volumes (device: index)"

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 918
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@9
    move-result v1

    #@a
    .line 919
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "- "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    #@1b
    aget-object v3, v3, v0

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, ":"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f
    .line 921
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@31
    aget-object v2, v2, v0

    #@33
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    #@36
    .line 922
    const-string/jumbo v2, ""

    #@39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 919
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 924
    :cond_0
    const-string/jumbo v2, "\n- mute affected streams = 0x"

    #@42
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    .line 925
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    #@47
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 916
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5477
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    const/4 v2, 0x3

    #@4
    aget-object v5, v0, v2

    #@6
    .line 5478
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    #@8
    .line 5479
    .local v7, "devices":I
    const/4 v8, 0x0

    #@9
    .local v8, "i":I
    move v9, v8

    #@a
    .line 5481
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_2

    #@c
    .line 5482
    add-int/lit8 v8, v9, 0x1

    #@e
    .end local v9    # "i":I
    .restart local v8    # "i":I
    const/4 v0, 0x1

    #@f
    shl-int v3, v0, v9

    #@11
    .line 5483
    .local v3, "device":I
    and-int v0, v3, v7

    #@13
    if-nez v0, :cond_0

    #@15
    move v9, v8

    #@16
    .line 5484
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    #@17
    .line 5486
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@1a
    move-result v10

    #@1b
    .line 5487
    .local v10, "index":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@1d
    if-le v10, v0, :cond_1

    #@1f
    .line 5488
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@21
    invoke-virtual {v5, v0, v3, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@24
    .line 5489
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@26
    .line 5491
    const/4 v2, 0x2

    #@27
    move v4, v1

    #@28
    move v6, v1

    #@29
    .line 5489
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@2c
    .line 5497
    :cond_1
    not-int v0, v3

    #@2d
    and-int/2addr v7, v0

    #@2e
    move v9, v8

    #@2f
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    #@30
    .line 5476
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_2
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5737
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService$ControllerService;->-get0(Lcom/android/server/audio/AudioService$ControllerService;)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v0

    #@c
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@e
    invoke-static {v1}, Lcom/android/server/audio/AudioService$ControllerService;->-get0(Lcom/android/server/audio/AudioService$ControllerService;)I

    #@11
    move-result v1

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 5738
    return-void

    #@15
    .line 5740
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@17
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@1a
    .line 5741
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Only SystemUI can "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 5740
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 5736
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 3357
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 3366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Bad direction "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 3356
    :sswitch_0
    return-void

    #@1e
    .line 3357
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    #@0
    .prologue
    .line 1900
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1901
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Bad ringer mode "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 1899
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 3371
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 3372
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Bad stream type "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 3370
    :cond_1
    return-void
.end method

.method private getActiveStreamType(I)I
    .locals 6
    .param p1, "suggestedStreamType"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x5

    #@2
    const/high16 v1, -0x80000000

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v2, 0x3

    #@6
    .line 3406
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 3440
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_a

    #@11
    .line 3441
    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    #@14
    move-result v0

    #@15
    if-ne v0, v2, :cond_8

    #@17
    .line 3443
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@19
    if-eqz v0, :cond_0

    #@1b
    const-string/jumbo v0, "AudioService"

    #@1e
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 3444
    :cond_0
    const/4 v0, 0x6

    #@25
    return v0

    #@26
    .line 3408
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 3409
    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    #@2f
    move-result v0

    #@30
    if-ne v0, v2, :cond_1

    #@32
    .line 3412
    const/4 v0, 0x6

    #@33
    return v0

    #@34
    .line 3415
    :cond_1
    return v3

    #@35
    .line 3417
    :cond_2
    if-ne p1, v1, :cond_6

    #@37
    .line 3418
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@39
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_4

    #@3f
    .line 3419
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@41
    if-eqz v0, :cond_3

    #@43
    .line 3420
    const-string/jumbo v0, "AudioService"

    #@46
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 3421
    :cond_3
    return v2

    #@4d
    .line 3423
    :cond_4
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@4f
    if-eqz v0, :cond_5

    #@51
    .line 3424
    const-string/jumbo v0, "AudioService"

    #@54
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING b/c default"

    #@57
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 3425
    :cond_5
    return v5

    #@5b
    .line 3427
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_11

    #@61
    .line 3428
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@63
    if-eqz v0, :cond_7

    #@65
    .line 3429
    const-string/jumbo v0, "AudioService"

    #@68
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    #@6b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 3430
    :cond_7
    return v2

    #@6f
    .line 3434
    :pswitch_1
    if-ne p1, v1, :cond_11

    #@71
    .line 3436
    return v2

    #@72
    .line 3446
    :cond_8
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@74
    if-eqz v0, :cond_9

    #@76
    const-string/jumbo v0, "AudioService"

    #@79
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    #@7c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 3447
    :cond_9
    return v3

    #@80
    .line 3450
    :cond_a
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@82
    .line 3449
    invoke-static {v4, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@85
    move-result v0

    #@86
    if-nez v0, :cond_b

    #@88
    .line 3452
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@8a
    .line 3451
    invoke-static {v5, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@8d
    move-result v0

    #@8e
    .line 3449
    if-eqz v0, :cond_d

    #@90
    .line 3453
    :cond_b
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@92
    if-eqz v0, :cond_c

    #@94
    const-string/jumbo v0, "AudioService"

    #@97
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    #@9a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    .line 3454
    :cond_c
    return v4

    #@9e
    .line 3455
    :cond_d
    if-ne p1, v1, :cond_11

    #@a0
    .line 3456
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@a2
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_f

    #@a8
    .line 3457
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@aa
    if-eqz v0, :cond_e

    #@ac
    const-string/jumbo v0, "AudioService"

    #@af
    const-string/jumbo v1, "getActiveStreamType: forcing STREAM_MUSIC"

    #@b2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    .line 3458
    :cond_e
    return v2

    #@b6
    .line 3460
    :cond_f
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@b8
    if-eqz v0, :cond_10

    #@ba
    const-string/jumbo v0, "AudioService"

    #@bd
    .line 3461
    const-string/jumbo v1, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    #@c0
    .line 3460
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 3462
    :cond_10
    return v4

    #@c4
    .line 3467
    :cond_11
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@c6
    if-eqz v0, :cond_12

    #@c8
    const-string/jumbo v0, "AudioService"

    #@cb
    new-instance v1, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v2, "getActiveStreamType: Returning suggested type "

    #@d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v1

    #@d7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@da
    move-result-object v1

    #@db
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v1

    #@df
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e2
    .line 3469
    :cond_12
    return p1

    #@e3
    .line 3406
    nop

    #@e4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 2851
    const/4 v8, 0x0

    #@3
    .line 2852
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@6
    move-result-object v7

    #@7
    .line 2853
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    #@9
    .line 2854
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@b
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@d
    .line 2855
    const/4 v3, 0x1

    #@e
    .line 2854
    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    #@11
    move-result v8

    #@12
    .line 2861
    .end local v8    # "result":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@14
    .line 2862
    if-eqz v8, :cond_1

    #@16
    const/16 v6, 0xbb8

    #@18
    .line 2861
    :goto_0
    const/16 v1, 0x9

    #@1a
    move v3, v2

    #@1b
    move v4, v2

    #@1c
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1f
    .line 2863
    return v8

    #@20
    :cond_1
    move v6, v2

    #@21
    .line 2862
    goto :goto_0
.end method

.method private getCurrentUserId()I
    .locals 5

    #@0
    .prologue
    .line 1557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1559
    .local v2, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@b
    move-result-object v0

    #@c
    .line 1560
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 1564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1560
    return v4

    #@12
    .line 1561
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    #@13
    .line 1564
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1566
    const/4 v4, 0x0

    #@17
    return v4

    #@18
    .line 1563
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@19
    .line 1564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1563
    throw v4
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    #@0
    .prologue
    .line 3538
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    #@3
    move-result v0

    #@4
    .line 3539
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    #@6
    and-int/2addr v1, v0

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3546
    and-int/lit8 v1, v0, 0x2

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 3547
    const/4 v0, 0x2

    #@e
    .line 3558
    :cond_0
    :goto_0
    return v0

    #@f
    .line 3548
    :cond_1
    const/high16 v1, 0x40000

    #@11
    and-int/2addr v1, v0

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 3549
    const/high16 v0, 0x40000

    #@16
    goto :goto_0

    #@17
    .line 3550
    :cond_2
    const/high16 v1, 0x80000

    #@19
    and-int/2addr v1, v0

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 3551
    const/high16 v0, 0x80000

    #@1e
    goto :goto_0

    #@1f
    .line 3552
    :cond_3
    const/high16 v1, 0x200000

    #@21
    and-int/2addr v1, v0

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 3553
    const/high16 v0, 0x200000

    #@26
    goto :goto_0

    #@27
    .line 3555
    :cond_4
    and-int/lit16 v0, v0, 0x380

    #@29
    goto :goto_0
.end method

.method private getDevicesForStream(I)I
    .locals 1
    .param p1, "stream"    # I

    #@0
    .prologue
    .line 3562
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private getDevicesForStream(IZ)I
    .locals 2
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    #@0
    .prologue
    .line 3566
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 3567
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@5
    monitor-enter v1

    #@6
    .line 3568
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@8
    aget-object v0, v0, p1

    #@a
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    monitor-exit v1

    #@f
    return v0

    #@10
    .line 3567
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    #@0
    .prologue
    .line 2815
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2
    monitor-enter v5

    #@3
    .line 2816
    const/4 v0, 0x0

    #@4
    .line 2817
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v3

    #@a
    .line 2818
    .local v3, "size":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    move-object v1, v0

    #@c
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .local v1, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    #@e
    .line 2819
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    .line 2820
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    move-result-object v4

    #@1a
    if-ne v4, p1, :cond_0

    #@1c
    monitor-exit v5

    #@1d
    .line 2821
    return-object v0

    #@1e
    .line 2818
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@20
    move-object v1, v0

    #@21
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_0

    #@22
    .line 2823
    :cond_1
    if-eqz p2, :cond_2

    #@24
    .line 2824
    :try_start_3
    new-instance v0, Lcom/android/server/audio/AudioService$ScoClient;

    #@26
    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    .line 2825
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2e
    :goto_1
    monitor-exit v5

    #@2f
    .line 2827
    return-object v0

    #@30
    .line 2815
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@31
    :goto_2
    monitor-exit v5

    #@32
    throw v4

    #@33
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    #@34
    move-object v0, v1

    #@35
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_2

    #@36
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    #@37
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_1
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 5254
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v9

    #@8
    .line 5256
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 5257
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    #@e
    .line 5258
    .local v11, "newOrientation":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    #@10
    if-eq v11, v0, :cond_0

    #@12
    .line 5259
    iput v11, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    #@14
    .line 5260
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    #@17
    .line 5263
    .end local v11    # "newOrientation":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@19
    .line 5268
    const-string/jumbo v5, "AudioService"

    #@1c
    .line 5264
    const/16 v1, 0x10

    #@1e
    .line 5265
    const/4 v2, 0x0

    #@1f
    .line 5266
    const/4 v3, 0x0

    #@20
    .line 5267
    const/4 v4, 0x0

    #@21
    .line 5269
    const/4 v6, 0x0

    #@22
    .line 5263
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@25
    .line 5271
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    #@28
    move-result v7

    #@29
    .line 5272
    .local v7, "cameraSoundForced":Z
    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2b
    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 5273
    const/4 v8, 0x0

    #@2d
    .line 5274
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@2f
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@30
    .line 5275
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@35
    move-result v0

    #@36
    if-eq v7, v0, :cond_1

    #@38
    .line 5276
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 5277
    const/4 v8, 0x1

    #@3f
    :cond_1
    :try_start_3
    monitor-exit v1

    #@40
    .line 5280
    if-eqz v8, :cond_3

    #@42
    .line 5281
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_2

    #@48
    .line 5282
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@4a
    const/4 v1, 0x7

    #@4b
    aget-object v12, v0, v1

    #@4d
    .line 5283
    .local v12, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v7, :cond_4

    #@4f
    .line 5284
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    #@52
    .line 5285
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@54
    and-int/lit16 v0, v0, -0x81

    #@56
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@58
    .line 5293
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@5b
    move-result v0

    #@5c
    const/4 v1, 0x0

    #@5d
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@60
    .line 5296
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@62
    .line 5300
    if-eqz v7, :cond_5

    #@64
    .line 5301
    const/16 v4, 0xb

    #@66
    .line 5297
    :goto_1
    const/16 v1, 0x8

    #@68
    .line 5298
    const/4 v2, 0x2

    #@69
    .line 5299
    const/4 v3, 0x4

    #@6a
    .line 5302
    const/4 v5, 0x0

    #@6b
    .line 5303
    const/4 v6, 0x0

    #@6c
    .line 5296
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@6f
    .line 5305
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@71
    .line 5310
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@73
    const/4 v2, 0x7

    #@74
    aget-object v5, v1, v2

    #@76
    .line 5306
    const/16 v1, 0xa

    #@78
    .line 5307
    const/4 v2, 0x2

    #@79
    .line 5308
    const/4 v3, 0x0

    #@7a
    .line 5309
    const/4 v4, 0x0

    #@7b
    .line 5310
    const/4 v6, 0x0

    #@7c
    .line 5305
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7f
    :cond_3
    :try_start_4
    monitor-exit v13

    #@80
    .line 5313
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@82
    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@85
    move-result v1

    #@86
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@89
    .line 5250
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_2
    return-void

    #@8a
    .line 5274
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    #@8b
    :try_start_5
    monitor-exit v1

    #@8c
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@8d
    .line 5272
    :catchall_1
    move-exception v0

    #@8e
    :try_start_6
    monitor-exit v13

    #@8f
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@90
    .line 5314
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    #@91
    .line 5315
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "AudioService"

    #@94
    const-string/jumbo v1, "Error handling configuration change: "

    #@97
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9a
    goto :goto_2

    #@9b
    .line 5288
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@9d
    const/4 v1, 0x1

    #@9e
    aget-object v0, v0, v1

    #@a0
    const-string/jumbo v1, "AudioService"

    #@a3
    invoke-virtual {v12, v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    #@a6
    .line 5289
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@a8
    or-int/lit16 v0, v0, 0x80

    #@aa
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@ac
    goto :goto_0

    #@ad
    .line 5301
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_5
    const/4 v4, 0x0

    #@ae
    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 4718
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 4719
    const-string/jumbo v4, "AudioService"

    #@9
    new-instance v5, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v6, "handleDeviceConnection("

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    const-string/jumbo v6, " dev:"

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    .line 4720
    const-string/jumbo v6, " address:"

    #@2b
    .line 4719
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    .line 4720
    const-string/jumbo v6, " name:"

    #@36
    .line 4719
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 4720
    const-string/jumbo v6, ")"

    #@41
    .line 4719
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 4722
    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@4e
    monitor-enter v5

    #@4f
    .line 4723
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 4724
    .local v0, "deviceKey":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@55
    if-eqz v4, :cond_1

    #@57
    .line 4725
    const-string/jumbo v4, "AudioService"

    #@5a
    new-instance v6, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v7, "deviceKey:"

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 4727
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@73
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    move-result-object v1

    #@77
    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@79
    .line 4728
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_4

    #@7b
    const/4 v2, 0x1

    #@7c
    .line 4729
    .local v2, "isConnected":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@7e
    if-eqz v4, :cond_2

    #@80
    .line 4730
    const-string/jumbo v4, "AudioService"

    #@83
    new-instance v6, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v7, "deviceSpec:"

    #@8b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    const-string/jumbo v7, " is(already)Connected:"

    #@96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 4732
    :cond_2
    if-eqz p1, :cond_3

    #@a7
    if-eqz v2, :cond_5

    #@a9
    .line 4742
    :cond_3
    if-nez p1, :cond_7

    #@ab
    if-eqz v2, :cond_7

    #@ad
    .line 4744
    const/4 v4, 0x0

    #@ae
    .line 4743
    invoke-static {p2, v4, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@b1
    .line 4746
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@b3
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b6
    monitor-exit v5

    #@b7
    .line 4747
    return v9

    #@b8
    .line 4728
    .end local v2    # "isConnected":Z
    :cond_4
    const/4 v2, 0x0

    #@b9
    .restart local v2    # "isConnected":Z
    goto :goto_0

    #@ba
    .line 4734
    :cond_5
    const/4 v4, 0x1

    #@bb
    .line 4733
    :try_start_1
    invoke-static {p2, v4, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@be
    move-result v3

    #@bf
    .line 4735
    .local v3, "res":I
    if-eqz v3, :cond_6

    #@c1
    .line 4736
    const-string/jumbo v4, "AudioService"

    #@c4
    new-instance v6, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v7, "not connecting device 0x"

    #@cc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v6

    #@d0
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d3
    move-result-object v7

    #@d4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v6

    #@d8
    .line 4737
    const-string/jumbo v7, " due to command error "

    #@db
    .line 4736
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v6

    #@df
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v6

    #@e3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v6

    #@e7
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ea
    monitor-exit v5

    #@eb
    .line 4738
    return v8

    #@ec
    .line 4740
    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@ee
    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@f0
    invoke-direct {v6, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    #@f3
    invoke-virtual {v4, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f6
    monitor-exit v5

    #@f7
    .line 4741
    return v9

    #@f8
    .end local v3    # "res":I
    :cond_7
    monitor-exit v5

    #@f9
    .line 4750
    return v8

    #@fa
    .line 4722
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    :catchall_0
    move-exception v4

    #@fb
    monitor-exit v5

    #@fc
    throw v4
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1710
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 1711
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1712
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    #@12
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 1713
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 1716
    :cond_1
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    #@0
    .prologue
    .line 4610
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2
    .param p1, "delay_ms"    # I

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 3401
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 3402
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    #@a
    move-result v0

    #@b
    .line 3401
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3382
    const/4 v0, 0x0

    #@2
    .line 3385
    .local v0, "IsInCall":Z
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v6, "telecom"

    #@7
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/telecom/TelecomManager;

    #@d
    .line 3387
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v2

    #@11
    .line 3388
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    #@14
    move-result v0

    #@15
    .line 3389
    .local v0, "IsInCall":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 3391
    if-nez v0, :cond_0

    #@1a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    #@1d
    move-result v5

    #@1e
    const/4 v6, 0x3

    #@1f
    if-ne v5, v6, :cond_1

    #@21
    :cond_0
    :goto_0
    return v4

    #@22
    :cond_1
    const/4 v4, 0x0

    #@23
    goto :goto_0
.end method

.method private isMuteAdjust(I)Z
    .locals 2
    .param p1, "adjust"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3377
    const/16 v1, -0x64

    #@3
    if-eq p1, v1, :cond_0

    #@5
    const/16 v1, 0x64

    #@7
    if-ne p1, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    .line 3378
    :cond_1
    const/16 v1, 0x65

    #@c
    if-eq p1, v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    #@0
    .prologue
    .line 179
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private isPlatformVoice()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 175
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3311
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@4
    shl-int v3, v0, p1

    #@6
    and-int/2addr v2, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    move v0, v1

    #@b
    goto :goto_0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 12
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 5120
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v6

    #@7
    .line 5123
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    #@8
    .line 5124
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@b
    move-result v8

    #@c
    if-nez v8, :cond_0

    #@e
    .line 5125
    const-class v8, Landroid/app/ActivityManagerInternal;

    #@10
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@13
    move-result-object v8

    #@14
    check-cast v8, Landroid/app/ActivityManagerInternal;

    #@16
    .line 5126
    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    #@18
    .line 5125
    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    #@1b
    move-result-object v1

    #@1c
    .line 5128
    .end local v1    # "homeActivityName":Landroid/content/ComponentName;
    :cond_0
    const/4 v8, 0x1

    #@1d
    new-array v4, v8, [Ljava/lang/String;

    #@1f
    const-string/jumbo v8, "android.permission.RECORD_AUDIO"

    #@22
    aput-object v8, v4, v10

    #@24
    .line 5131
    .local v4, "permissions":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@27
    move-result-object v8

    #@28
    .line 5132
    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    #@2a
    const/4 v10, 0x0

    #@2b
    .line 5131
    invoke-interface {v8, v4, v10, v9}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result-object v3

    #@33
    .line 5136
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@36
    move-result v8

    #@37
    add-int/lit8 v2, v8, -0x1

    #@39
    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_4

    #@3b
    .line 5137
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v5

    #@3f
    check-cast v5, Landroid/content/pm/PackageInfo;

    #@41
    .line 5139
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@43
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@45
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    #@48
    move-result v8

    #@49
    const/16 v9, 0x2710

    #@4b
    if-ge v8, v9, :cond_2

    #@4d
    .line 5136
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@4f
    goto :goto_0

    #@50
    .line 5133
    .end local v2    # "j":I
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@51
    .line 5134
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Landroid/util/AndroidRuntimeException;

    #@53
    invoke-direct {v8, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@56
    throw v8

    #@57
    .line 5143
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "j":I
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    const-string/jumbo v8, "android.permission.INTERACT_ACROSS_USERS"

    #@5a
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@5c
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_1

    #@62
    .line 5147
    if-eqz v1, :cond_3

    #@64
    .line 5148
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@66
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v8

    #@6e
    .line 5147
    if-eqz v8, :cond_3

    #@70
    .line 5149
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@72
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@75
    move-result v8

    #@76
    .line 5147
    if-nez v8, :cond_1

    #@78
    .line 5153
    :cond_3
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7a
    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@7c
    .line 5154
    .local v7, "uid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7f
    move-result-object v8

    #@80
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    #@83
    move-result v9

    #@84
    .line 5155
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@87
    move-result v10

    #@88
    .line 5156
    const-string/jumbo v11, "killBackgroundUserProcessesWithAudioRecordPermission"

    #@8b
    .line 5154
    invoke-interface {v8, v9, v10, v11}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@8e
    goto :goto_1

    #@8f
    .line 5157
    .end local v7    # "uid":I
    :catch_1
    move-exception v0

    #@90
    .line 5158
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "AudioService"

    #@93
    const-string/jumbo v9, "Error calling killUid"

    #@96
    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@99
    goto :goto_1

    #@9a
    .line 5119
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_4
    return-void
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2275
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@3
    const-string/jumbo v2, "Effect_Tick.ogg"

    #@6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 2276
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 2277
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    #@10
    aget-object v1, v1, v0

    #@12
    aput v4, v1, v4

    #@14
    .line 2278
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    #@16
    aget-object v1, v1, v0

    #@18
    const/4 v2, -0x1

    #@19
    const/4 v3, 0x1

    #@1a
    aput v2, v1, v3

    #@1c
    .line 2276
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2274
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 18

    #@0
    .prologue
    .line 2283
    const/4 v13, 0x0

    #@1
    .line 2286
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@3
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v15

    #@7
    if-nez v15, :cond_0

    #@9
    .line 2287
    return-void

    #@a
    .line 2290
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    #@d
    .line 2293
    :try_start_0
    move-object/from16 v0, p0

    #@f
    iget-object v15, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v15

    #@15
    const v16, 0x1110001

    #@18
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@1b
    move-result-object v13

    #@1c
    .line 2295
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v15, "audio_assets"

    #@1f
    invoke-static {v13, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@22
    .line 2296
    const-string/jumbo v15, "version"

    #@25
    const/16 v16, 0x0

    #@27
    move-object/from16 v0, v16

    #@29
    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v14

    #@2d
    .line 2297
    .local v14, "version":Ljava/lang/String;
    const/4 v11, 0x0

    #@2e
    .line 2299
    .local v11, "inTouchSoundsGroup":Z
    const-string/jumbo v15, "1.0"

    #@31
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v15

    #@35
    if-eqz v15, :cond_2

    #@37
    .line 2301
    :cond_1
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3a
    .line 2302
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 2303
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_4

    #@40
    .line 2314
    :goto_0
    if-eqz v11, :cond_2

    #@42
    .line 2315
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@45
    .line 2316
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    move-result-object v5

    #@49
    .line 2317
    if-nez v5, :cond_5

    #@4b
    .line 2351
    .end local v5    # "element":Ljava/lang/String;
    :cond_2
    if-eqz v13, :cond_3

    #@4d
    .line 2352
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@50
    .line 2282
    .end local v11    # "inTouchSoundsGroup":Z
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "version":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    #@51
    .line 2306
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v11    # "inTouchSoundsGroup":Z
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "version":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v15, "group"

    #@54
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v15

    #@58
    if-eqz v15, :cond_1

    #@5a
    .line 2307
    const-string/jumbo v15, "name"

    #@5d
    const/16 v16, 0x0

    #@5f
    move-object/from16 v0, v16

    #@61
    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v12

    #@65
    .line 2308
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v15, "touch_sounds"

    #@68
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v15

    #@6c
    if-eqz v15, :cond_1

    #@6e
    .line 2309
    const/4 v11, 0x1

    #@6f
    .line 2310
    goto :goto_0

    #@70
    .line 2320
    .end local v12    # "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v15, "asset"

    #@73
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v15

    #@77
    if-eqz v15, :cond_2

    #@79
    .line 2321
    const-string/jumbo v15, "id"

    #@7c
    const/16 v16, 0x0

    #@7e
    move-object/from16 v0, v16

    #@80
    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v10

    #@84
    .line 2322
    .local v10, "id":Ljava/lang/String;
    const-string/jumbo v15, "file"

    #@87
    const/16 v16, 0x0

    #@89
    move-object/from16 v0, v16

    #@8b
    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8e
    move-result-object v7

    #@8f
    .line 2326
    .local v7, "file":Ljava/lang/String;
    :try_start_2
    const-class v15, Landroid/media/AudioManager;

    #@91
    invoke-virtual {v15, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@94
    move-result-object v6

    #@95
    .line 2327
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    #@96
    invoke-virtual {v6, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@99
    move-result v8

    #@9a
    .line 2333
    .local v8, "fx":I
    :try_start_3
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@9c
    invoke-interface {v15, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@9f
    move-result v9

    #@a0
    .line 2334
    .local v9, "i":I
    const/4 v15, -0x1

    #@a1
    if-ne v9, v15, :cond_6

    #@a3
    .line 2335
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@a5
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@a8
    move-result v9

    #@a9
    .line 2336
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@ab
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ae
    .line 2338
    :cond_6
    move-object/from16 v0, p0

    #@b0
    iget-object v15, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    #@b2
    aget-object v15, v15, v8

    #@b4
    const/16 v16, 0x0

    #@b6
    aput v9, v15, v16
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b8
    goto :goto_0

    #@b9
    .line 2344
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "fx":I
    .end local v9    # "i":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "inTouchSoundsGroup":Z
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@ba
    .line 2345
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    const-string/jumbo v15, "AudioService"

    #@bd
    const-string/jumbo v16, "audio assets file not found"

    #@c0
    move-object/from16 v0, v16

    #@c2
    invoke-static {v15, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c5
    .line 2351
    if-eqz v13, :cond_3

    #@c7
    .line 2352
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@ca
    goto :goto_1

    #@cb
    .line 2328
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "file":Ljava/lang/String;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v11    # "inTouchSoundsGroup":Z
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "version":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@cc
    .line 2329
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v15, "AudioService"

    #@cf
    new-instance v16, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v17, "Invalid touch sound ID: "

    #@d7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v16

    #@db
    move-object/from16 v0, v16

    #@dd
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v16

    #@e1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v16

    #@e5
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e8
    goto/16 :goto_0

    #@ea
    .line 2346
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "inTouchSoundsGroup":Z
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "version":Ljava/lang/String;
    :catch_2
    move-exception v4

    #@eb
    .line 2347
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string/jumbo v15, "AudioService"

    #@ee
    const-string/jumbo v16, "XML parser exception reading touch sound assets"

    #@f1
    move-object/from16 v0, v16

    #@f3
    invoke-static {v15, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@f6
    .line 2351
    if-eqz v13, :cond_3

    #@f8
    .line 2352
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@fb
    goto/16 :goto_1

    #@fd
    .line 2348
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    #@fe
    .line 2349
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v15, "AudioService"

    #@101
    const-string/jumbo v16, "I/O exception reading touch sound assets"

    #@104
    move-object/from16 v0, v16

    #@106
    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@109
    .line 2351
    if-eqz v13, :cond_3

    #@10b
    .line 2352
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@10e
    goto/16 :goto_1

    #@110
    .line 2350
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    #@111
    .line 2351
    if-eqz v13, :cond_7

    #@113
    .line 2352
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@116
    .line 2350
    :cond_7
    throw v15
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/16 v3, 0x80

    #@4
    .line 4534
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@6
    const/4 v2, 0x3

    #@7
    aget-object v5, v0, v2

    #@9
    .line 4535
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@b
    const/4 v2, 0x2

    #@c
    move v4, v1

    #@d
    move v6, v1

    #@e
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@11
    .line 4537
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    #@14
    .line 4538
    invoke-static {v3, v7, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@17
    .line 4541
    const-string/jumbo v0, "A2dpSuspended=false"

    #@1a
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@1d
    .line 4542
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@1f
    .line 4543
    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 4544
    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@25
    invoke-direct {v2, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    #@28
    .line 4542
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 4531
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    #@0
    .prologue
    .line 4575
    const-string/jumbo v1, "A2dpSuspended=true"

    #@3
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@6
    .line 4577
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@8
    .line 4578
    const/16 v2, 0x80

    #@a
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 4577
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 4580
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@13
    const/4 v2, 0x6

    #@14
    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    .line 4581
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@1a
    int-to-long v2, p2

    #@1b
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1e
    .line 4572
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x80

    #@2
    const/4 v2, 0x0

    #@3
    .line 4554
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 4555
    const/4 v1, 0x0

    #@7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 4558
    const-string/jumbo v0, ""

    #@d
    .line 4557
    invoke-static {v3, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@10
    .line 4559
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@12
    .line 4560
    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 4559
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 4561
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@1b
    monitor-enter v7

    #@1c
    .line 4563
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@1e
    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 4564
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@24
    const/4 v1, 0x0

    #@25
    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@27
    .line 4565
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@29
    const/16 v1, 0xc

    #@2b
    .line 4566
    const/4 v2, 0x1

    #@2c
    const/4 v3, 0x0

    #@2d
    const/4 v4, 0x0

    #@2e
    const/4 v5, 0x0

    #@2f
    const/4 v6, 0x0

    #@30
    .line 4565
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    :cond_0
    monitor-exit v7

    #@34
    .line 4553
    return-void

    #@35
    .line 4554
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v0

    #@37
    throw v1

    #@38
    .line 4561
    :catchall_1
    move-exception v0

    #@39
    monitor-exit v7

    #@3a
    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/high16 v4, -0x7ffe0000

    #@2
    .line 4588
    const-string/jumbo v0, ""

    #@5
    const/4 v1, 0x1

    #@6
    .line 4587
    invoke-static {v4, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@9
    .line 4589
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@b
    .line 4590
    invoke-direct {p0, v4, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 4591
    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@11
    const-string/jumbo v3, ""

    #@14
    invoke-direct {v2, p0, v4, v3, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    #@17
    .line 4589
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 4586
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/high16 v2, -0x7ffe0000

    #@2
    .line 4598
    const-string/jumbo v0, ""

    #@5
    const/4 v1, 0x0

    #@6
    .line 4597
    invoke-static {v2, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@9
    .line 4599
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@b
    .line 4600
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 4599
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 4596
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2
    .param p0, "card"    # I
    .param p1, "device"    # I

    #@0
    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "card="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ";device="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, ";"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ":"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method private muteRingerModeStreams()V
    .locals 17

    #@0
    .prologue
    .line 1974
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@3
    move-result v10

    #@4
    .line 1975
    .local v10, "numStreamTypes":I
    move-object/from16 v0, p0

    #@6
    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@8
    const/4 v2, 0x1

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 1976
    move-object/from16 v0, p0

    #@d
    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@f
    if-nez v1, :cond_1

    #@11
    const/4 v11, 0x1

    #@12
    .line 1977
    .local v11, "ringerModeMute":Z
    :goto_0
    add-int/lit8 v13, v10, -0x1

    #@14
    .local v13, "streamType":I
    :goto_1
    if-ltz v13, :cond_8

    #@16
    .line 1978
    move-object/from16 v0, p0

    #@18
    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    #@1b
    move-result v9

    #@1c
    .line 1979
    .local v9, "isMuted":Z
    if-eqz v11, :cond_2

    #@1e
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    #@23
    move-result v12

    #@24
    .line 1980
    :goto_2
    if-ne v9, v12, :cond_3

    #@26
    .line 1977
    :goto_3
    add-int/lit8 v13, v13, -0x1

    #@28
    goto :goto_1

    #@29
    .line 1975
    .end local v9    # "isMuted":Z
    .end local v11    # "ringerModeMute":Z
    .end local v13    # "streamType":I
    :cond_0
    const/4 v11, 0x1

    #@2a
    .restart local v11    # "ringerModeMute":Z
    goto :goto_0

    #@2b
    .line 1976
    .end local v11    # "ringerModeMute":Z
    :cond_1
    const/4 v11, 0x0

    #@2c
    .restart local v11    # "ringerModeMute":Z
    goto :goto_0

    #@2d
    .line 1979
    .restart local v9    # "isMuted":Z
    .restart local v13    # "streamType":I
    :cond_2
    const/4 v12, 0x0

    #@2e
    .local v12, "shouldMute":Z
    goto :goto_2

    #@2f
    .line 1981
    .end local v12    # "shouldMute":Z
    :cond_3
    if-nez v12, :cond_7

    #@31
    .line 1984
    move-object/from16 v0, p0

    #@33
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@35
    aget v1, v1, v13

    #@37
    const/4 v2, 0x2

    #@38
    if-ne v1, v2, :cond_6

    #@3a
    .line 1985
    const-class v16, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3c
    monitor-enter v16

    #@3d
    .line 1986
    :try_start_0
    move-object/from16 v0, p0

    #@3f
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@41
    aget-object v15, v1, v13

    #@43
    .line 1987
    .local v15, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v8, 0x0

    #@44
    .local v8, "i":I
    :goto_4
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    #@4b
    move-result v1

    #@4c
    if-ge v8, v1, :cond_5

    #@4e
    .line 1988
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@55
    move-result v4

    #@56
    .line 1989
    .local v4, "device":I
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@5d
    move-result v14

    #@5e
    .line 1990
    .local v14, "value":I
    if-nez v14, :cond_4

    #@60
    .line 1991
    const-string/jumbo v1, "AudioService"

    #@63
    const/16 v2, 0xa

    #@65
    invoke-virtual {v15, v2, v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@68
    .line 1987
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@6a
    goto :goto_4

    #@6b
    .line 1995
    .end local v4    # "device":I
    .end local v14    # "value":I
    :cond_5
    move-object/from16 v0, p0

    #@6d
    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@70
    move-result v4

    #@71
    .line 1996
    .restart local v4    # "device":I
    move-object/from16 v0, p0

    #@73
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@75
    .line 2001
    move-object/from16 v0, p0

    #@77
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@79
    aget-object v6, v2, v13

    #@7b
    .line 1997
    const/4 v2, 0x1

    #@7c
    .line 1998
    const/4 v3, 0x2

    #@7d
    .line 2000
    const/4 v5, 0x0

    #@7e
    .line 2002
    const/16 v7, 0x1f4

    #@80
    .line 1996
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    monitor-exit v16

    #@84
    .line 2005
    .end local v4    # "device":I
    .end local v8    # "i":I
    .end local v15    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_6
    move-object/from16 v0, p0

    #@86
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@88
    aget-object v1, v1, v13

    #@8a
    const/4 v2, 0x0

    #@8b
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@8e
    .line 2006
    move-object/from16 v0, p0

    #@90
    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@92
    const/4 v2, 0x1

    #@93
    shl-int/2addr v2, v13

    #@94
    not-int v2, v2

    #@95
    and-int/2addr v1, v2

    #@96
    move-object/from16 v0, p0

    #@98
    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@9a
    goto :goto_3

    #@9b
    .line 1985
    :catchall_0
    move-exception v1

    #@9c
    monitor-exit v16

    #@9d
    throw v1

    #@9e
    .line 2009
    :cond_7
    move-object/from16 v0, p0

    #@a0
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@a2
    aget-object v1, v1, v13

    #@a4
    const/4 v2, 0x1

    #@a5
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@a8
    .line 2010
    move-object/from16 v0, p0

    #@aa
    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@ac
    const/4 v2, 0x1

    #@ad
    shl-int/2addr v2, v13

    #@ae
    or-int/2addr v1, v2

    #@af
    move-object/from16 v0, p0

    #@b1
    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@b3
    goto/16 :goto_3

    #@b5
    .line 1969
    .end local v9    # "isMuted":Z
    :cond_8
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .locals 4
    .param p1, "skipStream"    # I

    #@0
    .prologue
    .line 3573
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v2

    #@3
    .line 3574
    const/4 v0, 0x0

    #@4
    .local v0, "stream":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 3575
    if-eq v0, p1, :cond_0

    #@b
    .line 3576
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@d
    aget-object v1, v1, v0

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 3574
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    :cond_1
    monitor-exit v2

    #@17
    .line 3572
    return-void

    #@18
    .line 3573
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 2903
    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    #@2
    if-eq p1, v1, :cond_0

    #@4
    .line 2904
    new-instance v0, Landroid/content/Intent;

    #@6
    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    #@9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 2905
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    #@f
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@12
    .line 2906
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    #@15
    .line 2907
    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    #@17
    .line 2906
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1a
    .line 2908
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@1d
    .line 2909
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    #@1f
    .line 2902
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const v10, 0xea60

    #@3
    .line 3121
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@5
    monitor-enter v9

    #@6
    .line 3122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x2

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 3123
    const/4 v0, 0x3

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@13
    move-result v7

    #@14
    .line 3125
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 3126
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@1a
    .line 3127
    const/16 v1, 0xe

    #@1c
    .line 3128
    const/4 v2, 0x0

    #@1d
    .line 3129
    const/4 v3, 0x0

    #@1e
    .line 3130
    const/4 v4, 0x0

    #@1f
    .line 3132
    const v6, 0xea60

    #@22
    move-object v5, p1

    #@23
    .line 3126
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@26
    .line 3133
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@28
    const/4 v1, 0x3

    #@29
    aget-object v0, v0, v1

    #@2b
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@2e
    move-result v8

    #@2f
    .line 3134
    .local v8, "index":I
    const/4 v0, 0x3

    #@30
    const/4 v1, 0x0

    #@31
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 3135
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@39
    if-le v8, v0, :cond_1

    #@3b
    .line 3137
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@3d
    add-int/2addr v0, v10

    #@3e
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@40
    .line 3138
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@42
    const v1, 0x44aa200

    #@45
    if-le v0, v1, :cond_0

    #@47
    .line 3139
    const/4 v0, 0x1

    #@48
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    #@4b
    .line 3140
    const/4 v0, 0x0

    #@4c
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@4e
    .line 3142
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_1
    monitor-exit v9

    #@52
    .line 3120
    return-void

    #@53
    .line 3121
    :catchall_0
    move-exception v0

    #@54
    monitor-exit v9

    #@55
    throw v0
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 11
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 3154
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@3
    monitor-enter v10

    #@4
    .line 3155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@d
    move-result-object v0

    #@e
    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    #@10
    .line 3156
    .local v7, "mcc":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    #@12
    if-ne v0, v7, :cond_0

    #@14
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    #@16
    if-nez v0, :cond_3

    #@18
    if-eqz p1, :cond_3

    #@1a
    .line 3157
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v0

    #@20
    .line 3158
    const v1, 0x10e0086

    #@23
    .line 3157
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@26
    move-result v0

    #@27
    mul-int/lit8 v0, v0, 0xa

    #@29
    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@2b
    .line 3160
    const-string/jumbo v0, "audio.safemedia.force"

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_4

    #@35
    .line 3161
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a
    move-result-object v0

    #@3b
    .line 3162
    const v1, 0x1120072

    #@3e
    .line 3161
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@41
    move-result v9

    #@42
    .line 3165
    :goto_0
    const-string/jumbo v0, "audio.safemedia.bypass"

    #@45
    const/4 v1, 0x0

    #@46
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@49
    move-result v8

    #@4a
    .line 3170
    .local v8, "safeMediaVolumeBypass":Z
    if-eqz v9, :cond_1

    #@4c
    if-eqz v8, :cond_5

    #@4e
    .line 3185
    :cond_1
    const/4 v3, 0x1

    #@4f
    .line 3186
    .local v3, "persistedState":I
    const/4 v0, 0x1

    #@50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@56
    .line 3188
    :cond_2
    :goto_1
    iput v7, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    #@58
    .line 3189
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@5a
    .line 3190
    const/16 v1, 0x12

    #@5c
    .line 3191
    const/4 v2, 0x2

    #@5d
    .line 3193
    const/4 v4, 0x0

    #@5e
    .line 3194
    const/4 v5, 0x0

    #@5f
    .line 3195
    const/4 v6, 0x0

    #@60
    .line 3189
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeBypass":Z
    :cond_3
    monitor-exit v10

    #@64
    .line 3153
    return-void

    #@65
    .line 3160
    :cond_4
    const/4 v9, 0x1

    #@66
    .local v9, "safeMediaVolumeEnabled":Z
    goto :goto_0

    #@67
    .line 3171
    .end local v9    # "safeMediaVolumeEnabled":Z
    .restart local v8    # "safeMediaVolumeBypass":Z
    :cond_5
    const/4 v3, 0x3

    #@68
    .line 3175
    .restart local v3    # "persistedState":I
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@6a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@6d
    move-result v0

    #@6e
    if-eq v0, v2, :cond_2

    #@70
    .line 3176
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@72
    if-nez v0, :cond_6

    #@74
    .line 3177
    const/4 v0, 0x3

    #@75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v0

    #@79
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@7b
    .line 3178
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7e
    goto :goto_1

    #@7f
    .line 3154
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeBypass":Z
    :catchall_0
    move-exception v0

    #@80
    monitor-exit v10

    #@81
    throw v0

    #@82
    .line 3181
    .restart local v3    # "persistedState":I
    .restart local v7    # "mcc":I
    .restart local v8    # "safeMediaVolumeBypass":Z
    :cond_6
    const/4 v0, 0x2

    #@83
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@86
    move-result-object v0

    #@87
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@89
    goto :goto_1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 9
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 6089
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    const-string/jumbo v5, "AudioService"

    #@7
    new-instance v6, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v7, "onDynamicPolicyMixStateUpdate("

    #@f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    const-string/jumbo v7, ", "

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    const-string/jumbo v7, ")"

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 6090
    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@32
    monitor-enter v6

    #@33
    .line 6091
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@35
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@38
    move-result-object v5

    #@39
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v4

    #@3d
    .local v4, "policy$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_3

    #@43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@49
    .line 6092
    .local v3, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    #@4c
    move-result-object v5

    #@4d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v2

    #@51
    .local v2, "mix$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_1

    #@57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    #@5d
    .line 6093
    .local v1, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_2

    #@67
    .line 6095
    :try_start_1
    iget-object v5, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@69
    invoke-interface {v5, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    :goto_0
    monitor-exit v6

    #@6d
    .line 6100
    return-void

    #@6e
    .line 6096
    :catch_0
    move-exception v0

    #@6f
    .line 6097
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "AudioService"

    #@72
    new-instance v7, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v8, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    #@7a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    .line 6098
    iget-object v8, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@80
    invoke-interface {v8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@83
    move-result-object v8

    #@84
    .line 6097
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v7

    #@8c
    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8f
    goto :goto_0

    #@90
    .line 6090
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v2    # "mix$iterator":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v4    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@91
    monitor-exit v6

    #@92
    throw v5

    #@93
    .restart local v4    # "policy$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v6

    #@94
    .line 6088
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    #@0
    .prologue
    .line 4549
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.media.AUDIO_BECOMING_NOISY"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    #@b
    .line 4548
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 15
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 4615
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4616
    const-string/jumbo v1, "AudioService"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "onSetA2dpSinkConnectionState btDevice="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, "state="

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    move/from16 v0, p2

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 4618
    :cond_0
    if-nez p1, :cond_1

    #@2f
    .line 4619
    return-void

    #@30
    .line 4621
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@33
    move-result-object v8

    #@34
    .line 4622
    .local v8, "address":Ljava/lang/String;
    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_2

    #@3a
    .line 4623
    const-string/jumbo v8, ""

    #@3d
    .line 4626
    :cond_2
    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@3f
    monitor-enter v13

    #@40
    .line 4628
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 4627
    const/16 v2, 0x80

    #@46
    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v11

    #@4a
    .line 4629
    .local v11, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@4c
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v9

    #@50
    check-cast v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@52
    .line 4630
    .local v9, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v9, :cond_6

    #@54
    const/4 v10, 0x1

    #@55
    .line 4632
    .local v10, "isConnected":Z
    :goto_0
    if-eqz v10, :cond_8

    #@57
    const/4 v1, 0x2

    #@58
    move/from16 v0, p2

    #@5a
    if-eq v0, v1, :cond_8

    #@5c
    .line 4633
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_7

    #@62
    .line 4634
    if-nez p2, :cond_3

    #@64
    .line 4638
    const/16 v1, 0x1f40

    #@66
    invoke-direct {p0, v8, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    #@69
    .line 4644
    :cond_3
    :goto_1
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@6b
    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    .line 4645
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@6e
    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@70
    if-eqz v1, :cond_4

    #@72
    .line 4646
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@74
    const/4 v2, 0x0

    #@75
    iput-object v2, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@77
    .line 4647
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@79
    const/16 v2, 0xc

    #@7b
    .line 4648
    const/4 v3, 0x1

    #@7c
    const/4 v4, 0x0

    #@7d
    const/4 v5, 0x0

    #@7e
    const/4 v6, 0x0

    #@7f
    const/4 v7, 0x0

    #@80
    .line 4647
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@83
    :cond_4
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@84
    :cond_5
    :goto_2
    monitor-exit v13

    #@85
    .line 4613
    return-void

    #@86
    .line 4630
    .end local v10    # "isConnected":Z
    :cond_6
    const/4 v10, 0x0

    #@87
    .restart local v10    # "isConnected":Z
    goto :goto_0

    #@88
    .line 4642
    :cond_7
    :try_start_3
    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8b
    goto :goto_1

    #@8c
    .line 4626
    .end local v9    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v10    # "isConnected":Z
    .end local v11    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@8d
    monitor-exit v13

    #@8e
    throw v1

    #@8f
    .line 4644
    .restart local v9    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v10    # "isConnected":Z
    .restart local v11    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v1

    #@90
    :try_start_4
    monitor-exit v14

    #@91
    throw v1

    #@92
    .line 4651
    :cond_8
    if-nez v10, :cond_5

    #@94
    const/4 v1, 0x2

    #@95
    move/from16 v0, p2

    #@97
    if-ne v0, v1, :cond_5

    #@99
    .line 4652
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_b

    #@9f
    .line 4654
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    #@a2
    .line 4655
    iput-object v8, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    #@a4
    .line 4664
    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-direct {p0, v8, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    .line 4665
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@ad
    monitor-enter v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ae
    .line 4666
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    #@b1
    move-result-object v12

    #@b2
    .line 4667
    .local v12, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@b4
    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@b6
    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@b9
    move-result v1

    #@ba
    if-nez v1, :cond_a

    #@bc
    .line 4668
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@be
    iput-object v12, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@c0
    .line 4669
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@c2
    const/16 v2, 0xc

    #@c4
    .line 4670
    const/4 v3, 0x1

    #@c5
    const/4 v4, 0x0

    #@c6
    const/4 v5, 0x0

    #@c7
    const/4 v6, 0x0

    #@c8
    const/4 v7, 0x0

    #@c9
    .line 4669
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@cc
    :cond_a
    :try_start_6
    monitor-exit v14

    #@cd
    goto :goto_2

    #@ce
    .line 4659
    .end local v12    # "name":Ljava/lang/String;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    #@d1
    move-result v1

    #@d2
    if-eqz v1, :cond_9

    #@d4
    .line 4660
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    #@d7
    .line 4661
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    #@d9
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    #@dc
    goto :goto_3

    #@dd
    .line 4665
    :catchall_2
    move-exception v1

    #@de
    monitor-exit v14

    #@df
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 8
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    .line 4679
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 4680
    const-string/jumbo v4, "AudioService"

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "onSetA2dpSourceConnectionState btDevice="

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    const-string/jumbo v6, " state="

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 4682
    :cond_0
    if-nez p1, :cond_1

    #@2c
    .line 4683
    return-void

    #@2d
    .line 4685
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 4686
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_2

    #@37
    .line 4687
    const-string/jumbo v0, ""

    #@3a
    .line 4690
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@3c
    monitor-enter v5

    #@3d
    .line 4691
    const/high16 v4, -0x7ffe0000

    #@3f
    :try_start_0
    invoke-direct {p0, v4, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 4692
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@4b
    .line 4693
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_4

    #@4d
    const/4 v2, 0x1

    #@4e
    .line 4695
    .local v2, "isConnected":Z
    :goto_0
    if-eqz v2, :cond_5

    #@50
    if-eq p2, v7, :cond_5

    #@52
    .line 4696
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    :cond_3
    :goto_1
    monitor-exit v5

    #@56
    .line 4677
    return-void

    #@57
    .line 4693
    .end local v2    # "isConnected":Z
    :cond_4
    const/4 v2, 0x0

    #@58
    .restart local v2    # "isConnected":Z
    goto :goto_0

    #@59
    .line 4697
    :cond_5
    if-nez v2, :cond_3

    #@5b
    if-ne p2, v7, :cond_3

    #@5d
    .line 4698
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    goto :goto_1

    #@61
    .line 4690
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    .end local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@62
    monitor-exit v5

    #@63
    throw v4
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1380
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@3
    aget v1, v0, p1

    #@5
    .local v1, "stream":I
    move-object v0, p0

    #@6
    move v2, p2

    #@7
    move v3, p4

    #@8
    move-object v5, p5

    #@9
    .line 1381
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    #@c
    .line 1383
    and-int/lit8 v0, p3, 0x2

    #@e
    if-nez v0, :cond_0

    #@10
    .line 1384
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    #@13
    move-result v0

    #@14
    if-ne v1, v0, :cond_1

    #@16
    .line 1386
    :cond_0
    if-nez p2, :cond_5

    #@18
    .line 1387
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@1a
    if-eqz v0, :cond_3

    #@1c
    const/4 v6, 0x1

    #@1d
    .line 1393
    .local v6, "newRingerMode":I
    :goto_0
    const-string/jumbo v0, "AudioService.onSetStreamVolume"

    #@20
    invoke-direct {p0, v6, v0, v4}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    #@23
    .line 1396
    .end local v6    # "newRingerMode":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@25
    aget-object v0, v0, v1

    #@27
    if-nez p2, :cond_2

    #@29
    const/4 v4, 0x1

    #@2a
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@2d
    .line 1379
    return-void

    #@2e
    .line 1388
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@30
    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@32
    if-eqz v0, :cond_4

    #@34
    const/4 v6, 0x0

    #@35
    .restart local v6    # "newRingerMode":I
    goto :goto_0

    #@36
    .line 1389
    .end local v6    # "newRingerMode":I
    :cond_4
    const/4 v6, 0x2

    #@37
    .restart local v6    # "newRingerMode":I
    goto :goto_0

    #@38
    .line 1391
    .end local v6    # "newRingerMode":I
    :cond_5
    const/4 v6, 0x2

    #@39
    .restart local v6    # "newRingerMode":I
    goto :goto_0
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v5, 0x4

    #@3
    const/4 v0, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 4861
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 4862
    const-string/jumbo v2, "AudioService"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "onSetWiredDeviceConnectionState(dev:"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 4863
    const-string/jumbo v4, " state:"

    #@23
    .line 4862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 4863
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 4862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 4864
    const-string/jumbo v4, " address:"

    #@32
    .line 4862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 4865
    const-string/jumbo v4, " deviceName:"

    #@3d
    .line 4862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 4866
    const-string/jumbo v4, " caller: "

    #@48
    .line 4862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 4866
    const-string/jumbo v4, ");"

    #@53
    .line 4862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 4869
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@60
    monitor-enter v8

    #@61
    .line 4870
    if-nez p2, :cond_2

    #@63
    if-eq p1, v5, :cond_1

    #@65
    .line 4871
    if-ne p1, v6, :cond_3

    #@67
    .line 4873
    :cond_1
    :goto_0
    const/4 v2, 0x1

    #@68
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    #@6b
    .line 4875
    :cond_2
    and-int/lit16 v2, p1, -0x6001

    #@6d
    if-eqz v2, :cond_4

    #@6f
    .line 4876
    const/high16 v2, -0x80000000

    #@71
    and-int/2addr v2, p1

    #@72
    if-eqz v2, :cond_6

    #@74
    .line 4877
    const v2, 0x7fffe7ff

    #@77
    and-int/2addr v2, p1

    #@78
    if-nez v2, :cond_5

    #@7a
    const/4 v7, 0x1

    #@7b
    .line 4878
    .local v7, "isUsb":Z
    :goto_1
    if-ne p2, v0, :cond_7

    #@7d
    :goto_2
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@80
    move-result v0

    #@81
    if-nez v0, :cond_8

    #@83
    monitor-exit v8

    #@84
    .line 4880
    return-void

    #@85
    .line 4872
    .end local v7    # "isUsb":Z
    :cond_3
    const/high16 v2, 0x20000

    #@87
    if-ne p1, v2, :cond_2

    #@89
    goto :goto_0

    #@8a
    .line 4875
    :cond_4
    const/4 v7, 0x1

    #@8b
    .restart local v7    # "isUsb":Z
    goto :goto_1

    #@8c
    .line 4877
    .end local v7    # "isUsb":Z
    :cond_5
    const/4 v7, 0x0

    #@8d
    .restart local v7    # "isUsb":Z
    goto :goto_1

    #@8e
    .line 4876
    .end local v7    # "isUsb":Z
    :cond_6
    const/4 v7, 0x0

    #@8f
    .restart local v7    # "isUsb":Z
    goto :goto_1

    #@90
    :cond_7
    move v0, v1

    #@91
    .line 4878
    goto :goto_2

    #@92
    .line 4882
    :cond_8
    if-eqz p2, :cond_10

    #@94
    .line 4883
    if-eq p1, v5, :cond_9

    #@96
    .line 4884
    if-ne p1, v6, :cond_f

    #@98
    .line 4886
    :cond_9
    :goto_3
    const/4 v0, 0x0

    #@99
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    #@9c
    .line 4888
    :cond_a
    and-int/lit8 v0, p1, 0xc

    #@9e
    if-eqz v0, :cond_b

    #@a0
    .line 4889
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@a2
    .line 4890
    const/16 v1, 0xe

    #@a4
    .line 4891
    const/4 v2, 0x0

    #@a5
    .line 4892
    const/4 v3, 0x0

    #@a6
    .line 4893
    const/4 v4, 0x0

    #@a7
    .line 4895
    const v6, 0xea60

    #@aa
    move-object v5, p5

    #@ab
    .line 4889
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@ae
    .line 4898
    :cond_b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@b1
    move-result v0

    #@b2
    if-eqz v0, :cond_d

    #@b4
    and-int/lit16 v0, p1, 0x400

    #@b6
    if-eqz v0, :cond_d

    #@b8
    .line 4899
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@ba
    or-int/lit16 v0, v0, 0x400

    #@bc
    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@be
    .line 4900
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    #@c1
    .line 4901
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@c3
    if-eqz v0, :cond_d

    #@c5
    .line 4902
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@c7
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@c8
    .line 4903
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@ca
    if-eqz v0, :cond_c

    #@cc
    .line 4904
    const/4 v0, 0x0

    #@cd
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    #@cf
    .line 4905
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@d1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    #@d3
    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d6
    :cond_c
    :try_start_3
    monitor-exit v1

    #@d7
    .line 4919
    :cond_d
    :goto_4
    if-nez v7, :cond_e

    #@d9
    const v0, -0x7ffffff0

    #@dc
    if-eq p1, v0, :cond_e

    #@de
    .line 4920
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@e1
    :cond_e
    monitor-exit v8

    #@e2
    .line 4860
    return-void

    #@e3
    .line 4885
    :cond_f
    const/high16 v0, 0x20000

    #@e5
    if-ne p1, v0, :cond_a

    #@e7
    goto :goto_3

    #@e8
    .line 4902
    :catchall_0
    move-exception v0

    #@e9
    :try_start_4
    monitor-exit v1

    #@ea
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@eb
    .line 4869
    .end local v7    # "isUsb":Z
    :catchall_1
    move-exception v0

    #@ec
    monitor-exit v8

    #@ed
    throw v0

    #@ee
    .line 4911
    .restart local v7    # "isUsb":Z
    :cond_10
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@f1
    move-result v0

    #@f2
    if-eqz v0, :cond_d

    #@f4
    and-int/lit16 v0, p1, 0x400

    #@f6
    if-eqz v0, :cond_d

    #@f8
    .line 4912
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@fa
    if-eqz v0, :cond_d

    #@fc
    .line 4913
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@fe
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ff
    .line 4914
    const/4 v1, 0x0

    #@100
    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@102
    :try_start_7
    monitor-exit v0

    #@103
    goto :goto_4

    #@104
    .line 4913
    :catchall_2
    move-exception v1

    #@105
    monitor-exit v0

    #@106
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private onUnmuteStream(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1326
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    aget-object v2, v3, p1

    #@4
    .line 1327
    .local v2, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v3, 0x0

    #@5
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@8
    .line 1329
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@b
    move-result v0

    #@c
    .line 1330
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@e
    aget-object v3, v3, p1

    #@10
    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@13
    move-result v1

    #@14
    .line 1331
    .local v1, "index":I
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    #@17
    .line 1325
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    #@0
    .prologue
    .line 3498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 3501
    .local v8, "ident":J
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@9
    .line 3502
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 3503
    const/4 v2, 0x2

    #@d
    move-object v0, p1

    #@e
    move v1, p2

    #@f
    move v3, p3

    #@10
    move v4, p4

    #@11
    move-object v5, p5

    #@12
    move/from16 v6, p6

    #@14
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@17
    .line 3497
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    #@0
    .prologue
    .line 5730
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v1

    #@4
    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    #@7
    move-result v0

    #@8
    .line 5731
    .local v0, "status":I
    if-eqz v0, :cond_0

    #@a
    .line 5732
    const-string/jumbo v1, "AudioService"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 5728
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 9
    .param p1, "userSwitch"    # Z

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v5, 0x0

    #@2
    .line 2465
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    #@5
    .line 2468
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@8
    move-result v0

    #@9
    .line 2469
    .local v0, "numStreamTypes":I
    const/4 v2, 0x0

    #@a
    .local v2, "streamType":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@c
    .line 2470
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@e
    aget-object v1, v3, v2

    #@10
    .line 2472
    .local v1, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    #@12
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@14
    aget v3, v3, v2

    #@16
    if-ne v3, v8, :cond_0

    #@18
    .line 2469
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2476
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    #@1e
    .line 2477
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@20
    monitor-enter v4

    #@21
    .line 2479
    :try_start_0
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_3

    #@27
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 2480
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@35
    .line 2479
    if-eqz v3, :cond_3

    #@37
    .line 2481
    :cond_2
    const/4 v3, 0x0

    #@38
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-set0(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    :cond_3
    monitor-exit v4

    #@3c
    goto :goto_1

    #@3d
    .line 2477
    :catchall_0
    move-exception v3

    #@3e
    monitor-exit v4

    #@3f
    throw v3

    #@40
    .line 2488
    .end local v1    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@43
    move-result v3

    #@44
    invoke-direct {p0, v3, v5}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@47
    .line 2490
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    #@4a
    .line 2491
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    #@4d
    .line 2492
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    #@50
    .line 2494
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@52
    monitor-enter v4

    #@53
    .line 2495
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@55
    .line 2496
    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    #@58
    const/4 v6, 0x0

    #@59
    const/4 v7, -0x2

    #@5a
    .line 2495
    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@5d
    move-result v3

    #@5e
    .line 2497
    const/4 v5, 0x0

    #@5f
    const v6, 0x44aa200

    #@62
    .line 2495
    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    #@65
    move-result v3

    #@66
    iput v3, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@68
    .line 2498
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@6a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@6d
    move-result v3

    #@6e
    if-ne v3, v8, :cond_5

    #@70
    .line 2499
    const-string/jumbo v3, "AudioService"

    #@73
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@76
    :cond_5
    monitor-exit v4

    #@77
    .line 2463
    return-void

    #@78
    .line 2494
    :catchall_1
    move-exception v3

    #@79
    monitor-exit v4

    #@7a
    throw v3
.end method

.method private readCameraSoundForced()Z
    .locals 2

    #@0
    .prologue
    .line 5236
    const-string/jumbo v0, "audio.camerasound.force"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 5237
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    .line 5238
    const v1, 0x1120074

    #@13
    .line 5237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v0

    #@17
    .line 5236
    :goto_0
    return v0

    #@18
    :cond_0
    const/4 v0, 0x1

    #@19
    goto :goto_0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 974
    const-string/jumbo v2, "dock_audio_media_enabled"

    #@7
    .line 973
    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v2

    #@b
    if-ne v2, v0, :cond_0

    #@d
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    #@f
    .line 976
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@11
    .line 980
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    #@13
    if-eqz v2, :cond_1

    #@15
    move v4, v1

    #@16
    .line 978
    :goto_1
    const/4 v2, 0x2

    #@17
    .line 979
    const/4 v3, 0x3

    #@18
    .line 982
    const/4 v5, 0x0

    #@19
    .line 976
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1c
    .line 971
    return-void

    #@1d
    :cond_0
    move v0, v6

    #@1e
    .line 973
    goto :goto_0

    #@1f
    :cond_1
    move v4, v6

    #@20
    .line 981
    goto :goto_1
.end method

.method private readPersistedSettings()V
    .locals 13

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v12, -0x2

    #@2
    const/4 v11, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 987
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@6
    .line 991
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "mode_ringer"

    #@9
    .line 990
    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@c
    move-result v4

    #@d
    .line 992
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    #@e
    .line 995
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    #@11
    move-result v7

    #@12
    if-nez v7, :cond_0

    #@14
    .line 996
    const/4 v3, 0x2

    #@15
    .line 998
    :cond_0
    if-ne v3, v11, :cond_1

    #@17
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@19
    if-eqz v7, :cond_7

    #@1b
    .line 1001
    :cond_1
    :goto_0
    if-eq v3, v4, :cond_2

    #@1d
    .line 1002
    const-string/jumbo v7, "mode_ringer"

    #@20
    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@23
    .line 1004
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@25
    if-nez v7, :cond_3

    #@27
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_4

    #@2d
    .line 1005
    :cond_3
    const/4 v3, 0x2

    #@2e
    .line 1007
    :cond_4
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@30
    monitor-enter v8

    #@31
    .line 1008
    :try_start_0
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@33
    .line 1009
    iget v7, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@35
    const/4 v9, -0x1

    #@36
    if-ne v7, v9, :cond_5

    #@38
    .line 1010
    iget v7, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@3a
    iput v7, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@3c
    .line 1018
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@3e
    if-eqz v7, :cond_8

    #@40
    move v7, v5

    #@41
    .line 1016
    :goto_1
    const/4 v9, 0x0

    #@42
    .line 1017
    const/4 v10, 0x1

    #@43
    .line 1016
    invoke-static {v9, v10, v7}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    #@46
    move-result v7

    #@47
    iput v7, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@49
    .line 1020
    iget v7, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@4b
    .line 1022
    iget-boolean v9, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@4d
    if-eqz v9, :cond_9

    #@4f
    .line 1021
    :goto_2
    const/4 v9, 0x0

    #@50
    .line 1020
    invoke-static {v7, v9, v5}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    #@53
    move-result v5

    #@54
    iput v5, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@56
    .line 1025
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    #@59
    .line 1026
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    monitor-exit v8

    #@5d
    .line 1030
    const-string/jumbo v5, "mute_streams_affected"

    #@60
    const/16 v7, 0x2e

    #@62
    .line 1029
    invoke-static {v0, v5, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@65
    move-result v5

    #@66
    iput v5, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    #@68
    .line 1033
    const-string/jumbo v5, "volume_master_mute"

    #@6b
    invoke-static {v0, v5, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@6e
    move-result v5

    #@6f
    if-ne v5, v11, :cond_a

    #@71
    const/4 v1, 0x1

    #@72
    .line 1035
    .local v1, "masterMute":Z
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@74
    if-eqz v5, :cond_6

    #@76
    .line 1036
    const/4 v1, 0x0

    #@77
    .line 1037
    const/high16 v5, 0x3f800000    # 1.0f

    #@79
    invoke-static {v5}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    #@7c
    .line 1039
    :cond_6
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    #@7f
    .line 1040
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    #@82
    .line 1043
    const-string/jumbo v5, "microphone_mute"

    #@85
    invoke-static {v0, v5, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@88
    move-result v5

    #@89
    if-ne v5, v11, :cond_b

    #@8b
    const/4 v2, 0x1

    #@8c
    .line 1044
    .local v2, "microphoneMute":Z
    :goto_4
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    #@8f
    .line 1049
    const-string/jumbo v5, "android.media.RINGER_MODE_CHANGED"

    #@92
    iget v7, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@94
    invoke-direct {p0, v5, v7}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    #@97
    .line 1050
    const-string/jumbo v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    #@9a
    iget v7, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@9c
    invoke-direct {p0, v5, v7}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    #@9f
    .line 1053
    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    #@a2
    .line 1054
    invoke-direct {p0, v11}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    #@a5
    .line 1057
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@a7
    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    #@aa
    .line 986
    return-void

    #@ab
    .line 999
    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_7
    const/4 v3, 0x0

    #@ac
    goto/16 :goto_0

    #@ae
    :cond_8
    move v7, v6

    #@af
    .line 1019
    goto :goto_1

    #@b0
    :cond_9
    move v5, v6

    #@b1
    .line 1023
    goto :goto_2

    #@b2
    .line 1007
    :catchall_0
    move-exception v5

    #@b3
    monitor-exit v8

    #@b4
    throw v5

    #@b5
    .line 1033
    :cond_a
    const/4 v1, 0x0

    #@b6
    .restart local v1    # "masterMute":Z
    goto :goto_3

    #@b7
    .line 1043
    :cond_b
    const/4 v2, 0x0

    #@b8
    .restart local v2    # "microphoneMute":Z
    goto :goto_4
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    #@0
    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    aget-object v0, v0, p3

    #@4
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@7
    move-result v0

    #@8
    mul-int/2addr v0, p1

    #@9
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@b
    aget-object v1, v1, p2

    #@d
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@10
    move-result v1

    #@11
    div-int/lit8 v1, v1, 0x2

    #@13
    add-int/2addr v0, v1

    #@14
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@16
    aget-object v1, v1, p2

    #@18
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@1b
    move-result v1

    #@1c
    div-int/2addr v0, v1

    #@1d
    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    #@0
    .prologue
    .line 2890
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 2891
    const/4 v0, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    #@8
    .line 2892
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@b
    .line 2893
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 2889
    return-void

    #@11
    .line 2890
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 5718
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 5724
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 5719
    :pswitch_0
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    #@c
    return-object v0

    #@d
    .line 5720
    :pswitch_1
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_DISABLED"

    #@10
    return-object v0

    #@11
    .line 5721
    :pswitch_2
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    #@14
    return-object v0

    #@15
    .line 5722
    :pswitch_3
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    #@18
    return-object v0

    #@19
    .line 5718
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    #@0
    .prologue
    .line 3150
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@4
    const/16 v2, 0x16

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 3149
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1536
    const/high16 v2, 0x4000000

    #@2
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5
    .line 1537
    const/high16 v2, 0x10000000

    #@7
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a
    .line 1538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 1540
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@10
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@12
    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 1542
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 1535
    return-void

    #@19
    .line 1541
    :catchall_0
    move-exception v2

    #@1a
    .line 1542
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1541
    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4802
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 4803
    const-string/jumbo v2, "AudioService"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "sendDeviceConnectionIntent(dev:0x"

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    .line 4804
    const-string/jumbo v4, " state:0x"

    #@1e
    .line 4803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 4804
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    .line 4803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 4804
    const-string/jumbo v4, " address:"

    #@2d
    .line 4803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    move-object/from16 v0, p3

    #@33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 4805
    const-string/jumbo v4, " name:"

    #@3a
    .line 4803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    move-object/from16 v0, p4

    #@40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 4805
    const-string/jumbo v4, ");"

    #@47
    .line 4803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 4807
    :cond_0
    new-instance v12, Landroid/content/Intent;

    #@54
    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    #@57
    .line 4809
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    #@5a
    move/from16 v0, p2

    #@5c
    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5f
    .line 4810
    const-string/jumbo v2, "address"

    #@62
    move-object/from16 v0, p3

    #@64
    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@67
    .line 4811
    const-string/jumbo v2, "portName"

    #@6a
    move-object/from16 v0, p4

    #@6c
    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6f
    .line 4813
    const/high16 v2, 0x40000000    # 2.0f

    #@71
    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@74
    .line 4815
    const/4 v9, 0x0

    #@75
    .line 4817
    .local v9, "connType":I
    const/4 v2, 0x4

    #@76
    move/from16 v0, p1

    #@78
    if-ne v0, v2, :cond_3

    #@7a
    .line 4818
    const/4 v9, 0x1

    #@7b
    .line 4819
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    #@7e
    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@81
    .line 4820
    const-string/jumbo v2, "microphone"

    #@84
    const/4 v3, 0x1

    #@85
    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@88
    .line 4835
    :cond_1
    :goto_0
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@8a
    monitor-enter v14

    #@8b
    .line 4836
    if-eqz v9, :cond_2

    #@8d
    .line 4837
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@8f
    iget v13, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    #@91
    .line 4838
    .local v13, "newConn":I
    if-eqz p2, :cond_8

    #@93
    .line 4839
    or-int/2addr v13, v9

    #@94
    .line 4843
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@96
    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    #@98
    if-eq v13, v2, :cond_2

    #@9a
    .line 4844
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@9c
    iput v13, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    #@9e
    .line 4845
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@a0
    const/16 v3, 0xc

    #@a2
    .line 4846
    const/4 v4, 0x1

    #@a3
    const/4 v5, 0x0

    #@a4
    const/4 v6, 0x0

    #@a5
    const/4 v7, 0x0

    #@a6
    const/4 v8, 0x0

    #@a7
    .line 4845
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@aa
    .end local v13    # "newConn":I
    :cond_2
    monitor-exit v14

    #@ab
    .line 4851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ae
    move-result-wide v10

    #@af
    .line 4853
    .local v10, "ident":J
    const/4 v2, 0x0

    #@b0
    const/4 v3, -0x1

    #@b1
    :try_start_1
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b4
    .line 4855
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b7
    .line 4801
    return-void

    #@b8
    .line 4821
    .end local v10    # "ident":J
    :cond_3
    const/16 v2, 0x8

    #@ba
    move/from16 v0, p1

    #@bc
    if-eq v0, v2, :cond_4

    #@be
    .line 4822
    const/high16 v2, 0x20000

    #@c0
    move/from16 v0, p1

    #@c2
    if-ne v0, v2, :cond_5

    #@c4
    .line 4824
    :cond_4
    const/4 v9, 0x2

    #@c5
    .line 4825
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    #@c8
    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@cb
    .line 4826
    const-string/jumbo v2, "microphone"

    #@ce
    const/4 v3, 0x0

    #@cf
    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@d2
    goto :goto_0

    #@d3
    .line 4827
    :cond_5
    const/16 v2, 0x400

    #@d5
    move/from16 v0, p1

    #@d7
    if-eq v0, v2, :cond_6

    #@d9
    .line 4828
    const/high16 v2, 0x40000

    #@db
    move/from16 v0, p1

    #@dd
    if-ne v0, v2, :cond_7

    #@df
    .line 4829
    :cond_6
    const/16 v9, 0x8

    #@e1
    .line 4830
    move/from16 v0, p2

    #@e3
    invoke-direct {p0, v12, v0}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    #@e6
    goto :goto_0

    #@e7
    .line 4831
    :cond_7
    const/16 v2, 0x4000

    #@e9
    move/from16 v0, p1

    #@eb
    if-ne v0, v2, :cond_1

    #@ed
    .line 4832
    const/16 v9, 0x10

    #@ef
    goto :goto_0

    #@f0
    .line 4841
    .restart local v13    # "newConn":I
    :cond_8
    not-int v2, v9

    #@f1
    and-int/2addr v13, v2

    #@f2
    goto :goto_1

    #@f3
    .line 4835
    .end local v13    # "newConn":I
    :catchall_0
    move-exception v2

    #@f4
    monitor-exit v14

    #@f5
    throw v2

    #@f6
    .line 4854
    .restart local v10    # "ident":J
    :catchall_1
    move-exception v2

    #@f7
    .line 4855
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@fa
    .line 4854
    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@2
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    #@9
    .line 1596
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    #@c
    .line 1594
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    #@0
    .prologue
    .line 3509
    if-nez p2, :cond_3

    #@2
    .line 3510
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@5
    .line 3514
    :cond_0
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    #@7
    monitor-enter v3

    #@8
    .line 3515
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v4

    #@c
    int-to-long v6, p6

    #@d
    add-long v0, v4, v6

    #@f
    .line 3516
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@16
    .line 3517
    const/16 v2, 0x64

    #@18
    if-eq p1, v2, :cond_1

    #@1a
    .line 3518
    const/16 v2, 0x65

    #@1c
    if-ne p1, v2, :cond_4

    #@1e
    .line 3520
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v2

    #@22
    sput-object v2, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_2
    monitor-exit v3

    #@25
    .line 3507
    return-void

    #@26
    .line 3511
    .end local v0    # "time":J
    :cond_3
    const/4 v2, 0x1

    #@27
    if-ne p2, v2, :cond_0

    #@29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 3512
    return-void

    #@30
    .line 3519
    .restart local v0    # "time":J
    :cond_4
    const/16 v2, 0x66

    #@32
    if-ne p1, v2, :cond_2

    #@34
    goto :goto_0

    #@35
    .line 3514
    .end local v0    # "time":J
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v3

    #@37
    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1547
    const/high16 v2, 0x10000000

    #@2
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5
    .line 1548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 1550
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@b
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@d
    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 1546
    return-void

    #@14
    .line 1551
    :catchall_0
    move-exception v2

    #@15
    .line 1552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 1551
    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@2
    aget p1, v0, p1

    #@4
    .line 1573
    const/4 v0, 0x3

    #@5
    if-ne p1, v0, :cond_0

    #@7
    .line 1574
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    #@a
    move-result p4

    #@b
    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@d
    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    #@10
    .line 1570
    return-void
.end method

.method private setForceUseInt_SyncDevices(II)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "config"    # I

    #@0
    .prologue
    .line 5375
    packed-switch p1, :pswitch_data_0

    #@3
    .line 5393
    :goto_0
    :pswitch_0
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@6
    .line 5374
    return-void

    #@7
    .line 5377
    :pswitch_1
    const/16 v0, 0xa

    #@9
    if-ne p2, v0, :cond_0

    #@b
    .line 5378
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@d
    and-int/lit16 v0, v0, -0x381

    #@f
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@11
    goto :goto_0

    #@12
    .line 5380
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@14
    or-int/lit16 v0, v0, 0x380

    #@16
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@18
    goto :goto_0

    #@19
    .line 5384
    :pswitch_2
    const/16 v0, 0x8

    #@1b
    if-ne p2, v0, :cond_1

    #@1d
    .line 5385
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@1f
    or-int/lit16 v0, v0, 0x800

    #@21
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@23
    goto :goto_0

    #@24
    .line 5387
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@26
    and-int/lit16 v0, v0, -0x801

    #@28
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@2a
    goto :goto_0

    #@2b
    .line 5375
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .locals 8
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v6, 0x1f4

    #@3
    const/16 v1, 0xb

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    .line 1766
    const/16 v0, 0x3e8

    #@9
    if-ne p4, v0, :cond_0

    #@b
    .line 1767
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    #@e
    move-result v0

    #@f
    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@12
    move-result p4

    #@13
    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@15
    const/16 v4, 0x21

    #@17
    invoke-virtual {v0, v4, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 1771
    return-void

    #@1e
    .line 1773
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@21
    move-result v0

    #@22
    if-eq p5, v0, :cond_2

    #@24
    .line 1774
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@26
    .line 1775
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@29
    .line 1774
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 1777
    return-void

    #@30
    .line 1779
    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    #@33
    move-result v0

    #@34
    if-ne v0, p5, :cond_5

    #@36
    .line 1780
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    #@39
    move-result v0

    #@3a
    if-eq p1, v0, :cond_3

    #@3c
    .line 1781
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    #@3f
    .line 1782
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    #@42
    .line 1784
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@44
    if-eqz p1, :cond_4

    #@46
    :goto_0
    move v4, p5

    #@47
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@4a
    .line 1786
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    #@4d
    .line 1788
    new-instance v7, Landroid/content/Intent;

    #@4f
    const-string/jumbo v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    #@52
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@55
    .line 1789
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    #@58
    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@5b
    .line 1790
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    #@5e
    .line 1763
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    #@5f
    :cond_4
    move v3, v2

    #@60
    .line 1785
    goto :goto_0

    #@61
    .line 1795
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@63
    if-eqz p1, :cond_6

    #@65
    :goto_2
    move v4, p5

    #@66
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@69
    goto :goto_1

    #@6a
    :cond_6
    move v3, v2

    #@6b
    .line 1796
    goto :goto_2
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 15
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2160
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "AudioService"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "setModeInt(mode="

    #@f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    move/from16 v0, p1

    #@15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    const-string/jumbo v6, ", pid="

    #@1c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    move/from16 v0, p3

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v6, ", caller="

    #@29
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    move-object/from16 v0, p4

    #@2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 2161
    const-string/jumbo v6, ")"

    #@36
    .line 2160
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 2162
    :cond_0
    const/4 v12, 0x0

    #@42
    .line 2163
    .local v12, "newModeOwnerPid":I
    if-nez p2, :cond_1

    #@44
    .line 2164
    const-string/jumbo v2, "AudioService"

    #@47
    const-string/jumbo v3, "setModeInt() called with null binder"

    #@4a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 2165
    return v12

    #@4e
    .line 2168
    :cond_1
    const/4 v10, 0x0

    #@4f
    .line 2169
    .local v10, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v11

    #@55
    .line 2170
    .local v11, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_3

    #@5b
    .line 2171
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v9

    #@5f
    check-cast v9, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    #@61
    .line 2172
    .local v9, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    #@64
    move-result v2

    #@65
    move/from16 v0, p3

    #@67
    if-ne v2, v0, :cond_2

    #@69
    .line 2173
    move-object v10, v9

    #@6a
    .line 2175
    .local v10, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    #@6d
    .line 2176
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    #@70
    move-result-object v2

    #@71
    const/4 v3, 0x0

    #@72
    invoke-interface {v2, v10, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@75
    .line 2180
    .end local v9    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_3
    const/4 v13, 0x0

    #@76
    .line 2182
    .local v13, "status":I
    :cond_4
    if-nez p1, :cond_a

    #@78
    .line 2184
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@7d
    move-result v2

    #@7e
    if-nez v2, :cond_5

    #@80
    .line 2185
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@82
    const/4 v3, 0x0

    #@83
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@86
    move-result-object v10

    #@87
    check-cast v10, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    #@89
    .line 2186
    .restart local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    #@8c
    move-result-object p2

    #@8d
    .line 2187
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    #@90
    move-result p1

    #@91
    .line 2188
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    #@93
    if-eqz v2, :cond_5

    #@95
    .line 2189
    const-string/jumbo v2, "AudioService"

    #@98
    new-instance v3, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v6, " using mode="

    #@a0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v3

    #@a4
    move/from16 v0, p1

    #@a6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    const-string/jumbo v6, " instead due to death hdlr at pid="

    #@ad
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    .line 2190
    invoke-static {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->-get0(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    #@b4
    move-result v6

    #@b5
    .line 2189
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 2211
    .end local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_5
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@c2
    move/from16 v0, p1

    #@c4
    if-eq v0, v2, :cond_f

    #@c6
    .line 2212
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    #@c9
    move-result v13

    #@ca
    .line 2213
    if-nez v13, :cond_c

    #@cc
    .line 2214
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    #@ce
    if-eqz v2, :cond_6

    #@d0
    const-string/jumbo v2, "AudioService"

    #@d3
    new-instance v3, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v6, " mode successfully set to "

    #@db
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v3

    #@df
    move/from16 v0, p1

    #@e1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v3

    #@e9
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 2215
    :cond_6
    move/from16 v0, p1

    #@ee
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@f0
    .line 2228
    :goto_1
    if-eqz v13, :cond_7

    #@f2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@f4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@f7
    move-result v2

    #@f8
    if-eqz v2, :cond_4

    #@fa
    .line 2230
    :cond_7
    if-nez v13, :cond_9

    #@fc
    .line 2231
    if-eqz p1, :cond_8

    #@fe
    .line 2232
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@100
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@103
    move-result v2

    #@104
    if-eqz v2, :cond_10

    #@106
    .line 2233
    const-string/jumbo v2, "AudioService"

    #@109
    const-string/jumbo v3, "setMode() different from MODE_NORMAL with empty mode client stack"

    #@10c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 2238
    :cond_8
    :goto_2
    const/high16 v2, -0x80000000

    #@111
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    #@114
    move-result v14

    #@115
    .line 2239
    .local v14, "streamType":I
    invoke-direct {p0, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@118
    move-result v5

    #@119
    .line 2240
    .local v5, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@11b
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@11d
    aget v3, v3, v14

    #@11f
    aget-object v2, v2, v3

    #@121
    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@124
    move-result v4

    #@125
    .line 2241
    .local v4, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@127
    aget v3, v2, v14

    #@129
    const/4 v6, 0x1

    #@12a
    move-object v2, p0

    #@12b
    move-object/from16 v7, p4

    #@12d
    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    #@130
    .line 2243
    const/4 v2, 0x1

    #@131
    move-object/from16 v0, p4

    #@133
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    #@136
    .line 2245
    .end local v4    # "index":I
    .end local v5    # "device":I
    .end local v14    # "streamType":I
    :cond_9
    return v12

    #@137
    .line 2194
    :cond_a
    if-nez v10, :cond_b

    #@139
    .line 2195
    new-instance v10, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    #@13b
    move-object/from16 v0, p2

    #@13d
    move/from16 v1, p3

    #@13f
    invoke-direct {v10, p0, v0, v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    #@142
    .line 2199
    :cond_b
    const/4 v2, 0x0

    #@143
    :try_start_0
    move-object/from16 v0, p2

    #@145
    invoke-interface {v0, v10, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@148
    .line 2207
    :goto_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@14a
    const/4 v3, 0x0

    #@14b
    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@14e
    .line 2208
    move/from16 v0, p1

    #@150
    invoke-virtual {v10, v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    #@153
    goto/16 :goto_0

    #@155
    .line 2200
    :catch_0
    move-exception v8

    #@156
    .line 2202
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioService"

    #@159
    new-instance v3, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v6, "setMode() could not link to "

    #@161
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v3

    #@165
    move-object/from16 v0, p2

    #@167
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v3

    #@16b
    const-string/jumbo v6, " binder death"

    #@16e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v3

    #@172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v3

    #@176
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@179
    goto :goto_3

    #@17a
    .line 2217
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_c
    if-eqz v10, :cond_d

    #@17c
    .line 2218
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@17e
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@181
    .line 2219
    const/4 v2, 0x0

    #@182
    move-object/from16 v0, p2

    #@184
    invoke-interface {v0, v10, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@187
    .line 2222
    :cond_d
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    #@189
    if-eqz v2, :cond_e

    #@18b
    const-string/jumbo v2, "AudioService"

    #@18e
    const-string/jumbo v3, " mode set to MODE_NORMAL after phoneState pb"

    #@191
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@194
    .line 2223
    :cond_e
    const/16 p1, 0x0

    #@196
    goto/16 :goto_1

    #@198
    .line 2226
    :cond_f
    const/4 v13, 0x0

    #@199
    goto/16 :goto_1

    #@19b
    .line 2235
    :cond_10
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@19d
    const/4 v3, 0x0

    #@19e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a1
    move-result-object v2

    #@1a2
    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    #@1a4
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    #@1a7
    move-result v12

    #@1a8
    goto/16 :goto_2
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    #@0
    .prologue
    .line 5320
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 5338
    const-string/jumbo v0, "AudioService"

    #@8
    const-string/jumbo v1, "Unknown orientation"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 5319
    :goto_0
    return-void

    #@f
    .line 5323
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    #@12
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@15
    goto :goto_0

    #@16
    .line 5327
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    #@19
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@1c
    goto :goto_0

    #@1d
    .line 5331
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    #@20
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@23
    goto :goto_0

    #@24
    .line 5335
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    #@27
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@2a
    goto :goto_0

    #@2b
    .line 5320
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 12
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1920
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@3
    if-nez v0, :cond_0

    #@5
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1921
    :cond_0
    return-void

    #@c
    .line 1923
    :cond_1
    if-eqz p2, :cond_2

    #@e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_3

    #@14
    .line 1924
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Bad caller: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 1926
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    #@31
    .line 1927
    if-ne p1, v2, :cond_4

    #@33
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@35
    if-eqz v0, :cond_7

    #@37
    .line 1930
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3a
    move-result-wide v10

    #@3b
    .line 1932
    .local v10, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@3d
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3e
    .line 1933
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@41
    move-result v4

    #@42
    .line 1934
    .local v4, "ringerModeInternal":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    #@45
    move-result v1

    #@46
    .line 1935
    .local v1, "ringerModeExternal":I
    if-eqz p3, :cond_8

    #@48
    .line 1936
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    #@4b
    .line 1937
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@4d
    if-eqz v0, :cond_5

    #@4f
    .line 1938
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@51
    .line 1939
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@53
    move v2, p1

    #@54
    move-object v3, p2

    #@55
    .line 1938
    invoke-interface/range {v0 .. v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    #@58
    move-result p1

    #@59
    .line 1941
    :cond_5
    if-eq p1, v4, :cond_6

    #@5b
    .line 1942
    const/4 v0, 0x1

    #@5c
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    :cond_6
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@60
    .line 1956
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 1919
    return-void

    #@64
    .line 1928
    .end local v1    # "ringerModeExternal":I
    .end local v4    # "ringerModeInternal":I
    .end local v10    # "identity":J
    :cond_7
    const/4 p1, 0x0

    #@65
    goto :goto_0

    #@66
    .line 1945
    .restart local v1    # "ringerModeExternal":I
    .restart local v4    # "ringerModeInternal":I
    .restart local v10    # "identity":J
    :cond_8
    if-eq p1, v4, :cond_9

    #@68
    .line 1946
    const/4 v0, 0x1

    #@69
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@6c
    .line 1948
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@6e
    if-eqz v0, :cond_a

    #@70
    .line 1949
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@72
    .line 1950
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@74
    move v5, p1

    #@75
    move-object v6, p2

    #@76
    move v7, v1

    #@77
    .line 1949
    invoke-interface/range {v3 .. v8}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    #@7a
    move-result p1

    #@7b
    .line 1952
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7e
    goto :goto_1

    #@7f
    .line 1932
    .end local v1    # "ringerModeExternal":I
    .end local v4    # "ringerModeInternal":I
    :catchall_0
    move-exception v0

    #@80
    :try_start_4
    monitor-exit v9

    #@81
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@82
    .line 1955
    :catchall_1
    move-exception v0

    #@83
    .line 1956
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@86
    .line 1955
    throw v0
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    #@0
    .prologue
    .line 1961
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1962
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne p1, v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    return-void

    #@9
    .line 1963
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 1966
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    #@f
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    #@12
    .line 1960
    return-void

    #@13
    .line 1961
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .locals 8
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2017
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2018
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@6
    if-eq v0, p1, :cond_2

    #@8
    const/4 v7, 0x1

    #@9
    .line 2019
    .local v7, "change":Z
    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 2022
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    #@f
    .line 2025
    if-eqz p2, :cond_0

    #@11
    .line 2026
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@13
    const/4 v1, 0x3

    #@14
    .line 2027
    const/4 v5, 0x0

    #@15
    const/16 v6, 0x1f4

    #@17
    move v3, v2

    #@18
    move v4, v2

    #@19
    .line 2026
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1c
    .line 2029
    :cond_0
    if-eqz v7, :cond_1

    #@1e
    .line 2031
    const-string/jumbo v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    #@21
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    #@24
    .line 2015
    :cond_1
    return-void

    #@25
    .line 2018
    .end local v7    # "change":Z
    :cond_2
    const/4 v7, 0x0

    #@26
    .restart local v7    # "change":Z
    goto :goto_0

    #@27
    .line 2017
    .end local v7    # "change":Z
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method

.method private setRotationForAudioSystem()V
    .locals 2

    #@0
    .prologue
    .line 5343
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 5357
    const-string/jumbo v0, "AudioService"

    #@8
    const-string/jumbo v1, "Unknown device rotation"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 5342
    :goto_0
    return-void

    #@f
    .line 5345
    :pswitch_0
    const-string/jumbo v0, "rotation=0"

    #@12
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@15
    goto :goto_0

    #@16
    .line 5348
    :pswitch_1
    const-string/jumbo v0, "rotation=90"

    #@19
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@1c
    goto :goto_0

    #@1d
    .line 5351
    :pswitch_2
    const-string/jumbo v0, "rotation=180"

    #@20
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@23
    goto :goto_0

    #@24
    .line 5354
    :pswitch_3
    const-string/jumbo v0, "rotation=270"

    #@27
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@2a
    goto :goto_0

    #@2b
    .line 5343
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v2, 0x2

    #@2
    const/4 v1, 0x1

    #@3
    .line 5454
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@5
    monitor-enter v7

    #@6
    .line 5455
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 5456
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 5457
    if-eqz p1, :cond_1

    #@18
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v0

    #@1e
    if-ne v0, v2, :cond_1

    #@20
    .line 5458
    const/4 v0, 0x3

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@27
    .line 5459
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :cond_0
    :goto_0
    monitor-exit v7

    #@2b
    .line 5453
    return-void

    #@2c
    .line 5460
    :cond_1
    if-nez p1, :cond_0

    #@2e
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v0

    #@34
    if-ne v0, v3, :cond_0

    #@36
    .line 5461
    const/4 v0, 0x2

    #@37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@3d
    .line 5462
    const/4 v0, 0x1

    #@3e
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@40
    .line 5463
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    #@43
    .line 5464
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@45
    .line 5465
    const/16 v1, 0xe

    #@47
    .line 5466
    const/4 v2, 0x0

    #@48
    .line 5467
    const/4 v3, 0x0

    #@49
    .line 5468
    const/4 v4, 0x0

    #@4a
    .line 5470
    const v6, 0xea60

    #@4d
    move-object v5, p2

    #@4e
    .line 5464
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 5454
    :catchall_0
    move-exception v0

    #@53
    monitor-exit v7

    #@54
    throw v0
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    #@0
    .prologue
    .line 1407
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1408
    return-void

    #@5
    .line 1411
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@8
    .line 1412
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@a
    aget v11, v2, p1

    #@c
    .line 1413
    .local v11, "streamTypeAlias":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@e
    aget-object v10, v2, v11

    #@10
    .line 1415
    .local v10, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@13
    move-result v7

    #@14
    .line 1420
    .local v7, "device":I
    and-int/lit16 v2, v7, 0x380

    #@16
    if-nez v2, :cond_1

    #@18
    .line 1421
    and-int/lit8 v2, p3, 0x40

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 1422
    return-void

    #@1d
    .line 1426
    :cond_1
    const/16 v2, 0x3e8

    #@1f
    move/from16 v0, p6

    #@21
    if-ne v0, v2, :cond_2

    #@23
    .line 1427
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    #@26
    move-result v2

    #@27
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    #@2a
    move-result v3

    #@2b
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    #@2e
    move-result p6

    #@2f
    .line 1429
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@31
    sget-object v3, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    #@33
    aget v3, v3, v11

    #@35
    move/from16 v0, p6

    #@37
    move-object/from16 v1, p4

    #@39
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_3

    #@3f
    .line 1431
    return-void

    #@40
    .line 1434
    :cond_3
    iget-object v12, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@42
    monitor-enter v12

    #@43
    .line 1436
    const/4 v2, 0x0

    #@44
    :try_start_0
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@46
    .line 1438
    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@49
    move-result v9

    #@4a
    .line 1440
    .local v9, "oldIndex":I
    mul-int/lit8 v2, p2, 0xa

    #@4c
    invoke-direct {p0, v2, p1, v11}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    #@4f
    move-result p2

    #@50
    .line 1442
    const/4 v2, 0x3

    #@51
    if-ne v11, v2, :cond_5

    #@53
    .line 1443
    and-int/lit16 v2, v7, 0x380

    #@55
    if-eqz v2, :cond_5

    #@57
    .line 1444
    and-int/lit8 v2, p3, 0x40

    #@59
    if-nez v2, :cond_5

    #@5b
    .line 1445
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@5d
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5e
    .line 1446
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@60
    if-eqz v2, :cond_4

    #@62
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@64
    if-eqz v2, :cond_4

    #@66
    .line 1447
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@68
    div-int/lit8 v4, p2, 0xa

    #@6a
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    :cond_4
    :try_start_2
    monitor-exit v3

    #@6e
    .line 1452
    :cond_5
    const/4 v2, 0x3

    #@6f
    if-ne v11, v2, :cond_6

    #@71
    .line 1453
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    #@74
    move-result v2

    #@75
    move/from16 v0, p3

    #@77
    invoke-direct {p0, v9, p2, v2, v0}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    #@7a
    .line 1456
    :cond_6
    and-int/lit8 p3, p3, -0x21

    #@7c
    .line 1457
    const/4 v2, 0x3

    #@7d
    if-ne v11, v2, :cond_7

    #@7f
    .line 1458
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@81
    and-int/2addr v2, v7

    #@82
    if-eqz v2, :cond_7

    #@84
    .line 1459
    or-int/lit8 p3, p3, 0x20

    #@86
    .line 1462
    if-eqz p2, :cond_7

    #@88
    .line 1463
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@8a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@8d
    move-result v2

    #@8e
    const/4 v3, 0x3

    #@8f
    if-ne v2, v3, :cond_8

    #@91
    .line 1464
    and-int/lit8 v2, v7, 0xc

    #@93
    if-eqz v2, :cond_8

    #@95
    .line 1465
    iget p2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@97
    .line 1472
    :cond_7
    :goto_0
    invoke-direct {p0, v11, p2, v7}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    #@9a
    move-result v2

    #@9b
    if-nez v2, :cond_9

    #@9d
    .line 1473
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@9f
    move/from16 v0, p3

    #@a1
    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    #@a4
    .line 1474
    new-instance v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@a6
    move-object v3, p0

    #@a7
    move v4, p1

    #@a8
    move v5, p2

    #@a9
    move/from16 v6, p3

    #@ab
    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    #@ae
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b0
    :goto_1
    monitor-exit v12

    #@b1
    .line 1481
    move/from16 v0, p3

    #@b3
    invoke-direct {p0, p1, v9, p2, v0}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    #@b6
    .line 1406
    return-void

    #@b7
    .line 1445
    :catchall_0
    move-exception v2

    #@b8
    :try_start_3
    monitor-exit v3

    #@b9
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ba
    .line 1434
    .end local v9    # "oldIndex":I
    :catchall_1
    move-exception v2

    #@bb
    monitor-exit v12

    #@bc
    throw v2

    #@bd
    .line 1467
    .restart local v9    # "oldIndex":I
    :cond_8
    :try_start_4
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@c0
    move-result p2

    #@c1
    goto :goto_0

    #@c2
    :cond_9
    move-object v3, p0

    #@c3
    move v4, p1

    #@c4
    move v5, p2

    #@c5
    move/from16 v6, p3

    #@c7
    move-object/from16 v8, p5

    #@c9
    .line 1477
    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    #@cc
    .line 1478
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@ce
    aget-object v2, v2, p1

    #@d0
    invoke-virtual {v2, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@d3
    move-result p2

    #@d4
    goto :goto_1
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1622
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    aget-object v5, v0, p1

    #@5
    .line 1624
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    if-eqz p4, :cond_1

    #@d
    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@f
    .line 1629
    const/4 v2, 0x2

    #@10
    move v3, p3

    #@11
    move v4, v1

    #@12
    move v6, v1

    #@13
    .line 1627
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@16
    .line 1621
    :cond_1
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1638
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@6
    if-nez v2, :cond_1

    #@8
    :cond_0
    return-void

    #@9
    .line 1639
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@b
    monitor-enter v3

    #@c
    .line 1640
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@e
    if-nez v2, :cond_2

    #@10
    monitor-exit v3

    #@11
    return-void

    #@12
    .line 1641
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@14
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@15
    .line 1642
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@18
    move-result-wide v0

    #@19
    .line 1644
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@1b
    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e
    .line 1646
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@21
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@22
    monitor-exit v3

    #@23
    .line 1637
    return-void

    #@24
    .line 1645
    :catchall_0
    move-exception v2

    #@25
    .line 1646
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 1645
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@29
    .line 1641
    .end local v0    # "token":J
    :catchall_1
    move-exception v2

    #@2a
    :try_start_7
    monitor-exit v4

    #@2b
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@2c
    .line 1639
    :catchall_2
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 5
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1335
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1336
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 1338
    :cond_0
    return-void

    #@9
    .line 1337
    :cond_1
    if-eq p1, p2, :cond_0

    #@b
    .line 1338
    and-int/lit16 v2, p4, 0x100

    #@d
    if-nez v2, :cond_0

    #@f
    .line 1342
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@11
    monitor-enter v3

    #@12
    .line 1343
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@14
    if-nez v2, :cond_2

    #@16
    monitor-exit v3

    #@17
    return-void

    #@18
    .line 1344
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@1a
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1b
    .line 1345
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    move-result-wide v0

    #@1f
    .line 1347
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@21
    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24
    .line 1349
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@27
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@28
    monitor-exit v3

    #@29
    .line 1334
    return-void

    #@2a
    .line 1348
    :catchall_0
    move-exception v2

    #@2b
    .line 1349
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 1348
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@2f
    .line 1344
    .end local v0    # "token":J
    :catchall_1
    move-exception v2

    #@30
    :try_start_7
    monitor-exit v4

    #@31
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@32
    .line 1342
    :catchall_2
    move-exception v2

    #@33
    monitor-exit v3

    #@34
    throw v2
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1583
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@6
    monitor-enter v0

    #@7
    .line 1584
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1585
    and-int/lit16 v1, p1, 0x100

    #@d
    if-nez v1, :cond_0

    #@f
    .line 1586
    and-int/lit8 p1, p1, -0x2

    #@11
    :cond_0
    monitor-exit v0

    #@12
    .line 1590
    :cond_1
    return p1

    #@13
    .line 1583
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v0

    #@15
    throw v1
.end method

.method private updateRingerModeAffectedStreams()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, -0x2

    #@2
    .line 3315
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 3316
    const-string/jumbo v2, "mode_ringer_streams_affected"

    #@7
    .line 3317
    const/16 v3, 0xa6

    #@9
    .line 3315
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@c
    move-result v0

    #@d
    .line 3321
    .local v0, "ringerModeAffectedStreams":I
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@f
    if-ne v1, v5, :cond_1

    #@11
    .line 3322
    const/4 v0, 0x0

    #@12
    .line 3327
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@14
    monitor-enter v2

    #@15
    .line 3328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 3329
    and-int/lit16 v0, v0, -0x81

    #@1f
    :goto_1
    monitor-exit v2

    #@20
    .line 3334
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@22
    const/16 v2, 0x8

    #@24
    aget v1, v1, v2

    #@26
    if-ne v1, v5, :cond_3

    #@28
    .line 3335
    or-int/lit16 v0, v0, 0x100

    #@2a
    .line 3340
    :goto_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@2c
    if-eq v0, v1, :cond_4

    #@2e
    .line 3341
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@30
    .line 3342
    const-string/jumbo v2, "mode_ringer_streams_affected"

    #@33
    .line 3341
    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@36
    .line 3345
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@38
    .line 3346
    const/4 v1, 0x1

    #@39
    return v1

    #@3a
    .line 3323
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@3c
    if-eqz v1, :cond_0

    #@3e
    .line 3324
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@40
    invoke-interface {v1, v0}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    #@43
    move-result v0

    #@44
    goto :goto_0

    #@45
    .line 3331
    :cond_2
    or-int/lit16 v0, v0, 0x80

    #@47
    goto :goto_1

    #@48
    .line 3327
    :catchall_0
    move-exception v1

    #@49
    monitor-exit v2

    #@4a
    throw v1

    #@4b
    .line 3337
    :cond_3
    and-int/lit16 v0, v0, -0x101

    #@4d
    goto :goto_2

    #@4e
    .line 3348
    :cond_4
    const/4 v1, 0x0

    #@4f
    return v1
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 8
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/4 v3, 0x0

    #@3
    .line 931
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 941
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    #@a
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@c
    .line 942
    const/4 v7, 0x3

    #@d
    .line 945
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 946
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@15
    .line 956
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@17
    aput v7, v0, v2

    #@19
    .line 957
    if-eqz p1, :cond_0

    #@1b
    .line 958
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@1d
    aget-object v0, v0, v2

    #@1f
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@21
    aget-object v1, v1, v7

    #@23
    invoke-virtual {v0, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    #@26
    .line 961
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@29
    move-result v0

    #@2a
    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@2d
    .line 962
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2f
    .line 967
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@31
    aget-object v5, v1, v2

    #@33
    .line 963
    const/16 v1, 0xa

    #@35
    .line 964
    const/4 v2, 0x2

    #@36
    move v4, v3

    #@37
    move v6, v3

    #@38
    .line 962
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@3b
    .line 928
    :cond_0
    return-void

    #@3c
    .line 933
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    #@3e
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@40
    .line 934
    const/4 v7, 0x2

    #@41
    .line 935
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    #@42
    .line 937
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    #@44
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@46
    .line 938
    const/4 v7, 0x3

    #@47
    .line 939
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    #@48
    .line 948
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 949
    const/4 v7, 0x0

    #@4f
    .line 950
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@51
    and-int/lit16 v0, v0, -0x101

    #@53
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@55
    goto :goto_1

    #@56
    .line 952
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@58
    or-int/lit16 v0, v0, 0x100

    #@5a
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@5c
    goto :goto_1

    #@5d
    .line 931
    nop

    #@5e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    #@0
    .prologue
    .line 852
    monitor-enter p0

    #@1
    .line 853
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 856
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 857
    :catch_0
    move-exception v0

    #@a
    .line 858
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "AudioService"

    #@d
    const-string/jumbo v2, "Interrupted while waiting on volume handler."

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@13
    goto :goto_0

    #@14
    .line 852
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1

    #@17
    :cond_0
    monitor-exit p0

    #@18
    .line 851
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 5224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p4

    #@a
    .line 1128
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@d
    .line 1127
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p5

    #@a
    .line 1089
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@d
    .line 1088
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    #@0
    .prologue
    .line 4705
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 4706
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@5
    .line 4707
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@7
    .line 4709
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@9
    const/4 v2, 0x3

    #@a
    aget-object v5, v1, v2

    #@c
    .line 4707
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x2

    #@e
    .line 4708
    const/16 v3, 0x80

    #@10
    const/4 v4, 0x0

    #@11
    .line 4709
    const/4 v6, 0x0

    #@12
    .line 4707
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@15
    .line 4710
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@17
    .line 4712
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@19
    const/4 v2, 0x2

    #@1a
    aget-object v5, v1, v2

    #@1c
    .line 4710
    const/4 v1, 0x0

    #@1d
    const/4 v2, 0x2

    #@1e
    .line 4711
    const/16 v3, 0x80

    #@20
    const/4 v4, 0x0

    #@21
    .line 4712
    const/4 v6, 0x0

    #@22
    .line 4710
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v7

    #@26
    .line 4703
    return-void

    #@27
    .line 4705
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v7

    #@29
    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3526
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 3528
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 3530
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Audio Settings Permission Denial: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " from pid="

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 3531
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@28
    move-result v2

    #@29
    .line 3530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 3532
    const-string/jumbo v2, ", uid="

    #@30
    .line 3530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 3532
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@37
    move-result v2

    #@38
    .line 3530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 3533
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "AudioService"

    #@43
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 3534
    return v3
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    #@0
    .prologue
    .line 2832
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2
    monitor-enter v5

    #@3
    .line 2833
    const/4 v2, 0x0

    #@4
    .line 2834
    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    .line 2835
    .local v3, "size":I
    const/4 v1, 0x0

    #@b
    .end local v2    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@d
    .line 2836
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    #@15
    .line 2837
    .local v0, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    #@18
    move-result v4

    #@19
    if-eq v4, p1, :cond_0

    #@1b
    .line 2838
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    #@1e
    .line 2835
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2840
    :cond_0
    move-object v2, v0

    #@22
    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_1

    #@23
    .line 2843
    .end local v0    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@28
    .line 2844
    if-eqz v2, :cond_2

    #@2a
    .line 2845
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_2
    monitor-exit v5

    #@30
    .line 2831
    return-void

    #@31
    .line 2832
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@32
    monitor-exit v5

    #@33
    throw v4
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5515
    const-string/jumbo v0, "disable the safe media volume"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 5516
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@8
    monitor-enter v6

    #@9
    .line 5517
    const/4 v0, 0x0

    #@a
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    #@d
    .line 5518
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 5519
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@13
    iget v1, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    #@15
    .line 5520
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@17
    iget v2, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    #@19
    .line 5521
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@1b
    iget v3, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    #@1d
    .line 5522
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@1f
    iget v4, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    #@21
    move-object v0, p0

    #@22
    move-object v5, p1

    #@23
    .line 5519
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    #@26
    .line 5524
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :cond_0
    monitor-exit v6

    #@2a
    .line 5514
    return-void

    #@2b
    .line 5516
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v6

    #@2d
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 5692
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    const-string/jumbo v2, "AudioService"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 5694
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@d
    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    #@10
    .line 5695
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    #@13
    .line 5696
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    #@16
    .line 5697
    const-string/jumbo v0, "\nAudio routes:"

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 5698
    const-string/jumbo v0, "  mMainType=0x"

    #@1f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@24
    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@26
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d
    .line 5699
    const-string/jumbo v0, "  mBluetoothName="

    #@30
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@35
    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@37
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3a
    .line 5701
    const-string/jumbo v0, "\nOther state:"

    #@3d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 5702
    const-string/jumbo v0, "  mVolumeController="

    #@43
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@48
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4b
    .line 5703
    const-string/jumbo v0, "  mSafeMediaVolumeState="

    #@4e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 5704
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@53
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 5705
    const-string/jumbo v0, "  mSafeMediaVolumeIndex="

    #@5d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@62
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@65
    .line 5706
    const-string/jumbo v0, "  mPendingVolumeCommand="

    #@68
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@6d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@70
    .line 5707
    const-string/jumbo v0, "  mMusicActiveMs="

    #@73
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@78
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@7b
    .line 5708
    const-string/jumbo v0, "  mMcc="

    #@7e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    #@83
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@86
    .line 5709
    const-string/jumbo v0, "  mCameraSoundForced="

    #@89
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@8e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@91
    .line 5710
    const-string/jumbo v0, "  mHasVibrator="

    #@94
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@99
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@9c
    .line 5711
    const-string/jumbo v0, "  mControllerService="

    #@9f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@a4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a7
    .line 5712
    const-string/jumbo v0, "  mVolumePolicy="

    #@aa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@b2
    .line 5714
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    #@b5
    .line 5691
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    const v4, 0x8000

    #@3
    const v3, -0x8001

    #@6
    .line 1724
    if-nez p2, :cond_0

    #@8
    .line 1725
    return-void

    #@9
    .line 1727
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@b
    .line 1728
    const-string/jumbo v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    #@e
    .line 1727
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1729
    const-string/jumbo v1, "AudioService"

    #@17
    const-string/jumbo v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1730
    return-void

    #@1e
    .line 1732
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@20
    monitor-enter v2

    #@21
    .line 1733
    const/4 v0, 0x0

    #@22
    .line 1734
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_5

    #@24
    .line 1735
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_3

    #@2a
    .line 1736
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@2c
    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    #@2e
    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    #@31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 1737
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@36
    if-nez v1, :cond_2

    #@38
    .line 1738
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@3a
    or-int/2addr v1, v4

    #@3b
    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@3d
    .line 1739
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@3f
    or-int/2addr v1, v4

    #@40
    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@42
    .line 1740
    const/4 v0, 0x1

    #@43
    .line 1742
    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@45
    add-int/lit8 v1, v1, 0x1

    #@47
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@49
    .line 1754
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    #@4b
    .line 1756
    const/4 v1, 0x3

    #@4c
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    #@4f
    .line 1757
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@51
    const/4 v3, 0x3

    #@52
    aget-object v1, v1, v3

    #@54
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    :cond_4
    monitor-exit v2

    #@58
    .line 1723
    return-void

    #@59
    .line 1745
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_3

    #@5f
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@61
    if-lez v1, :cond_3

    #@63
    .line 1746
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@65
    add-int/lit8 v1, v1, -0x1

    #@67
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@69
    .line 1747
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@6b
    if-nez v1, :cond_3

    #@6d
    .line 1748
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@6f
    and-int/2addr v1, v3

    #@70
    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@72
    .line 1749
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@74
    and-int/2addr v1, v3

    #@75
    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    .line 1750
    const/4 v0, 0x1

    #@78
    goto :goto_0

    #@79
    .line 1732
    :catchall_0
    move-exception v1

    #@7a
    monitor-exit v2

    #@7b
    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1486
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1487
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@5
    .line 1488
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v0, v2, :cond_1

    #@a
    .line 1489
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1490
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@10
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    #@13
    .line 1491
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    :goto_0
    monitor-exit v1

    #@17
    .line 1485
    return-void

    #@18
    .line 1494
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@1a
    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    #@1d
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 1486
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    #@0
    .prologue
    .line 5232
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1843
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 1844
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@6
    move-result v0

    #@7
    .line 1845
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@9
    aget-object v1, v1, p1

    #@b
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@e
    move-result v1

    #@f
    add-int/lit8 v1, v1, 0x5

    #@11
    div-int/lit8 v1, v1, 0xa

    #@13
    return v1
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 2250
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@2
    return v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    #@0
    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1888
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1887
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getRingerModeInternal()I
    .locals 2

    #@0
    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1895
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1894
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    #@0
    .prologue
    .line 5404
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    #@2
    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1831
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 1832
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@5
    aget-object v0, v0, p1

    #@7
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@a
    move-result v0

    #@b
    add-int/lit8 v0, v0, 0x5

    #@d
    div-int/lit8 v0, v0, 0xa

    #@f
    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1837
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 1838
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@5
    aget-object v0, v0, p1

    #@7
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    #@a
    move-result v0

    #@b
    add-int/lit8 v0, v0, 0x5

    #@d
    div-int/lit8 v0, v0, 0xa

    #@f
    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1812
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 1813
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@6
    move-result v0

    #@7
    .line 1814
    .local v0, "device":I
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@9
    monitor-enter v3

    #@a
    .line 1815
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@c
    aget-object v2, v2, p1

    #@e
    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@11
    move-result v1

    #@12
    .line 1818
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@14
    aget-object v2, v2, p1

    #@16
    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 1819
    const/4 v1, 0x0

    #@1d
    .line 1821
    :cond_0
    if-eqz v1, :cond_1

    #@1f
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@21
    aget v2, v2, p1

    #@23
    const/4 v4, 0x3

    #@24
    if-ne v2, v4, :cond_1

    #@26
    .line 1822
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@28
    and-int/2addr v2, v0

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 1823
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2d
    aget-object v2, v2, p1

    #@2f
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@32
    move-result v1

    #@33
    .line 1825
    :cond_1
    add-int/lit8 v2, v1, 0x5

    #@35
    div-int/lit8 v2, v2, 0xa
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit v3

    #@38
    return v2

    #@39
    .line 1814
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2
.end method

.method public getUiSoundsStreamType()I
    .locals 2

    #@0
    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@2
    const/4 v1, 0x1

    #@3
    aget v0, v0, v1

    #@5
    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    #@0
    .prologue
    .line 2058
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 2059
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@8
    mul-int/lit8 v1, p1, 0x2

    #@a
    shr-int/2addr v0, v1

    #@b
    and-int/lit8 v0, v0, 0x3

    #@d
    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    #@0
    .prologue
    .line 2565
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2566
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2565
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    #@0
    .prologue
    .line 2549
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    #@0
    .prologue
    .line 5646
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@2
    monitor-enter v1

    #@3
    .line 5647
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 5646
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    #@0
    .prologue
    .line 5590
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@2
    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    #@0
    .prologue
    .line 1802
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2526
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3353
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    #@4
    shl-int v3, v0, p1

    #@6
    and-int/2addr v2, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    move v0, v1

    #@b
    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 4
    .param p1, "streamType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3307
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@4
    shl-int v3, v0, p1

    #@6
    and-int/2addr v2, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    move v0, v1

    #@b
    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1654
    const/high16 v0, -0x80000000

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1655
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    #@7
    move-result p1

    #@8
    .line 1657
    :cond_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@a
    monitor-enter v1

    #@b
    .line 1658
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@d
    aget-object v0, v0, p1

    #@f
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    .line 1657
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public isValidRingerMode(I)Z
    .locals 2
    .param p1, "ringerMode"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1907
    if-ltz p1, :cond_0

    #@3
    const/4 v1, 0x2

    #@4
    if-gt p1, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public loadSoundEffects()Z
    .locals 12

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 2378
    const/4 v7, 0x3

    #@3
    .line 2379
    .local v7, "attempts":I
    new-instance v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    #@5
    invoke-direct {v5, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    #@8
    .line 2381
    .local v5, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    #@9
    .line 2382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@b
    const/4 v1, 0x7

    #@c
    const/4 v2, 0x2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v6, 0x0

    #@10
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move v8, v7

    #@14
    .line 2383
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_0
    :try_start_1
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    if-ne v0, v10, :cond_0

    #@18
    add-int/lit8 v7, v8, -0x1

    #@1a
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_1

    #@1c
    .line 2385
    const-wide/16 v0, 0x1388

    #@1e
    :try_start_2
    invoke-virtual {v5, v0, v1}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    :goto_1
    move v8, v7

    #@22
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    #@23
    :cond_0
    move v7, v8

    #@24
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_1
    monitor-exit v5

    #@25
    .line 2391
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    #@27
    if-nez v0, :cond_2

    #@29
    move v0, v10

    #@2a
    :goto_2
    return v0

    #@2b
    .line 2386
    :catch_0
    move-exception v9

    #@2c
    .line 2387
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v0, "AudioService"

    #@2f
    const-string/jumbo v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    #@32
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    goto :goto_1

    #@36
    .line 2381
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    #@37
    :goto_3
    monitor-exit v5

    #@38
    throw v0

    #@39
    :cond_2
    move v0, v11

    #@3a
    .line 2391
    goto :goto_2

    #@3b
    .line 2381
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_1
    move-exception v0

    #@3c
    move v7, v8

    #@3d
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_3
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 5777
    const-string/jumbo v0, "notify about volume controller visibility"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 5780
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 5781
    return-void

    #@f
    .line 5784
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@11
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    #@14
    .line 5785
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    const-string/jumbo v0, "AudioService"

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Volume controller visible: "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 5776
    :cond_1
    return-void
.end method

.method onIndicateSystemReady()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 744
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 745
    return-void

    #@8
    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@a
    .line 748
    const/16 v1, 0x1a

    #@c
    .line 752
    const/4 v5, 0x0

    #@d
    .line 753
    const/16 v6, 0x3e8

    #@f
    move v3, v2

    #@10
    move v4, v2

    #@11
    .line 747
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@14
    .line 743
    return-void
.end method

.method public onMediaServerDied()V
    .locals 14

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 757
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 758
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 759
    :cond_0
    const-string/jumbo v0, "AudioService"

    #@11
    const-string/jumbo v4, "Media server died."

    #@14
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 760
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@19
    .line 761
    const/16 v6, 0x1f4

    #@1b
    move v4, v3

    #@1c
    .line 760
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1f
    .line 762
    return-void

    #@20
    .line 764
    :cond_1
    const-string/jumbo v0, "AudioService"

    #@23
    const-string/jumbo v2, "Media server started."

    #@26
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 770
    const-string/jumbo v0, "restarting=true"

    #@2c
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@2f
    .line 772
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    #@32
    .line 775
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@34
    monitor-enter v2

    #@35
    .line 776
    const/4 v7, 0x0

    #@36
    .local v7, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@3b
    move-result v0

    #@3c
    if-ge v7, v0, :cond_2

    #@3e
    .line 777
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v11

    #@44
    check-cast v11, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@46
    .line 779
    .local v11, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v0, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    #@48
    .line 781
    iget-object v4, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    #@4a
    .line 782
    iget-object v5, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    #@4c
    .line 780
    const/4 v6, 0x1

    #@4d
    .line 778
    invoke-static {v0, v6, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 776
    add-int/lit8 v7, v7, 0x1

    #@52
    goto :goto_0

    #@53
    .end local v11    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2
    monitor-exit v2

    #@54
    .line 786
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@56
    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    #@59
    .line 789
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@5b
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@5e
    .line 790
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@60
    const/4 v2, 0x2

    #@61
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@64
    .line 791
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_3

    #@6c
    .line 792
    const/16 v0, 0xb

    #@6e
    .line 791
    :goto_1
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@71
    .line 795
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@74
    move-result v8

    #@75
    .line 796
    .local v8, "numStreamTypes":I
    add-int/lit8 v13, v8, -0x1

    #@77
    .local v13, "streamType":I
    :goto_2
    if-ltz v13, :cond_4

    #@79
    .line 797
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@7b
    aget-object v12, v0, v13

    #@7d
    .line 798
    .local v12, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get1(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@80
    move-result v0

    #@81
    add-int/lit8 v0, v0, 0x5

    #@83
    div-int/lit8 v0, v0, 0xa

    #@85
    invoke-static {v13, v3, v0}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    #@88
    .line 800
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    #@8b
    .line 796
    add-int/lit8 v13, v13, -0x1

    #@8d
    goto :goto_2

    #@8e
    .line 775
    .end local v8    # "numStreamTypes":I
    .end local v12    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v13    # "streamType":I
    :catchall_0
    move-exception v0

    #@8f
    monitor-exit v2

    #@90
    throw v0

    #@91
    :cond_3
    move v0, v3

    #@92
    .line 792
    goto :goto_1

    #@93
    .line 804
    .restart local v8    # "numStreamTypes":I
    .restart local v13    # "streamType":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@96
    move-result v0

    #@97
    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@9a
    .line 807
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    #@9c
    if-eqz v0, :cond_5

    #@9e
    .line 808
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    #@a1
    .line 810
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    #@a3
    if-eqz v0, :cond_6

    #@a5
    .line 811
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setRotationForAudioSystem()V

    #@a8
    .line 814
    :cond_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@aa
    monitor-enter v1

    #@ab
    .line 816
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@ad
    if-eqz v0, :cond_a

    #@af
    move v0, v3

    #@b0
    .line 815
    :goto_3
    const/4 v2, 0x1

    #@b1
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@b4
    monitor-exit v1

    #@b5
    .line 820
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@b7
    monitor-enter v1

    #@b8
    .line 822
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    #@ba
    if-eqz v0, :cond_7

    #@bc
    .line 823
    const/16 v3, 0x8

    #@be
    .line 821
    :cond_7
    const/4 v0, 0x3

    #@bf
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->setForceUse(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@c2
    monitor-exit v1

    #@c3
    .line 825
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@c5
    if-eqz v0, :cond_9

    #@c7
    .line 826
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@c9
    monitor-enter v1

    #@ca
    .line 827
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@cc
    if-eqz v0, :cond_8

    #@ce
    .line 828
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@d0
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@d3
    :cond_8
    monitor-exit v1

    #@d4
    .line 833
    :cond_9
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@d6
    monitor-enter v1

    #@d7
    .line 834
    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@d9
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@dc
    move-result-object v0

    #@dd
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e0
    move-result-object v10

    #@e1
    .local v10, "policy$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@e4
    move-result v0

    #@e5
    if-eqz v0, :cond_b

    #@e7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ea
    move-result-object v9

    #@eb
    check-cast v9, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@ed
    .line 835
    .local v9, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@f0
    goto :goto_4

    #@f1
    .line 833
    .end local v9    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v10    # "policy$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v0

    #@f2
    monitor-exit v1

    #@f3
    throw v0

    #@f4
    .line 817
    :cond_a
    const/16 v0, 0xa

    #@f6
    goto :goto_3

    #@f7
    .line 814
    :catchall_2
    move-exception v0

    #@f8
    monitor-exit v1

    #@f9
    throw v0

    #@fa
    .line 820
    :catchall_3
    move-exception v0

    #@fb
    monitor-exit v1

    #@fc
    throw v0

    #@fd
    .line 826
    :catchall_4
    move-exception v0

    #@fe
    monitor-exit v1

    #@ff
    throw v0

    #@100
    .restart local v10    # "policy$iterator":Ljava/util/Iterator;
    :cond_b
    monitor-exit v1

    #@101
    .line 839
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    #@104
    .line 841
    const-string/jumbo v0, "restarting=false"

    #@107
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@10a
    .line 756
    return-void
.end method

.method public onSystemReady()V
    .locals 10

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 695
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@6
    .line 696
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@8
    const/4 v1, 0x7

    #@9
    move v4, v3

    #@a
    move v6, v3

    #@b
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@e
    .line 700
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@10
    const-string/jumbo v1, "keyguard"

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/app/KeyguardManager;

    #@19
    .line 699
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@1b
    .line 701
    const/4 v0, -0x1

    #@1c
    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    #@1e
    .line 702
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    #@21
    .line 703
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    #@24
    .line 706
    new-instance v9, Landroid/content/Intent;

    #@26
    const-string/jumbo v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    #@29
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2c
    .line 707
    .local v9, "newIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.media.extra.SCO_AUDIO_STATE"

    #@2f
    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@32
    .line 709
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@35
    .line 711
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@38
    move-result-object v8

    #@39
    .line 712
    .local v8, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_0

    #@3b
    .line 713
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@3d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@3f
    invoke-virtual {v8, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    #@42
    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@44
    const-string/jumbo v1, "hdmi_control"

    #@47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    #@4d
    .line 717
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@4f
    .line 719
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 720
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@55
    monitor-enter v1

    #@56
    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@58
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    #@5b
    move-result-object v0

    #@5c
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@5e
    .line 722
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@60
    if-eqz v0, :cond_1

    #@62
    .line 723
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@64
    const v2, -0x2c0003

    #@67
    and-int/2addr v0, v2

    #@68
    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@6a
    .line 725
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@6c
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@6f
    move-result-object v0

    #@70
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@72
    .line 726
    const/4 v0, 0x0

    #@73
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@75
    monitor-exit v1

    #@76
    .line 730
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@78
    .line 735
    const-string/jumbo v6, "AudioService"

    #@7b
    .line 731
    const/16 v2, 0x11

    #@7d
    .line 736
    const/16 v7, 0x7530

    #@7f
    move v4, v3

    #@80
    move v5, v3

    #@81
    .line 730
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@84
    .line 738
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@86
    invoke-static {v0}, Lcom/android/server/audio/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    #@89
    .line 739
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@8b
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ControllerService;->init()V

    #@8e
    .line 740
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    #@91
    .line 694
    return-void

    #@92
    .line 720
    :catchall_0
    move-exception v0

    #@93
    monitor-exit v1

    #@94
    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    #@0
    .prologue
    .line 2359
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    #@5
    .line 2358
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2364
    const/16 v0, 0xa

    #@3
    if-ge p1, v0, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 2365
    :cond_0
    const-string/jumbo v0, "AudioService"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "AudioService effectType value "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " out of range"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 2366
    return-void

    #@29
    .line 2369
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2b
    .line 2370
    const/high16 v1, 0x447a0000    # 1000.0f

    #@2d
    mul-float/2addr v1, p2

    #@2e
    float-to-int v4, v1

    #@2f
    .line 2369
    const/4 v1, 0x5

    #@30
    const/4 v2, 0x2

    #@31
    .line 2370
    const/4 v5, 0x0

    #@32
    move v3, p1

    #@33
    .line 2369
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@36
    .line 2363
    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .locals 9
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 5979
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    #@3
    invoke-static {v4}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    #@6
    .line 5981
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    const-string/jumbo v4, "AudioService"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "registerAudioPolicy for "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    .line 5982
    const-string/jumbo v6, " with config:"

    #@24
    .line 5981
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 5983
    :cond_0
    const/4 v3, 0x0

    #@34
    .line 5986
    .local v3, "regId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@36
    .line 5987
    const-string/jumbo v5, "android.permission.MODIFY_AUDIO_ROUTING"

    #@39
    .line 5986
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_1

    #@3f
    const/4 v2, 0x1

    #@40
    .line 5988
    .local v2, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v2, :cond_2

    #@42
    .line 5989
    const-string/jumbo v4, "AudioService"

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, "Can\'t register audio policy for pid "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@54
    move-result v6

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    const-string/jumbo v6, " / uid "

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    .line 5990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@63
    move-result v6

    #@64
    .line 5989
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    .line 5990
    const-string/jumbo v6, ", need MODIFY_AUDIO_ROUTING"

    #@6b
    .line 5989
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 5991
    return-object v8

    #@77
    .line 5986
    .end local v2    # "hasPermissionForPolicy":Z
    :cond_1
    const/4 v2, 0x0

    #@78
    .restart local v2    # "hasPermissionForPolicy":Z
    goto :goto_0

    #@79
    .line 5994
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@7b
    monitor-enter v5

    #@7c
    .line 5996
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@7e
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@85
    move-result v4

    #@86
    if-eqz v4, :cond_3

    #@88
    .line 5997
    const-string/jumbo v4, "AudioService"

    #@8b
    const-string/jumbo v6, "Cannot re-register policy"

    #@8e
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    monitor-exit v5

    #@92
    .line 5998
    return-object v8

    #@93
    .line 6000
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@95
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    #@98
    .line 6001
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@9b
    move-result-object v4

    #@9c
    const/4 v6, 0x0

    #@9d
    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@a0
    .line 6002
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    .line 6003
    .local v3, "regId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@a6
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@a9
    move-result-object v6

    #@aa
    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ad
    monitor-exit v5

    #@ae
    .line 6011
    return-object v3

    #@af
    .line 6004
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v3    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@b0
    .line 6006
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "AudioService"

    #@b3
    new-instance v6, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v7, "Audio policy registration failed, could not link to "

    #@bb
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v6

    #@bf
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v6

    #@c3
    .line 6007
    const-string/jumbo v7, " binder death"

    #@c6
    .line 6006
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v6

    #@ce
    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d1
    monitor-exit v5

    #@d2
    .line 6008
    return-object v8

    #@d3
    .line 5994
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@d4
    monitor-exit v5

    #@d5
    throw v4
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 5172
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5168
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reloadAudioSettings()V
    .locals 1

    #@0
    .prologue
    .line 2460
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    #@4
    .line 2459
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 5180
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    #@5
    .line 5179
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    #@0
    .prologue
    .line 5185
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    #@5
    .line 5184
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 8
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 5201
    and-int/lit8 v0, p7, 0x4

    #@2
    const/4 v1, 0x4

    #@3
    if-ne v0, v1, :cond_2

    #@5
    .line 5202
    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    #@8
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 5203
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@10
    .line 5204
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    #@13
    .line 5203
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 5205
    const-string/jumbo v0, "AudioService"

    #@1c
    const-string/jumbo v1, "Invalid permission to (un)lock audio focus"

    #@1f
    new-instance v2, Ljava/lang/Exception;

    #@21
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    #@24
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 5206
    const/4 v0, 0x0

    #@28
    return v0

    #@29
    .line 5210
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@2b
    monitor-enter v1

    #@2c
    .line 5211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@2e
    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_1

    #@38
    .line 5212
    const-string/jumbo v0, "AudioService"

    #@3b
    const-string/jumbo v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    #@3e
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 5213
    const/4 v0, 0x0

    #@42
    monitor-exit v1

    #@43
    return v0

    #@44
    :cond_1
    monitor-exit v1

    #@45
    .line 5219
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@47
    move-object v1, p1

    #@48
    move v2, p2

    #@49
    move-object v3, p3

    #@4a
    move-object v4, p4

    #@4b
    move-object v5, p5

    #@4c
    move-object v6, p6

    #@4d
    move v7, p7

    #@4e
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    #@51
    move-result v0

    #@52
    return v0

    #@53
    .line 5210
    :catchall_0
    move-exception v0

    #@54
    monitor-exit v1

    #@55
    throw v0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x2

    #@2
    .line 3622
    if-eq p3, v2, :cond_0

    #@4
    const/16 v1, 0xb

    #@6
    if-eq p3, v1, :cond_0

    #@8
    .line 3623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "invalid profile "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 3625
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@24
    monitor-enter v7

    #@25
    .line 3626
    if-ne p3, v2, :cond_2

    #@27
    .line 3628
    if-ne p2, v2, :cond_1

    #@29
    const/4 v0, 0x1

    #@2a
    .line 3627
    :cond_1
    const/16 v1, 0x80

    #@2c
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    #@2f
    move-result v6

    #@30
    .line 3632
    .local v6, "delay":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@32
    .line 3633
    if-ne p3, v2, :cond_3

    #@34
    .line 3634
    const/16 v2, 0x66

    #@36
    .line 3636
    :goto_1
    const/4 v4, 0x0

    #@37
    move-object v0, p0

    #@38
    move v3, p2

    #@39
    move-object v5, p1

    #@3a
    .line 3632
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    monitor-exit v7

    #@3e
    .line 3640
    return v6

    #@3f
    .line 3630
    .end local v6    # "delay":I
    :cond_2
    const/4 v6, 0x0

    #@40
    .restart local v6    # "delay":I
    goto :goto_0

    #@41
    .line 3634
    :cond_3
    const/16 v2, 0x65

    #@43
    goto :goto_1

    #@44
    .line 3625
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    #@45
    monitor-exit v7

    #@46
    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2554
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 2555
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@6
    .line 2556
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@8
    .line 2558
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2556
    :goto_0
    const/16 v1, 0xd

    #@e
    const/4 v2, 0x2

    #@f
    .line 2557
    const/4 v3, 0x1

    #@10
    .line 2559
    const/4 v5, 0x0

    #@11
    const/4 v6, 0x0

    #@12
    .line 2556
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v7

    #@16
    .line 2553
    return-void

    #@17
    .line 2558
    :cond_0
    const/16 v4, 0xa

    #@19
    goto :goto_0

    #@1a
    .line 2554
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v7

    #@1c
    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 3
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 5365
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 5366
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@5
    .line 5367
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@7
    const/16 v2, 0xd

    #@9
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    #@c
    .line 5369
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    .line 5368
    :goto_0
    const/4 v2, 0x1

    #@12
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 5364
    return-void

    #@17
    .line 5369
    :cond_0
    const/16 v0, 0xa

    #@19
    goto :goto_0

    #@1a
    .line 5365
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v1, 0x8

    #@3
    const/4 v4, 0x3

    #@4
    const/4 v2, 0x2

    #@5
    const/4 v3, 0x0

    #@6
    .line 2531
    const-string/jumbo v0, "setBluetoothScoOn()"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 2532
    return-void

    #@10
    .line 2535
    :cond_0
    if-eqz p1, :cond_2

    #@12
    .line 2536
    iput v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@14
    .line 2541
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@16
    .line 2542
    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@18
    move v6, v3

    #@19
    .line 2541
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1c
    .line 2543
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@1e
    .line 2544
    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@20
    move v7, v1

    #@21
    move v8, v2

    #@22
    move v9, v2

    #@23
    move-object v11, v5

    #@24
    move v12, v3

    #@25
    .line 2543
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@28
    .line 2530
    return-void

    #@29
    .line 2537
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@2b
    if-ne v0, v4, :cond_1

    #@2d
    .line 2538
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@2f
    goto :goto_0
.end method

.method setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 2914
    if-nez p1, :cond_0

    #@2
    .line 2915
    return-void

    #@3
    .line 2918
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2919
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    #@a
    move-result-object v1

    #@b
    .line 2920
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    const/16 v5, 0x10

    #@d
    .line 2921
    .local v5, "outDevice":I
    const v4, -0x7ffffff8

    #@10
    .line 2922
    .local v4, "inDevice":I
    if-eqz v1, :cond_1

    #@12
    .line 2923
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@15
    move-result v7

    #@16
    sparse-switch v7, :sswitch_data_0

    #@19
    .line 2934
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@1c
    move-result v7

    #@1d
    if-nez v7, :cond_2

    #@1f
    .line 2935
    const-string/jumbo v0, ""

    #@22
    .line 2938
    :cond_2
    const/4 v7, 0x2

    #@23
    if-ne p2, v7, :cond_4

    #@25
    const/4 v3, 0x1

    #@26
    .line 2940
    .local v3, "connected":Z
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 2942
    .local v2, "btDeviceName":Ljava/lang/String;
    invoke-direct {p0, v3, v5, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_5

    #@30
    .line 2943
    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    #@33
    move-result v6

    #@34
    .line 2944
    :goto_2
    if-eqz v6, :cond_3

    #@36
    .line 2945
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@38
    monitor-enter v8

    #@39
    .line 2946
    if-eqz v3, :cond_6

    #@3b
    .line 2947
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :goto_3
    monitor-exit v8

    #@3e
    .line 2913
    :cond_3
    return-void

    #@3f
    .line 2926
    .end local v2    # "btDeviceName":Ljava/lang/String;
    .end local v3    # "connected":Z
    :sswitch_0
    const/16 v5, 0x20

    #@41
    .line 2927
    goto :goto_0

    #@42
    .line 2929
    :sswitch_1
    const/16 v5, 0x40

    #@44
    .line 2930
    goto :goto_0

    #@45
    .line 2938
    :cond_4
    const/4 v3, 0x0

    #@46
    .restart local v3    # "connected":Z
    goto :goto_1

    #@47
    .line 2942
    .restart local v2    # "btDeviceName":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    #@48
    .local v6, "success":Z
    goto :goto_2

    #@49
    .line 2949
    .end local v6    # "success":Z
    :cond_6
    const/4 v7, 0x0

    #@4a
    :try_start_1
    iput-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@4c
    .line 2950
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_3

    #@50
    .line 2945
    :catchall_0
    move-exception v7

    #@51
    monitor-exit v8

    #@52
    throw v7

    #@53
    .line 2923
    nop

    #@54
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v4, 0x1

    #@3
    .line 6031
    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    #@5
    if-eqz v6, :cond_0

    #@7
    const-string/jumbo v6, "AudioService"

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "setFocusPropertiesForPolicy() duck behavior="

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    .line 6032
    const-string/jumbo v8, " policy "

    #@1d
    .line 6031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 6032
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v8

    #@25
    .line 6031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 6035
    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@32
    .line 6036
    const-string/jumbo v7, "android.permission.MODIFY_AUDIO_ROUTING"

    #@35
    .line 6035
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_1

    #@3b
    const/4 v1, 0x1

    #@3c
    .line 6037
    .local v1, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v1, :cond_2

    #@3e
    .line 6038
    const-string/jumbo v4, "AudioService"

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "Cannot change audio policy ducking handling for pid "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    .line 6039
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@50
    move-result v6

    #@51
    .line 6038
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    .line 6039
    const-string/jumbo v6, " / uid "

    #@58
    .line 6038
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    .line 6040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5f
    move-result v6

    #@60
    .line 6038
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    .line 6040
    const-string/jumbo v6, ", need MODIFY_AUDIO_ROUTING"

    #@67
    .line 6038
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 6041
    return v9

    #@73
    .line 6035
    .end local v1    # "hasPermissionForPolicy":Z
    :cond_1
    const/4 v1, 0x0

    #@74
    .restart local v1    # "hasPermissionForPolicy":Z
    goto :goto_0

    #@75
    .line 6044
    :cond_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@77
    monitor-enter v6

    #@78
    .line 6045
    :try_start_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@7a
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@81
    move-result v7

    #@82
    if-nez v7, :cond_3

    #@84
    .line 6046
    const-string/jumbo v4, "AudioService"

    #@87
    const-string/jumbo v5, "Cannot change audio policy focus properties, unregistered policy"

    #@8a
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8d
    monitor-exit v6

    #@8e
    .line 6047
    return v9

    #@8f
    .line 6049
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@91
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    move-result-object v0

    #@99
    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@9b
    .line 6050
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-ne p1, v4, :cond_5

    #@9d
    .line 6052
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@9f
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a2
    move-result-object v7

    #@a3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a6
    move-result-object v3

    #@a7
    .local v3, "policy$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@aa
    move-result v7

    #@ab
    if-eqz v7, :cond_5

    #@ad
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b0
    move-result-object v2

    #@b1
    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@b3
    .line 6053
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v7, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    #@b5
    if-ne v7, v4, :cond_4

    #@b7
    .line 6054
    const-string/jumbo v4, "AudioService"

    #@ba
    const-string/jumbo v5, "Cannot change audio policy ducking behavior, already handled"

    #@bd
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c0
    monitor-exit v6

    #@c1
    .line 6055
    return v9

    #@c2
    .line 6059
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v3    # "policy$iterator":Ljava/util/Iterator;
    :cond_5
    :try_start_2
    iput p1, v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    #@c4
    .line 6060
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@c6
    .line 6061
    if-ne p1, v4, :cond_6

    #@c8
    .line 6060
    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cb
    monitor-exit v6

    #@cc
    .line 6063
    return v5

    #@cd
    :cond_6
    move v4, v5

    #@ce
    .line 6061
    goto :goto_1

    #@cf
    .line 6044
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v4

    #@d0
    monitor-exit v6

    #@d1
    throw v4
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 5
    .param p1, "on"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5566
    const/4 v0, 0x0

    #@2
    .line 5567
    .local v0, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@4
    if-eqz v2, :cond_3

    #@6
    .line 5568
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@8
    monitor-enter v2

    #@9
    .line 5569
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 5570
    const-string/jumbo v3, "AudioService"

    #@10
    const-string/jumbo v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    #@13
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@16
    monitor-exit v2

    #@17
    .line 5571
    return v1

    #@18
    .line 5574
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@1a
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    .line 5575
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@1d
    if-eq v4, p1, :cond_2

    #@1f
    .line 5576
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@21
    .line 5578
    if-eqz p1, :cond_1

    #@23
    const/16 v1, 0xc

    #@25
    .line 5577
    :cond_1
    const/4 v4, 0x5

    #@26
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@29
    .line 5581
    :cond_2
    const/4 v1, 0x3

    #@2a
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    move-result v0

    #@2e
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2f
    monitor-exit v2

    #@30
    .line 5585
    :cond_3
    return v0

    #@31
    .line 5574
    :catchall_0
    move-exception v1

    #@32
    :try_start_4
    monitor-exit v3

    #@33
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@34
    .line 5568
    :catchall_1
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v4

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move-object v3, p3

    #@8
    move v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    #@c
    .line 1805
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v7

    #@5
    .line 1858
    .local v7, "uid":I
    const/16 v0, 0x3e8

    #@7
    if-ne v7, v0, :cond_0

    #@9
    .line 1859
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    #@c
    move-result v0

    #@d
    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@10
    move-result v7

    #@11
    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@13
    const/16 v1, 0x2c

    #@15
    invoke-virtual {v0, v1, v7, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 1863
    return-void

    #@1c
    .line 1865
    :cond_1
    const-string/jumbo v0, "setMicrophoneMute()"

    #@1f
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_2

    #@25
    .line 1866
    return-void

    #@26
    .line 1868
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@29
    move-result v0

    #@2a
    if-eq p3, v0, :cond_3

    #@2c
    .line 1869
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@2e
    .line 1870
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@31
    .line 1869
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 1872
    return-void

    #@38
    .line 1877
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    #@3b
    move-result v0

    #@3c
    if-ne v0, p3, :cond_4

    #@3e
    .line 1878
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    #@41
    .line 1881
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@43
    if-eqz p1, :cond_5

    #@45
    const/4 v3, 0x1

    #@46
    :goto_0
    const/16 v1, 0x17

    #@48
    .line 1882
    const/4 v5, 0x0

    #@49
    const/16 v6, 0x1f4

    #@4b
    move v4, p3

    #@4c
    .line 1881
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@4f
    .line 1854
    return-void

    #@50
    :cond_5
    move v3, v2

    #@51
    .line 1882
    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2124
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    const-string/jumbo v1, "AudioService"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "setMode(mode="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, ", callingPackage="

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, ")"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 2125
    :cond_0
    const-string/jumbo v1, "setMode()"

    #@34
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_1

    #@3a
    .line 2126
    return-void

    #@3b
    .line 2129
    :cond_1
    const/4 v1, 0x2

    #@3c
    if-ne p1, v1, :cond_2

    #@3e
    .line 2130
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@40
    .line 2131
    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    #@43
    .line 2130
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_2

    #@49
    .line 2133
    const-string/jumbo v1, "AudioService"

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    .line 2134
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5b
    move-result v3

    #@5c
    .line 2133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 2134
    const-string/jumbo v3, ", uid="

    #@63
    .line 2133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    .line 2134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6a
    move-result v3

    #@6b
    .line 2133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 2135
    return-void

    #@77
    .line 2138
    :cond_2
    if-lt p1, v4, :cond_3

    #@79
    const/4 v1, 0x4

    #@7a
    if-lt p1, v1, :cond_4

    #@7c
    .line 2139
    :cond_3
    return-void

    #@7d
    .line 2142
    :cond_4
    const/4 v0, 0x0

    #@7e
    .line 2143
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@80
    monitor-enter v2

    #@81
    .line 2144
    if-ne p1, v4, :cond_5

    #@83
    .line 2145
    :try_start_0
    iget p1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@85
    .line 2147
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@88
    move-result v1

    #@89
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8c
    move-result v0

    #@8d
    monitor-exit v2

    #@8e
    .line 2151
    if-eqz v0, :cond_6

    #@90
    .line 2152
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    #@93
    .line 2123
    :cond_6
    return-void

    #@94
    .line 2143
    :catchall_0
    move-exception v1

    #@95
    monitor-exit v2

    #@96
    throw v1
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 5190
    const-string/jumbo v0, "set the remote stream volume"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 5191
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->setRemoteStreamVolume(I)V

    #@b
    .line 5189
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1911
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    #@4
    .line 1910
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1915
    const-string/jumbo v0, "setRingerModeInternal"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 1916
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    #@a
    .line 1914
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    #@0
    .prologue
    .line 5398
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 5399
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    #@b
    .line 5397
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v1, 0x8

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v2, 0x2

    #@5
    const/4 v4, 0x0

    #@6
    .line 2506
    const-string/jumbo v0, "setSpeakerphoneOn()"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 2507
    return-void

    #@10
    .line 2510
    :cond_0
    if-eqz p1, :cond_3

    #@12
    .line 2511
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@14
    const/4 v3, 0x3

    #@15
    if-ne v0, v3, :cond_1

    #@17
    .line 2512
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@19
    move v3, v2

    #@1a
    move v6, v4

    #@1b
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1e
    .line 2515
    :cond_1
    iput v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@20
    .line 2520
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@22
    .line 2521
    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@24
    move v7, v1

    #@25
    move v8, v2

    #@26
    move v9, v4

    #@27
    move-object v11, v5

    #@28
    move v12, v4

    #@29
    .line 2520
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@2c
    .line 2505
    return-void

    #@2d
    .line 2516
    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@2f
    if-ne v0, v7, :cond_2

    #@31
    .line 2517
    iput v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@33
    goto :goto_0
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p4

    #@a
    .line 1401
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@d
    .line 1400
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    #@0
    .prologue
    .line 2065
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 2067
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@7
    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@d
    .line 2071
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    #@10
    .line 2063
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 4
    .param p1, "controller"    # Landroid/media/IVolumeController;

    #@0
    .prologue
    .line 5746
    const-string/jumbo v1, "set the volume controller"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 5749
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@8
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 5750
    return-void

    #@f
    .line 5754
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@11
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    #@14
    .line 5755
    if-eqz p1, :cond_1

    #@16
    .line 5758
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    new-instance v2, Lcom/android/server/audio/AudioService$4;

    #@1c
    invoke-direct {v2, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    #@1f
    .line 5766
    const/4 v3, 0x0

    #@20
    .line 5758
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 5771
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@25
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    #@28
    .line 5772
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@2a
    if-eqz v1, :cond_2

    #@2c
    const-string/jumbo v1, "AudioService"

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "Volume controller: "

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 5745
    :cond_2
    return-void

    #@49
    .line 5767
    :catch_0
    move-exception v0

    #@4a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    #@0
    .prologue
    .line 5790
    const-string/jumbo v0, "set volume policy"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 5791
    if-eqz p1, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@a
    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 5789
    :cond_0
    :goto_0
    return-void

    #@11
    .line 5792
    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@13
    .line 5793
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    const-string/jumbo v0, "AudioService"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Volume policy changed: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3604
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@2
    monitor-enter v8

    #@3
    .line 3605
    :try_start_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3606
    const-string/jumbo v0, "AudioService"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "setWiredDeviceConnectionState("

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " nm: "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, " addr:"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 3607
    const-string/jumbo v2, ")"

    #@33
    .line 3606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 3609
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    #@41
    move-result v7

    #@42
    .line 3610
    .local v7, "delay":I
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@44
    .line 3614
    new-instance v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    #@46
    move-object v1, p0

    #@47
    move v2, p1

    #@48
    move v3, p2

    #@49
    move-object v4, p3

    #@4a
    move-object v5, p4

    #@4b
    move-object v6, p5

    #@4c
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 3611
    const/16 v3, 0x64

    #@51
    .line 3612
    const/4 v4, 0x0

    #@52
    .line 3613
    const/4 v5, 0x0

    #@53
    move-object v1, p0

    #@54
    move-object v2, v9

    #@55
    move-object v6, v0

    #@56
    .line 3610
    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit v8

    #@5a
    .line 3603
    return-void

    #@5b
    .line 3604
    .end local v7    # "delay":I
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit v8

    #@5d
    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2037
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@4
    if-nez v2, :cond_0

    #@6
    return v1

    #@7
    .line 2039
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    #@a
    move-result v2

    #@b
    packed-switch v2, :pswitch_data_0

    #@e
    .line 2052
    return v1

    #@f
    .line 2042
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    :goto_0
    return v0

    #@16
    :cond_1
    move v0, v1

    #@17
    goto :goto_0

    #@18
    .line 2045
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    #@1b
    move-result v2

    #@1c
    if-ne v2, v0, :cond_2

    #@1e
    :goto_1
    return v0

    #@1f
    :cond_2
    move v0, v1

    #@20
    goto :goto_1

    #@21
    .line 2049
    :pswitch_2
    return v1

    #@22
    .line 2039
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    #@0
    .prologue
    .line 2573
    const/16 v1, 0x12

    #@2
    if-ge p2, v1, :cond_0

    #@4
    .line 2574
    const/4 v0, 0x0

    #@5
    .line 2575
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    #@8
    .line 2571
    return-void

    #@9
    .line 2574
    .end local v0    # "scoAudioMode":I
    :cond_0
    const/4 v0, -0x1

    #@a
    .restart local v0    # "scoAudioMode":I
    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    #@0
    .prologue
    .line 2584
    const-string/jumbo v1, "startBluetoothSco()"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 2585
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2588
    const/4 v1, 0x1

    #@e
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    #@11
    move-result-object v0

    #@12
    .line 2594
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 2595
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    #@19
    .line 2596
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 2583
    return-void

    #@1d
    .line 2586
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "ident":J
    :cond_0
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2580
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    #@4
    .line 2579
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    #@0
    .prologue
    .line 5409
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@2
    monitor-enter v2

    #@3
    .line 5410
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    #@5
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    #@a
    .line 5411
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 5412
    return-object v0

    #@11
    .line 5409
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2601
    const-string/jumbo v1, "stopBluetoothSco()"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 2602
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2605
    const/4 v1, 0x0

    #@e
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    #@11
    move-result-object v0

    #@12
    .line 2609
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 2610
    .local v2, "ident":J
    if-eqz v0, :cond_0

    #@18
    .line 2611
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    #@1b
    .line 2613
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 2600
    return-void

    #@1f
    .line 2603
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "ident":J
    :cond_1
    return-void
.end method

.method public systemReady()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 690
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@3
    const/16 v1, 0x15

    #@5
    const/4 v2, 0x2

    #@6
    .line 691
    const/4 v5, 0x0

    #@7
    move v4, v3

    #@8
    move v6, v3

    #@9
    .line 690
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@c
    .line 689
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2400
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@3
    const/16 v1, 0x14

    #@5
    const/4 v2, 0x2

    #@6
    const/4 v5, 0x0

    #@7
    move v4, v3

    #@8
    move v6, v3

    #@9
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@c
    .line 2399
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5228
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    #@5
    .line 5227
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 6015
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "AudioService"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 6016
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@24
    monitor-enter v2

    #@25
    .line 6017
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@27
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@31
    .line 6018
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_1

    #@33
    .line 6019
    const-string/jumbo v1, "AudioService"

    #@36
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "Trying to unregister unknown audio policy for pid "

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 6020
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v4

    #@46
    .line 6019
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 6020
    const-string/jumbo v4, " / uid "

    #@4d
    .line 6019
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 6020
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@54
    move-result v4

    #@55
    .line 6019
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    monitor-exit v2

    #@61
    .line 6021
    return-void

    #@62
    .line 6023
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@65
    move-result-object v1

    #@66
    const/4 v3, 0x0

    #@67
    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6a
    .line 6025
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    monitor-exit v2

    #@6e
    .line 6014
    return-void

    #@6f
    .line 6016
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    #@70
    monitor-exit v2

    #@71
    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    #@0
    .prologue
    .line 5176
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    #@5
    .line 5175
    return-void
.end method
