.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$1;,
        Lcom/android/server/audio/AudioService$2;,
        Lcom/android/server/audio/AudioService$3;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$ControllerService;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$Lifecycle;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$StreamOverride;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
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

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

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

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mNm:Landroid/app/NotificationManager;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

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

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUserSwitchedReceived:Z

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
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    #@2
    return v0
.end method

.method static synthetic -get19(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Ljava/util/List;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    #@2
    return v0
.end method

.method static synthetic -get22(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@2
    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    #@2
    return v0
.end method

.method static synthetic -get25(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@2
    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/audio/AudioService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    #@2
    return v0
.end method

.method static synthetic -get27(Lcom/android/server/audio/AudioService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@2
    return v0
.end method

.method static synthetic -get28(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService;)[[I
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    #@2
    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    #@2
    return-object v0
.end method

.method static synthetic -get33(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@2
    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    return-object v0
.end method

.method static synthetic -get37(Lcom/android/server/audio/AudioService;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@2
    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@2
    return v0
.end method

.method static synthetic -get39(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@2
    return v0
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
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    #@2
    return v0
.end method

.method static synthetic -get41(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@2
    return-object v0
.end method

.method static synthetic -get42()I
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
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@2
    return p1
.end method

.method static synthetic -set11(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    #@2
    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@2
    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@2
    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    #@2
    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    #@2
    return p1
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
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@2
    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    #@2
    return p1
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

.method static synthetic -wrap10(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
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

.method static synthetic -wrap11(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "exceptPid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

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

.method static synthetic -wrap19(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "skipStream"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

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
    .param p1, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p1, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method static synthetic -wrap28(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
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

.method static synthetic -wrap30(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p1, "userSwitch"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/audio/AudioService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "encodedSurroundMode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(I)V

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

.method static synthetic -wrap38(Lcom/android/server/audio/AudioService;ZII)V
    .locals 0
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    #@3
    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/audio/AudioService;ZI)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

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

.method static synthetic -wrap40(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
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

.method static synthetic -wrap42(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

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

.method static synthetic -wrap8(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
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

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    const/4 v1, 0x3

    #@3
    .line 148
    const-string/jumbo v0, "AudioService.MOD"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    #@c
    .line 151
    const-string/jumbo v0, "AudioService.AP"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@12
    move-result v0

    #@13
    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    #@15
    .line 154
    const-string/jumbo v0, "AudioService.VOL"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1b
    move-result v0

    #@1c
    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@1e
    .line 157
    const-string/jumbo v0, "AudioService.DEVICES"

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@24
    move-result v0

    #@25
    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@27
    .line 255
    new-instance v0, Ljava/util/ArrayList;

    #@29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@2e
    .line 263
    new-array v0, v2, [I

    #@30
    fill-array-data v0, :array_0

    #@33
    sput-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@35
    .line 277
    new-array v0, v2, [I

    #@37
    fill-array-data v0, :array_1

    #@3a
    sput-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    #@3c
    .line 341
    new-array v0, v2, [I

    #@3e
    fill-array-data v0, :array_2

    #@41
    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    #@43
    .line 555
    new-instance v0, Ljava/lang/Long;

    #@45
    const-wide/16 v2, 0x0

    #@47
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@4a
    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    #@4c
    .line 5876
    new-array v0, v1, [Ljava/lang/String;

    #@4e
    .line 5877
    const-string/jumbo v1, "SILENT"

    #@51
    const/4 v2, 0x0

    #@52
    aput-object v1, v0, v2

    #@54
    .line 5878
    const-string/jumbo v1, "VIBRATE"

    #@57
    const/4 v2, 0x1

    #@58
    aput-object v1, v0, v2

    #@5a
    .line 5879
    const-string/jumbo v1, "NORMAL"

    #@5d
    const/4 v2, 0x2

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 5876
    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    #@62
    .line 143
    return-void

    #@63
    .line 263
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
    .line 277
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    #@94
    .line 341
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
    .line 602
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    #@9
    .line 186
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    #@b
    invoke-direct {v0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@10
    .line 187
    new-instance v0, Lcom/android/server/audio/AudioService$ControllerService;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$ControllerService;-><init>(Lcom/android/server/audio/AudioService;)V

    #@15
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@17
    .line 245
    iput v6, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@19
    .line 247
    new-instance v0, Ljava/lang/Object;

    #@1b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@20
    .line 250
    new-instance v0, Ljava/lang/Object;

    #@22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    #@27
    .line 260
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
    .line 299
    new-array v0, v3, [I

    #@38
    fill-array-data v0, :array_0

    #@3b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    #@3d
    .line 311
    new-array v0, v3, [I

    #@3f
    fill-array-data v0, :array_1

    #@42
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    #@44
    .line 323
    new-array v0, v3, [I

    #@46
    fill-array-data v0, :array_2

    #@49
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    #@4b
    .line 356
    new-instance v0, Lcom/android/server/audio/AudioService$1;

    #@4d
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    #@50
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    #@52
    .line 376
    iput v11, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@54
    .line 379
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@56
    .line 399
    new-instance v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    #@58
    invoke-direct {v0, p0, v5}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V

    #@5b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@5d
    .line 405
    new-instance v0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    #@5f
    invoke-direct {v0, p0, v5}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;)V

    #@62
    .line 404
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    #@64
    .line 432
    new-instance v0, Landroid/util/ArrayMap;

    #@66
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@69
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@6b
    .line 439
    new-instance v0, Ljava/util/ArrayList;

    #@6d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@70
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@72
    .line 442
    new-instance v0, Ljava/util/ArrayList;

    #@74
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@77
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@79
    .line 495
    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    #@7b
    .line 499
    iput v6, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    #@7d
    .line 502
    iput v11, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@7f
    .line 503
    new-instance v0, Ljava/lang/Object;

    #@81
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@84
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    #@86
    .line 507
    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@88
    .line 511
    iput v6, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    #@8a
    .line 515
    new-instance v0, Ljava/lang/Object;

    #@8c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8f
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@91
    .line 518
    new-instance v0, Landroid/media/AudioRoutesInfo;

    #@93
    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    #@96
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@98
    .line 520
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@9a
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@9d
    .line 519
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    #@9f
    .line 523
    const v0, 0x2c1c00

    #@a2
    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@a4
    .line 529
    iput v6, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@a6
    .line 535
    const/4 v0, 0x1

    #@a7
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    #@a9
    .line 537
    iput v6, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    #@ab
    .line 551
    new-instance v0, Ljava/lang/Object;

    #@ad
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b0
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@b2
    .line 553
    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@b4
    .line 559
    sget-object v0, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    #@b6
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@b8
    .line 1855
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@ba
    .line 1857
    new-instance v0, Ljava/util/ArrayList;

    #@bc
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@bf
    .line 1856
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@c1
    .line 3113
    new-instance v0, Lcom/android/server/audio/AudioService$2;

    #@c3
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    #@c6
    .line 3112
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@c8
    .line 4993
    const v0, 0x27f8c

    #@cb
    .line 4992
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@cd
    .line 5664
    iput v6, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    #@cf
    .line 5668
    const/16 v0, 0xc

    #@d1
    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    #@d3
    .line 5776
    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@d5
    .line 5787
    new-instance v0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    #@d7
    invoke-direct {v0, p0, v5}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;)V

    #@da
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    #@dc
    .line 6304
    new-instance v0, Lcom/android/server/audio/AudioService$3;

    #@de
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    #@e1
    .line 6303
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    #@e3
    .line 6335
    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor;

    #@e5
    invoke-direct {v0}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>()V

    #@e8
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    #@ea
    .line 6409
    new-instance v0, Ljava/util/HashMap;

    #@ec
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@ef
    .line 6408
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@f1
    .line 6410
    iput v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    #@f3
    .line 603
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@f5
    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f8
    move-result-object v0

    #@f9
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@fb
    .line 605
    const-string/jumbo v0, "appops"

    #@fe
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@101
    move-result-object v0

    #@102
    check-cast v0, Landroid/app/AppOpsManager;

    #@104
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@106
    .line 607
    invoke-static {p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    #@109
    move-result v0

    #@10a
    iput v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@10c
    .line 609
    const-class v0, Landroid/os/UserManagerInternal;

    #@10e
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@111
    move-result-object v0

    #@112
    check-cast v0, Landroid/os/UserManagerInternal;

    #@114
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@116
    .line 611
    const-string/jumbo v0, "power"

    #@119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11c
    move-result-object v9

    #@11d
    check-cast v9, Landroid/os/PowerManager;

    #@11f
    .line 612
    .local v9, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "handleAudioEvent"

    #@122
    const/4 v1, 0x1

    #@123
    invoke-virtual {v9, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@126
    move-result-object v0

    #@127
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@129
    .line 614
    const-string/jumbo v0, "vibrator"

    #@12c
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12f
    move-result-object v10

    #@130
    check-cast v10, Landroid/os/Vibrator;

    #@132
    .line 615
    .local v10, "vibrator":Landroid/os/Vibrator;
    if-nez v10, :cond_4

    #@134
    move v0, v6

    #@135
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@137
    .line 618
    const-string/jumbo v0, "ro.config.vc_call_vol_steps"

    #@13a
    .line 619
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@13c
    aget v1, v1, v6

    #@13e
    .line 618
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@141
    move-result v8

    #@142
    .line 620
    .local v8, "maxVolume":I
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@144
    aget v0, v0, v6

    #@146
    if-eq v8, v0, :cond_0

    #@148
    .line 621
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@14a
    aput v8, v0, v6

    #@14c
    .line 622
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@14e
    mul-int/lit8 v1, v8, 0x3

    #@150
    div-int/lit8 v1, v1, 0x4

    #@152
    aput v1, v0, v6

    #@154
    .line 624
    :cond_0
    const-string/jumbo v0, "ro.config.media_vol_steps"

    #@157
    .line 625
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@159
    aget v1, v1, v2

    #@15b
    .line 624
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@15e
    move-result v8

    #@15f
    .line 626
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@161
    aget v0, v0, v2

    #@163
    if-eq v8, v0, :cond_1

    #@165
    .line 627
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    #@167
    aput v8, v0, v2

    #@169
    .line 628
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@16b
    mul-int/lit8 v1, v8, 0x3

    #@16d
    div-int/lit8 v1, v1, 0x4

    #@16f
    aput v1, v0, v2

    #@171
    .line 631
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@174
    move-result-object v0

    #@175
    .line 632
    const v1, 0x10e0004

    #@178
    .line 631
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@17b
    move-result v0

    #@17c
    sput v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    #@17e
    .line 634
    iput v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@180
    .line 636
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    #@183
    .line 638
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    #@185
    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    #@188
    .line 640
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    #@18b
    move-result v7

    #@18c
    .line 641
    .local v7, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    #@18e
    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    #@191
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@193
    .line 642
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@195
    .line 646
    if-eqz v7, :cond_5

    #@197
    .line 647
    const/16 v4, 0xb

    #@199
    .line 643
    :goto_1
    const/16 v1, 0x8

    #@19b
    .line 644
    const/4 v2, 0x2

    #@19c
    .line 645
    const/4 v3, 0x4

    #@19d
    .line 642
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1a0
    .line 651
    new-instance v0, Ljava/lang/Integer;

    #@1a2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@1a4
    .line 652
    const-string/jumbo v2, "audio_safe_volume_state"

    #@1a7
    .line 651
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1aa
    move-result v1

    #@1ab
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@1ae
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@1b0
    .line 656
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@1b2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b5
    move-result-object v0

    #@1b6
    .line 657
    const v1, 0x10e0088

    #@1b9
    .line 656
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@1bc
    move-result v0

    #@1bd
    mul-int/lit8 v0, v0, 0xa

    #@1bf
    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@1c1
    .line 659
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@1c3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c6
    move-result-object v0

    #@1c7
    .line 660
    const v1, 0x1120080

    #@1ca
    .line 659
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1cd
    move-result v0

    #@1ce
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@1d0
    .line 664
    const-string/jumbo v0, "AudioService"

    #@1d3
    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    #@1d6
    .line 665
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    #@1d9
    .line 666
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    #@1dc
    .line 667
    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    #@1de
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    #@1e1
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    #@1e3
    .line 668
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    #@1e6
    .line 670
    new-instance v0, Lcom/android/server/audio/MediaFocusControl;

    #@1e8
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@1ea
    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;)V

    #@1ed
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@1ef
    .line 672
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    #@1f2
    .line 676
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@1f4
    .line 677
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@1f7
    move-result v0

    #@1f8
    invoke-direct {p0, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@1fb
    .line 681
    new-instance v4, Landroid/content/IntentFilter;

    #@1fd
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    #@200
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@203
    .line 682
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    #@206
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@209
    .line 683
    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    #@20c
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20f
    .line 684
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    #@212
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@215
    .line 685
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@218
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@21b
    .line 686
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@21e
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@221
    .line 687
    const-string/jumbo v0, "android.intent.action.USER_BACKGROUND"

    #@224
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@227
    .line 688
    const-string/jumbo v0, "android.intent.action.USER_FOREGROUND"

    #@22a
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@22d
    .line 689
    const-string/jumbo v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    #@230
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@233
    .line 690
    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    #@236
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@239
    .line 692
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    #@23c
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@23f
    .line 694
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    #@242
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@245
    move-result v0

    #@246
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    #@248
    .line 695
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    #@24a
    if-eqz v0, :cond_2

    #@24c
    .line 696
    const-string/jumbo v0, "AudioService"

    #@24f
    const-string/jumbo v1, "monitoring device orientation"

    #@252
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@255
    .line 698
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    #@258
    .line 700
    :cond_2
    const-string/jumbo v0, "ro.audio.monitorRotation"

    #@25b
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@25e
    move-result v0

    #@25f
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    #@261
    .line 701
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    #@263
    if-eqz v0, :cond_3

    #@265
    .line 702
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@267
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@269
    invoke-static {v0, v1}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    #@26c
    .line 705
    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@26e
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@270
    move-object v1, p1

    #@271
    move-object v6, v5

    #@272
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@275
    .line 707
    const-class v0, Landroid/media/AudioManagerInternal;

    #@277
    new-instance v1, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    #@279
    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    #@27c
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@27f
    .line 709
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@281
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    #@283
    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    #@286
    .line 711
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    #@288
    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    #@28b
    .line 602
    return-void

    #@28c
    .line 615
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "maxVolume":I
    :cond_4
    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    #@28f
    move-result v0

    #@290
    goto/16 :goto_0

    #@292
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "maxVolume":I
    :cond_5
    move v4, v6

    #@293
    .line 647
    goto/16 :goto_1

    #@295
    .line 299
    nop

    #@296
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

    #@2ae
    .line 311
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

    #@2c6
    .line 323
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
    .locals 33
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    #@0
    .prologue
    .line 1209
    move-object/from16 v0, p0

    #@2
    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 1210
    return-void

    #@7
    .line 1212
    :cond_0
    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@9
    if-eqz v6, :cond_1

    #@b
    const-string/jumbo v6, "AudioService"

    #@e
    new-instance v8, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v10, "adjustStreamVolume() stream="

    #@16
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v8

    #@1a
    move/from16 v0, p1

    #@1c
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    const-string/jumbo v10, ", dir="

    #@23
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    move/from16 v0, p2

    #@29
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    .line 1213
    const-string/jumbo v10, ", flags="

    #@30
    .line 1212
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    move/from16 v0, p3

    #@36
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    .line 1213
    const-string/jumbo v10, ", caller="

    #@3d
    .line 1212
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    move-object/from16 v0, p5

    #@43
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1215
    :cond_1
    move-object/from16 v0, p0

    #@50
    move/from16 v1, p2

    #@52
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    #@55
    .line 1216
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@58
    .line 1218
    move-object/from16 v0, p0

    #@5a
    move/from16 v1, p2

    #@5c
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    #@5f
    move-result v25

    #@60
    .line 1220
    .local v25, "isMuteAdjust":Z
    if-eqz v25, :cond_2

    #@62
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    #@65
    move-result v6

    #@66
    if-eqz v6, :cond_3

    #@68
    .line 1227
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@6c
    aget v13, v6, p1

    #@6e
    .line 1229
    .local v13, "streamTypeAlias":I
    move-object/from16 v0, p0

    #@70
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@72
    aget-object v19, v6, v13

    #@74
    .line 1231
    .local v19, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    #@76
    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@79
    move-result v17

    #@7a
    .line 1233
    .local v17, "device":I
    move-object/from16 v0, v19

    #@7c
    move/from16 v1, v17

    #@7e
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@81
    move-result v7

    #@82
    .line 1234
    .local v7, "aliasIndex":I
    const/16 v21, 0x1

    #@84
    .line 1239
    .local v21, "adjustVolume":Z
    move/from16 v0, v17

    #@86
    and-int/lit16 v6, v0, 0x380

    #@88
    if-nez v6, :cond_4

    #@8a
    .line 1240
    and-int/lit8 v6, p3, 0x40

    #@8c
    if-eqz v6, :cond_4

    #@8e
    .line 1241
    return-void

    #@8f
    .line 1221
    .end local v7    # "aliasIndex":I
    .end local v13    # "streamTypeAlias":I
    .end local v17    # "device":I
    .end local v19    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v21    # "adjustVolume":Z
    :cond_3
    return-void

    #@90
    .line 1246
    .restart local v7    # "aliasIndex":I
    .restart local v13    # "streamTypeAlias":I
    .restart local v17    # "device":I
    .restart local v19    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v21    # "adjustVolume":Z
    :cond_4
    const/16 v6, 0x3e8

    #@92
    move/from16 v0, p6

    #@94
    if-ne v0, v6, :cond_5

    #@96
    .line 1247
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    #@99
    move-result v6

    #@9a
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    #@9d
    move-result v8

    #@9e
    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    #@a1
    move-result p6

    #@a2
    .line 1249
    :cond_5
    move-object/from16 v0, p0

    #@a4
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@a6
    sget-object v8, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    #@a8
    aget v8, v8, v13

    #@aa
    move/from16 v0, p6

    #@ac
    move-object/from16 v1, p4

    #@ae
    invoke-virtual {v6, v8, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@b1
    move-result v6

    #@b2
    if-eqz v6, :cond_6

    #@b4
    .line 1251
    return-void

    #@b5
    .line 1255
    :cond_6
    move-object/from16 v0, p0

    #@b7
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@b9
    monitor-enter v6

    #@ba
    .line 1256
    const/4 v8, 0x0

    #@bb
    :try_start_0
    move-object/from16 v0, p0

    #@bd
    iput-object v8, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@bf
    monitor-exit v6

    #@c0
    .line 1259
    and-int/lit8 p3, p3, -0x21

    #@c2
    .line 1260
    const/4 v6, 0x3

    #@c3
    if-ne v13, v6, :cond_12

    #@c5
    .line 1261
    move-object/from16 v0, p0

    #@c7
    iget v6, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@c9
    and-int v6, v6, v17

    #@cb
    if-eqz v6, :cond_12

    #@cd
    .line 1262
    or-int/lit8 p3, p3, 0x20

    #@cf
    .line 1267
    move-object/from16 v0, p0

    #@d1
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@d3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@d6
    move-result v6

    #@d7
    const/4 v8, 0x3

    #@d8
    if-ne v6, v8, :cond_11

    #@da
    .line 1268
    and-int/lit8 v6, v17, 0xc

    #@dc
    if-eqz v6, :cond_11

    #@de
    .line 1269
    move-object/from16 v0, p0

    #@e0
    iget v9, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@e2
    .line 1273
    .local v9, "step":I
    :goto_0
    if-eqz v7, :cond_7

    #@e4
    .line 1274
    move v7, v9

    #@e5
    .line 1283
    :cond_7
    :goto_1
    and-int/lit8 v6, p3, 0x2

    #@e7
    if-nez v6, :cond_8

    #@e9
    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    #@ec
    move-result v6

    #@ed
    if-ne v13, v6, :cond_b

    #@ef
    .line 1285
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@f2
    move-result v30

    #@f3
    .line 1287
    .local v30, "ringerMode":I
    const/4 v6, 0x1

    #@f4
    move/from16 v0, v30

    #@f6
    if-ne v0, v6, :cond_9

    #@f8
    .line 1288
    and-int/lit8 p3, p3, -0x11

    #@fa
    .line 1293
    :cond_9
    invoke-static/range {v19 .. v19}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@fd
    move-result v10

    #@fe
    move-object/from16 v6, p0

    #@100
    move/from16 v8, p2

    #@102
    move-object/from16 v11, p4

    #@104
    move/from16 v12, p3

    #@106
    .line 1292
    invoke-direct/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    #@109
    move-result v29

    #@10a
    .line 1294
    .local v29, "result":I
    and-int/lit8 v6, v29, 0x1

    #@10c
    if-eqz v6, :cond_13

    #@10e
    const/16 v21, 0x1

    #@110
    .line 1296
    :goto_2
    move/from16 v0, v29

    #@112
    and-int/lit16 v6, v0, 0x80

    #@114
    if-eqz v6, :cond_a

    #@116
    .line 1297
    move/from16 v0, p3

    #@118
    or-int/lit16 v0, v0, 0x80

    #@11a
    move/from16 p3, v0

    #@11c
    .line 1300
    :cond_a
    move/from16 v0, v29

    #@11e
    and-int/lit16 v6, v0, 0x800

    #@120
    if-eqz v6, :cond_b

    #@122
    .line 1301
    move/from16 v0, p3

    #@124
    or-int/lit16 v0, v0, 0x800

    #@126
    move/from16 p3, v0

    #@128
    .line 1305
    .end local v29    # "result":I
    .end local v30    # "ringerMode":I
    :cond_b
    move-object/from16 v0, p0

    #@12a
    move/from16 v1, p3

    #@12c
    invoke-direct {v0, v13, v1}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    #@12f
    move-result v6

    #@130
    if-nez v6, :cond_c

    #@132
    .line 1306
    const/16 v21, 0x0

    #@134
    .line 1308
    :cond_c
    move-object/from16 v0, p0

    #@136
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@138
    aget-object v6, v6, p1

    #@13a
    move/from16 v0, v17

    #@13c
    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@13f
    move-result v28

    #@140
    .line 1310
    .local v28, "oldIndex":I
    if-eqz v21, :cond_20

    #@142
    if-eqz p2, :cond_20

    #@144
    .line 1311
    move-object/from16 v0, p0

    #@146
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@148
    const/16 v8, 0x18

    #@14a
    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    #@14d
    .line 1314
    const/4 v6, 0x3

    #@14e
    if-ne v13, v6, :cond_e

    #@150
    .line 1315
    move/from16 v0, v17

    #@152
    and-int/lit16 v6, v0, 0x380

    #@154
    if-eqz v6, :cond_e

    #@156
    .line 1316
    and-int/lit8 v6, p3, 0x40

    #@158
    if-nez v6, :cond_e

    #@15a
    .line 1317
    move-object/from16 v0, p0

    #@15c
    iget-object v8, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@15e
    monitor-enter v8

    #@15f
    .line 1318
    :try_start_1
    move-object/from16 v0, p0

    #@161
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@163
    if-eqz v6, :cond_d

    #@165
    move-object/from16 v0, p0

    #@167
    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@169
    if-eqz v6, :cond_d

    #@16b
    .line 1319
    move-object/from16 v0, p0

    #@16d
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@16f
    move/from16 v0, p2

    #@171
    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@174
    :cond_d
    monitor-exit v8

    #@175
    .line 1324
    :cond_e
    if-eqz v25, :cond_19

    #@177
    .line 1326
    const/16 v6, 0x65

    #@179
    move/from16 v0, p2

    #@17b
    if-ne v0, v6, :cond_15

    #@17d
    .line 1327
    invoke-static/range {v19 .. v19}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@180
    move-result v6

    #@181
    if-eqz v6, :cond_14

    #@183
    const/16 v31, 0x0

    #@185
    .line 1331
    .local v31, "state":Z
    :goto_3
    const/4 v6, 0x3

    #@186
    if-ne v13, v6, :cond_f

    #@188
    .line 1332
    move-object/from16 v0, p0

    #@18a
    move/from16 v1, v31

    #@18c
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    #@18f
    .line 1334
    :cond_f
    const/16 v32, 0x0

    #@191
    .local v32, "stream":I
    :goto_4
    move-object/from16 v0, p0

    #@193
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@195
    array-length v6, v6

    #@196
    move/from16 v0, v32

    #@198
    if-ge v0, v6, :cond_1d

    #@19a
    .line 1335
    move-object/from16 v0, p0

    #@19c
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@19e
    aget v6, v6, v32

    #@1a0
    if-ne v13, v6, :cond_10

    #@1a2
    .line 1336
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    #@1a5
    move-result v6

    #@1a6
    if-eqz v6, :cond_18

    #@1a8
    .line 1337
    move-object/from16 v0, p0

    #@1aa
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@1ac
    aget-object v6, v6, v32

    #@1ae
    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    #@1b1
    move-result v6

    #@1b2
    .line 1338
    const/4 v8, 0x7

    #@1b3
    .line 1337
    if-ne v6, v8, :cond_17

    #@1b5
    const/4 v6, 0x1

    #@1b6
    .line 1336
    :goto_5
    if-nez v6, :cond_10

    #@1b8
    .line 1339
    move-object/from16 v0, p0

    #@1ba
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@1bc
    aget-object v6, v6, v32

    #@1be
    move/from16 v0, v31

    #@1c0
    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@1c3
    .line 1334
    :cond_10
    add-int/lit8 v32, v32, 0x1

    #@1c5
    goto :goto_4

    #@1c6
    .line 1255
    .end local v9    # "step":I
    .end local v28    # "oldIndex":I
    .end local v31    # "state":Z
    .end local v32    # "stream":I
    :catchall_0
    move-exception v8

    #@1c7
    monitor-exit v6

    #@1c8
    throw v8

    #@1c9
    .line 1271
    :cond_11
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@1cc
    move-result v9

    #@1cd
    .restart local v9    # "step":I
    goto/16 :goto_0

    #@1cf
    .line 1278
    .end local v9    # "step":I
    :cond_12
    const/16 v6, 0xa

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    move/from16 v1, p1

    #@1d5
    invoke-direct {v0, v6, v1, v13}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    #@1d8
    move-result v9

    #@1d9
    .restart local v9    # "step":I
    goto/16 :goto_1

    #@1db
    .line 1294
    .restart local v29    # "result":I
    .restart local v30    # "ringerMode":I
    :cond_13
    const/16 v21, 0x0

    #@1dd
    goto/16 :goto_2

    #@1df
    .line 1317
    .end local v29    # "result":I
    .end local v30    # "ringerMode":I
    .restart local v28    # "oldIndex":I
    :catchall_1
    move-exception v6

    #@1e0
    monitor-exit v8

    #@1e1
    throw v6

    #@1e2
    .line 1327
    :cond_14
    const/16 v31, 0x1

    #@1e4
    .restart local v31    # "state":Z
    goto :goto_3

    #@1e5
    .line 1329
    .end local v31    # "state":Z
    :cond_15
    const/16 v6, -0x64

    #@1e7
    move/from16 v0, p2

    #@1e9
    if-ne v0, v6, :cond_16

    #@1eb
    const/16 v31, 0x1

    #@1ed
    .restart local v31    # "state":Z
    goto :goto_3

    #@1ee
    .end local v31    # "state":Z
    :cond_16
    const/16 v31, 0x0

    #@1f0
    .restart local v31    # "state":Z
    goto :goto_3

    #@1f1
    .line 1337
    .restart local v32    # "stream":I
    :cond_17
    const/4 v6, 0x0

    #@1f2
    goto :goto_5

    #@1f3
    .line 1336
    :cond_18
    const/4 v6, 0x0

    #@1f4
    goto :goto_5

    #@1f5
    .line 1343
    .end local v31    # "state":Z
    .end local v32    # "stream":I
    :cond_19
    const/4 v6, 0x1

    #@1f6
    move/from16 v0, p2

    #@1f8
    if-ne v0, v6, :cond_1a

    #@1fa
    .line 1344
    add-int v6, v7, v9

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    move/from16 v1, v17

    #@200
    invoke-direct {v0, v13, v6, v1}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    #@203
    move-result v6

    #@204
    if-eqz v6, :cond_21

    #@206
    .line 1347
    :cond_1a
    mul-int v6, p2, v9

    #@208
    move-object/from16 v0, v19

    #@20a
    move/from16 v1, v17

    #@20c
    move-object/from16 v2, p5

    #@20e
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    #@211
    move-result v6

    #@212
    if-nez v6, :cond_1b

    #@214
    .line 1348
    invoke-static/range {v19 .. v19}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@217
    move-result v6

    #@218
    .line 1347
    if-eqz v6, :cond_1d

    #@21a
    .line 1351
    :cond_1b
    invoke-static/range {v19 .. v19}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@21d
    move-result v6

    #@21e
    if-eqz v6, :cond_1c

    #@220
    .line 1353
    const/4 v6, 0x1

    #@221
    move/from16 v0, p2

    #@223
    if-ne v0, v6, :cond_22

    #@225
    .line 1355
    const/4 v6, 0x0

    #@226
    move-object/from16 v0, v19

    #@228
    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@22b
    .line 1363
    :cond_1c
    :goto_6
    move-object/from16 v0, p0

    #@22d
    iget-object v14, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@22f
    .line 1364
    const/4 v15, 0x0

    #@230
    .line 1365
    const/16 v16, 0x2

    #@232
    .line 1367
    const/16 v18, 0x0

    #@234
    .line 1369
    const/16 v20, 0x0

    #@236
    .line 1363
    invoke-static/range {v14 .. v20}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@239
    .line 1373
    :cond_1d
    :goto_7
    move-object/from16 v0, p0

    #@23b
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@23d
    aget-object v6, v6, p1

    #@23f
    move/from16 v0, v17

    #@241
    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@244
    move-result v27

    #@245
    .line 1374
    .local v27, "newIndex":I
    const/4 v6, 0x3

    #@246
    if-ne v13, v6, :cond_1e

    #@248
    .line 1375
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    #@24b
    move-result v6

    #@24c
    move-object/from16 v0, p0

    #@24e
    move/from16 v1, v28

    #@250
    move/from16 v2, v27

    #@252
    move/from16 v3, p3

    #@254
    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    #@257
    .line 1377
    :cond_1e
    move-object/from16 v0, p0

    #@259
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@25b
    if-eqz v6, :cond_20

    #@25d
    .line 1378
    move-object/from16 v0, p0

    #@25f
    iget-object v8, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@261
    monitor-enter v8

    #@262
    .line 1380
    :try_start_2
    move-object/from16 v0, p0

    #@264
    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    #@266
    if-eqz v6, :cond_1f

    #@268
    .line 1381
    const/4 v6, 0x3

    #@269
    if-ne v13, v6, :cond_1f

    #@26b
    .line 1382
    move/from16 v0, v28

    #@26d
    move/from16 v1, v27

    #@26f
    if-eq v0, v1, :cond_1f

    #@271
    .line 1383
    move-object/from16 v0, p0

    #@273
    iget-object v10, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@275
    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    #@276
    .line 1384
    const/4 v6, -0x1

    #@277
    move/from16 v0, p2

    #@279
    if-ne v0, v6, :cond_23

    #@27b
    const/16 v26, 0x19

    #@27d
    .line 1386
    .local v26, "keyCode":I
    :goto_8
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@280
    move-result-wide v22

    #@281
    .line 1388
    .local v22, "ident":J
    :try_start_4
    move-object/from16 v0, p0

    #@283
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@285
    const/4 v11, 0x1

    #@286
    move/from16 v0, v26

    #@288
    invoke-virtual {v6, v0, v11}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    #@28b
    .line 1389
    move-object/from16 v0, p0

    #@28d
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@28f
    const/4 v11, 0x0

    #@290
    move/from16 v0, v26

    #@292
    invoke-virtual {v6, v0, v11}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@295
    .line 1391
    :try_start_5
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@298
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@299
    .end local v22    # "ident":J
    .end local v26    # "keyCode":I
    :cond_1f
    monitor-exit v8

    #@29a
    .line 1398
    .end local v27    # "newIndex":I
    :cond_20
    move-object/from16 v0, p0

    #@29c
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@29e
    aget-object v6, v6, p1

    #@2a0
    move/from16 v0, v17

    #@2a2
    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@2a5
    move-result v24

    #@2a6
    .line 1399
    .local v24, "index":I
    move-object/from16 v0, p0

    #@2a8
    move/from16 v1, p1

    #@2aa
    move/from16 v2, v28

    #@2ac
    move/from16 v3, v24

    #@2ae
    move/from16 v4, p3

    #@2b0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    #@2b3
    .line 1208
    return-void

    #@2b4
    .line 1345
    .end local v24    # "index":I
    :cond_21
    const-string/jumbo v6, "AudioService"

    #@2b7
    new-instance v8, Ljava/lang/StringBuilder;

    #@2b9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2bc
    const-string/jumbo v10, "adjustStreamVolume() safe volume index = "

    #@2bf
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v8

    #@2c3
    move/from16 v0, v28

    #@2c5
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v8

    #@2c9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cc
    move-result-object v8

    #@2cd
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d0
    .line 1346
    move-object/from16 v0, p0

    #@2d2
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@2d4
    move/from16 v0, p3

    #@2d6
    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    #@2d9
    goto/16 :goto_7

    #@2db
    .line 1356
    :cond_22
    const/4 v6, -0x1

    #@2dc
    move/from16 v0, p2

    #@2de
    if-ne v0, v6, :cond_1c

    #@2e0
    .line 1357
    move-object/from16 v0, p0

    #@2e2
    iget v6, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@2e4
    const/4 v8, 0x2

    #@2e5
    if-ne v6, v8, :cond_1c

    #@2e7
    .line 1358
    move-object/from16 v0, p0

    #@2e9
    iget-object v10, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2eb
    const/16 v11, 0x18

    #@2ed
    const/4 v12, 0x2

    #@2ee
    .line 1359
    const/4 v15, 0x0

    #@2ef
    const/16 v16, 0x15e

    #@2f1
    move/from16 v14, p3

    #@2f3
    .line 1358
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@2f6
    goto/16 :goto_6

    #@2f8
    .line 1385
    .restart local v27    # "newIndex":I
    :cond_23
    const/16 v26, 0x18

    #@2fa
    .restart local v26    # "keyCode":I
    goto :goto_8

    #@2fb
    .line 1390
    .restart local v22    # "ident":J
    :catchall_2
    move-exception v6

    #@2fc
    .line 1391
    :try_start_7
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2ff
    .line 1390
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@300
    .line 1383
    .end local v22    # "ident":J
    :catchall_3
    move-exception v6

    #@301
    :try_start_8
    monitor-exit v10

    #@302
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@303
    .line 1378
    .end local v26    # "keyCode":I
    :catchall_4
    move-exception v6

    #@304
    monitor-exit v8

    #@305
    throw v6
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
    .line 1170
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
    .line 1171
    const-string/jumbo v3, ", flags="

    #@1a
    .line 1170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1171
    const-string/jumbo v3, ", caller="

    #@25
    .line 1170
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
    .line 1173
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    #@37
    move-result v7

    #@38
    .line 1174
    .local v7, "isMute":Z
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@3a
    const/4 v2, -0x1

    #@3b
    if-eq v0, v2, :cond_3

    #@3d
    .line 1175
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@3f
    .line 1179
    .local v1, "streamType":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@42
    .line 1180
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@44
    aget v8, v0, v1

    #@46
    .line 1183
    .local v8, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    #@48
    if-eqz v0, :cond_1

    #@4a
    .line 1184
    const/4 v0, 0x2

    #@4b
    if-eq v8, v0, :cond_1

    #@4d
    .line 1185
    and-int/lit8 p3, p3, -0x5

    #@4f
    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@51
    invoke-virtual {v0, v8, p3, v7}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_2

    #@57
    .line 1191
    const/4 p1, 0x0

    #@58
    .line 1192
    and-int/lit8 p3, p3, -0x5

    #@5a
    .line 1193
    and-int/lit8 p3, p3, -0x11

    #@5c
    .line 1194
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
    .line 1197
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@72
    .line 1169
    return-void

    #@73
    .line 1177
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
    .line 1736
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1737
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@e
    .line 1738
    const/high16 v1, 0x24000000

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@13
    .line 1740
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@16
    .line 1735
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    #@0
    .prologue
    .line 3657
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    .line 3658
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_RINGER_MODE"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 3659
    const/high16 v1, 0x24000000

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@10
    .line 3661
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@13
    .line 3655
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3054
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@3
    const/16 v1, 0x13

    #@5
    .line 3055
    const/4 v2, 0x2

    #@6
    const/4 v5, 0x0

    #@7
    move v3, p1

    #@8
    move v6, v4

    #@9
    .line 3054
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@c
    .line 3053
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    #@0
    .prologue
    .line 3666
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 3667
    new-instance v0, Landroid/content/Intent;

    #@8
    const-string/jumbo v1, "android.media.VIBRATE_SETTING_CHANGED"

    #@b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 3668
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_VIBRATE_TYPE"

    #@11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 3669
    const-string/jumbo v1, "android.media.EXTRA_VIBRATE_SETTING"

    #@17
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1e
    .line 3670
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    #@21
    .line 3664
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    #@0
    .prologue
    .line 4841
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    #@6
    .line 4840
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    #@0
    .prologue
    .line 895
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v3

    #@3
    .line 896
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@6
    move-result v0

    #@7
    .line 897
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    #@8
    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 898
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@c
    aget v2, v2, v1

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 899
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@12
    aget-object v2, v2, v1

    #@14
    .line 900
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@16
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@18
    aget v5, v5, v1

    #@1a
    aget-object v4, v4, v5

    #@1c
    .line 901
    const-string/jumbo v5, "AudioService"

    #@1f
    .line 899
    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    #@22
    .line 904
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
    .line 905
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2e
    aget-object v2, v2, v1

    #@30
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 897
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    :cond_2
    monitor-exit v3

    #@37
    .line 894
    return-void

    #@38
    .line 895
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
    .line 913
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@3
    move-result v0

    #@4
    .line 914
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    #@5
    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 915
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@9
    aget-object v2, v2, v1

    #@b
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    #@e
    .line 914
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 911
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    #@7
    .line 919
    return-void
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .locals 12
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 3387
    iget v7, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@2
    const/4 v8, 0x2

    #@3
    if-ne v7, v8, :cond_2

    #@5
    const/4 v4, 0x1

    #@6
    .line 3388
    .local v4, "isTv":Z
    :goto_0
    const/4 v5, 0x1

    #@7
    .line 3389
    .local v5, "result":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@a
    move-result v6

    #@b
    .line 3391
    .local v6, "ringerMode":I
    packed-switch v6, :pswitch_data_0

    #@e
    .line 3471
    const-string/jumbo v7, "AudioService"

    #@11
    new-instance v8, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v9, "checkForRingerModeChange() wrong ringer mode: "

    #@19
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 3475
    :cond_0
    :goto_1
    move-object/from16 v0, p5

    #@2a
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_1

    #@30
    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_1

    #@36
    .line 3476
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    #@38
    move-object/from16 v0, p5

    #@3a
    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_14

    #@40
    .line 3481
    :cond_1
    const-string/jumbo v7, "AudioService.checkForRingerModeChange"

    #@43
    const/4 v8, 0x0

    #@44
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    #@47
    .line 3483
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    #@49
    .line 3485
    return v5

    #@4a
    .line 3387
    .end local v4    # "isTv":Z
    .end local v5    # "result":I
    .end local v6    # "ringerMode":I
    :cond_2
    const/4 v4, 0x0

    #@4b
    .restart local v4    # "isTv":Z
    goto :goto_0

    #@4c
    .line 3393
    .restart local v5    # "result":I
    .restart local v6    # "ringerMode":I
    :pswitch_0
    const/4 v7, -0x1

    #@4d
    if-ne p2, v7, :cond_4

    #@4f
    .line 3394
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@51
    if-eqz v7, :cond_3

    #@53
    .line 3400
    if-gt p3, p1, :cond_0

    #@55
    mul-int/lit8 v7, p3, 0x2

    #@57
    if-ge p1, v7, :cond_0

    #@59
    .line 3401
    const/4 v6, 0x1

    #@5a
    .line 3402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5d
    move-result-wide v8

    #@5e
    iput-wide v8, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    #@60
    goto :goto_1

    #@61
    .line 3405
    :cond_3
    if-ne p1, p3, :cond_0

    #@63
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@65
    iget-boolean v7, v7, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@67
    if-eqz v7, :cond_0

    #@69
    .line 3406
    const/4 v6, 0x0

    #@6a
    goto :goto_1

    #@6b
    .line 3409
    :cond_4
    if-eqz v4, :cond_0

    #@6d
    const/16 v7, 0x65

    #@6f
    if-eq p2, v7, :cond_5

    #@71
    .line 3410
    const/16 v7, -0x64

    #@73
    if-ne p2, v7, :cond_0

    #@75
    .line 3411
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@77
    if-eqz v7, :cond_6

    #@79
    .line 3412
    const/4 v6, 0x1

    #@7a
    .line 3417
    :goto_2
    const/4 v5, 0x0

    #@7b
    goto :goto_1

    #@7c
    .line 3414
    :cond_6
    const/4 v6, 0x0

    #@7d
    goto :goto_2

    #@7e
    .line 3421
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@80
    if-nez v7, :cond_7

    #@82
    .line 3422
    const-string/jumbo v7, "AudioService"

    #@85
    const-string/jumbo v8, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    #@88
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    goto :goto_1

    #@8c
    .line 3426
    :cond_7
    const/4 v7, -0x1

    #@8d
    if-ne p2, v7, :cond_b

    #@8f
    .line 3428
    if-eqz v4, :cond_9

    #@91
    mul-int/lit8 v7, p3, 0x2

    #@93
    if-lt p1, v7, :cond_9

    #@95
    if-eqz p4, :cond_9

    #@97
    .line 3429
    const/4 v6, 0x2

    #@98
    .line 3447
    :cond_8
    :goto_3
    and-int/lit8 v5, v5, -0x2

    #@9a
    .line 3448
    goto :goto_1

    #@9b
    .line 3430
    :cond_9
    iget v7, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    #@9d
    const/4 v8, -0x1

    #@9e
    if-eq v7, v8, :cond_8

    #@a0
    .line 3431
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@a2
    iget-boolean v7, v7, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@a4
    if-eqz v7, :cond_a

    #@a6
    .line 3432
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a9
    move-result-wide v8

    #@aa
    .line 3433
    iget-wide v10, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    #@ac
    .line 3432
    sub-long v2, v8, v10

    #@ae
    .line 3434
    .local v2, "diff":J
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@b0
    iget v7, v7, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    #@b2
    int-to-long v8, v7

    #@b3
    cmp-long v7, v2, v8

    #@b5
    if-lez v7, :cond_8

    #@b7
    .line 3435
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@b9
    invoke-interface {v7}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    #@bc
    move-result v7

    #@bd
    .line 3434
    if-eqz v7, :cond_8

    #@bf
    .line 3436
    const/4 v6, 0x0

    #@c0
    goto :goto_3

    #@c1
    .line 3439
    .end local v2    # "diff":J
    :cond_a
    const/16 v5, 0x801

    #@c3
    goto :goto_3

    #@c4
    .line 3442
    :cond_b
    const/4 v7, 0x1

    #@c5
    if-eq p2, v7, :cond_c

    #@c7
    .line 3443
    const/16 v7, 0x65

    #@c9
    if-ne p2, v7, :cond_d

    #@cb
    .line 3445
    :cond_c
    :goto_4
    const/4 v6, 0x2

    #@cc
    goto :goto_3

    #@cd
    .line 3444
    :cond_d
    const/16 v7, 0x64

    #@cf
    if-ne p2, v7, :cond_8

    #@d1
    goto :goto_4

    #@d2
    .line 3450
    :pswitch_2
    if-eqz v4, :cond_f

    #@d4
    const/4 v7, -0x1

    #@d5
    if-ne p2, v7, :cond_f

    #@d7
    mul-int/lit8 v7, p3, 0x2

    #@d9
    if-lt p1, v7, :cond_f

    #@db
    if-eqz p4, :cond_f

    #@dd
    .line 3452
    const/4 v6, 0x2

    #@de
    .line 3468
    :cond_e
    :goto_5
    and-int/lit8 v5, v5, -0x2

    #@e0
    .line 3469
    goto/16 :goto_1

    #@e2
    .line 3453
    :cond_f
    const/4 v7, 0x1

    #@e3
    if-eq p2, v7, :cond_10

    #@e5
    .line 3454
    const/16 v7, 0x65

    #@e7
    if-ne p2, v7, :cond_11

    #@e9
    .line 3456
    :cond_10
    :goto_6
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@eb
    iget-boolean v7, v7, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    #@ed
    if-nez v7, :cond_12

    #@ef
    .line 3457
    const/16 v5, 0x81

    #@f1
    goto :goto_5

    #@f2
    .line 3455
    :cond_11
    const/16 v7, 0x64

    #@f4
    if-ne p2, v7, :cond_e

    #@f6
    goto :goto_6

    #@f7
    .line 3459
    :cond_12
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@f9
    if-eqz v7, :cond_13

    #@fb
    const/4 v7, 0x1

    #@fc
    if-ne p2, v7, :cond_13

    #@fe
    .line 3460
    const/4 v6, 0x1

    #@ff
    .line 3459
    goto :goto_5

    #@100
    .line 3464
    :cond_13
    const/4 v6, 0x2

    #@101
    goto :goto_5

    #@102
    .line 3477
    :cond_14
    move/from16 v0, p6

    #@104
    and-int/lit16 v7, v0, 0x1000

    #@106
    if-nez v7, :cond_1

    #@108
    .line 3478
    new-instance v7, Ljava/lang/SecurityException;

    #@10a
    const-string/jumbo v8, "Not allowed to change Do Not Disturb state"

    #@10d
    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@110
    throw v7

    #@111
    .line 3391
    nop

    #@112
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
    .line 925
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
    .line 926
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@8
    aget-object v1, v2, v0

    #@a
    .line 927
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@d
    move-result v2

    #@e
    if-lez v2, :cond_0

    #@10
    .line 928
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
    .line 925
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 923
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
    .line 5727
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@4
    monitor-enter v1

    #@5
    .line 5728
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@a
    move-result v0

    #@b
    if-ne v0, v3, :cond_0

    #@d
    .line 5729
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@f
    aget v0, v0, p1

    #@11
    if-ne v0, v3, :cond_0

    #@13
    .line 5730
    and-int/lit8 v0, p3, 0xc

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 5731
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-le p2, v0, :cond_0

    #@1b
    monitor-exit v1

    #@1c
    .line 5732
    return v2

    #@1d
    .line 5734
    :cond_0
    const/4 v0, 0x1

    #@1e
    monitor-exit v1

    #@1f
    return v0

    #@20
    .line 5727
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
    .line 2960
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2961
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@a
    if-nez v0, :cond_0

    #@c
    .line 2962
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@10
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    #@13
    move-result v0

    #@14
    .line 2963
    const/16 v1, 0xa

    #@16
    .line 2962
    if-eq v0, v1, :cond_0

    #@18
    .line 2964
    const/4 v0, 0x2

    #@19
    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@1b
    .line 2959
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    #@0
    .prologue
    .line 5001
    const/4 v7, 0x0

    #@1
    .line 5002
    .local v7, "delay":I
    if-nez p2, :cond_2

    #@3
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@5
    and-int/2addr v0, p1

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 5003
    const/4 v9, 0x0

    #@9
    .line 5004
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
    .line 5005
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
    .line 5006
    .local v8, "dev":I
    const/high16 v0, -0x80000000

    #@1e
    and-int/2addr v0, v8

    #@1f
    if-nez v0, :cond_0

    #@21
    .line 5007
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@23
    and-int/2addr v0, v8

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 5008
    or-int/2addr v9, v8

    #@27
    .line 5004
    :cond_0
    add-int/lit8 v10, v10, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 5011
    .end local v8    # "dev":I
    :cond_1
    if-ne v9, p1, :cond_2

    #@2c
    .line 5012
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2e
    .line 5013
    const/16 v1, 0xf

    #@30
    .line 5014
    const/4 v2, 0x0

    #@31
    .line 5015
    const/4 v3, 0x0

    #@32
    .line 5016
    const/4 v4, 0x0

    #@33
    .line 5017
    const/4 v5, 0x0

    #@34
    .line 5018
    const/4 v6, 0x0

    #@35
    .line 5012
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@38
    .line 5019
    const/16 v7, 0x3e8

    #@3a
    .line 5023
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
    .line 5024
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@46
    const/16 v1, 0x66

    #@48
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    #@4b
    move-result v0

    #@4c
    .line 5023
    if-nez v0, :cond_3

    #@4e
    .line 5025
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@50
    const/16 v1, 0x64

    #@52
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    #@55
    move-result v0

    #@56
    .line 5023
    if-eqz v0, :cond_5

    #@58
    .line 5026
    :cond_3
    sget-object v1, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    #@5a
    monitor-enter v1

    #@5b
    .line 5027
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5e
    move-result-wide v12

    #@5f
    .line 5028
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
    .line 5029
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
    .line 5033
    .end local v12    # "time":J
    :cond_5
    return v7

    #@75
    .line 5026
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
    .line 5162
    const-string/jumbo v17, "android.media.action.HDMI_AUDIO_PLUG"

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v17

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    .line 5163
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
    .line 5164
    const/16 v17, 0x1

    #@18
    move/from16 v0, p2

    #@1a
    move/from16 v1, v17

    #@1c
    if-ne v0, v1, :cond_8

    #@1e
    .line 5165
    new-instance v15, Ljava/util/ArrayList;

    #@20
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 5166
    .local v15, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v17, 0x1

    #@25
    move/from16 v0, v17

    #@27
    new-array v14, v0, [I

    #@29
    .line 5167
    .local v14, "portGeneration":[I
    invoke-static {v15, v14}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    #@2c
    move-result v16

    #@2d
    .line 5168
    .local v16, "status":I
    if-nez v16, :cond_8

    #@2f
    .line 5169
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
    .line 5170
    .local v12, "port":Landroid/media/AudioPort;
    instance-of v0, v12, Landroid/media/AudioDevicePort;

    #@41
    move/from16 v17, v0

    #@43
    if-eqz v17, :cond_0

    #@45
    move-object v4, v12

    #@46
    .line 5171
    check-cast v4, Landroid/media/AudioDevicePort;

    #@48
    .line 5172
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
    .line 5173
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
    .line 5175
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->formats()[I

    #@63
    move-result-object v17

    #@64
    invoke-static/range {v17 .. v17}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    #@67
    move-result-object v8

    #@68
    .line 5176
    .local v8, "formats":[I
    array-length v0, v8

    #@69
    move/from16 v17, v0

    #@6b
    if-lez v17, :cond_5

    #@6d
    .line 5177
    new-instance v6, Ljava/util/ArrayList;

    #@6f
    const/16 v17, 0x1

    #@71
    move/from16 v0, v17

    #@73
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@76
    .line 5178
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
    .line 5180
    .local v7, "format":I
    if-eqz v7, :cond_2

    #@85
    .line 5181
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v19

    #@89
    move-object/from16 v0, v19

    #@8b
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e
    .line 5178
    :cond_2
    add-int/lit8 v17, v17, 0x1

    #@90
    goto :goto_1

    #@91
    .line 5184
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
    .line 5185
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
    .line 5186
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
    .line 5185
    add-int/lit8 v9, v9, 0x1

    #@af
    goto :goto_2

    #@b0
    .line 5188
    :cond_4
    const-string/jumbo v17, "android.media.extra.ENCODINGS"

    #@b3
    move-object/from16 v0, p1

    #@b5
    move-object/from16 v1, v17

    #@b7
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@ba
    .line 5191
    .end local v5    # "encodingArray":[I
    .end local v6    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    :cond_5
    const/4 v11, 0x0

    #@bb
    .line 5192
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
    .line 5193
    .local v10, "mask":I
    invoke-static {v10}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@d1
    move-result v3

    #@d2
    .line 5194
    .local v3, "channelCount":I
    if-le v3, v11, :cond_6

    #@d4
    .line 5195
    move v11, v3

    #@d5
    .line 5192
    :cond_6
    add-int/lit8 v17, v17, 0x1

    #@d7
    goto :goto_3

    #@d8
    .line 5198
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
    .line 5161
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
    .line 875
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    #@5
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    #@7
    .line 876
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    #@9
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    #@c
    .line 877
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    #@f
    .line 874
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    #@0
    .prologue
    .line 934
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@3
    move-result v1

    #@4
    .line 935
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@6
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@8
    .line 937
    .local v2, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@b
    .line 938
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
    .line 937
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 941
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    #@21
    .line 942
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    #@24
    .line 943
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    #@27
    .line 933
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1832
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 1833
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 1834
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    #@12
    .line 1835
    .local v0, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1836
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    #@1b
    .line 1837
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@20
    .line 1838
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 1841
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
    .line 3021
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@4
    monitor-enter v7

    #@5
    .line 3022
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    #@8
    .line 3023
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 3024
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@e
    if-ne v0, v2, :cond_3

    #@10
    .line 3025
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 3026
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 3027
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    #@1a
    .line 3028
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@1c
    .line 3027
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 3029
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@24
    const/16 v1, 0x9

    #@26
    .line 3030
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
    .line 3029
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_1
    :goto_0
    monitor-exit v7

    #@2f
    .line 3020
    return-void

    #@30
    .line 3032
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@32
    if-ne v0, v1, :cond_1

    #@34
    .line 3033
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    #@37
    move-result v0

    #@38
    .line 3032
    if-eqz v0, :cond_1

    #@3a
    .line 3034
    const/4 v0, 0x4

    #@3b
    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 3021
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v7

    #@40
    throw v0

    #@41
    .line 3038
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
    .line 6292
    const-string/jumbo v2, "\nAudio policies:"

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 6293
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@8
    monitor-enter v3

    #@9
    .line 6294
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
    .line 6295
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
    .line 6293
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
    .line 6291
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 5883
    const-string/jumbo v0, "\nRinger mode: "

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 5884
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
    .line 5885
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
    .line 5886
    const-string/jumbo v0, "affected"

    #@43
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@45
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    #@48
    .line 5887
    const-string/jumbo v0, "muted"

    #@4b
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    #@4d
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    #@50
    .line 5888
    const-string/jumbo v0, "- delegate = "

    #@53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5b
    .line 5882
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
    .line 5892
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
    .line 5893
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 5894
    if-eqz p3, :cond_5

    #@1a
    .line 5895
    const-string/jumbo v3, " ("

    #@1d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 5896
    const/4 v0, 0x1

    #@21
    .line 5897
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
    .line 5898
    const/4 v3, 0x1

    #@28
    shl-int v2, v3, v1

    #@2a
    .line 5899
    .local v2, "stream":I
    and-int v3, p3, v2

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 5900
    if-nez v0, :cond_0

    #@30
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@33
    .line 5901
    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    #@35
    aget-object v3, v3, v1

    #@37
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 5902
    not-int v3, v2

    #@3b
    and-int/2addr p3, v3

    #@3c
    .line 5903
    const/4 v0, 0x0

    #@3d
    .line 5897
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 5906
    .end local v2    # "stream":I
    :cond_2
    if-eqz p3, :cond_4

    #@42
    .line 5907
    if-nez v0, :cond_3

    #@44
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@47
    .line 5908
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@4a
    .line 5910
    :cond_4
    const/16 v3, 0x29

    #@4c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    #@4f
    .line 5912
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@52
    .line 5891
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 947
    const-string/jumbo v2, "\nStream volumes (device: index)"

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 948
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@9
    move-result v1

    #@a
    .line 949
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 950
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
    .line 951
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@31
    aget-object v2, v2, v0

    #@33
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    #@36
    .line 952
    const-string/jumbo v2, ""

    #@39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 949
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 954
    :cond_0
    const-string/jumbo v2, "\n- mute affected streams = 0x"

    #@42
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    .line 955
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    #@47
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 946
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5702
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    const/4 v2, 0x3

    #@4
    aget-object v5, v0, v2

    #@6
    .line 5703
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    #@8
    .line 5704
    .local v7, "devices":I
    const/4 v8, 0x0

    #@9
    .local v8, "i":I
    move v9, v8

    #@a
    .line 5706
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_2

    #@c
    .line 5707
    add-int/lit8 v8, v9, 0x1

    #@e
    .end local v9    # "i":I
    .restart local v8    # "i":I
    const/4 v0, 0x1

    #@f
    shl-int v3, v0, v9

    #@11
    .line 5708
    .local v3, "device":I
    and-int v0, v3, v7

    #@13
    if-nez v0, :cond_0

    #@15
    move v9, v8

    #@16
    .line 5709
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    #@17
    .line 5711
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@1a
    move-result v10

    #@1b
    .line 5712
    .local v10, "index":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@1d
    if-le v10, v0, :cond_1

    #@1f
    .line 5713
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@21
    invoke-virtual {v5, v0, v3, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@24
    .line 5714
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@26
    .line 5716
    const/4 v2, 0x2

    #@27
    move v4, v1

    #@28
    move v6, v1

    #@29
    .line 5714
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@2c
    .line 5722
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
    .line 5701
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
    .line 5962
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
    .line 5963
    return-void

    #@15
    .line 5965
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@17
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@1a
    .line 5966
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
    .line 5965
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 5961
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 3540
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 3549
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
    .line 3539
    :sswitch_0
    return-void

    #@1e
    .line 3540
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
    .line 2045
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2046
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
    .line 2044
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 3554
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 3555
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
    .line 3553
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
    .line 3589
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 3623
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_a

    #@11
    .line 3624
    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    #@14
    move-result v0

    #@15
    if-ne v0, v2, :cond_8

    #@17
    .line 3626
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
    .line 3627
    :cond_0
    const/4 v0, 0x6

    #@25
    return v0

    #@26
    .line 3591
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 3592
    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    #@2f
    move-result v0

    #@30
    if-ne v0, v2, :cond_1

    #@32
    .line 3595
    const/4 v0, 0x6

    #@33
    return v0

    #@34
    .line 3598
    :cond_1
    return v3

    #@35
    .line 3600
    :cond_2
    if-ne p1, v1, :cond_6

    #@37
    .line 3601
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@39
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_4

    #@3f
    .line 3602
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@41
    if-eqz v0, :cond_3

    #@43
    .line 3603
    const-string/jumbo v0, "AudioService"

    #@46
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 3604
    :cond_3
    return v2

    #@4d
    .line 3606
    :cond_4
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@4f
    if-eqz v0, :cond_5

    #@51
    .line 3607
    const-string/jumbo v0, "AudioService"

    #@54
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING b/c default"

    #@57
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 3608
    :cond_5
    return v5

    #@5b
    .line 3610
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_11

    #@61
    .line 3611
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@63
    if-eqz v0, :cond_7

    #@65
    .line 3612
    const-string/jumbo v0, "AudioService"

    #@68
    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    #@6b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 3613
    :cond_7
    return v2

    #@6f
    .line 3617
    :pswitch_1
    if-ne p1, v1, :cond_11

    #@71
    .line 3619
    return v2

    #@72
    .line 3629
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
    .line 3630
    :cond_9
    return v3

    #@80
    .line 3633
    :cond_a
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@82
    .line 3632
    invoke-static {v4, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@85
    move-result v0

    #@86
    if-nez v0, :cond_b

    #@88
    .line 3635
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@8a
    .line 3634
    invoke-static {v5, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@8d
    move-result v0

    #@8e
    .line 3632
    if-eqz v0, :cond_d

    #@90
    .line 3636
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
    .line 3637
    :cond_c
    return v4

    #@9e
    .line 3638
    :cond_d
    if-ne p1, v1, :cond_11

    #@a0
    .line 3639
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@a2
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_f

    #@a8
    .line 3640
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
    .line 3641
    :cond_e
    return v2

    #@b6
    .line 3643
    :cond_f
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@b8
    if-eqz v0, :cond_10

    #@ba
    const-string/jumbo v0, "AudioService"

    #@bd
    .line 3644
    const-string/jumbo v1, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    #@c0
    .line 3643
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 3645
    :cond_10
    return v4

    #@c4
    .line 3650
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
    .line 3652
    :cond_12
    return p1

    #@e3
    .line 3589
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
    .line 3005
    const/4 v8, 0x0

    #@3
    .line 3006
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@6
    move-result-object v7

    #@7
    .line 3007
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    #@9
    .line 3008
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@b
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@d
    .line 3009
    const/4 v3, 0x1

    #@e
    .line 3008
    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    #@11
    move-result v8

    #@12
    .line 3015
    .end local v8    # "result":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@14
    .line 3016
    if-eqz v8, :cond_1

    #@16
    const/16 v6, 0xbb8

    #@18
    .line 3015
    :goto_0
    const/16 v1, 0x9

    #@1a
    move v3, v2

    #@1b
    move v4, v2

    #@1c
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1f
    .line 3017
    return v8

    #@20
    :cond_1
    move v6, v2

    #@21
    .line 3016
    goto :goto_0
.end method

.method private getCurrentUserId()I
    .locals 5

    #@0
    .prologue
    .line 1693
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1695
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
    .line 1696
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 1700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1696
    return v4

    #@12
    .line 1697
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    #@13
    .line 1700
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1702
    const/4 v4, 0x0

    #@17
    return v4

    #@18
    .line 1699
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@19
    .line 1700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1699
    throw v4
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    #@0
    .prologue
    .line 3721
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    #@3
    move-result v0

    #@4
    .line 3722
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    #@6
    and-int/2addr v1, v0

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3729
    and-int/lit8 v1, v0, 0x2

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 3730
    const/4 v0, 0x2

    #@e
    .line 3741
    :cond_0
    :goto_0
    return v0

    #@f
    .line 3731
    :cond_1
    const/high16 v1, 0x40000

    #@11
    and-int/2addr v1, v0

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 3732
    const/high16 v0, 0x40000

    #@16
    goto :goto_0

    #@17
    .line 3733
    :cond_2
    const/high16 v1, 0x80000

    #@19
    and-int/2addr v1, v0

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 3734
    const/high16 v0, 0x80000

    #@1e
    goto :goto_0

    #@1f
    .line 3735
    :cond_3
    const/high16 v1, 0x200000

    #@21
    and-int/2addr v1, v0

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 3736
    const/high16 v0, 0x200000

    #@26
    goto :goto_0

    #@27
    .line 3738
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
    .line 3745
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
    .line 3749
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 3750
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@5
    monitor-enter v1

    #@6
    .line 3751
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
    .line 3750
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private getNewRingerMode(III)I
    .locals 2
    .param p1, "stream"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1458
    and-int/lit8 v1, p3, 0x2

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1459
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    #@7
    move-result v1

    #@8
    if-ne p1, v1, :cond_4

    #@a
    .line 1461
    :cond_0
    if-nez p2, :cond_3

    #@c
    .line 1462
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    .line 1468
    .local v0, "newRingerMode":I
    :goto_0
    return v0

    #@12
    .line 1463
    .end local v0    # "newRingerMode":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@14
    iget-boolean v1, v1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@16
    if-eqz v1, :cond_2

    #@18
    const/4 v0, 0x0

    #@19
    .restart local v0    # "newRingerMode":I
    goto :goto_0

    #@1a
    .line 1464
    .end local v0    # "newRingerMode":I
    :cond_2
    const/4 v0, 0x2

    #@1b
    .restart local v0    # "newRingerMode":I
    goto :goto_0

    #@1c
    .line 1466
    .end local v0    # "newRingerMode":I
    :cond_3
    const/4 v0, 0x2

    #@1d
    .restart local v0    # "newRingerMode":I
    goto :goto_0

    #@1e
    .line 1470
    .end local v0    # "newRingerMode":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    #@21
    move-result v1

    #@22
    return v1
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    #@0
    .prologue
    .line 2969
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2
    monitor-enter v5

    #@3
    .line 2970
    const/4 v0, 0x0

    #@4
    .line 2971
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
    .line 2972
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
    .line 2973
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
    .line 2974
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
    .line 2975
    return-object v0

    #@1e
    .line 2972
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@20
    move-object v1, v0

    #@21
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_0

    #@22
    .line 2977
    :cond_1
    if-eqz p2, :cond_2

    #@24
    .line 2978
    :try_start_3
    new-instance v0, Lcom/android/server/audio/AudioService$ScoClient;

    #@26
    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    .line 2979
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
    .line 2981
    return-object v0

    #@30
    .line 2969
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
    .line 5498
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v9

    #@8
    .line 5500
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 5501
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    #@e
    .line 5502
    .local v11, "newOrientation":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    #@10
    if-eq v11, v0, :cond_0

    #@12
    .line 5503
    iput v11, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    #@14
    .line 5504
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    #@17
    .line 5507
    .end local v11    # "newOrientation":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@19
    .line 5512
    const-string/jumbo v5, "AudioService"

    #@1c
    .line 5508
    const/16 v1, 0x10

    #@1e
    .line 5509
    const/4 v2, 0x0

    #@1f
    .line 5510
    const/4 v3, 0x0

    #@20
    .line 5511
    const/4 v4, 0x0

    #@21
    .line 5513
    const/4 v6, 0x0

    #@22
    .line 5507
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@25
    .line 5515
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    #@28
    move-result v7

    #@29
    .line 5516
    .local v7, "cameraSoundForced":Z
    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2b
    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 5517
    const/4 v8, 0x0

    #@2d
    .line 5518
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@2f
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@30
    .line 5519
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@35
    move-result v0

    #@36
    if-eq v7, v0, :cond_1

    #@38
    .line 5520
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 5521
    const/4 v8, 0x1

    #@3f
    :cond_1
    :try_start_3
    monitor-exit v1

    #@40
    .line 5524
    if-eqz v8, :cond_3

    #@42
    .line 5525
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_2

    #@48
    .line 5526
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@4a
    const/4 v1, 0x7

    #@4b
    aget-object v12, v0, v1

    #@4d
    .line 5527
    .local v12, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v7, :cond_4

    #@4f
    .line 5528
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    #@52
    .line 5529
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@54
    and-int/lit16 v0, v0, -0x81

    #@56
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@58
    .line 5537
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@5b
    move-result v0

    #@5c
    const/4 v1, 0x0

    #@5d
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@60
    .line 5540
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@62
    .line 5544
    if-eqz v7, :cond_5

    #@64
    .line 5545
    const/16 v4, 0xb

    #@66
    .line 5541
    :goto_1
    const/16 v1, 0x8

    #@68
    .line 5542
    const/4 v2, 0x2

    #@69
    .line 5543
    const/4 v3, 0x4

    #@6a
    .line 5546
    const/4 v5, 0x0

    #@6b
    .line 5547
    const/4 v6, 0x0

    #@6c
    .line 5540
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@6f
    .line 5549
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@71
    .line 5554
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@73
    const/4 v2, 0x7

    #@74
    aget-object v5, v1, v2

    #@76
    .line 5550
    const/16 v1, 0xa

    #@78
    .line 5551
    const/4 v2, 0x2

    #@79
    .line 5552
    const/4 v3, 0x0

    #@7a
    .line 5553
    const/4 v4, 0x0

    #@7b
    .line 5554
    const/4 v6, 0x0

    #@7c
    .line 5549
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7f
    :cond_3
    :try_start_4
    monitor-exit v13

    #@80
    .line 5557
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
    .line 5494
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_2
    return-void

    #@8a
    .line 5518
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
    .line 5516
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
    .line 5558
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    #@91
    .line 5559
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "AudioService"

    #@94
    const-string/jumbo v1, "Error handling configuration change: "

    #@97
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9a
    goto :goto_2

    #@9b
    .line 5532
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
    .line 5533
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
    .line 5545
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
    .line 4954
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 4955
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
    .line 4956
    const-string/jumbo v6, " address:"

    #@2b
    .line 4955
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    .line 4956
    const-string/jumbo v6, " name:"

    #@36
    .line 4955
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 4956
    const-string/jumbo v6, ")"

    #@41
    .line 4955
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
    .line 4958
    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@4e
    monitor-enter v5

    #@4f
    .line 4959
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 4960
    .local v0, "deviceKey":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@55
    if-eqz v4, :cond_1

    #@57
    .line 4961
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
    .line 4963
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@73
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    move-result-object v1

    #@77
    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@79
    .line 4964
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_4

    #@7b
    const/4 v2, 0x1

    #@7c
    .line 4965
    .local v2, "isConnected":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@7e
    if-eqz v4, :cond_2

    #@80
    .line 4966
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
    .line 4968
    :cond_2
    if-eqz p1, :cond_3

    #@a7
    if-eqz v2, :cond_5

    #@a9
    .line 4978
    :cond_3
    if-nez p1, :cond_7

    #@ab
    if-eqz v2, :cond_7

    #@ad
    .line 4980
    const/4 v4, 0x0

    #@ae
    .line 4979
    invoke-static {p2, v4, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@b1
    .line 4982
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@b3
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b6
    monitor-exit v5

    #@b7
    .line 4983
    return v9

    #@b8
    .line 4964
    .end local v2    # "isConnected":Z
    :cond_4
    const/4 v2, 0x0

    #@b9
    .restart local v2    # "isConnected":Z
    goto :goto_0

    #@ba
    .line 4970
    :cond_5
    const/4 v4, 0x1

    #@bb
    .line 4969
    :try_start_1
    invoke-static {p2, v4, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@be
    move-result v3

    #@bf
    .line 4971
    .local v3, "res":I
    if-eqz v3, :cond_6

    #@c1
    .line 4972
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
    .line 4973
    const-string/jumbo v7, " due to command error "

    #@db
    .line 4972
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
    .line 4974
    return v8

    #@ec
    .line 4976
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
    .line 4977
    return v9

    #@f8
    .end local v3    # "res":I
    :cond_7
    monitor-exit v5

    #@f9
    .line 4986
    return v8

    #@fa
    .line 4958
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
    .line 1846
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 1847
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1848
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
    .line 1849
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 1852
    :cond_1
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    #@0
    .prologue
    .line 4846
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
    .line 3584
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 3585
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    #@a
    move-result v0

    #@b
    .line 3584
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .locals 7
    .param p1, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1476
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v2

    #@8
    .line 1477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v3

    #@c
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@f
    move-result v3

    #@10
    const/4 v4, 0x0

    #@11
    .line 1476
    invoke-virtual {v2, p1, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@14
    move-result-object v0

    #@15
    .line 1478
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    const/16 v3, 0x18

    #@19
    if-lt v2, v3, :cond_0

    #@1b
    .line 1479
    return v6

    #@1c
    .line 1481
    :cond_0
    return v5

    #@1d
    .line 1482
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@1e
    .line 1483
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v6
.end method

.method private isInCommunication()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3565
    const/4 v0, 0x0

    #@2
    .line 3568
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
    .line 3570
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v2

    #@11
    .line 3571
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    #@14
    move-result v0

    #@15
    .line 3572
    .local v0, "IsInCall":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 3574
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
    .line 3560
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
    .line 3561
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
    .line 182
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
    .line 178
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
    .line 3494
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
    .line 5394
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v6

    #@7
    .line 5397
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    #@8
    .line 5398
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@b
    move-result v8

    #@c
    if-nez v8, :cond_0

    #@e
    .line 5399
    const-class v8, Landroid/app/ActivityManagerInternal;

    #@10
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@13
    move-result-object v8

    #@14
    check-cast v8, Landroid/app/ActivityManagerInternal;

    #@16
    .line 5400
    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    #@18
    .line 5399
    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    #@1b
    move-result-object v1

    #@1c
    .line 5402
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
    .line 5405
    .local v4, "permissions":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@27
    move-result-object v8

    #@28
    .line 5406
    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    #@2a
    const/4 v10, 0x0

    #@2b
    .line 5405
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
    .line 5410
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
    .line 5411
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v5

    #@3f
    check-cast v5, Landroid/content/pm/PackageInfo;

    #@41
    .line 5413
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
    .line 5410
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@4f
    goto :goto_0

    #@50
    .line 5407
    .end local v2    # "j":I
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@51
    .line 5408
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Landroid/util/AndroidRuntimeException;

    #@53
    invoke-direct {v8, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@56
    throw v8

    #@57
    .line 5417
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
    .line 5421
    if-eqz v1, :cond_3

    #@64
    .line 5422
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
    .line 5421
    if-eqz v8, :cond_3

    #@70
    .line 5423
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@72
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@75
    move-result v8

    #@76
    .line 5421
    if-nez v8, :cond_1

    #@78
    .line 5427
    :cond_3
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7a
    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@7c
    .line 5428
    .local v7, "uid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7f
    move-result-object v8

    #@80
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    #@83
    move-result v9

    #@84
    .line 5429
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@87
    move-result v10

    #@88
    .line 5430
    const-string/jumbo v11, "killBackgroundUserProcessesWithAudioRecordPermission"

    #@8b
    .line 5428
    invoke-interface {v8, v9, v10, v11}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@8e
    goto :goto_1

    #@8f
    .line 5431
    .end local v7    # "uid":I
    :catch_1
    move-exception v0

    #@90
    .line 5432
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "AudioService"

    #@93
    const-string/jumbo v9, "Error calling killUid"

    #@96
    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@99
    goto :goto_1

    #@9a
    .line 5393
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
    .line 2425
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@3
    const-string/jumbo v2, "Effect_Tick.ogg"

    #@6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 2426
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 2427
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    #@10
    aget-object v1, v1, v0

    #@12
    aput v4, v1, v4

    #@14
    .line 2428
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
    .line 2426
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2424
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 18

    #@0
    .prologue
    .line 2433
    const/4 v13, 0x0

    #@1
    .line 2436
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@3
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v15

    #@7
    if-nez v15, :cond_0

    #@9
    .line 2437
    return-void

    #@a
    .line 2440
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    #@d
    .line 2443
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
    .line 2445
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v15, "audio_assets"

    #@1f
    invoke-static {v13, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@22
    .line 2446
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
    .line 2447
    .local v14, "version":Ljava/lang/String;
    const/4 v11, 0x0

    #@2e
    .line 2449
    .local v11, "inTouchSoundsGroup":Z
    const-string/jumbo v15, "1.0"

    #@31
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v15

    #@35
    if-eqz v15, :cond_2

    #@37
    .line 2451
    :cond_1
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3a
    .line 2452
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 2453
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_4

    #@40
    .line 2464
    :goto_0
    if-eqz v11, :cond_2

    #@42
    .line 2465
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@45
    .line 2466
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    move-result-object v5

    #@49
    .line 2467
    if-nez v5, :cond_5

    #@4b
    .line 2501
    .end local v5    # "element":Ljava/lang/String;
    :cond_2
    if-eqz v13, :cond_3

    #@4d
    .line 2502
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@50
    .line 2432
    .end local v11    # "inTouchSoundsGroup":Z
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "version":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    #@51
    .line 2456
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
    .line 2457
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
    .line 2458
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v15, "touch_sounds"

    #@68
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v15

    #@6c
    if-eqz v15, :cond_1

    #@6e
    .line 2459
    const/4 v11, 0x1

    #@6f
    .line 2460
    goto :goto_0

    #@70
    .line 2470
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
    .line 2471
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
    .line 2472
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
    .line 2476
    .local v7, "file":Ljava/lang/String;
    :try_start_2
    const-class v15, Landroid/media/AudioManager;

    #@91
    invoke-virtual {v15, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@94
    move-result-object v6

    #@95
    .line 2477
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
    .line 2483
    .local v8, "fx":I
    :try_start_3
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@9c
    invoke-interface {v15, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@9f
    move-result v9

    #@a0
    .line 2484
    .local v9, "i":I
    const/4 v15, -0x1

    #@a1
    if-ne v9, v15, :cond_6

    #@a3
    .line 2485
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@a5
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@a8
    move-result v9

    #@a9
    .line 2486
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    #@ab
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ae
    .line 2488
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
    .line 2494
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
    .line 2495
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
    .line 2501
    if-eqz v13, :cond_3

    #@c7
    .line 2502
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@ca
    goto :goto_1

    #@cb
    .line 2478
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
    .line 2479
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
    .line 2496
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
    .line 2497
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
    .line 2501
    if-eqz v13, :cond_3

    #@f8
    .line 2502
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@fb
    goto/16 :goto_1

    #@fd
    .line 2498
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    #@fe
    .line 2499
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
    .line 2501
    if-eqz v13, :cond_3

    #@10b
    .line 2502
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@10e
    goto/16 :goto_1

    #@110
    .line 2500
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    #@111
    .line 2501
    if-eqz v13, :cond_7

    #@113
    .line 2502
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@116
    .line 2500
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
    .line 4770
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@6
    const/4 v2, 0x3

    #@7
    aget-object v5, v0, v2

    #@9
    .line 4771
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
    .line 4773
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    #@14
    .line 4774
    invoke-static {v3, v7, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@17
    .line 4777
    const-string/jumbo v0, "A2dpSuspended=false"

    #@1a
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@1d
    .line 4778
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@1f
    .line 4779
    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 4780
    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@25
    invoke-direct {v2, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    #@28
    .line 4778
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 4767
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    #@0
    .prologue
    .line 4811
    const-string/jumbo v1, "A2dpSuspended=true"

    #@3
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@6
    .line 4813
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@8
    .line 4814
    const/16 v2, 0x80

    #@a
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 4813
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 4816
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@13
    const/4 v2, 0x6

    #@14
    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    .line 4817
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@1a
    int-to-long v2, p2

    #@1b
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1e
    .line 4808
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
    .line 4790
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 4791
    const/4 v1, 0x0

    #@7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 4794
    const-string/jumbo v0, ""

    #@d
    .line 4793
    invoke-static {v3, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@10
    .line 4795
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@12
    .line 4796
    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 4795
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 4797
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@1b
    monitor-enter v7

    #@1c
    .line 4799
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@1e
    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 4800
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@24
    const/4 v1, 0x0

    #@25
    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@27
    .line 4801
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@29
    const/16 v1, 0xc

    #@2b
    .line 4802
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
    .line 4801
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    :cond_0
    monitor-exit v7

    #@34
    .line 4789
    return-void

    #@35
    .line 4790
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v0

    #@37
    throw v1

    #@38
    .line 4797
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
    .line 4824
    const-string/jumbo v0, ""

    #@5
    const/4 v1, 0x1

    #@6
    .line 4823
    invoke-static {v4, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@9
    .line 4825
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@b
    .line 4826
    invoke-direct {p0, v4, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 4827
    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@11
    const-string/jumbo v3, ""

    #@14
    invoke-direct {v2, p0, v4, v3, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    #@17
    .line 4825
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 4822
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/high16 v2, -0x7ffe0000

    #@2
    .line 4834
    const-string/jumbo v0, ""

    #@5
    const/4 v1, 0x0

    #@6
    .line 4833
    invoke-static {v2, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    #@9
    .line 4835
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@b
    .line 4836
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 4835
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 4832
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2
    .param p0, "card"    # I
    .param p1, "device"    # I

    #@0
    .prologue
    .line 573
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
    .line 429
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
    .line 2124
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@3
    move-result v10

    #@4
    .line 2125
    .local v10, "numStreamTypes":I
    move-object/from16 v0, p0

    #@6
    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@8
    const/4 v2, 0x1

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 2126
    move-object/from16 v0, p0

    #@d
    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@f
    if-nez v1, :cond_1

    #@11
    const/4 v11, 0x1

    #@12
    .line 2127
    .local v11, "ringerModeMute":Z
    :goto_0
    add-int/lit8 v13, v10, -0x1

    #@14
    .local v13, "streamType":I
    :goto_1
    if-ltz v13, :cond_8

    #@16
    .line 2128
    move-object/from16 v0, p0

    #@18
    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    #@1b
    move-result v9

    #@1c
    .line 2129
    .local v9, "isMuted":Z
    if-eqz v11, :cond_2

    #@1e
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    #@23
    move-result v12

    #@24
    .line 2130
    .local v12, "shouldMute":Z
    :goto_2
    if-ne v9, v12, :cond_3

    #@26
    .line 2127
    :goto_3
    add-int/lit8 v13, v13, -0x1

    #@28
    goto :goto_1

    #@29
    .line 2125
    .end local v9    # "isMuted":Z
    .end local v11    # "ringerModeMute":Z
    .end local v12    # "shouldMute":Z
    .end local v13    # "streamType":I
    :cond_0
    const/4 v11, 0x1

    #@2a
    .restart local v11    # "ringerModeMute":Z
    goto :goto_0

    #@2b
    .line 2126
    .end local v11    # "ringerModeMute":Z
    :cond_1
    const/4 v11, 0x0

    #@2c
    .restart local v11    # "ringerModeMute":Z
    goto :goto_0

    #@2d
    .line 2129
    .restart local v9    # "isMuted":Z
    .restart local v13    # "streamType":I
    :cond_2
    const/4 v12, 0x0

    #@2e
    goto :goto_2

    #@2f
    .line 2131
    .restart local v12    # "shouldMute":Z
    :cond_3
    if-nez v12, :cond_7

    #@31
    .line 2134
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
    .line 2135
    const-class v16, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3c
    monitor-enter v16

    #@3d
    .line 2136
    :try_start_0
    move-object/from16 v0, p0

    #@3f
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@41
    aget-object v15, v1, v13

    #@43
    .line 2137
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
    .line 2138
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@55
    move-result v4

    #@56
    .line 2139
    .local v4, "device":I
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@5d
    move-result v14

    #@5e
    .line 2140
    .local v14, "value":I
    if-nez v14, :cond_4

    #@60
    .line 2141
    const-string/jumbo v1, "AudioService"

    #@63
    const/16 v2, 0xa

    #@65
    invoke-virtual {v15, v2, v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@68
    .line 2137
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@6a
    goto :goto_4

    #@6b
    .line 2145
    .end local v4    # "device":I
    .end local v14    # "value":I
    :cond_5
    move-object/from16 v0, p0

    #@6d
    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@70
    move-result v4

    #@71
    .line 2146
    .restart local v4    # "device":I
    move-object/from16 v0, p0

    #@73
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@75
    .line 2151
    move-object/from16 v0, p0

    #@77
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@79
    aget-object v6, v2, v13

    #@7b
    .line 2147
    const/4 v2, 0x1

    #@7c
    .line 2148
    const/4 v3, 0x2

    #@7d
    .line 2150
    const/4 v5, 0x0

    #@7e
    .line 2152
    const/16 v7, 0x1f4

    #@80
    .line 2146
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    monitor-exit v16

    #@84
    .line 2155
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
    .line 2156
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
    .line 2135
    :catchall_0
    move-exception v1

    #@9c
    monitor-exit v16

    #@9d
    throw v1

    #@9e
    .line 2159
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
    .line 2160
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
    .line 2119
    .end local v9    # "isMuted":Z
    .end local v12    # "shouldMute":Z
    :cond_8
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .locals 4
    .param p1, "skipStream"    # I

    #@0
    .prologue
    .line 3756
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v2

    #@3
    .line 3757
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
    .line 3758
    if-eq v0, p1, :cond_0

    #@b
    .line 3759
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
    .line 3757
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    :cond_1
    monitor-exit v2

    #@17
    .line 3755
    return-void

    #@18
    .line 3756
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
    .line 3059
    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    #@2
    if-eq p1, v1, :cond_0

    #@4
    .line 3060
    new-instance v0, Landroid/content/Intent;

    #@6
    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    #@9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 3061
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    #@f
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@12
    .line 3062
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    #@15
    .line 3063
    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    #@17
    .line 3062
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1a
    .line 3064
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@1d
    .line 3065
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    #@1f
    .line 3058
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
    .line 3297
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@5
    monitor-enter v9

    #@6
    .line 3298
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
    .line 3299
    const/4 v0, 0x3

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@13
    move-result v7

    #@14
    .line 3301
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 3302
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@1a
    .line 3303
    const/16 v1, 0xe

    #@1c
    .line 3304
    const/4 v2, 0x0

    #@1d
    .line 3305
    const/4 v3, 0x0

    #@1e
    .line 3306
    const/4 v4, 0x0

    #@1f
    .line 3308
    const v6, 0xea60

    #@22
    move-object v5, p1

    #@23
    .line 3302
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@26
    .line 3309
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
    .line 3310
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
    .line 3311
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@39
    if-le v8, v0, :cond_1

    #@3b
    .line 3313
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@3d
    add-int/2addr v0, v10

    #@3e
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@40
    .line 3314
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@42
    const v1, 0x44aa200

    #@45
    if-le v0, v1, :cond_0

    #@47
    .line 3315
    const/4 v0, 0x1

    #@48
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    #@4b
    .line 3316
    const/4 v0, 0x0

    #@4c
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@4e
    .line 3318
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
    .line 3296
    return-void

    #@53
    .line 3297
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
    .line 3330
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@3
    monitor-enter v10

    #@4
    .line 3331
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
    .line 3332
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
    .line 3333
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v0

    #@20
    .line 3334
    const v1, 0x10e0088

    #@23
    .line 3333
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@26
    move-result v0

    #@27
    mul-int/lit8 v0, v0, 0xa

    #@29
    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@2b
    .line 3336
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
    .line 3337
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a
    move-result-object v0

    #@3b
    .line 3338
    const v1, 0x1120079

    #@3e
    .line 3337
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@41
    move-result v9

    #@42
    .line 3341
    :goto_0
    const-string/jumbo v0, "audio.safemedia.bypass"

    #@45
    const/4 v1, 0x0

    #@46
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@49
    move-result v8

    #@4a
    .line 3346
    .local v8, "safeMediaVolumeBypass":Z
    if-eqz v9, :cond_1

    #@4c
    if-eqz v8, :cond_5

    #@4e
    .line 3361
    :cond_1
    const/4 v3, 0x1

    #@4f
    .line 3362
    .local v3, "persistedState":I
    const/4 v0, 0x1

    #@50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@56
    .line 3364
    :cond_2
    :goto_1
    iput v7, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    #@58
    .line 3365
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@5a
    .line 3366
    const/16 v1, 0x12

    #@5c
    .line 3367
    const/4 v2, 0x2

    #@5d
    .line 3369
    const/4 v4, 0x0

    #@5e
    .line 3370
    const/4 v5, 0x0

    #@5f
    .line 3371
    const/4 v6, 0x0

    #@60
    .line 3365
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeBypass":Z
    :cond_3
    monitor-exit v10

    #@64
    .line 3329
    return-void

    #@65
    .line 3336
    :cond_4
    const/4 v9, 0x1

    #@66
    .local v9, "safeMediaVolumeEnabled":Z
    goto :goto_0

    #@67
    .line 3347
    .end local v9    # "safeMediaVolumeEnabled":Z
    .restart local v8    # "safeMediaVolumeBypass":Z
    :cond_5
    const/4 v3, 0x3

    #@68
    .line 3351
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
    .line 3352
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@72
    if-nez v0, :cond_6

    #@74
    .line 3353
    const/4 v0, 0x3

    #@75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v0

    #@79
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@7b
    .line 3354
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7e
    goto :goto_1

    #@7f
    .line 3330
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
    .line 3357
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
    .line 6314
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
    .line 6315
    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@32
    monitor-enter v6

    #@33
    .line 6316
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
    .line 6317
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
    .line 6318
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
    .line 6320
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
    .line 6325
    return-void

    #@6e
    .line 6321
    :catch_0
    move-exception v0

    #@6f
    .line 6322
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
    .line 6323
    iget-object v8, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@80
    invoke-interface {v8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@83
    move-result-object v8

    #@84
    .line 6322
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
    .line 6315
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
    .line 6313
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    #@0
    .prologue
    .line 4785
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.media.AUDIO_BECOMING_NOISY"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    #@b
    .line 4784
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 15
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 4851
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4852
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
    .line 4854
    :cond_0
    if-nez p1, :cond_1

    #@2f
    .line 4855
    return-void

    #@30
    .line 4857
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@33
    move-result-object v8

    #@34
    .line 4858
    .local v8, "address":Ljava/lang/String;
    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_2

    #@3a
    .line 4859
    const-string/jumbo v8, ""

    #@3d
    .line 4862
    :cond_2
    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@3f
    monitor-enter v13

    #@40
    .line 4864
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 4863
    const/16 v2, 0x80

    #@46
    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v11

    #@4a
    .line 4865
    .local v11, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@4c
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v9

    #@50
    check-cast v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@52
    .line 4866
    .local v9, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v9, :cond_6

    #@54
    const/4 v10, 0x1

    #@55
    .line 4868
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
    .line 4869
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_7

    #@62
    .line 4870
    if-nez p2, :cond_3

    #@64
    .line 4874
    const/16 v1, 0x1f40

    #@66
    invoke-direct {p0, v8, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    #@69
    .line 4880
    :cond_3
    :goto_1
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@6b
    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    .line 4881
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@6e
    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@70
    if-eqz v1, :cond_4

    #@72
    .line 4882
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@74
    const/4 v2, 0x0

    #@75
    iput-object v2, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@77
    .line 4883
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@79
    const/16 v2, 0xc

    #@7b
    .line 4884
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
    .line 4883
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
    .line 4849
    return-void

    #@86
    .line 4866
    .end local v10    # "isConnected":Z
    :cond_6
    const/4 v10, 0x0

    #@87
    .restart local v10    # "isConnected":Z
    goto :goto_0

    #@88
    .line 4878
    :cond_7
    :try_start_3
    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8b
    goto :goto_1

    #@8c
    .line 4862
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
    .line 4880
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
    .line 4887
    :cond_8
    if-nez v10, :cond_5

    #@94
    const/4 v1, 0x2

    #@95
    move/from16 v0, p2

    #@97
    if-ne v0, v1, :cond_5

    #@99
    .line 4888
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_b

    #@9f
    .line 4890
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    #@a2
    .line 4891
    iput-object v8, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    #@a4
    .line 4900
    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-direct {p0, v8, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    .line 4901
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@ad
    monitor-enter v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ae
    .line 4902
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    #@b1
    move-result-object v12

    #@b2
    .line 4903
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
    .line 4904
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@be
    iput-object v12, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@c0
    .line 4905
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@c2
    const/16 v2, 0xc

    #@c4
    .line 4906
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
    .line 4905
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
    .line 4895
    .end local v12    # "name":Ljava/lang/String;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    #@d1
    move-result v1

    #@d2
    if-eqz v1, :cond_9

    #@d4
    .line 4896
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    #@d7
    .line 4897
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    #@d9
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    #@dc
    goto :goto_3

    #@dd
    .line 4901
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
    .line 4915
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 4916
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
    .line 4918
    :cond_0
    if-nez p1, :cond_1

    #@2c
    .line 4919
    return-void

    #@2d
    .line 4921
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 4922
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_2

    #@37
    .line 4923
    const-string/jumbo v0, ""

    #@3a
    .line 4926
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@3c
    monitor-enter v5

    #@3d
    .line 4927
    const/high16 v4, -0x7ffe0000

    #@3f
    :try_start_0
    invoke-direct {p0, v4, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 4928
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@4b
    .line 4929
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_4

    #@4d
    const/4 v2, 0x1

    #@4e
    .line 4931
    .local v2, "isConnected":Z
    :goto_0
    if-eqz v2, :cond_5

    #@50
    if-eq p2, v7, :cond_5

    #@52
    .line 4932
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    :cond_3
    :goto_1
    monitor-exit v5

    #@56
    .line 4913
    return-void

    #@57
    .line 4929
    .end local v2    # "isConnected":Z
    :cond_4
    const/4 v2, 0x0

    #@58
    .restart local v2    # "isConnected":Z
    goto :goto_0

    #@59
    .line 4933
    :cond_5
    if-nez v2, :cond_3

    #@5b
    if-ne p2, v7, :cond_3

    #@5d
    .line 4934
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    goto :goto_1

    #@61
    .line 4926
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
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1500
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
    .line 1501
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    #@c
    .line 1503
    and-int/lit8 v0, p3, 0x2

    #@e
    if-nez v0, :cond_0

    #@10
    .line 1504
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    #@13
    move-result v0

    #@14
    if-ne v1, v0, :cond_1

    #@16
    .line 1505
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    #@19
    move-result v0

    #@1a
    .line 1506
    const-string/jumbo v2, "AudioService.onSetStreamVolume"

    #@1d
    .line 1505
    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    #@20
    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@22
    aget-object v0, v0, v1

    #@24
    if-nez p2, :cond_2

    #@26
    const/4 v4, 0x1

    #@27
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@2a
    .line 1499
    return-void
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
    .line 5097
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 5098
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
    .line 5099
    const-string/jumbo v4, " state:"

    #@23
    .line 5098
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 5099
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 5098
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 5100
    const-string/jumbo v4, " address:"

    #@32
    .line 5098
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 5101
    const-string/jumbo v4, " deviceName:"

    #@3d
    .line 5098
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 5102
    const-string/jumbo v4, " caller: "

    #@48
    .line 5098
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 5102
    const-string/jumbo v4, ");"

    #@53
    .line 5098
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
    .line 5105
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@60
    monitor-enter v8

    #@61
    .line 5106
    if-nez p2, :cond_2

    #@63
    if-eq p1, v5, :cond_1

    #@65
    .line 5107
    if-ne p1, v6, :cond_3

    #@67
    .line 5109
    :cond_1
    :goto_0
    const/4 v2, 0x1

    #@68
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    #@6b
    .line 5111
    :cond_2
    and-int/lit16 v2, p1, -0x6001

    #@6d
    if-eqz v2, :cond_4

    #@6f
    .line 5112
    const/high16 v2, -0x80000000

    #@71
    and-int/2addr v2, p1

    #@72
    if-eqz v2, :cond_6

    #@74
    .line 5113
    const v2, 0x7fffe7ff

    #@77
    and-int/2addr v2, p1

    #@78
    if-nez v2, :cond_5

    #@7a
    const/4 v7, 0x1

    #@7b
    .line 5114
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
    .line 5116
    return-void

    #@85
    .line 5108
    .end local v7    # "isUsb":Z
    :cond_3
    const/high16 v2, 0x20000

    #@87
    if-ne p1, v2, :cond_2

    #@89
    goto :goto_0

    #@8a
    .line 5111
    :cond_4
    const/4 v7, 0x1

    #@8b
    .restart local v7    # "isUsb":Z
    goto :goto_1

    #@8c
    .line 5113
    .end local v7    # "isUsb":Z
    :cond_5
    const/4 v7, 0x0

    #@8d
    .restart local v7    # "isUsb":Z
    goto :goto_1

    #@8e
    .line 5112
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
    .line 5114
    goto :goto_2

    #@92
    .line 5118
    :cond_8
    if-eqz p2, :cond_10

    #@94
    .line 5119
    if-eq p1, v5, :cond_9

    #@96
    .line 5120
    if-ne p1, v6, :cond_f

    #@98
    .line 5122
    :cond_9
    :goto_3
    const/4 v0, 0x0

    #@99
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    #@9c
    .line 5124
    :cond_a
    and-int/lit8 v0, p1, 0xc

    #@9e
    if-eqz v0, :cond_b

    #@a0
    .line 5125
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@a2
    .line 5126
    const/16 v1, 0xe

    #@a4
    .line 5127
    const/4 v2, 0x0

    #@a5
    .line 5128
    const/4 v3, 0x0

    #@a6
    .line 5129
    const/4 v4, 0x0

    #@a7
    .line 5131
    const v6, 0xea60

    #@aa
    move-object v5, p5

    #@ab
    .line 5125
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@ae
    .line 5134
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
    .line 5135
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@ba
    or-int/lit16 v0, v0, 0x400

    #@bc
    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@be
    .line 5136
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    #@c1
    .line 5137
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@c3
    if-eqz v0, :cond_d

    #@c5
    .line 5138
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@c7
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@c8
    .line 5139
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@ca
    if-eqz v0, :cond_c

    #@cc
    .line 5140
    const/4 v0, 0x0

    #@cd
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    #@cf
    .line 5141
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
    .line 5155
    :cond_d
    :goto_4
    if-nez v7, :cond_e

    #@d9
    const v0, -0x7ffffff0

    #@dc
    if-eq p1, v0, :cond_e

    #@de
    .line 5156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@e1
    :cond_e
    monitor-exit v8

    #@e2
    .line 5096
    return-void

    #@e3
    .line 5121
    :cond_f
    const/high16 v0, 0x20000

    #@e5
    if-ne p1, v0, :cond_a

    #@e7
    goto :goto_3

    #@e8
    .line 5138
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
    .line 5105
    .end local v7    # "isUsb":Z
    :catchall_1
    move-exception v0

    #@ec
    monitor-exit v8

    #@ed
    throw v0

    #@ee
    .line 5147
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
    .line 5148
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@fa
    if-eqz v0, :cond_d

    #@fc
    .line 5149
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@fe
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ff
    .line 5150
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
    .line 5149
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
    .line 1404
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    aget-object v2, v3, p1

    #@4
    .line 1405
    .local v2, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v3, 0x0

    #@5
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    #@8
    .line 1407
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@b
    move-result v0

    #@c
    .line 1408
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@e
    aget-object v3, v3, p1

    #@10
    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@13
    move-result v1

    #@14
    .line 1409
    .local v1, "index":I
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    #@17
    .line 1403
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
    .line 3681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 3684
    .local v8, "ident":J
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@9
    .line 3685
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 3686
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
    .line 3680
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    #@0
    .prologue
    .line 5955
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v1

    #@4
    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    #@7
    move-result v0

    #@8
    .line 5956
    .local v0, "status":I
    if-eqz v0, :cond_0

    #@a
    .line 5957
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
    .line 5953
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
    .line 2615
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    #@5
    .line 2616
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    #@8
    .line 2619
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@b
    move-result v0

    #@c
    .line 2620
    .local v0, "numStreamTypes":I
    const/4 v2, 0x0

    #@d
    .local v2, "streamType":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@f
    .line 2621
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@11
    aget-object v1, v3, v2

    #@13
    .line 2623
    .local v1, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    #@15
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@17
    aget v3, v3, v2

    #@19
    if-ne v3, v8, :cond_0

    #@1b
    .line 2620
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2627
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    #@21
    .line 2628
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@23
    monitor-enter v4

    #@24
    .line 2630
    :try_start_0
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_3

    #@2a
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_1

    #@30
    .line 2631
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@38
    .line 2630
    if-eqz v3, :cond_3

    #@3a
    .line 2632
    :cond_2
    const/4 v3, 0x0

    #@3b
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-set0(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    :cond_3
    monitor-exit v4

    #@3f
    goto :goto_1

    #@40
    .line 2628
    :catchall_0
    move-exception v3

    #@41
    monitor-exit v4

    #@42
    throw v3

    #@43
    .line 2639
    .end local v1    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@46
    move-result v3

    #@47
    invoke-direct {p0, v3, v5}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@4a
    .line 2641
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    #@4d
    .line 2642
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    #@50
    .line 2643
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    #@53
    .line 2645
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@55
    monitor-enter v4

    #@56
    .line 2646
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@58
    .line 2647
    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    #@5b
    const/4 v6, 0x0

    #@5c
    const/4 v7, -0x2

    #@5d
    .line 2646
    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@60
    move-result v3

    #@61
    .line 2648
    const/4 v5, 0x0

    #@62
    const v6, 0x44aa200

    #@65
    .line 2646
    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    #@68
    move-result v3

    #@69
    iput v3, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@6b
    .line 2649
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@6d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@70
    move-result v3

    #@71
    if-ne v3, v8, :cond_5

    #@73
    .line 2650
    const-string/jumbo v3, "AudioService"

    #@76
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@79
    :cond_5
    monitor-exit v4

    #@7a
    .line 2613
    return-void

    #@7b
    .line 2645
    :catchall_1
    move-exception v3

    #@7c
    monitor-exit v4

    #@7d
    throw v3
.end method

.method private readCameraSoundForced()Z
    .locals 2

    #@0
    .prologue
    .line 5480
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
    .line 5481
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    .line 5482
    const v1, 0x112007b

    #@13
    .line 5481
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v0

    #@17
    .line 5480
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
    .line 1004
    const-string/jumbo v2, "dock_audio_media_enabled"

    #@7
    .line 1003
    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v2

    #@b
    if-ne v2, v0, :cond_0

    #@d
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    #@f
    .line 1006
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@11
    .line 1010
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    #@13
    if-eqz v2, :cond_1

    #@15
    move v4, v1

    #@16
    .line 1008
    :goto_1
    const/4 v2, 0x2

    #@17
    .line 1009
    const/4 v3, 0x3

    #@18
    .line 1012
    const/4 v5, 0x0

    #@19
    .line 1006
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1c
    .line 1001
    return-void

    #@1d
    :cond_0
    move v0, v6

    #@1e
    .line 1003
    goto :goto_0

    #@1f
    :cond_1
    move v4, v6

    #@20
    .line 1011
    goto :goto_1
.end method

.method private readPersistedSettings()V
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 1066
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@5
    .line 1070
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v5, "mode_ringer"

    #@8
    .line 1069
    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v2

    #@c
    .line 1071
    .local v2, "ringerModeFromSettings":I
    move v1, v2

    #@d
    .line 1074
    .local v1, "ringerMode":I
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_0

    #@13
    .line 1075
    const/4 v1, 0x2

    #@14
    .line 1077
    :cond_0
    if-ne v1, v9, :cond_1

    #@16
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@18
    if-eqz v5, :cond_6

    #@1a
    .line 1080
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_2

    #@1c
    .line 1081
    const-string/jumbo v5, "mode_ringer"

    #@1f
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@22
    .line 1083
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@24
    if-nez v5, :cond_3

    #@26
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_4

    #@2c
    .line 1084
    :cond_3
    const/4 v1, 0x2

    #@2d
    .line 1086
    :cond_4
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2f
    monitor-enter v6

    #@30
    .line 1087
    :try_start_0
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@32
    .line 1088
    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@34
    const/4 v7, -0x1

    #@35
    if-ne v5, v7, :cond_5

    #@37
    .line 1089
    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@39
    iput v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@3b
    .line 1097
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@3d
    if-eqz v5, :cond_7

    #@3f
    move v5, v3

    #@40
    .line 1095
    :goto_1
    const/4 v7, 0x0

    #@41
    .line 1096
    const/4 v8, 0x1

    #@42
    .line 1095
    invoke-static {v7, v8, v5}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    #@45
    move-result v5

    #@46
    iput v5, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@48
    .line 1099
    iget v5, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@4a
    .line 1101
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@4c
    if-eqz v7, :cond_8

    #@4e
    .line 1100
    :goto_2
    const/4 v7, 0x0

    #@4f
    .line 1099
    invoke-static {v5, v7, v3}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    #@52
    move-result v3

    #@53
    iput v3, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@55
    .line 1104
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    #@58
    .line 1105
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    #@5b
    .line 1106
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    monitor-exit v6

    #@5f
    .line 1110
    const-string/jumbo v3, "mute_streams_affected"

    #@62
    const/16 v5, 0x2e

    #@64
    .line 1111
    const/4 v6, -0x2

    #@65
    .line 1109
    invoke-static {v0, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@68
    move-result v3

    #@69
    iput v3, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    #@6b
    .line 1113
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    #@6e
    .line 1118
    const-string/jumbo v3, "android.media.RINGER_MODE_CHANGED"

    #@71
    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    #@73
    invoke-direct {p0, v3, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    #@76
    .line 1119
    const-string/jumbo v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    #@79
    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@7b
    invoke-direct {p0, v3, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    #@7e
    .line 1122
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    #@81
    .line 1123
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    #@84
    .line 1126
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@86
    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    #@89
    .line 1065
    return-void

    #@8a
    .line 1078
    :cond_6
    const/4 v1, 0x0

    #@8b
    goto :goto_0

    #@8c
    :cond_7
    move v5, v4

    #@8d
    .line 1098
    goto :goto_1

    #@8e
    :cond_8
    move v3, v4

    #@8f
    .line 1102
    goto :goto_2

    #@90
    .line 1086
    :catchall_0
    move-exception v3

    #@91
    monitor-exit v6

    #@92
    throw v3
.end method

.method private readUserRestrictions()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 1130
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    #@6
    move-result v0

    #@7
    .line 1133
    .local v0, "currentUser":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@9
    .line 1134
    const-string/jumbo v4, "no_adjust_volume"

    #@c
    .line 1133
    invoke-virtual {v3, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    #@f
    move-result v1

    #@10
    .line 1135
    .local v1, "masterMute":Z
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 1136
    const/4 v1, 0x0

    #@15
    .line 1137
    .local v1, "masterMute":Z
    const/high16 v3, 0x3f800000    # 1.0f

    #@17
    invoke-static {v3}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    #@1a
    .line 1139
    .end local v1    # "masterMute":Z
    :cond_0
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 1140
    const-string/jumbo v3, "AudioService"

    #@21
    const-string/jumbo v4, "Master mute %s, user=%d"

    #@24
    new-array v5, v9, [Ljava/lang/Object;

    #@26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@29
    move-result-object v6

    #@2a
    aput-object v6, v5, v7

    #@2c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v6

    #@30
    aput-object v6, v5, v8

    #@32
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 1142
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    #@3c
    .line 1143
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    #@3f
    .line 1144
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    #@42
    .line 1146
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@44
    .line 1147
    const-string/jumbo v4, "no_unmute_microphone"

    #@47
    .line 1146
    invoke-virtual {v3, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    #@4a
    move-result v2

    #@4b
    .line 1148
    .local v2, "microphoneMute":Z
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@4d
    if-eqz v3, :cond_2

    #@4f
    .line 1149
    const-string/jumbo v3, "AudioService"

    #@52
    const-string/jumbo v4, "Mic mute %s, user=%d"

    #@55
    new-array v5, v9, [Ljava/lang/Object;

    #@57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5a
    move-result-object v6

    #@5b
    aput-object v6, v5, v7

    #@5d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v6

    #@61
    aput-object v6, v5, v8

    #@63
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 1151
    :cond_2
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    #@6d
    .line 1129
    return-void
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    #@0
    .prologue
    .line 1155
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
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3044
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@3
    monitor-enter v1

    #@4
    .line 3045
    const/4 v0, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    #@9
    .line 3046
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    #@c
    .line 3047
    const/4 v0, 0x0

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 3049
    const-string/jumbo v0, "A2dpSuspended=false"

    #@14
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@17
    .line 3050
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(Z)V

    #@1a
    .line 3043
    return-void

    #@1b
    .line 3044
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 5943
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 5949
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 5944
    :pswitch_0
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    #@c
    return-object v0

    #@d
    .line 5945
    :pswitch_1
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_DISABLED"

    #@10
    return-object v0

    #@11
    .line 5946
    :pswitch_2
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    #@14
    return-object v0

    #@15
    .line 5947
    :pswitch_3
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    #@18
    return-object v0

    #@19
    .line 5943
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
    .line 3326
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
    .line 3325
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1672
    const/high16 v2, 0x4000000

    #@2
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5
    .line 1673
    const/high16 v2, 0x10000000

    #@7
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a
    .line 1674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 1676
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
    .line 1678
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 1671
    return-void

    #@19
    .line 1677
    :catchall_0
    move-exception v2

    #@1a
    .line 1678
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1677
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
    .line 5038
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 5039
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
    .line 5040
    const-string/jumbo v4, " state:0x"

    #@1e
    .line 5039
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 5040
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    .line 5039
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 5040
    const-string/jumbo v4, " address:"

    #@2d
    .line 5039
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
    .line 5041
    const-string/jumbo v4, " name:"

    #@3a
    .line 5039
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
    .line 5041
    const-string/jumbo v4, ");"

    #@47
    .line 5039
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
    .line 5043
    :cond_0
    new-instance v12, Landroid/content/Intent;

    #@54
    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    #@57
    .line 5045
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    #@5a
    move/from16 v0, p2

    #@5c
    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5f
    .line 5046
    const-string/jumbo v2, "address"

    #@62
    move-object/from16 v0, p3

    #@64
    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@67
    .line 5047
    const-string/jumbo v2, "portName"

    #@6a
    move-object/from16 v0, p4

    #@6c
    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6f
    .line 5049
    const/high16 v2, 0x40000000    # 2.0f

    #@71
    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@74
    .line 5051
    const/4 v9, 0x0

    #@75
    .line 5053
    .local v9, "connType":I
    const/4 v2, 0x4

    #@76
    move/from16 v0, p1

    #@78
    if-ne v0, v2, :cond_3

    #@7a
    .line 5054
    const/4 v9, 0x1

    #@7b
    .line 5055
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    #@7e
    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@81
    .line 5056
    const-string/jumbo v2, "microphone"

    #@84
    const/4 v3, 0x1

    #@85
    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@88
    .line 5071
    :cond_1
    :goto_0
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@8a
    monitor-enter v14

    #@8b
    .line 5072
    if-eqz v9, :cond_2

    #@8d
    .line 5073
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@8f
    iget v13, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    #@91
    .line 5074
    .local v13, "newConn":I
    if-eqz p2, :cond_8

    #@93
    .line 5075
    or-int/2addr v13, v9

    #@94
    .line 5079
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@96
    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    #@98
    if-eq v13, v2, :cond_2

    #@9a
    .line 5080
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@9c
    iput v13, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    #@9e
    .line 5081
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@a0
    const/16 v3, 0xc

    #@a2
    .line 5082
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
    .line 5081
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@aa
    .end local v13    # "newConn":I
    :cond_2
    monitor-exit v14

    #@ab
    .line 5087
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ae
    move-result-wide v10

    #@af
    .line 5089
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
    .line 5091
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b7
    .line 5037
    return-void

    #@b8
    .line 5057
    .end local v10    # "ident":J
    :cond_3
    const/16 v2, 0x8

    #@ba
    move/from16 v0, p1

    #@bc
    if-eq v0, v2, :cond_4

    #@be
    .line 5058
    const/high16 v2, 0x20000

    #@c0
    move/from16 v0, p1

    #@c2
    if-ne v0, v2, :cond_5

    #@c4
    .line 5060
    :cond_4
    const/4 v9, 0x2

    #@c5
    .line 5061
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    #@c8
    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@cb
    .line 5062
    const-string/jumbo v2, "microphone"

    #@ce
    const/4 v3, 0x0

    #@cf
    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@d2
    goto :goto_0

    #@d3
    .line 5063
    :cond_5
    const/16 v2, 0x400

    #@d5
    move/from16 v0, p1

    #@d7
    if-eq v0, v2, :cond_6

    #@d9
    .line 5064
    const/high16 v2, 0x40000

    #@db
    move/from16 v0, p1

    #@dd
    if-ne v0, v2, :cond_7

    #@df
    .line 5065
    :cond_6
    const/16 v9, 0x8

    #@e1
    .line 5066
    move/from16 v0, p2

    #@e3
    invoke-direct {p0, v12, v0}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    #@e6
    goto :goto_0

    #@e7
    .line 5067
    :cond_7
    const/16 v2, 0x4000

    #@e9
    move/from16 v0, p1

    #@eb
    if-ne v0, v2, :cond_1

    #@ed
    .line 5068
    const/16 v9, 0x10

    #@ef
    goto :goto_0

    #@f0
    .line 5077
    .restart local v13    # "newConn":I
    :cond_8
    not-int v2, v9

    #@f1
    and-int/2addr v13, v2

    #@f2
    goto :goto_1

    #@f3
    .line 5071
    .end local v13    # "newConn":I
    :catchall_0
    move-exception v2

    #@f4
    monitor-exit v14

    #@f5
    throw v2

    #@f6
    .line 5090
    .restart local v10    # "ident":J
    :catchall_1
    move-exception v2

    #@f7
    .line 5091
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@fa
    .line 5090
    throw v2
.end method

.method private sendEncodedSurroundMode(I)V
    .locals 7
    .param p1, "encodedSurroundMode"    # I

    #@0
    .prologue
    .line 1038
    const/16 v4, 0xf

    #@2
    .line 1039
    .local v4, "forceSetting":I
    packed-switch p1, :pswitch_data_0

    #@5
    .line 1050
    const-string/jumbo v0, "AudioService"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "updateSurroundSoundSettings: illegal value "

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
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1054
    :goto_0
    const/16 v0, 0xf

    #@21
    if-eq v4, v0, :cond_0

    #@23
    .line 1055
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@25
    .line 1056
    const/16 v1, 0x8

    #@27
    .line 1057
    const/4 v2, 0x2

    #@28
    .line 1058
    const/4 v3, 0x6

    #@29
    .line 1060
    const/4 v5, 0x0

    #@2a
    .line 1061
    const/4 v6, 0x0

    #@2b
    .line 1055
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@2e
    .line 1035
    :cond_0
    return-void

    #@2f
    .line 1041
    :pswitch_0
    const/4 v4, 0x0

    #@30
    .line 1042
    goto :goto_0

    #@31
    .line 1044
    :pswitch_1
    const/16 v4, 0xd

    #@33
    .line 1045
    goto :goto_0

    #@34
    .line 1047
    :pswitch_2
    const/16 v4, 0xe

    #@36
    .line 1048
    goto :goto_0

    #@37
    .line 1039
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 1030
    const-string/jumbo v1, "encoded_surround_output"

    #@3
    .line 1031
    const/4 v2, 0x0

    #@4
    .line 1029
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 1032
    .local v0, "encodedSurroundMode":I
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(I)V

    #@b
    .line 1027
    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@2
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    #@9
    .line 1732
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    #@c
    .line 1730
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
    .line 3692
    if-nez p2, :cond_3

    #@2
    .line 3693
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@5
    .line 3697
    :cond_0
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    #@7
    monitor-enter v3

    #@8
    .line 3698
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v4

    #@c
    int-to-long v6, p6

    #@d
    add-long v0, v4, v6

    #@f
    .line 3699
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@16
    .line 3700
    const/16 v2, 0x64

    #@18
    if-eq p1, v2, :cond_1

    #@1a
    .line 3701
    const/16 v2, 0x65

    #@1c
    if-ne p1, v2, :cond_4

    #@1e
    .line 3703
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
    .line 3690
    return-void

    #@26
    .line 3694
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
    .line 3695
    return-void

    #@30
    .line 3702
    .restart local v0    # "time":J
    :cond_4
    const/16 v2, 0x66

    #@32
    if-ne p1, v2, :cond_2

    #@34
    goto :goto_0

    #@35
    .line 3697
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
    .line 1683
    const/high16 v2, 0x10000000

    #@2
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5
    .line 1684
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 1686
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
    .line 1688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 1682
    return-void

    #@14
    .line 1687
    :catchall_0
    move-exception v2

    #@15
    .line 1688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 1687
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
    .line 1707
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@2
    aget p1, v0, p1

    #@4
    .line 1709
    const/4 v0, 0x3

    #@5
    if-ne p1, v0, :cond_0

    #@7
    .line 1710
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    #@a
    move-result p4

    #@b
    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@d
    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    #@10
    .line 1706
    return-void
.end method

.method private setForceUseInt_SyncDevices(II)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "config"    # I

    #@0
    .prologue
    .line 5600
    packed-switch p1, :pswitch_data_0

    #@3
    .line 5618
    :goto_0
    :pswitch_0
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@6
    .line 5599
    return-void

    #@7
    .line 5602
    :pswitch_1
    const/16 v0, 0xa

    #@9
    if-ne p2, v0, :cond_0

    #@b
    .line 5603
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@d
    and-int/lit16 v0, v0, -0x381

    #@f
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@11
    goto :goto_0

    #@12
    .line 5605
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@14
    or-int/lit16 v0, v0, 0x380

    #@16
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@18
    goto :goto_0

    #@19
    .line 5609
    :pswitch_2
    const/16 v0, 0x8

    #@1b
    if-ne p2, v0, :cond_1

    #@1d
    .line 5610
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@1f
    or-int/lit16 v0, v0, 0x800

    #@21
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@23
    goto :goto_0

    #@24
    .line 5612
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@26
    and-int/lit16 v0, v0, -0x801

    #@28
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    #@2a
    goto :goto_0

    #@2b
    .line 5600
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
    .locals 2
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1902
    const/16 v0, 0x3e8

    #@2
    if-ne p4, v0, :cond_0

    #@4
    .line 1903
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v0

    #@8
    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@b
    move-result p4

    #@c
    .line 1906
    :cond_0
    if-nez p1, :cond_1

    #@e
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@10
    const/16 v1, 0x21

    #@12
    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1908
    return-void

    #@19
    .line 1910
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1c
    move-result v0

    #@1d
    if-eq p5, v0, :cond_2

    #@1f
    .line 1911
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@21
    .line 1912
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@24
    .line 1911
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 1914
    return-void

    #@2b
    .line 1916
    :cond_2
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    #@2e
    .line 1899
    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1920
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1921
    const-string/jumbo v1, "AudioService"

    #@7
    const-string/jumbo v2, "Master mute %s, %d, user=%d"

    #@a
    const/4 v3, 0x3

    #@b
    new-array v3, v3, [Ljava/lang/Object;

    #@d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v4

    #@11
    const/4 v5, 0x0

    #@12
    aput-object v4, v3, v5

    #@14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v4

    #@18
    const/4 v5, 0x1

    #@19
    aput-object v4, v3, v5

    #@1b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v4

    #@1f
    const/4 v5, 0x2

    #@20
    aput-object v4, v3, v5

    #@22
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1923
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 1924
    return-void

    #@2e
    .line 1926
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    #@31
    move-result v1

    #@32
    if-ne v1, p3, :cond_2

    #@34
    .line 1927
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    #@37
    move-result v1

    #@38
    if-eq p1, v1, :cond_2

    #@3a
    .line 1928
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    #@3d
    .line 1929
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    #@40
    .line 1930
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    #@43
    .line 1932
    new-instance v0, Landroid/content/Intent;

    #@45
    const-string/jumbo v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    #@48
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4b
    .line 1933
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    #@4e
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@51
    .line 1934
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    #@54
    .line 1919
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2019
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2020
    const-string/jumbo v0, "AudioService"

    #@7
    const-string/jumbo v1, "Mic mute %s, user=%d"

    #@a
    const/4 v2, 0x2

    #@b
    new-array v2, v2, [Ljava/lang/Object;

    #@d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v3

    #@11
    const/4 v4, 0x0

    #@12
    aput-object v3, v2, v4

    #@14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x1

    #@19
    aput-object v3, v2, v4

    #@1b
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2024
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    #@25
    move-result v0

    #@26
    if-ne v0, p2, :cond_1

    #@28
    .line 2025
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    #@2b
    .line 2018
    :cond_1
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 15
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2310
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
    .line 2311
    const-string/jumbo v6, ")"

    #@36
    .line 2310
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
    .line 2312
    :cond_0
    const/4 v12, 0x0

    #@42
    .line 2313
    .local v12, "newModeOwnerPid":I
    if-nez p2, :cond_1

    #@44
    .line 2314
    const-string/jumbo v2, "AudioService"

    #@47
    const-string/jumbo v3, "setModeInt() called with null binder"

    #@4a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 2315
    return v12

    #@4e
    .line 2318
    :cond_1
    const/4 v10, 0x0

    #@4f
    .line 2319
    .local v10, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v11

    #@55
    .line 2320
    .local v11, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_3

    #@5b
    .line 2321
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v9

    #@5f
    check-cast v9, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    #@61
    .line 2322
    .local v9, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    #@64
    move-result v2

    #@65
    move/from16 v0, p3

    #@67
    if-ne v2, v0, :cond_2

    #@69
    .line 2323
    move-object v10, v9

    #@6a
    .line 2325
    .local v10, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    #@6d
    .line 2326
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    #@70
    move-result-object v2

    #@71
    const/4 v3, 0x0

    #@72
    invoke-interface {v2, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@75
    .line 2330
    .end local v9    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_3
    const/4 v13, 0x0

    #@76
    .line 2332
    .local v13, "status":I
    :cond_4
    if-nez p1, :cond_a

    #@78
    .line 2334
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@7d
    move-result v2

    #@7e
    if-nez v2, :cond_5

    #@80
    .line 2335
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
    .line 2336
    .restart local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    #@8c
    move-result-object p2

    #@8d
    .line 2337
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    #@90
    move-result p1

    #@91
    .line 2338
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    #@93
    if-eqz v2, :cond_5

    #@95
    .line 2339
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
    .line 2340
    invoke-static {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->-get0(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    #@b4
    move-result v6

    #@b5
    .line 2339
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
    .line 2361
    .end local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_5
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@c2
    move/from16 v0, p1

    #@c4
    if-eq v0, v2, :cond_f

    #@c6
    .line 2362
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    #@c9
    move-result v13

    #@ca
    .line 2363
    if-nez v13, :cond_c

    #@cc
    .line 2364
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
    .line 2365
    :cond_6
    move/from16 v0, p1

    #@ee
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@f0
    .line 2378
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
    .line 2380
    :cond_7
    if-nez v13, :cond_9

    #@fc
    .line 2381
    if-eqz p1, :cond_8

    #@fe
    .line 2382
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@100
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@103
    move-result v2

    #@104
    if-eqz v2, :cond_10

    #@106
    .line 2383
    const-string/jumbo v2, "AudioService"

    #@109
    const-string/jumbo v3, "setMode() different from MODE_NORMAL with empty mode client stack"

    #@10c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 2388
    :cond_8
    :goto_2
    const/high16 v2, -0x80000000

    #@111
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    #@114
    move-result v14

    #@115
    .line 2389
    .local v14, "streamType":I
    invoke-direct {p0, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@118
    move-result v5

    #@119
    .line 2390
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
    .line 2391
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
    .line 2393
    const/4 v2, 0x1

    #@131
    move-object/from16 v0, p4

    #@133
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    #@136
    .line 2395
    .end local v4    # "index":I
    .end local v5    # "device":I
    .end local v14    # "streamType":I
    :cond_9
    return v12

    #@137
    .line 2344
    :cond_a
    if-nez v10, :cond_b

    #@139
    .line 2345
    new-instance v10, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    #@13b
    move-object/from16 v0, p2

    #@13d
    move/from16 v1, p3

    #@13f
    invoke-direct {v10, p0, v0, v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    #@142
    .line 2349
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
    .line 2357
    :goto_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@14a
    const/4 v3, 0x0

    #@14b
    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@14e
    .line 2358
    move/from16 v0, p1

    #@150
    invoke-virtual {v10, v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    #@153
    goto/16 :goto_0

    #@155
    .line 2350
    :catch_0
    move-exception v8

    #@156
    .line 2352
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
    .line 2367
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_c
    if-eqz v10, :cond_d

    #@17c
    .line 2368
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@17e
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@181
    .line 2369
    const/4 v2, 0x0

    #@182
    move-object/from16 v0, p2

    #@184
    invoke-interface {v0, v10, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@187
    .line 2372
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
    .line 2373
    :cond_e
    const/16 p1, 0x0

    #@196
    goto/16 :goto_1

    #@198
    .line 2376
    :cond_f
    const/4 v13, 0x0

    #@199
    goto/16 :goto_1

    #@19b
    .line 2385
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
    .line 5565
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 5583
    const-string/jumbo v0, "AudioService"

    #@8
    const-string/jumbo v1, "Unknown orientation"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 5564
    :goto_0
    return-void

    #@f
    .line 5568
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    #@12
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@15
    goto :goto_0

    #@16
    .line 5572
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    #@19
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@1c
    goto :goto_0

    #@1d
    .line 5576
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    #@20
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@23
    goto :goto_0

    #@24
    .line 5580
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    #@27
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@2a
    goto :goto_0

    #@2b
    .line 5565
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
    .line 2070
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
    .line 2071
    :cond_0
    return-void

    #@c
    .line 2073
    :cond_1
    if-eqz p2, :cond_2

    #@e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_3

    #@14
    .line 2074
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
    .line 2076
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    #@31
    .line 2077
    if-ne p1, v2, :cond_4

    #@33
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@35
    if-eqz v0, :cond_7

    #@37
    .line 2080
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3a
    move-result-wide v10

    #@3b
    .line 2082
    .local v10, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@3d
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3e
    .line 2083
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@41
    move-result v4

    #@42
    .line 2084
    .local v4, "ringerModeInternal":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    #@45
    move-result v1

    #@46
    .line 2085
    .local v1, "ringerModeExternal":I
    if-eqz p3, :cond_8

    #@48
    .line 2086
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    #@4b
    .line 2087
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@4d
    if-eqz v0, :cond_5

    #@4f
    .line 2088
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@51
    .line 2089
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@53
    move v2, p1

    #@54
    move-object v3, p2

    #@55
    .line 2088
    invoke-interface/range {v0 .. v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    #@58
    move-result p1

    #@59
    .line 2091
    :cond_5
    if-eq p1, v4, :cond_6

    #@5b
    .line 2092
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
    .line 2106
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 2069
    return-void

    #@64
    .line 2078
    .end local v1    # "ringerModeExternal":I
    .end local v4    # "ringerModeInternal":I
    .end local v10    # "identity":J
    :cond_7
    const/4 p1, 0x0

    #@65
    goto :goto_0

    #@66
    .line 2095
    .restart local v1    # "ringerModeExternal":I
    .restart local v4    # "ringerModeInternal":I
    .restart local v10    # "identity":J
    :cond_8
    if-eq p1, v4, :cond_9

    #@68
    .line 2096
    const/4 v0, 0x1

    #@69
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@6c
    .line 2098
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@6e
    if-eqz v0, :cond_a

    #@70
    .line 2099
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@72
    .line 2100
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@74
    move v5, p1

    #@75
    move-object v6, p2

    #@76
    move v7, v1

    #@77
    .line 2099
    invoke-interface/range {v3 .. v8}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    #@7a
    move-result p1

    #@7b
    .line 2102
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7e
    goto :goto_1

    #@7f
    .line 2082
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
    .line 2105
    :catchall_1
    move-exception v0

    #@83
    .line 2106
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@86
    .line 2105
    throw v0
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    #@0
    .prologue
    .line 2111
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2112
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
    .line 2113
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 2116
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    #@f
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    #@12
    .line 2110
    return-void

    #@13
    .line 2111
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
    .line 2167
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2168
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    #@6
    if-eq v0, p1, :cond_2

    #@8
    const/4 v7, 0x1

    #@9
    .line 2169
    .local v7, "change":Z
    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 2172
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    #@f
    .line 2175
    if-eqz p2, :cond_0

    #@11
    .line 2176
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@13
    const/4 v1, 0x3

    #@14
    .line 2177
    const/4 v5, 0x0

    #@15
    const/16 v6, 0x1f4

    #@17
    move v3, v2

    #@18
    move v4, v2

    #@19
    .line 2176
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1c
    .line 2179
    :cond_0
    if-eqz v7, :cond_1

    #@1e
    .line 2181
    const-string/jumbo v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    #@21
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    #@24
    .line 2165
    :cond_1
    return-void

    #@25
    .line 2168
    .end local v7    # "change":Z
    :cond_2
    const/4 v7, 0x0

    #@26
    .restart local v7    # "change":Z
    goto :goto_0

    #@27
    .line 2167
    .end local v7    # "change":Z
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
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
    .line 5679
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@5
    monitor-enter v7

    #@6
    .line 5680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 5681
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 5682
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
    .line 5683
    const/4 v0, 0x3

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@27
    .line 5684
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :cond_0
    :goto_0
    monitor-exit v7

    #@2b
    .line 5678
    return-void

    #@2c
    .line 5685
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
    .line 5686
    const/4 v0, 0x2

    #@37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@3d
    .line 5687
    const/4 v0, 0x1

    #@3e
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@40
    .line 5688
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    #@43
    .line 5689
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@45
    .line 5690
    const/16 v1, 0xe

    #@47
    .line 5691
    const/4 v2, 0x0

    #@48
    .line 5692
    const/4 v3, 0x0

    #@49
    .line 5693
    const/4 v4, 0x0

    #@4a
    .line 5695
    const v6, 0xea60

    #@4d
    move-object v5, p2

    #@4e
    .line 5689
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 5679
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
    .line 1520
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1521
    return-void

    #@5
    .line 1524
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@8
    .line 1525
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@a
    aget v11, v2, p1

    #@c
    .line 1526
    .local v11, "streamTypeAlias":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@e
    aget-object v10, v2, v11

    #@10
    .line 1528
    .local v10, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@13
    move-result v7

    #@14
    .line 1533
    .local v7, "device":I
    and-int/lit16 v2, v7, 0x380

    #@16
    if-nez v2, :cond_1

    #@18
    .line 1534
    and-int/lit8 v2, p3, 0x40

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 1535
    return-void

    #@1d
    .line 1539
    :cond_1
    const/16 v2, 0x3e8

    #@1f
    move/from16 v0, p6

    #@21
    if-ne v0, v2, :cond_2

    #@23
    .line 1540
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
    .line 1542
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
    .line 1544
    return-void

    #@40
    .line 1547
    :cond_3
    move-object/from16 v0, p4

    #@42
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_4

    #@48
    .line 1548
    move/from16 v0, p3

    #@4a
    invoke-direct {p0, v11, p2, v0}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    #@4d
    move-result v2

    #@4e
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    #@51
    move-result v2

    #@52
    .line 1547
    if-eqz v2, :cond_4

    #@54
    .line 1549
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    #@56
    move-object/from16 v0, p4

    #@58
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_5

    #@5e
    .line 1553
    :cond_4
    move/from16 v0, p3

    #@60
    invoke-direct {p0, v11, v0}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    #@63
    move-result v2

    #@64
    if-nez v2, :cond_6

    #@66
    .line 1554
    return-void

    #@67
    .line 1550
    :cond_5
    new-instance v2, Ljava/lang/SecurityException;

    #@69
    const-string/jumbo v3, "Not allowed to change Do Not Disturb state"

    #@6c
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v2

    #@70
    .line 1557
    :cond_6
    iget-object v12, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@72
    monitor-enter v12

    #@73
    .line 1559
    const/4 v2, 0x0

    #@74
    :try_start_0
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@76
    .line 1561
    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@79
    move-result v9

    #@7a
    .line 1563
    .local v9, "oldIndex":I
    mul-int/lit8 v2, p2, 0xa

    #@7c
    invoke-direct {p0, v2, p1, v11}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    #@7f
    move-result p2

    #@80
    .line 1565
    const/4 v2, 0x3

    #@81
    if-ne v11, v2, :cond_8

    #@83
    .line 1566
    and-int/lit16 v2, v7, 0x380

    #@85
    if-eqz v2, :cond_8

    #@87
    .line 1567
    and-int/lit8 v2, p3, 0x40

    #@89
    if-nez v2, :cond_8

    #@8b
    .line 1568
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@8d
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8e
    .line 1569
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@90
    if-eqz v2, :cond_7

    #@92
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@94
    if-eqz v2, :cond_7

    #@96
    .line 1570
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    #@98
    div-int/lit8 v4, p2, 0xa

    #@9a
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    :cond_7
    :try_start_2
    monitor-exit v3

    #@9e
    .line 1575
    :cond_8
    const/4 v2, 0x3

    #@9f
    if-ne v11, v2, :cond_9

    #@a1
    .line 1576
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    #@a4
    move-result v2

    #@a5
    move/from16 v0, p3

    #@a7
    invoke-direct {p0, v9, p2, v2, v0}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    #@aa
    .line 1579
    :cond_9
    and-int/lit8 p3, p3, -0x21

    #@ac
    .line 1580
    const/4 v2, 0x3

    #@ad
    if-ne v11, v2, :cond_a

    #@af
    .line 1581
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@b1
    and-int/2addr v2, v7

    #@b2
    if-eqz v2, :cond_a

    #@b4
    .line 1582
    or-int/lit8 p3, p3, 0x20

    #@b6
    .line 1585
    if-eqz p2, :cond_a

    #@b8
    .line 1586
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@ba
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@bd
    move-result v2

    #@be
    const/4 v3, 0x3

    #@bf
    if-ne v2, v3, :cond_b

    #@c1
    .line 1587
    and-int/lit8 v2, v7, 0xc

    #@c3
    if-eqz v2, :cond_b

    #@c5
    .line 1588
    iget p2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@c7
    .line 1595
    :cond_a
    :goto_0
    invoke-direct {p0, v11, p2, v7}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    #@ca
    move-result v2

    #@cb
    if-nez v2, :cond_c

    #@cd
    .line 1596
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@cf
    move/from16 v0, p3

    #@d1
    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    #@d4
    .line 1597
    new-instance v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@d6
    move-object v3, p0

    #@d7
    move v4, p1

    #@d8
    move v5, p2

    #@d9
    move/from16 v6, p3

    #@db
    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    #@de
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e0
    :goto_1
    monitor-exit v12

    #@e1
    .line 1604
    move/from16 v0, p3

    #@e3
    invoke-direct {p0, p1, v9, p2, v0}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    #@e6
    .line 1519
    return-void

    #@e7
    .line 1568
    :catchall_0
    move-exception v2

    #@e8
    :try_start_3
    monitor-exit v3

    #@e9
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ea
    .line 1557
    .end local v9    # "oldIndex":I
    :catchall_1
    move-exception v2

    #@eb
    monitor-exit v12

    #@ec
    throw v2

    #@ed
    .line 1590
    .restart local v9    # "oldIndex":I
    :cond_b
    :try_start_4
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@f0
    move-result p2

    #@f1
    goto :goto_0

    #@f2
    :cond_c
    move-object v3, p0

    #@f3
    move v4, p1

    #@f4
    move v5, p2

    #@f5
    move/from16 v6, p3

    #@f7
    move-object/from16 v8, p5

    #@f9
    .line 1600
    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    #@fc
    .line 1601
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@fe
    aget-object v2, v2, p1

    #@100
    invoke-virtual {v2, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@103
    move-result p2

    #@104
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
    .line 1758
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    aget-object v5, v0, p1

    #@5
    .line 1760
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    if-eqz p4, :cond_1

    #@d
    .line 1763
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@f
    .line 1765
    const/4 v2, 0x2

    #@10
    move v3, p3

    #@11
    move v4, v1

    #@12
    move v6, v1

    #@13
    .line 1763
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@16
    .line 1757
    :cond_1
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1774
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
    .line 1775
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@b
    monitor-enter v3

    #@c
    .line 1776
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
    .line 1777
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@14
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@15
    .line 1778
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@18
    move-result-wide v0

    #@19
    .line 1780
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@1b
    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e
    .line 1782
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
    .line 1773
    return-void

    #@24
    .line 1781
    :catchall_0
    move-exception v2

    #@25
    .line 1782
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 1781
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@29
    .line 1777
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
    .line 1775
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
    .line 1413
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1414
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 1416
    :cond_0
    return-void

    #@9
    .line 1415
    :cond_1
    if-eq p1, p2, :cond_0

    #@b
    .line 1416
    and-int/lit16 v2, p4, 0x100

    #@d
    if-nez v2, :cond_0

    #@f
    .line 1420
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@11
    monitor-enter v3

    #@12
    .line 1421
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
    .line 1422
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@1a
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1b
    .line 1423
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    move-result-wide v0

    #@1f
    .line 1425
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@21
    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24
    .line 1427
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
    .line 1412
    return-void

    #@2a
    .line 1426
    :catchall_0
    move-exception v2

    #@2b
    .line 1427
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 1426
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@2f
    .line 1422
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
    .line 1420
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
    .line 1718
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1719
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@6
    monitor-enter v0

    #@7
    .line 1720
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1721
    and-int/lit16 v1, p1, 0x100

    #@d
    if-nez v1, :cond_0

    #@f
    .line 1722
    and-int/lit8 p1, p1, -0x2

    #@11
    :cond_0
    monitor-exit v0

    #@12
    .line 1726
    :cond_1
    return p1

    #@13
    .line 1719
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v0

    #@15
    throw v1
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1020
    const-string/jumbo v1, "master_mono"

    #@5
    const/4 v2, -0x2

    #@6
    .line 1019
    invoke-static {p1, v1, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@9
    move-result v1

    #@a
    if-ne v1, v3, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    .line 1021
    .local v0, "masterMono":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1022
    const-string/jumbo v1, "AudioService"

    #@14
    const-string/jumbo v2, "Master mono %b"

    #@17
    new-array v3, v3, [Ljava/lang/Object;

    #@19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1c
    move-result-object v4

    #@1d
    aput-object v4, v3, v5

    #@1f
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1024
    :cond_0
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    #@29
    .line 1017
    return-void

    #@2a
    .line 1019
    .end local v0    # "masterMono":Z
    :cond_1
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "masterMono":Z
    goto :goto_0
.end method

.method private updateRingerModeAffectedStreams()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, -0x2

    #@2
    .line 3498
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 3499
    const-string/jumbo v2, "mode_ringer_streams_affected"

    #@7
    .line 3500
    const/16 v3, 0xa6

    #@9
    .line 3498
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@c
    move-result v0

    #@d
    .line 3504
    .local v0, "ringerModeAffectedStreams":I
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@f
    if-ne v1, v5, :cond_1

    #@11
    .line 3505
    const/4 v0, 0x0

    #@12
    .line 3510
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@14
    monitor-enter v2

    #@15
    .line 3511
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
    .line 3512
    and-int/lit16 v0, v0, -0x81

    #@1f
    :goto_1
    monitor-exit v2

    #@20
    .line 3517
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@22
    const/16 v2, 0x8

    #@24
    aget v1, v1, v2

    #@26
    if-ne v1, v5, :cond_3

    #@28
    .line 3518
    or-int/lit16 v0, v0, 0x100

    #@2a
    .line 3523
    :goto_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@2c
    if-eq v0, v1, :cond_4

    #@2e
    .line 3524
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@30
    .line 3525
    const-string/jumbo v2, "mode_ringer_streams_affected"

    #@33
    .line 3524
    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@36
    .line 3528
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@38
    .line 3529
    const/4 v1, 0x1

    #@39
    return v1

    #@3a
    .line 3506
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@3c
    if-eqz v1, :cond_0

    #@3e
    .line 3507
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@40
    invoke-interface {v1, v0}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    #@43
    move-result v0

    #@44
    goto :goto_0

    #@45
    .line 3514
    :cond_2
    or-int/lit16 v0, v0, 0x80

    #@47
    goto :goto_1

    #@48
    .line 3510
    :catchall_0
    move-exception v1

    #@49
    monitor-exit v2

    #@4a
    throw v1

    #@4b
    .line 3520
    :cond_3
    and-int/lit16 v0, v0, -0x101

    #@4d
    goto :goto_2

    #@4e
    .line 3531
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
    .line 961
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 971
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    #@a
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@c
    .line 972
    const/4 v7, 0x3

    #@d
    .line 975
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 976
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@15
    .line 986
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@17
    aput v7, v0, v2

    #@19
    .line 987
    if-eqz p1, :cond_0

    #@1b
    .line 988
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
    .line 991
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@29
    move-result v0

    #@2a
    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@2d
    .line 992
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2f
    .line 997
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@31
    aget-object v5, v1, v2

    #@33
    .line 993
    const/16 v1, 0xa

    #@35
    .line 994
    const/4 v2, 0x2

    #@36
    move v4, v3

    #@37
    move v6, v3

    #@38
    .line 992
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@3b
    .line 958
    :cond_0
    return-void

    #@3c
    .line 963
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    #@3e
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@40
    .line 964
    const/4 v7, 0x2

    #@41
    .line 965
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    #@42
    .line 967
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    #@44
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    #@46
    .line 968
    const/4 v7, 0x3

    #@47
    .line 969
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    #@48
    .line 978
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 979
    const/4 v7, 0x0

    #@4f
    .line 980
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@51
    and-int/lit16 v0, v0, -0x101

    #@53
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@55
    goto :goto_1

    #@56
    .line 982
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@58
    or-int/lit16 v0, v0, 0x100

    #@5a
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    #@5c
    goto :goto_1

    #@5d
    .line 961
    nop

    #@5e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .locals 3
    .param p1, "streamTypeAlias"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1610
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    #@3
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 1611
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    #@d
    move-result v0

    #@e
    .line 1610
    if-eqz v0, :cond_0

    #@10
    .line 1612
    and-int/lit8 v0, p2, 0x2

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1613
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    #@17
    move-result v0

    #@18
    if-eq p1, v0, :cond_0

    #@1a
    .line 1614
    return v2

    #@1b
    .line 1617
    :cond_0
    const/4 v0, 0x1

    #@1c
    return v0
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    #@0
    .prologue
    .line 882
    monitor-enter p0

    #@1
    .line 883
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 886
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 887
    :catch_0
    move-exception v0

    #@a
    .line 888
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
    .line 882
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
    .line 881
    return-void
.end method

.method private wouldToggleZenMode(I)Z
    .locals 3
    .param p1, "newMode"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1488
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1489
    if-eqz p1, :cond_0

    #@a
    .line 1490
    return v2

    #@b
    .line 1491
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1492
    if-nez p1, :cond_1

    #@13
    .line 1493
    return v2

    #@14
    .line 1495
    :cond_1
    return v1
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 5468
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
    .line 1204
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
    .line 1203
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@d
    .line 1202
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
    .line 1165
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
    .line 1164
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@d
    .line 1163
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    #@0
    .prologue
    .line 4941
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 4942
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    #@5
    .line 4943
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@7
    .line 4945
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@9
    const/4 v2, 0x3

    #@a
    aget-object v5, v1, v2

    #@c
    .line 4943
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x2

    #@e
    .line 4944
    const/16 v3, 0x80

    #@10
    const/4 v4, 0x0

    #@11
    .line 4945
    const/4 v6, 0x0

    #@12
    .line 4943
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@15
    .line 4946
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@17
    .line 4948
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@19
    const/4 v2, 0x2

    #@1a
    aget-object v5, v1, v2

    #@1c
    .line 4946
    const/4 v1, 0x0

    #@1d
    const/4 v2, 0x2

    #@1e
    .line 4947
    const/16 v3, 0x80

    #@20
    const/4 v4, 0x0

    #@21
    .line 4948
    const/4 v6, 0x0

    #@22
    .line 4946
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v7

    #@26
    .line 4939
    return-void

    #@27
    .line 4941
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
    .line 3709
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
    .line 3711
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 3713
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
    .line 3714
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@28
    move-result v2

    #@29
    .line 3713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 3715
    const-string/jumbo v2, ", uid="

    #@30
    .line 3713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 3715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@37
    move-result v2

    #@38
    .line 3713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 3716
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "AudioService"

    #@43
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 3717
    return v3
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    #@0
    .prologue
    .line 2986
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2
    monitor-enter v5

    #@3
    .line 2987
    const/4 v2, 0x0

    #@4
    .line 2988
    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    .line 2989
    .local v3, "size":I
    const/4 v1, 0x0

    #@b
    .end local v2    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@d
    .line 2990
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    #@15
    .line 2991
    .local v0, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    #@18
    move-result v4

    #@19
    if-eq v4, p1, :cond_0

    #@1b
    .line 2992
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    #@1e
    .line 2989
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2994
    :cond_0
    move-object v2, v0

    #@22
    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_1

    #@23
    .line 2997
    .end local v0    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@28
    .line 2998
    if-eqz v2, :cond_2

    #@2a
    .line 2999
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_2
    monitor-exit v5

    #@30
    .line 2985
    return-void

    #@31
    .line 2986
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
    .line 5740
    const-string/jumbo v0, "disable the safe media volume"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 5741
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@8
    monitor-enter v6

    #@9
    .line 5742
    const/4 v0, 0x0

    #@a
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    #@d
    .line 5743
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 5744
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@13
    iget v1, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    #@15
    .line 5745
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@17
    iget v2, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    #@19
    .line 5746
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@1b
    iget v3, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    #@1d
    .line 5747
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@1f
    iget v4, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    #@21
    move-object v0, p0

    #@22
    move-object v5, p1

    #@23
    .line 5744
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    #@26
    .line 5749
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :cond_0
    monitor-exit v6

    #@2a
    .line 5739
    return-void

    #@2b
    .line 5741
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v6

    #@2d
    throw v0
.end method

.method disconnectA2dp()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x80

    #@2
    .line 3244
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@4
    monitor-enter v6

    #@5
    .line 3245
    :try_start_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    #@7
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 3246
    const/4 v3, 0x0

    #@9
    .line 3248
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    move-object v4, v3

    #@b
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@10
    move-result v5

    #@11
    if-ge v2, v5, :cond_1

    #@13
    .line 3249
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@1b
    .line 3250
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    if-ne v5, v8, :cond_3

    #@1f
    .line 3251
    if-eqz v4, :cond_0

    #@21
    move-object v3, v4

    #@22
    .line 3252
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    iget-object v5, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    #@24
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@27
    .line 3248
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@29
    move-object v4, v3

    #@2a
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    #@2b
    .line 3251
    :cond_0
    :try_start_3
    new-instance v3, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@30
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_1

    #@31
    .line 3255
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    if-eqz v4, :cond_2

    #@33
    .line 3257
    const/16 v5, 0x80

    #@35
    .line 3258
    const/4 v8, 0x0

    #@36
    .line 3256
    invoke-direct {p0, v5, v8}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    #@39
    move-result v0

    #@3a
    .line 3259
    .local v0, "delay":I
    const/4 v2, 0x0

    #@3b
    :goto_3
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@3e
    move-result v5

    #@3f
    if-ge v2, v5, :cond_2

    #@41
    .line 3260
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v5

    #@45
    check-cast v5, Ljava/lang/String;

    #@47
    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    .line 3259
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_3

    #@4d
    .end local v0    # "delay":I
    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4e
    monitor-exit v6

    #@4f
    .line 3243
    return-void

    #@50
    .line 3245
    :catchall_0
    move-exception v5

    #@51
    move-object v3, v4

    #@52
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_4
    :try_start_5
    monitor-exit v7

    #@53
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@54
    .line 3244
    .end local v2    # "i":I
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    #@55
    monitor-exit v6

    #@56
    throw v5

    #@57
    .line 3245
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v2    # "i":I
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v5

    #@58
    goto :goto_4

    #@59
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    move-object v3, v4

    #@5a
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method disconnectA2dpSink()V
    .locals 7

    #@0
    .prologue
    .line 3268
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 3269
    const/4 v2, 0x0

    #@4
    .line 3271
    .local v2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    move-object v3, v2

    #@6
    .end local v2    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v4

    #@c
    if-ge v1, v4, :cond_1

    #@e
    .line 3272
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@16
    .line 3273
    .local v0, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    const/high16 v6, -0x7ffe0000

    #@1a
    if-ne v4, v6, :cond_3

    #@1c
    .line 3274
    if-eqz v3, :cond_0

    #@1e
    move-object v2, v3

    #@1f
    .line 3275
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    iget-object v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    #@21
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 3271
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@26
    move-object v3, v2

    #@27
    .end local v2    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    #@28
    .line 3274
    :cond_0
    :try_start_2
    new-instance v2, Landroid/util/ArraySet;

    #@2a
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@2d
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_1

    #@2e
    .line 3278
    .end local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    if-eqz v3, :cond_2

    #@30
    .line 3279
    const/4 v1, 0x0

    #@31
    :goto_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@34
    move-result v4

    #@35
    if-ge v1, v4, :cond_2

    #@37
    .line 3280
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Ljava/lang/String;

    #@3d
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 3279
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_3

    #@43
    :cond_2
    monitor-exit v5

    #@44
    .line 3267
    return-void

    #@45
    .line 3268
    :catchall_0
    move-exception v4

    #@46
    move-object v2, v3

    #@47
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_4
    monitor-exit v5

    #@48
    throw v4

    #@49
    .restart local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :catchall_1
    move-exception v4

    #@4a
    goto :goto_4

    #@4b
    .end local v2    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    move-object v2, v3

    #@4c
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method disconnectAllBluetoothProfiles()V
    .locals 0

    #@0
    .prologue
    .line 3238
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    #@3
    .line 3239
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    #@6
    .line 3240
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    #@9
    .line 3237
    return-void
.end method

.method disconnectHeadset()V
    .locals 3

    #@0
    .prologue
    .line 3287
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 3288
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3289
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@9
    .line 3290
    const/4 v2, 0x0

    #@a
    .line 3289
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    #@d
    .line 3292
    :cond_0
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 3286
    return-void

    #@12
    .line 3287
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 5917
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    const-string/jumbo v2, "AudioService"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 5919
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@d
    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    #@10
    .line 5920
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    #@13
    .line 5921
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    #@16
    .line 5922
    const-string/jumbo v0, "\nAudio routes:"

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 5923
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
    .line 5924
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
    .line 5926
    const-string/jumbo v0, "\nOther state:"

    #@3d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 5927
    const-string/jumbo v0, "  mVolumeController="

    #@43
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@48
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4b
    .line 5928
    const-string/jumbo v0, "  mSafeMediaVolumeState="

    #@4e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 5929
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    #@53
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 5930
    const-string/jumbo v0, "  mSafeMediaVolumeIndex="

    #@5d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    #@62
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@65
    .line 5931
    const-string/jumbo v0, "  mPendingVolumeCommand="

    #@68
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    #@6d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@70
    .line 5932
    const-string/jumbo v0, "  mMusicActiveMs="

    #@73
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    #@78
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@7b
    .line 5933
    const-string/jumbo v0, "  mMcc="

    #@7e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    #@83
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@86
    .line 5934
    const-string/jumbo v0, "  mCameraSoundForced="

    #@89
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@8e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@91
    .line 5935
    const-string/jumbo v0, "  mHasVibrator="

    #@94
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@99
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@9c
    .line 5936
    const-string/jumbo v0, "  mControllerService="

    #@9f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@a4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a7
    .line 5937
    const-string/jumbo v0, "  mVolumePolicy="

    #@aa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@b2
    .line 5939
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    #@b5
    .line 5916
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
    .line 1860
    if-nez p2, :cond_0

    #@8
    .line 1861
    return-void

    #@9
    .line 1863
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@b
    .line 1864
    const-string/jumbo v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    #@e
    .line 1863
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1865
    const-string/jumbo v1, "AudioService"

    #@17
    const-string/jumbo v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1866
    return-void

    #@1e
    .line 1868
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@20
    monitor-enter v2

    #@21
    .line 1869
    const/4 v0, 0x0

    #@22
    .line 1870
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_5

    #@24
    .line 1871
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_3

    #@2a
    .line 1872
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    #@2c
    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    #@2e
    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    #@31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 1873
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@36
    if-nez v1, :cond_2

    #@38
    .line 1874
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@3a
    or-int/2addr v1, v4

    #@3b
    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@3d
    .line 1875
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@3f
    or-int/2addr v1, v4

    #@40
    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@42
    .line 1876
    const/4 v0, 0x1

    #@43
    .line 1878
    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@45
    add-int/lit8 v1, v1, 0x1

    #@47
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@49
    .line 1890
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    #@4b
    .line 1892
    const/4 v1, 0x3

    #@4c
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    #@4f
    .line 1893
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
    .line 1859
    return-void

    #@59
    .line 1881
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
    .line 1882
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@65
    add-int/lit8 v1, v1, -0x1

    #@67
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@69
    .line 1883
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    #@6b
    if-nez v1, :cond_3

    #@6d
    .line 1884
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@6f
    and-int/2addr v1, v3

    #@70
    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@72
    .line 1885
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@74
    and-int/2addr v1, v3

    #@75
    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    .line 1886
    const/4 v0, 0x1

    #@78
    goto :goto_0

    #@79
    .line 1868
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
    .line 1622
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1623
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@5
    .line 1624
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v0, v2, :cond_1

    #@a
    .line 1625
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1626
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@10
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    #@13
    .line 1627
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
    .line 1621
    return-void

    #@18
    .line 1630
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
    .line 1622
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 6346
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    #@2
    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    #@0
    .prologue
    .line 5476
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
    .line 1982
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 1983
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@6
    move-result v0

    #@7
    .line 1984
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
    .line 2400
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@2
    return v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    #@0
    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2033
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2032
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
    .line 2039
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2040
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2039
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
    .line 5629
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    #@2
    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1970
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 1971
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
    .line 1976
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 1977
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
    .line 1951
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    #@3
    .line 1952
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    #@6
    move-result v0

    #@7
    .line 1953
    .local v0, "device":I
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@9
    monitor-enter v3

    #@a
    .line 1954
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@c
    aget-object v2, v2, p1

    #@e
    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@11
    move-result v1

    #@12
    .line 1957
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
    .line 1958
    const/4 v1, 0x0

    #@1d
    .line 1960
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
    .line 1961
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@28
    and-int/2addr v2, v0

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 1962
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2d
    aget-object v2, v2, p1

    #@2f
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    #@32
    move-result v1

    #@33
    .line 1964
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
    .line 1953
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
    .line 1989
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
    .line 2208
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 2209
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
    .line 2719
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2720
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2719
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
    .line 2703
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
    .line 5871
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@2
    monitor-enter v1

    #@3
    .line 5872
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
    .line 5871
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
    .line 5815
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@2
    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    #@0
    .prologue
    .line 1941
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
    .line 2677
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
    .line 3536
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
    .line 3490
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
    .line 1790
    const/high16 v0, -0x80000000

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1791
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    #@7
    move-result p1

    #@8
    .line 1793
    :cond_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@a
    monitor-enter v1

    #@b
    .line 1794
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
    .line 1793
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
    .line 2052
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
    .line 2528
    const/4 v7, 0x3

    #@3
    .line 2529
    .local v7, "attempts":I
    new-instance v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    #@5
    invoke-direct {v5, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    #@8
    .line 2531
    .local v5, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    #@9
    .line 2532
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
    .line 2533
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
    .line 2535
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
    .line 2541
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    #@27
    if-nez v0, :cond_2

    #@29
    move v0, v10

    #@2a
    :goto_2
    return v0

    #@2b
    .line 2536
    :catch_0
    move-exception v9

    #@2c
    .line 2537
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
    .line 2531
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
    .line 2541
    goto :goto_2

    #@3b
    .line 2531
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
    .line 6002
    const-string/jumbo v0, "notify about volume controller visibility"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 6005
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 6006
    return-void

    #@f
    .line 6009
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@11
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    #@14
    .line 6010
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
    .line 6001
    :cond_1
    return-void
.end method

.method public onAudioServerDied()V
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
    .line 782
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 783
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 784
    :cond_0
    const-string/jumbo v0, "AudioService"

    #@11
    const-string/jumbo v4, "Audioserver died."

    #@14
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 785
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@19
    .line 786
    const/16 v6, 0x1f4

    #@1b
    move v4, v3

    #@1c
    .line 785
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1f
    .line 787
    return-void

    #@20
    .line 789
    :cond_1
    const-string/jumbo v0, "AudioService"

    #@23
    const-string/jumbo v2, "Audioserver started."

    #@26
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 795
    const-string/jumbo v0, "restarting=true"

    #@2c
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@2f
    .line 797
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    #@32
    .line 800
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@34
    monitor-enter v2

    #@35
    .line 801
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
    .line 802
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v11

    #@44
    check-cast v11, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@46
    .line 804
    .local v11, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v0, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    #@48
    .line 806
    iget-object v4, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    #@4a
    .line 807
    iget-object v5, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    #@4c
    .line 805
    const/4 v6, 0x1

    #@4d
    .line 803
    invoke-static {v0, v6, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 801
    add-int/lit8 v7, v7, 0x1

    #@52
    goto :goto_0

    #@53
    .end local v11    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2
    monitor-exit v2

    #@54
    .line 811
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@56
    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    #@59
    .line 814
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@5b
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@5e
    .line 815
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@60
    const/4 v2, 0x2

    #@61
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@64
    .line 816
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    #@66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_3

    #@6c
    .line 817
    const/16 v0, 0xb

    #@6e
    .line 816
    :goto_1
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@71
    .line 820
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@74
    move-result v8

    #@75
    .line 821
    .local v8, "numStreamTypes":I
    add-int/lit8 v13, v8, -0x1

    #@77
    .local v13, "streamType":I
    :goto_2
    if-ltz v13, :cond_4

    #@79
    .line 822
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@7b
    aget-object v12, v0, v13

    #@7d
    .line 824
    .local v12, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@80
    move-result v0

    #@81
    div-int/lit8 v0, v0, 0xa

    #@83
    invoke-static {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get1(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@86
    move-result v1

    #@87
    div-int/lit8 v1, v1, 0xa

    #@89
    .line 823
    invoke-static {v13, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    #@8c
    .line 826
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    #@8f
    .line 821
    add-int/lit8 v13, v13, -0x1

    #@91
    goto :goto_2

    #@92
    .line 800
    .end local v8    # "numStreamTypes":I
    .end local v12    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v13    # "streamType":I
    :catchall_0
    move-exception v0

    #@93
    monitor-exit v2

    #@94
    throw v0

    #@95
    :cond_3
    move v0, v3

    #@96
    .line 817
    goto :goto_1

    #@97
    .line 830
    .restart local v8    # "numStreamTypes":I
    .restart local v13    # "streamType":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@99
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    #@9c
    .line 833
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@9f
    move-result v0

    #@a0
    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    #@a3
    .line 836
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    #@a5
    if-eqz v0, :cond_5

    #@a7
    .line 837
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    #@aa
    .line 839
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    #@ac
    if-eqz v0, :cond_6

    #@ae
    .line 840
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    #@b1
    .line 843
    :cond_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@b3
    monitor-enter v1

    #@b4
    .line 845
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@b6
    if-eqz v0, :cond_a

    #@b8
    move v0, v3

    #@b9
    .line 844
    :goto_3
    const/4 v2, 0x1

    #@ba
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@bd
    monitor-exit v1

    #@be
    .line 849
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    #@c0
    monitor-enter v1

    #@c1
    .line 851
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    #@c3
    if-eqz v0, :cond_7

    #@c5
    .line 852
    const/16 v3, 0x8

    #@c7
    .line 850
    :cond_7
    const/4 v0, 0x3

    #@c8
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@cb
    .line 853
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    #@cd
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@d0
    monitor-exit v1

    #@d1
    .line 855
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@d3
    if-eqz v0, :cond_9

    #@d5
    .line 856
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@d7
    monitor-enter v1

    #@d8
    .line 857
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@da
    if-eqz v0, :cond_8

    #@dc
    .line 858
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@de
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@e1
    :cond_8
    monitor-exit v1

    #@e2
    .line 863
    :cond_9
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@e4
    monitor-enter v1

    #@e5
    .line 864
    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@e7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@ea
    move-result-object v0

    #@eb
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ee
    move-result-object v10

    #@ef
    .local v10, "policy$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@f2
    move-result v0

    #@f3
    if-eqz v0, :cond_b

    #@f5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f8
    move-result-object v9

    #@f9
    check-cast v9, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@fb
    .line 865
    .local v9, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@fe
    goto :goto_4

    #@ff
    .line 863
    .end local v9    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v10    # "policy$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v0

    #@100
    monitor-exit v1

    #@101
    throw v0

    #@102
    .line 846
    :cond_a
    const/16 v0, 0xa

    #@104
    goto :goto_3

    #@105
    .line 843
    :catchall_2
    move-exception v0

    #@106
    monitor-exit v1

    #@107
    throw v0

    #@108
    .line 849
    :catchall_3
    move-exception v0

    #@109
    monitor-exit v1

    #@10a
    throw v0

    #@10b
    .line 856
    :catchall_4
    move-exception v0

    #@10c
    monitor-exit v1

    #@10d
    throw v0

    #@10e
    .restart local v10    # "policy$iterator":Ljava/util/Iterator;
    :cond_b
    monitor-exit v1

    #@10f
    .line 869
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    #@112
    .line 871
    const-string/jumbo v0, "restarting=false"

    #@115
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@118
    .line 781
    return-void
.end method

.method onIndicateSystemReady()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 769
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 770
    return-void

    #@8
    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@a
    .line 773
    const/16 v1, 0x1a

    #@c
    .line 777
    const/4 v5, 0x0

    #@d
    .line 778
    const/16 v6, 0x3e8

    #@f
    move v3, v2

    #@10
    move v4, v2

    #@11
    .line 772
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@14
    .line 768
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
    .line 720
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@6
    .line 721
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
    .line 724
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    #@11
    .line 725
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    #@14
    .line 726
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    #@17
    .line 729
    new-instance v9, Landroid/content/Intent;

    #@19
    const-string/jumbo v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    #@1c
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 730
    .local v9, "newIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.media.extra.SCO_AUDIO_STATE"

    #@22
    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@25
    .line 732
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    #@28
    .line 734
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@2b
    move-result-object v8

    #@2c
    .line 735
    .local v8, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_0

    #@2e
    .line 736
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@30
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@32
    invoke-virtual {v8, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    #@35
    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@37
    const-string/jumbo v1, "hdmi_control"

    #@3a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    #@40
    .line 740
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@42
    .line 742
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 743
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@48
    monitor-enter v1

    #@49
    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@4b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@51
    .line 745
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@53
    if-eqz v0, :cond_1

    #@55
    .line 746
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@57
    const v2, -0x2c0003

    #@5a
    and-int/2addr v0, v2

    #@5b
    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@5d
    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@5f
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@62
    move-result-object v0

    #@63
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@65
    .line 749
    const/4 v0, 0x0

    #@66
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    monitor-exit v1

    #@69
    .line 753
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@6b
    const-string/jumbo v1, "notification"

    #@6e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Landroid/app/NotificationManager;

    #@74
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    #@76
    .line 755
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@78
    .line 760
    const-string/jumbo v6, "AudioService"

    #@7b
    .line 756
    const/16 v2, 0x11

    #@7d
    .line 761
    const/16 v7, 0x7530

    #@7f
    move v4, v3

    #@80
    move v5, v3

    #@81
    .line 755
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@84
    .line 763
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@86
    invoke-static {v0}, Lcom/android/server/audio/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    #@89
    .line 764
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    #@8b
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ControllerService;->init()V

    #@8e
    .line 765
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    #@91
    .line 719
    return-void

    #@92
    .line 743
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
    .line 2509
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    #@5
    .line 2508
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
    .line 2514
    const/16 v0, 0xa

    #@3
    if-ge p1, v0, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 2515
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
    .line 2516
    return-void

    #@29
    .line 2519
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2b
    .line 2520
    const/high16 v1, 0x447a0000    # 1000.0f

    #@2d
    mul-float/2addr v1, p2

    #@2e
    float-to-int v4, v1

    #@2f
    .line 2519
    const/4 v1, 0x5

    #@30
    const/4 v2, 0x2

    #@31
    .line 2520
    const/4 v5, 0x0

    #@32
    move v3, p1

    #@33
    .line 2519
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@36
    .line 2513
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
    const/4 v2, 0x0

    #@2
    .line 6204
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    #@4
    invoke-static {v4}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    #@7
    .line 6206
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    #@9
    if-eqz v4, :cond_0

    #@b
    const-string/jumbo v4, "AudioService"

    #@e
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "registerAudioPolicy for "

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    .line 6207
    const-string/jumbo v6, " with config:"

    #@25
    .line 6206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 6208
    :cond_0
    const/4 v3, 0x0

    #@35
    .line 6211
    .local v3, "regId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@37
    .line 6212
    const-string/jumbo v5, "android.permission.MODIFY_AUDIO_ROUTING"

    #@3a
    .line 6211
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@3d
    move-result v4

    #@3e
    if-nez v4, :cond_1

    #@40
    const/4 v2, 0x1

    #@41
    .line 6213
    .local v2, "hasPermissionForPolicy":Z
    :cond_1
    if-nez v2, :cond_2

    #@43
    .line 6214
    const-string/jumbo v4, "AudioService"

    #@46
    new-instance v5, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v6, "Can\'t register audio policy for pid "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@55
    move-result v6

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    const-string/jumbo v6, " / uid "

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    .line 6215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@64
    move-result v6

    #@65
    .line 6214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 6215
    const-string/jumbo v6, ", need MODIFY_AUDIO_ROUTING"

    #@6c
    .line 6214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 6216
    return-object v8

    #@78
    .line 6219
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@7a
    monitor-enter v5

    #@7b
    .line 6221
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@7d
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_3

    #@87
    .line 6222
    const-string/jumbo v4, "AudioService"

    #@8a
    const-string/jumbo v6, "Cannot re-register policy"

    #@8d
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    monitor-exit v5

    #@91
    .line 6223
    return-object v8

    #@92
    .line 6225
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    #@94
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    #@97
    .line 6226
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@9a
    move-result-object v4

    #@9b
    const/4 v6, 0x0

    #@9c
    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@9f
    .line 6227
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    .line 6228
    .local v3, "regId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@a5
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@a8
    move-result-object v6

    #@a9
    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ac
    monitor-exit v5

    #@ad
    .line 6236
    return-object v3

    #@ae
    .line 6229
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v3    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@af
    .line 6231
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "AudioService"

    #@b2
    new-instance v6, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v7, "Audio policy registration failed, could not link to "

    #@ba
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v6

    #@c2
    .line 6232
    const-string/jumbo v7, " binder death"

    #@c5
    .line 6231
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v6

    #@c9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v6

    #@cd
    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d0
    monitor-exit v5

    #@d1
    .line 6233
    return-object v8

    #@d2
    .line 6219
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@d3
    monitor-exit v5

    #@d4
    throw v4
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 1
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    #@0
    .prologue
    .line 6338
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    #@5
    .line 6337
    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    #@0
    .prologue
    .line 2610
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    #@4
    .line 2609
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
    .line 5445
    and-int/lit8 v0, p7, 0x4

    #@2
    const/4 v1, 0x4

    #@3
    if-ne v0, v1, :cond_2

    #@5
    .line 5446
    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    #@8
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 5447
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@10
    .line 5448
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    #@13
    .line 5447
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 5449
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
    .line 5450
    const/4 v0, 0x0

    #@28
    return v0

    #@29
    .line 5454
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@2b
    monitor-enter v1

    #@2c
    .line 5455
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
    .line 5456
    const-string/jumbo v0, "AudioService"

    #@3b
    const-string/jumbo v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    #@3e
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 5457
    const/4 v0, 0x0

    #@42
    monitor-exit v1

    #@43
    return v0

    #@44
    :cond_1
    monitor-exit v1

    #@45
    .line 5463
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
    .line 5454
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
    .line 3805
    if-eq p3, v2, :cond_0

    #@4
    const/16 v1, 0xb

    #@6
    if-eq p3, v1, :cond_0

    #@8
    .line 3806
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
    .line 3808
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@24
    monitor-enter v7

    #@25
    .line 3809
    if-ne p3, v2, :cond_2

    #@27
    .line 3811
    if-ne p2, v2, :cond_1

    #@29
    const/4 v0, 0x1

    #@2a
    .line 3810
    :cond_1
    const/16 v1, 0x80

    #@2c
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    #@2f
    move-result v6

    #@30
    .line 3815
    .local v6, "delay":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@32
    .line 3816
    if-ne p3, v2, :cond_3

    #@34
    .line 3817
    const/16 v2, 0x66

    #@36
    .line 3819
    :goto_1
    const/4 v4, 0x0

    #@37
    move-object v0, p0

    #@38
    move v3, p2

    #@39
    move-object v5, p1

    #@3a
    .line 3815
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    monitor-exit v7

    #@3e
    .line 3823
    return v6

    #@3f
    .line 3813
    .end local v6    # "delay":I
    :cond_2
    const/4 v6, 0x0

    #@40
    .restart local v6    # "delay":I
    goto :goto_0

    #@41
    .line 3817
    :cond_3
    const/16 v2, 0x65

    #@43
    goto :goto_1

    #@44
    .line 3808
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
    .line 2708
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 2709
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@6
    .line 2710
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@8
    .line 2712
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2710
    :goto_0
    const/16 v1, 0xd

    #@e
    const/4 v2, 0x2

    #@f
    .line 2711
    const/4 v3, 0x1

    #@10
    .line 2713
    const/4 v5, 0x0

    #@11
    const/4 v6, 0x0

    #@12
    .line 2710
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v7

    #@16
    .line 2707
    return-void

    #@17
    .line 2712
    :cond_0
    const/16 v4, 0xa

    #@19
    goto :goto_0

    #@1a
    .line 2708
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
    .line 5590
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 5591
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@5
    .line 5592
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@7
    const/16 v2, 0xd

    #@9
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    #@c
    .line 5594
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    .line 5593
    :goto_0
    const/4 v2, 0x1

    #@12
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 5589
    return-void

    #@17
    .line 5594
    :cond_0
    const/16 v0, 0xa

    #@19
    goto :goto_0

    #@1a
    .line 5590
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 2682
    const-string/jumbo v0, "setBluetoothScoOn()"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 2683
    return-void

    #@a
    .line 2685
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(Z)V

    #@d
    .line 2681
    return-void
.end method

.method public setBluetoothScoOnInt(Z)V
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
    .line 2689
    if-eqz p1, :cond_1

    #@8
    .line 2690
    iput v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@a
    .line 2695
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@c
    .line 2696
    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@e
    move v6, v3

    #@f
    .line 2695
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@12
    .line 2697
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@14
    .line 2698
    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@16
    move v7, v1

    #@17
    move v8, v2

    #@18
    move v9, v2

    #@19
    move-object v11, v5

    #@1a
    move v12, v3

    #@1b
    .line 2697
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1e
    .line 2688
    return-void

    #@1f
    .line 2691
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@21
    if-ne v0, v4, :cond_0

    #@23
    .line 2692
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@25
    goto :goto_0
.end method

.method setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 3070
    if-nez p1, :cond_0

    #@2
    .line 3071
    return-void

    #@3
    .line 3074
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3075
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    #@a
    move-result-object v1

    #@b
    .line 3076
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    const/16 v5, 0x10

    #@d
    .line 3077
    .local v5, "outDevice":I
    const v4, -0x7ffffff8

    #@10
    .line 3078
    .local v4, "inDevice":I
    if-eqz v1, :cond_1

    #@12
    .line 3079
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@15
    move-result v7

    #@16
    sparse-switch v7, :sswitch_data_0

    #@19
    .line 3090
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@1c
    move-result v7

    #@1d
    if-nez v7, :cond_2

    #@1f
    .line 3091
    const-string/jumbo v0, ""

    #@22
    .line 3094
    :cond_2
    const/4 v7, 0x2

    #@23
    if-ne p2, v7, :cond_4

    #@25
    const/4 v3, 0x1

    #@26
    .line 3096
    .local v3, "connected":Z
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 3098
    .local v2, "btDeviceName":Ljava/lang/String;
    invoke-direct {p0, v3, v5, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_5

    #@30
    .line 3099
    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    #@33
    move-result v6

    #@34
    .line 3100
    .local v6, "success":Z
    :goto_2
    if-eqz v6, :cond_3

    #@36
    .line 3101
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    #@38
    monitor-enter v8

    #@39
    .line 3102
    if-eqz v3, :cond_6

    #@3b
    .line 3103
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :goto_3
    monitor-exit v8

    #@3e
    .line 3069
    :cond_3
    return-void

    #@3f
    .line 3082
    .end local v2    # "btDeviceName":Ljava/lang/String;
    .end local v3    # "connected":Z
    .end local v6    # "success":Z
    :sswitch_0
    const/16 v5, 0x20

    #@41
    .line 3083
    goto :goto_0

    #@42
    .line 3085
    :sswitch_1
    const/16 v5, 0x40

    #@44
    .line 3086
    goto :goto_0

    #@45
    .line 3094
    :cond_4
    const/4 v3, 0x0

    #@46
    .restart local v3    # "connected":Z
    goto :goto_1

    #@47
    .line 3098
    .restart local v2    # "btDeviceName":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    #@48
    goto :goto_2

    #@49
    .line 3105
    .restart local v6    # "success":Z
    :cond_6
    const/4 v7, 0x0

    #@4a
    :try_start_1
    iput-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    #@4c
    .line 3106
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_3

    #@50
    .line 3101
    :catchall_0
    move-exception v7

    #@51
    monitor-exit v8

    #@52
    throw v7

    #@53
    .line 3079
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
    const/4 v9, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    .line 6256
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
    .line 6257
    const-string/jumbo v8, " policy "

    #@1d
    .line 6256
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 6257
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v8

    #@25
    .line 6256
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
    .line 6260
    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@32
    .line 6261
    const-string/jumbo v7, "android.permission.MODIFY_AUDIO_ROUTING"

    #@35
    .line 6260
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_1

    #@3b
    move v1, v4

    #@3c
    .line 6262
    .local v1, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v1, :cond_2

    #@3e
    .line 6263
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
    .line 6264
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@50
    move-result v6

    #@51
    .line 6263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    .line 6264
    const-string/jumbo v6, " / uid "

    #@58
    .line 6263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    .line 6265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5f
    move-result v6

    #@60
    .line 6263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    .line 6265
    const-string/jumbo v6, ", need MODIFY_AUDIO_ROUTING"

    #@67
    .line 6263
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
    .line 6266
    return v9

    #@73
    .end local v1    # "hasPermissionForPolicy":Z
    :cond_1
    move v1, v5

    #@74
    .line 6260
    goto :goto_0

    #@75
    .line 6269
    .restart local v1    # "hasPermissionForPolicy":Z
    :cond_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@77
    monitor-enter v6

    #@78
    .line 6270
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
    .line 6271
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
    .line 6272
    return v9

    #@8f
    .line 6274
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
    .line 6275
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-ne p1, v4, :cond_5

    #@9d
    .line 6277
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
    .line 6278
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v7, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    #@b5
    if-ne v7, v4, :cond_4

    #@b7
    .line 6279
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
    .line 6280
    return v9

    #@c2
    .line 6284
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v3    # "policy$iterator":Ljava/util/Iterator;
    :cond_5
    :try_start_2
    iput p1, v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    #@c4
    .line 6285
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@c6
    .line 6286
    if-ne p1, v4, :cond_6

    #@c8
    .line 6285
    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cb
    monitor-exit v6

    #@cc
    .line 6288
    return v5

    #@cd
    :cond_6
    move v4, v5

    #@ce
    .line 6286
    goto :goto_1

    #@cf
    .line 6269
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
    .line 5791
    const/4 v0, 0x0

    #@2
    .line 5792
    .local v0, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@4
    if-eqz v2, :cond_3

    #@6
    .line 5793
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    #@8
    monitor-enter v2

    #@9
    .line 5794
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 5795
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
    .line 5796
    return v1

    #@18
    .line 5799
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    #@1a
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    .line 5800
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@1d
    if-eq v4, p1, :cond_2

    #@1f
    .line 5801
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    #@21
    .line 5803
    if-eqz p1, :cond_1

    #@23
    const/16 v1, 0xc

    #@25
    .line 5802
    :cond_1
    const/4 v4, 0x5

    #@26
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@29
    .line 5806
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
    .line 5810
    :cond_3
    return v0

    #@31
    .line 5799
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
    .line 5793
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
    .line 1945
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
    .line 1944
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1997
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1998
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1999
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v1

    #@c
    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    #@f
    move-result v0

    #@10
    .line 2002
    :cond_0
    if-nez p1, :cond_1

    #@12
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    #@14
    const/16 v2, 0x2c

    #@16
    invoke-virtual {v1, v2, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 2004
    return-void

    #@1d
    .line 2006
    :cond_1
    const-string/jumbo v1, "setMicrophoneMute()"

    #@20
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_2

    #@26
    .line 2007
    return-void

    #@27
    .line 2009
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@2a
    move-result v1

    #@2b
    if-eq p3, v1, :cond_3

    #@2d
    .line 2010
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@2f
    .line 2011
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@32
    .line 2010
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 2013
    return-void

    #@39
    .line 2015
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    #@3c
    .line 1994
    return-void
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
    .line 2274
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
    .line 2275
    :cond_0
    const-string/jumbo v1, "setMode()"

    #@34
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_1

    #@3a
    .line 2276
    return-void

    #@3b
    .line 2279
    :cond_1
    const/4 v1, 0x2

    #@3c
    if-ne p1, v1, :cond_2

    #@3e
    .line 2280
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@40
    .line 2281
    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    #@43
    .line 2280
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_2

    #@49
    .line 2283
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
    .line 2284
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5b
    move-result v3

    #@5c
    .line 2283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 2284
    const-string/jumbo v3, ", uid="

    #@63
    .line 2283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    .line 2284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6a
    move-result v3

    #@6b
    .line 2283
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
    .line 2285
    return-void

    #@77
    .line 2288
    :cond_2
    if-lt p1, v4, :cond_3

    #@79
    const/4 v1, 0x4

    #@7a
    if-lt p1, v1, :cond_4

    #@7c
    .line 2289
    :cond_3
    return-void

    #@7d
    .line 2292
    :cond_4
    const/4 v0, 0x0

    #@7e
    .line 2293
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    #@80
    monitor-enter v2

    #@81
    .line 2294
    if-ne p1, v4, :cond_5

    #@83
    .line 2295
    :try_start_0
    iget p1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    #@85
    .line 2297
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
    .line 2301
    if-eqz v0, :cond_6

    #@90
    .line 2302
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    #@93
    .line 2273
    :cond_6
    return-void

    #@94
    .line 2293
    :catchall_0
    move-exception v1

    #@95
    monitor-exit v2

    #@96
    throw v1
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 2
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2056
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2057
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    #@e
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 2061
    :cond_0
    const/4 v0, 0x1

    #@15
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    #@18
    .line 2055
    return-void

    #@19
    .line 2058
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@1b
    const-string/jumbo v1, "Not allowed to change Do Not Disturb state"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2065
    const-string/jumbo v0, "setRingerModeInternal"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 2066
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    #@a
    .line 2064
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    #@0
    .prologue
    .line 5623
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 5624
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    #@b
    .line 5622
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
    .line 2657
    const-string/jumbo v0, "setSpeakerphoneOn()"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 2658
    return-void

    #@10
    .line 2661
    :cond_0
    if-eqz p1, :cond_3

    #@12
    .line 2662
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@14
    const/4 v3, 0x3

    #@15
    if-ne v0, v3, :cond_1

    #@17
    .line 2663
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@19
    move v3, v2

    #@1a
    move v6, v4

    #@1b
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1e
    .line 2666
    :cond_1
    iput v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@20
    .line 2671
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@22
    .line 2672
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
    .line 2671
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@2c
    .line 2656
    return-void

    #@2d
    .line 2667
    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    #@2f
    if-ne v0, v7, :cond_2

    #@31
    .line 2668
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
    .line 1515
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
    .line 1514
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    #@d
    .line 1513
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    #@0
    .prologue
    .line 2215
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 2217
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@7
    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    #@d
    .line 2221
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    #@10
    .line 2213
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 4
    .param p1, "controller"    # Landroid/media/IVolumeController;

    #@0
    .prologue
    .line 5971
    const-string/jumbo v1, "set the volume controller"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 5974
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@8
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 5975
    return-void

    #@f
    .line 5979
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@11
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    #@14
    .line 5980
    if-eqz p1, :cond_1

    #@16
    .line 5983
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    new-instance v2, Lcom/android/server/audio/AudioService$4;

    #@1c
    invoke-direct {v2, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    #@1f
    .line 5991
    const/4 v3, 0x0

    #@20
    .line 5983
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 5996
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@25
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    #@28
    .line 5997
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
    .line 5970
    :cond_2
    return-void

    #@49
    .line 5992
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
    .line 6015
    const-string/jumbo v0, "set volume policy"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    #@6
    .line 6016
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
    .line 6014
    :cond_0
    :goto_0
    return-void

    #@11
    .line 6017
    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    #@13
    .line 6018
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
    .line 3787
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    #@2
    monitor-enter v8

    #@3
    .line 3788
    :try_start_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3789
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
    .line 3790
    const-string/jumbo v2, ")"

    #@33
    .line 3789
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
    .line 3792
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    #@41
    move-result v7

    #@42
    .line 3793
    .local v7, "delay":I
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@44
    .line 3797
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
    .line 3794
    const/16 v3, 0x64

    #@51
    .line 3795
    const/4 v4, 0x0

    #@52
    .line 3796
    const/4 v5, 0x0

    #@53
    move-object v1, p0

    #@54
    move-object v2, v9

    #@55
    move-object v6, v0

    #@56
    .line 3793
    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit v8

    #@5a
    .line 3786
    return-void

    #@5b
    .line 3787
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
    .line 2187
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    #@4
    if-nez v2, :cond_0

    #@6
    return v1

    #@7
    .line 2189
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    #@a
    move-result v2

    #@b
    packed-switch v2, :pswitch_data_0

    #@e
    .line 2202
    return v1

    #@f
    .line 2192
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
    .line 2195
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
    .line 2199
    :pswitch_2
    return v1

    #@22
    .line 2189
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
    .line 2727
    const/16 v1, 0x12

    #@2
    if-ge p2, v1, :cond_0

    #@4
    .line 2728
    const/4 v0, 0x0

    #@5
    .line 2729
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    #@8
    .line 2725
    return-void

    #@9
    .line 2728
    .end local v0    # "scoAudioMode":I
    :cond_0
    const/4 v0, -0x1

    #@a
    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    #@0
    .prologue
    .line 2738
    const-string/jumbo v1, "startBluetoothSco()"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 2739
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2742
    const/4 v1, 0x1

    #@e
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    #@11
    move-result-object v0

    #@12
    .line 2748
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 2749
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    #@19
    .line 2750
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 2737
    return-void

    #@1d
    .line 2740
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
    .line 2734
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    #@4
    .line 2733
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    #@0
    .prologue
    .line 5634
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@2
    monitor-enter v2

    #@3
    .line 5635
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    #@5
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    #@a
    .line 5636
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 5637
    return-object v0

    #@11
    .line 5634
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
    .line 2755
    const-string/jumbo v1, "stopBluetoothSco()"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 2756
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2759
    const/4 v1, 0x0

    #@e
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    #@11
    move-result-object v0

    #@12
    .line 2763
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 2764
    .local v2, "ident":J
    if-eqz v0, :cond_0

    #@18
    .line 2765
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    #@1b
    .line 2767
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 2754
    return-void

    #@1f
    .line 2757
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
    .line 715
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    #@3
    const/16 v1, 0x15

    #@5
    const/4 v2, 0x2

    #@6
    .line 716
    const/4 v5, 0x0

    #@7
    move v4, v3

    #@8
    move v6, v3

    #@9
    .line 715
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@c
    .line 714
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2550
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
    .line 2549
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5472
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    #@5
    .line 5471
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 6240
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
    .line 6241
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    #@24
    monitor-enter v2

    #@25
    .line 6242
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
    .line 6243
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_1

    #@33
    .line 6244
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
    .line 6245
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v4

    #@46
    .line 6244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 6245
    const-string/jumbo v4, " / uid "

    #@4d
    .line 6244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 6245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@54
    move-result v4

    #@55
    .line 6244
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
    .line 6246
    return-void

    #@62
    .line 6248
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
    .line 6250
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    monitor-exit v2

    #@6e
    .line 6239
    return-void

    #@6f
    .line 6241
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    #@70
    monitor-exit v2

    #@71
    throw v1
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 1
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    #@0
    .prologue
    .line 6342
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    #@5
    .line 6341
    return-void
.end method
