.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;,
        Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;,
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;,
        Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;,
        Lcom/android/server/audio/MediaFocusControl$1;,
        Lcom/android/server/audio/MediaFocusControl$2;
    }
.end annotation


# static fields
.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x7

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x8

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0x9

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xa

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final MSG_UNREGISTER_MEDIABUTTONINTENT:I = 0xb

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

.field private mNotifyFocusOwnerOnDuck:Z

.field private final mPRStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/PlayerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/MediaFocusControl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayClear()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V
    .locals 0
    .param p1, "prse"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemote()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 143
    const-string/jumbo v0, "enabled_notification_listeners"

    #@3
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 142
    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    #@9
    .line 407
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@10
    .line 409
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    #@17
    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Lcom/android/server/audio/AudioService$VolumeController;
    .param p4, "as"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 87
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    #@8
    .line 411
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$1;

    #@a
    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    #@d
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@f
    .line 469
    new-instance v3, Ljava/util/Stack;

    #@11
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    #@14
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@16
    .line 636
    iput-boolean v6, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    #@18
    .line 644
    new-instance v3, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@1f
    .line 987
    new-instance v3, Ljava/lang/Object;

    #@21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@24
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    #@26
    .line 1138
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$2;

    #@28
    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    #@2b
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@2d
    .line 1156
    new-instance v3, Ljava/lang/Object;

    #@2f
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@32
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    #@34
    .line 1162
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    #@36
    .line 1167
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    #@38
    .line 1181
    iput v5, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@3a
    .line 1207
    new-instance v3, Ljava/util/Stack;

    #@3c
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    #@3f
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@41
    .line 1213
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    #@43
    .line 1814
    new-instance v3, Ljava/util/ArrayList;

    #@45
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@48
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@4a
    .line 101
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@4c
    invoke-direct {v3, p0, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    #@4f
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@51
    .line 102
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@53
    .line 103
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@55
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@58
    move-result-object v3

    #@59
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    #@5b
    .line 104
    iput-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    #@5d
    .line 105
    iput-object p4, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    #@5f
    .line 107
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@61
    const-string/jumbo v4, "power"

    #@64
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@67
    move-result-object v1

    #@68
    check-cast v1, Landroid/os/PowerManager;

    #@6a
    .line 108
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "handleMediaEvent"

    #@6d
    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@70
    move-result-object v3

    #@71
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@73
    .line 109
    const/4 v3, 0x3

    #@74
    invoke-virtual {p4, v3}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    #@77
    move-result v0

    #@78
    .line 110
    .local v0, "maxMusicLevel":I
    new-instance v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@7a
    const/4 v4, -0x1

    #@7b
    invoke-direct {v3, v4, v0, v0}, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;-><init>(III)V

    #@7e
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@80
    .line 114
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@82
    const-string/jumbo v4, "phone"

    #@85
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@88
    move-result-object v2

    #@89
    .line 113
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@8b
    .line 115
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@8d
    const/16 v4, 0x20

    #@8f
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@92
    .line 117
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@94
    const-string/jumbo v4, "appops"

    #@97
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9a
    move-result-object v3

    #@9b
    check-cast v3, Landroid/app/AppOpsManager;

    #@9d
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    #@9f
    .line 119
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@a1
    const-string/jumbo v4, "keyguard"

    #@a4
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a7
    move-result-object v3

    #@a8
    check-cast v3, Landroid/app/KeyguardManager;

    #@aa
    .line 118
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@ac
    .line 120
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    #@ae
    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    #@b1
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    #@b3
    .line 122
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mHasRemotePlayback:Z

    #@b5
    .line 123
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    #@b7
    .line 125
    invoke-static {p0}, Lcom/android/server/audio/PlayerRecord;->setMediaFocusControl(Lcom/android/server/audio/MediaFocusControl;)V

    #@ba
    .line 127
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemote()V

    #@bd
    .line 100
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@a
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 568
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 570
    :cond_0
    const/4 v0, 0x1

    #@19
    return v0
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .locals 10
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 179
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@3
    .line 180
    const-string/jumbo v8, "android.permission.MEDIA_CONTENT_CONTROL"

    #@6
    .line 179
    invoke-virtual {v5, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_0

    #@c
    .line 182
    const/4 v5, 0x1

    #@d
    return v5

    #@e
    .line 186
    :cond_0
    if-eqz p1, :cond_3

    #@10
    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@13
    move-result-wide v6

    #@14
    .line 190
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@17
    move-result v2

    #@18
    .line 192
    .local v2, "currentUser":I
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v5

    #@1e
    .line 193
    const-string/jumbo v8, "enabled_notification_listeners"

    #@21
    .line 191
    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 195
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@27
    .line 196
    const-string/jumbo v5, ":"

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 197
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    #@2f
    .local v4, "i":I
    :goto_0
    array-length v5, v1

    #@30
    if-ge v4, v5, :cond_2

    #@32
    .line 199
    aget-object v5, v1, v4

    #@34
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@37
    move-result-object v0

    #@38
    .line 200
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    #@3a
    .line 201
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_1

    #@40
    .line 204
    const/4 v5, 0x2

    #@41
    .line 212
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 204
    return v5

    #@45
    .line 197
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@47
    goto :goto_0

    #@48
    .line 212
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 216
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v6    # "ident":J
    :cond_3
    return v9

    #@4c
    .line 211
    .restart local v6    # "ident":J
    :catchall_0
    move-exception v5

    #@4d
    .line 212
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@50
    .line 211
    throw v5
.end method

.method private checkUpdateRemoteControlDisplay_syncPrs(I)V
    .locals 1
    .param p1, "infoChangedFlags"    # I

    #@0
    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1587
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    #@b
    .line 1588
    return-void

    #@c
    .line 1595
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->updateRemoteControlDisplay_syncPrs(I)V

    #@f
    .line 1583
    return-void
.end method

.method private clearRemoteControlDisplay_syncPrs()V
    .locals 3

    #@0
    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1538
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1541
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@9
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    #@13
    .line 1536
    return-void

    #@14
    .line 1537
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 17
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    .line 946
    if-eqz p2, :cond_0

    #@2
    .line 947
    move-object/from16 v0, p0

    #@4
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@9
    .line 949
    :cond_0
    new-instance v5, Landroid/content/Intent;

    #@b
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    #@e
    const/4 v3, 0x0

    #@f
    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@12
    .line 950
    .local v5, "keyIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 951
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@1e
    move-object/from16 v16, v0

    #@20
    monitor-enter v16

    #@21
    .line 952
    :try_start_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@25
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_2

    #@2b
    .line 955
    :try_start_1
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2f
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    #@35
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    #@38
    move-result-object v2

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@3d
    .line 956
    if-eqz p2, :cond_1

    #@3f
    const/16 v4, 0x7bc

    #@41
    .line 957
    :goto_0
    move-object/from16 v0, p0

    #@43
    iget-object v7, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@45
    move-object/from16 v6, p0

    #@47
    .line 955
    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    :goto_1
    monitor-exit v16

    #@4b
    .line 945
    return-void

    #@4c
    .line 956
    :cond_1
    const/4 v4, 0x0

    #@4d
    goto :goto_0

    #@4e
    .line 958
    :catch_0
    move-exception v13

    #@4f
    .line 959
    .local v13, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string/jumbo v2, "MediaFocusControl"

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "Error sending pending intent "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@62
    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 960
    invoke-virtual {v13}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@74
    goto :goto_1

    #@75
    .line 951
    .end local v13    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    #@76
    monitor-exit v16

    #@77
    throw v2

    #@78
    .line 965
    :cond_2
    if-eqz p2, :cond_3

    #@7a
    .line 966
    :try_start_3
    const-string/jumbo v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    #@7d
    const/16 v3, 0x7bc

    #@7f
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@82
    .line 968
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    move-result-wide v14

    #@86
    .line 970
    .local v14, "ident":J
    :try_start_4
    move-object/from16 v0, p0

    #@88
    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@8a
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@8c
    .line 971
    move-object/from16 v0, p0

    #@8e
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@90
    .line 972
    move-object/from16 v0, p0

    #@92
    iget-object v9, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@94
    .line 971
    const/4 v7, 0x0

    #@95
    .line 972
    const/4 v10, -0x1

    #@96
    const/4 v11, 0x0

    #@97
    const/4 v12, 0x0

    #@98
    .line 970
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@9b
    .line 974
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9e
    goto :goto_1

    #@9f
    .line 973
    :catchall_1
    move-exception v2

    #@a0
    .line 974
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a3
    .line 973
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 922
    new-instance v1, Landroid/content/Intent;

    #@3
    const-string/jumbo v0, "android.intent.action.MEDIA_BUTTON"

    #@6
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@9
    .line 923
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    #@c
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@f
    .line 924
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    #@11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@18
    .line 925
    if-eqz p2, :cond_0

    #@1a
    .line 926
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1c
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@1f
    .line 927
    const-string/jumbo v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    #@22
    const/16 v2, 0x7bc

    #@24
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@27
    .line 929
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2a
    move-result-wide v10

    #@2b
    .line 931
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@2d
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2f
    .line 932
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    #@31
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@33
    const/4 v3, 0x0

    #@34
    const/4 v6, -0x1

    #@35
    const/4 v7, 0x0

    #@36
    const/4 v8, 0x0

    #@37
    .line 931
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 934
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 921
    return-void

    #@3e
    .line 933
    :catchall_0
    move-exception v0

    #@3f
    .line 934
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 933
    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 476
    const-string/jumbo v1, "\nAudio Focus stack entries (last is top of stack):"

    #@3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 477
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@b
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 479
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@1b
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 477
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1

    #@22
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    monitor-exit v2

    #@23
    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "\n Notify on duck: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "\n"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 475
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1235
    const-string/jumbo v1, "\nRemote Control Client stack entries (last is top of stack):"

    #@3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1236
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@8
    monitor-enter v2

    #@9
    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@b
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 1238
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 1236
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1

    #@23
    .line 1241
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    #@25
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 1242
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "\nCurrent remote control generation ID = "

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3f
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    monitor-exit v2

    #@41
    .line 1245
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@43
    monitor-enter v2

    #@44
    .line 1246
    :try_start_4
    const-string/jumbo v1, "\nRemote Volume State:"

    #@47
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "  has remote: "

    #@52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mHasRemotePlayback:Z

    #@58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v3, "  is remote active: "

    #@6b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    #@71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v3, "  rccId: "

    #@84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@8a
    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    #@8c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@97
    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v3, "  volume handling: "

    #@9f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    .line 1251
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@a5
    iget v1, v1, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    #@a7
    if-nez v1, :cond_1

    #@a9
    .line 1252
    const-string/jumbo v1, "PLAYBACK_VOLUME_FIXED(0)"

    #@ac
    .line 1250
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b7
    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v3, "  volume: "

    #@bf
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@c5
    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    #@c7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v1

    #@cb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v1

    #@cf
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d2
    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v3, "  volume steps: "

    #@da
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@e0
    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    #@e2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@ed
    monitor-exit v2

    #@ee
    .line 1234
    return-void

    #@ef
    .line 1241
    :catchall_1
    move-exception v1

    #@f0
    :try_start_5
    monitor-exit v3

    #@f1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f2
    .line 1252
    :cond_1
    :try_start_6
    const-string/jumbo v1, "PLAYBACK_VOLUME_VARIABLE(1)"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@f5
    goto :goto_1

    #@f6
    .line 1245
    :catchall_2
    move-exception v1

    #@f7
    monitor-exit v2

    #@f8
    throw v1
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1263
    const-string/jumbo v2, "\nRemote Control Display list entries:"

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1264
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@8
    monitor-enter v3

    #@9
    .line 1265
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .line 1266
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 1267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@1b
    .line 1268
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "  IRCD: "

    #@23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 1269
    const-string/jumbo v4, "  -- w:"

    #@32
    .line 1268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 1269
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    #@39
    move-result v4

    #@3a
    .line 1268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 1270
    const-string/jumbo v4, "  -- h:"

    #@41
    .line 1268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 1270
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    #@48
    move-result v4

    #@49
    .line 1268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 1271
    const-string/jumbo v4, "  -- wantsPosSync:"

    #@50
    .line 1268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 1271
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get5(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    #@57
    move-result v4

    #@58
    .line 1268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    .line 1272
    const-string/jumbo v4, "  -- "

    #@5f
    .line 1268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 1272
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_0

    #@69
    const-string/jumbo v2, "enabled"

    #@6c
    .line 1268
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    goto :goto_0

    #@78
    .line 1264
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    #@79
    monitor-exit v3

    #@7a
    throw v2

    #@7b
    .line 1272
    .restart local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :try_start_1
    const-string/jumbo v2, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7e
    goto :goto_1

    #@7f
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    monitor-exit v3

    #@80
    .line 1262
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1220
    const-string/jumbo v1, "\nRemote Control stack entries (last is top of stack):"

    #@3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1221
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@8
    monitor-enter v2

    #@9
    .line 1222
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@b
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 1223
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    #@1b
    const/4 v3, 0x1

    #@1c
    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 1221
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1

    #@23
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    monitor-exit v2

    #@24
    .line 1219
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1840
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .line 1841
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 1842
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    #@12
    .line 1843
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 1845
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 1846
    :catch_0
    move-exception v0

    #@21
    .line 1847
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    #@24
    const-string/jumbo v4, "Error connecting RCD to client: "

    #@27
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0

    #@2b
    .line 1837
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    .line 892
    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 893
    const-string/jumbo v0, "MediaFocusControl"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "not dispatching invalid media key event "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 894
    return-void

    #@21
    .line 897
    :cond_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    #@23
    monitor-enter v1

    #@24
    .line 898
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@26
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@27
    .line 899
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 900
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    #@2d
    if-nez v0, :cond_1

    #@2f
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    #@31
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    #@34
    move-result v0

    #@35
    const/4 v3, 0x2

    #@36
    if-ne v0, v3, :cond_2

    #@38
    .line 901
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c
    monitor-exit v1

    #@3d
    .line 902
    return-void

    #@3e
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3f
    monitor-exit v1

    #@40
    .line 907
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@43
    move-result v0

    #@44
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_3

    #@4a
    .line 908
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    #@4d
    .line 890
    :goto_0
    return-void

    #@4e
    .line 898
    :catchall_0
    move-exception v0

    #@4f
    :try_start_4
    monitor-exit v2

    #@50
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@51
    .line 897
    :catchall_1
    move-exception v0

    #@52
    monitor-exit v1

    #@53
    throw v0

    #@54
    .line 910
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    #@57
    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1003
    const/4 v1, 0x1

    #@2
    .line 1004
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@5
    move-result v0

    #@6
    .line 1005
    .local v0, "keyAction":I
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 1006
    if-nez v0, :cond_2

    #@b
    .line 1007
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 1009
    const/4 v2, 0x1

    #@12
    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    #@14
    .line 1010
    const/4 v2, 0x0

    #@15
    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    :goto_0
    monitor-exit v3

    #@18
    .line 1029
    packed-switch v1, :pswitch_data_0

    #@1b
    .line 998
    :goto_1
    :pswitch_0
    return-void

    #@1c
    .line 1011
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    #@1e
    if-eqz v2, :cond_0

    #@20
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    #@22
    if-nez v2, :cond_0

    #@24
    .line 1012
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@27
    move-result v2

    #@28
    and-int/lit16 v2, v2, 0x80

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 1014
    const/4 v2, 0x1

    #@2d
    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    #@2f
    .line 1015
    const/4 v1, 0x2

    #@30
    goto :goto_0

    #@31
    .line 1017
    :cond_2
    if-ne v0, v2, :cond_0

    #@33
    .line 1018
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    #@35
    if-eqz v2, :cond_0

    #@37
    .line 1020
    const/4 v2, 0x0

    #@38
    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    #@3a
    .line 1021
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    #@3c
    if-nez v2, :cond_0

    #@3e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    move-result v2

    #@42
    if-nez v2, :cond_0

    #@44
    .line 1022
    const/4 v1, 0x3

    #@45
    goto :goto_0

    #@46
    .line 1005
    :catchall_0
    move-exception v2

    #@47
    monitor-exit v3

    #@48
    throw v2

    #@49
    .line 1036
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/MediaFocusControl;->startVoiceBasedInteractions(Z)V

    #@4c
    goto :goto_1

    #@4d
    .line 1040
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    #@50
    goto :goto_1

    #@51
    .line 1029
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 307
    if-eqz p2, :cond_0

    #@3
    array-length v2, p2

    #@4
    if-nez v2, :cond_1

    #@6
    .line 309
    :cond_0
    return v3

    #@7
    .line 311
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 312
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    #@d
    if-ge v1, v2, :cond_3

    #@f
    .line 313
    aget-object v2, p2, v1

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 315
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 312
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 319
    :cond_3
    return v3
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@a
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/audio/PlayerRecord;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1384
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 1386
    :cond_0
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    #@0
    .prologue
    .line 574
    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    #@3
    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method protected static isPlaystateActive(I)Z
    .locals 1
    .param p0, "playState"    # I

    #@0
    .prologue
    .line 2121
    packed-switch p0, :pswitch_data_0

    #@3
    .line 2130
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 2128
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 2121
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1056
    if-nez p0, :cond_0

    #@2
    .line 1057
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 1059
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 1069
    const/16 v0, 0x4f

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 1070
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 1072
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 450
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 451
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@10
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@16
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    #@1a
    .line 447
    :cond_0
    return-void
.end method

.method private onRcDisplayClear()V
    .locals 5

    #@0
    .prologue
    .line 1458
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v1

    #@3
    .line 1459
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1460
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@c
    .line 1462
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@e
    .line 1463
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    .line 1462
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@14
    monitor-exit v1

    #@15
    .line 1455
    return-void

    #@16
    .line 1459
    :catchall_0
    move-exception v0

    #@17
    :try_start_3
    monitor-exit v2

    #@18
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19
    .line 1458
    :catchall_1
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 1507
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v2

    #@3
    .line 1508
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    #@5
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1509
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1514
    :try_start_2
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@c
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    #@e
    .line 1515
    const/4 v5, 0x0

    #@f
    .line 1514
    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12
    .line 1519
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    #@14
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@17
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@18
    monitor-exit v2

    #@19
    .line 1506
    return-void

    #@1a
    .line 1520
    :catch_0
    move-exception v0

    #@1b
    .line 1521
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v1, "MediaFocusControl"

    #@1e
    const-string/jumbo v4, "Current valid remote client is dead: "

    #@21
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 1522
    const/4 v1, 0x0

    #@25
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 1524
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@29
    .line 1525
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v1, "MediaFocusControl"

    #@2c
    const-string/jumbo v4, "Dead display in onRcDisplayInitInfo()"

    #@2f
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 1508
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@34
    :try_start_7
    monitor-exit v3

    #@35
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@36
    .line 1507
    :catchall_1
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method private onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    .locals 6
    .param p1, "prse"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1472
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v2

    #@3
    .line 1473
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    #@5
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1474
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    #@c
    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1477
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@1c
    .line 1480
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@1e
    .line 1481
    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    #@21
    move-result-object v4

    #@22
    .line 1482
    const/4 v5, 0x0

    #@23
    .line 1480
    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 1487
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    #@28
    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    #@2a
    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2e
    monitor-exit v2

    #@2f
    .line 1471
    return-void

    #@30
    .line 1488
    :catch_0
    move-exception v0

    #@31
    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v1, "MediaFocusControl"

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "Current valid remote client is dead: "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 1490
    const/4 v1, 0x0

    #@4c
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 1473
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@50
    :try_start_5
    monitor-exit v3

    #@51
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@52
    .line 1472
    :catchall_1
    move-exception v1

    #@53
    monitor-exit v2

    #@54
    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 0

    #@0
    .prologue
    .line 2232
    return-void
.end method

.method private onReevaluateRemoteControlDisplays()V
    .locals 17

    #@0
    .prologue
    .line 253
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v8

    #@4
    .line 255
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    #@6
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v1

    #@c
    .line 256
    const-string/jumbo v2, "enabled_notification_listeners"

    #@f
    .line 254
    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@12
    move-result-object v13

    #@13
    .line 259
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@15
    monitor-enter v15

    #@16
    .line 260
    :try_start_0
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@1a
    move-object/from16 v16, v0

    #@1c
    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 264
    if-nez v13, :cond_1

    #@1f
    .line 265
    const/4 v12, 0x0

    #@20
    .line 269
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    #@22
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v10

    #@28
    .line 270
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 272
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v9

    #@32
    check-cast v9, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@34
    .line 273
    .local v9, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    #@37
    move-result-object v1

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 274
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    #@3d
    move-result v14

    #@3e
    .line 275
    .local v14, "wasEnabled":Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    #@41
    move-result-object v1

    #@42
    move-object/from16 v0, p0

    #@44
    invoke-direct {v0, v1, v12}, Lcom/android/server/audio/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    #@47
    move-result v1

    #@48
    invoke-static {v9, v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    #@4b
    .line 277
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    move-result v1

    #@4f
    if-eq v14, v1, :cond_0

    #@51
    .line 280
    :try_start_2
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@54
    move-result-object v1

    #@55
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    #@58
    move-result v2

    #@59
    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    #@5c
    .line 283
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@5f
    move-result-object v1

    #@60
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    #@63
    move-result v2

    #@64
    .line 282
    move-object/from16 v0, p0

    #@66
    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    #@69
    .line 285
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_0

    #@6f
    .line 286
    move-object/from16 v0, p0

    #@71
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@73
    .line 287
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    #@76
    move-result v4

    #@77
    .line 288
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    #@7a
    move-result v5

    #@7b
    .line 289
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@7e
    move-result-object v6

    #@7f
    .line 286
    const/16 v2, 0x9

    #@81
    const/4 v3, 0x2

    #@82
    .line 289
    const/4 v7, 0x0

    #@83
    .line 286
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@86
    goto :goto_1

    #@87
    .line 291
    :catch_0
    move-exception v11

    #@88
    .line 292
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "MediaFocusControl"

    #@8b
    const-string/jumbo v2, "Error en/disabling RCD: "

    #@8e
    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@91
    goto :goto_1

    #@92
    .line 260
    .end local v9    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v14    # "wasEnabled":Z
    :catchall_0
    move-exception v1

    #@93
    :try_start_4
    monitor-exit v16

    #@94
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@95
    .line 259
    :catchall_1
    move-exception v1

    #@96
    monitor-exit v15

    #@97
    throw v1

    #@98
    .line 267
    :cond_1
    :try_start_5
    const-string/jumbo v1, ":"

    #@9b
    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@9e
    move-result-object v12

    #@9f
    .local v12, "enabledComponents":[Ljava/lang/String;
    goto :goto_0

    #@a0
    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_2
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@a1
    monitor-exit v15

    #@a2
    .line 250
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 6
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    #@0
    .prologue
    .line 2057
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v4

    #@3
    .line 2062
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@5
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    #@d
    .line 2063
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@f
    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    #@15
    .line 2064
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    #@18
    move-result v3

    #@19
    if-ne v3, p1, :cond_1

    #@1b
    .line 2065
    iput-object p2, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    monitor-exit v4

    #@1e
    .line 2056
    return-void

    #@1f
    .line 2062
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 2069
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    #@23
    .line 2071
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_1
    const-string/jumbo v3, "MediaFocusControl"

    #@26
    const-string/jumbo v5, "Wrong index accessing media button stack, lock error? "

    #@29
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_1

    #@2d
    .line 2057
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit v4

    #@2f
    throw v3
.end method

.method private plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    .locals 6
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    #@0
    .prologue
    .line 1821
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 1822
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 1823
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@12
    .line 1825
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_0
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@15
    move-result-object v3

    #@16
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    #@19
    move-result v4

    #@1a
    .line 1826
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    #@1d
    move-result v5

    #@1e
    .line 1825
    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    #@21
    .line 1827
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get5(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 1828
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@2a
    move-result-object v3

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    goto :goto_0

    #@30
    .line 1830
    :catch_0
    move-exception v2

    #@31
    .line 1831
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    #@34
    const-string/jumbo v4, "Error connecting RCD to RCC in RCC registration"

    #@37
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0

    #@3b
    .line 1820
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 247
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@3
    const/16 v1, 0xa

    #@5
    const/4 v2, 0x2

    #@6
    const/4 v5, 0x0

    #@7
    move v4, v3

    #@8
    move v6, v3

    #@9
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@c
    .line 246
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1, "focusGain"    # I

    #@0
    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 464
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@12
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    #@15
    goto :goto_0

    #@16
    .line 460
    :cond_0
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .locals 5
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    #@0
    .prologue
    .line 587
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    #@5
    move-result v1

    #@6
    .line 588
    .local v1, "lastLockedFocusOwnerIndex":I
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@8
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    #@b
    move-result v2

    #@c
    add-int/lit8 v0, v2, -0x1

    #@e
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    #@10
    .line 589
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    #@18
    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 590
    move v1, v0

    #@1f
    .line 588
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 593
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@24
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    #@27
    move-result v2

    #@28
    if-ne v1, v2, :cond_2

    #@2a
    .line 595
    const-string/jumbo v2, "MediaFocusControl"

    #@2d
    const-string/jumbo v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    #@30
    .line 596
    new-instance v4, Ljava/lang/Exception;

    #@32
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    #@35
    .line 595
    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 598
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    #@3b
    move-result v2

    #@3c
    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    #@3f
    .line 599
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@41
    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 600
    const/4 v2, 0x1

    #@45
    return v2

    #@46
    .line 602
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@48
    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    #@4b
    .line 603
    const/4 v2, 0x2

    #@4c
    return v2
.end method

.method private pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 12
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1290
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 1291
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@a
    new-instance v9, Lcom/android/server/audio/PlayerRecord;

    #@c
    invoke-direct {v9, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@f
    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 1292
    const/4 v8, 0x1

    #@13
    return v8

    #@14
    .line 1293
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@16
    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@19
    move-result-object v8

    #@1a
    check-cast v8, Lcom/android/server/audio/PlayerRecord;

    #@1c
    invoke-virtual {v8, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_1

    #@22
    .line 1295
    const/4 v8, 0x0

    #@23
    return v8

    #@24
    .line 1297
    :cond_1
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    #@26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v9

    #@2a
    .line 1298
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    #@2d
    move-result-object v10

    #@2e
    .line 1297
    const/16 v11, 0x1f

    #@30
    invoke-virtual {v8, v11, v9, v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_2

    #@36
    .line 1299
    const/4 v8, 0x0

    #@37
    return v8

    #@38
    .line 1301
    :cond_2
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@3a
    invoke-virtual {v8}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    #@3d
    move-result-object v4

    #@3e
    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    #@40
    .line 1302
    .local v4, "oldTopPrse":Lcom/android/server/audio/PlayerRecord;
    const/4 v7, 0x0

    #@41
    .line 1303
    .local v7, "topChanged":Z
    const/4 v5, 0x0

    #@42
    .line 1304
    .local v5, "prse":Lcom/android/server/audio/PlayerRecord;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@44
    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    #@47
    move-result v3

    #@48
    .line 1305
    .local v3, "lastPlayingIndex":I
    const/4 v1, -0x1

    #@49
    .line 1309
    .local v1, "inStackIndex":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@4b
    invoke-virtual {v8}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    move-result v8

    #@4f
    add-int/lit8 v2, v8, -0x1

    #@51
    .local v2, "index":I
    move-object v6, v5

    #@52
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .local v6, "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_0
    if-ltz v2, :cond_5

    #@54
    .line 1310
    :try_start_1
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@56
    invoke-virtual {v8, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@5c
    .line 1311
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .local v5, "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_3

    #@62
    .line 1312
    move v3, v2

    #@63
    .line 1314
    :cond_3
    invoke-virtual {v5, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    #@66
    move-result v8

    #@67
    if-eqz v8, :cond_4

    #@69
    .line 1315
    move v1, v2

    #@6a
    .line 1309
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@6c
    move-object v6, v5

    #@6d
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_0

    #@6e
    .line 1319
    :cond_5
    const/4 v8, -0x1

    #@6f
    if-ne v1, v8, :cond_6

    #@71
    .line 1321
    :try_start_3
    new-instance v5, Lcom/android/server/audio/PlayerRecord;

    #@73
    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@76
    .line 1324
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_4
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@78
    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    #@7b
    .line 1352
    .end local v2    # "index":I
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_1
    return v7

    #@7c
    .line 1327
    .restart local v2    # "index":I
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_6
    :try_start_5
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@7e
    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    #@81
    move-result v8

    #@82
    const/4 v9, 0x1

    #@83
    if-le v8, v9, :cond_9

    #@85
    .line 1328
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@87
    invoke-virtual {v8, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@8a
    move-result-object v5

    #@8b
    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    #@8d
    .line 1330
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_6
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@8f
    invoke-virtual {v8, v1}, Ljava/util/Stack;->removeElementAt(I)V

    #@92
    .line 1331
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    #@95
    move-result v8

    #@96
    if-eqz v8, :cond_7

    #@98
    .line 1333
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@9a
    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    #@9d
    goto :goto_1

    #@9e
    .line 1345
    .end local v2    # "index":I
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    #@9f
    .line 1347
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    const-string/jumbo v8, "MediaFocusControl"

    #@a2
    new-instance v9, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v10, "Wrong index (inStack="

    #@aa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v9

    #@b2
    const-string/jumbo v10, " lastPlaying="

    #@b5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v9

    #@bd
    .line 1348
    const-string/jumbo v10, " size="

    #@c0
    .line 1347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    .line 1348
    iget-object v10, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@c6
    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    #@c9
    move-result v10

    #@ca
    .line 1347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v9

    #@ce
    .line 1349
    const-string/jumbo v10, " accessing media button stack"

    #@d1
    .line 1347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v9

    #@d5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@dc
    goto :goto_1

    #@dd
    .line 1336
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "index":I
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_7
    if-le v1, v3, :cond_8

    #@df
    .line 1337
    :try_start_7
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@e1
    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    #@e4
    goto :goto_1

    #@e5
    .line 1339
    :cond_8
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@e7
    add-int/lit8 v9, v3, -0x1

    #@e9
    invoke-virtual {v8, v9, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    #@ec
    goto :goto_1

    #@ed
    .line 1345
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_1
    move-exception v0

    #@ee
    .restart local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v5, v6

    #@ef
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_2

    #@f0
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_9
    move-object v5, v6

    #@f1
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_1
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    #@0
    .prologue
    .line 1859
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 1860
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 1861
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@12
    .line 1862
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 1863
    const/4 v2, 0x1

    #@25
    return v2

    #@26
    .line 1866
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    const/4 v2, 0x0

    #@27
    return v2
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .locals 17
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1885
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    monitor-enter v15

    #@3
    .line 1886
    :try_start_0
    move-object/from16 v0, p0

    #@5
    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@7
    move-object/from16 v16, v0

    #@9
    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 1887
    if-eqz p1, :cond_0

    #@c
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    :cond_0
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v15

    #@14
    .line 1888
    return-void

    #@15
    .line 1890
    :cond_1
    :try_start_3
    new-instance v11, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@17
    move-object/from16 v0, p0

    #@19
    move-object/from16 v1, p1

    #@1b
    move/from16 v2, p2

    #@1d
    move/from16 v3, p3

    #@1f
    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    #@22
    .line 1891
    .local v11, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    #@23
    invoke-static {v11, v4}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    #@26
    .line 1892
    move-object/from16 v0, p4

    #@28
    invoke-static {v11, v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    #@2b
    .line 1893
    invoke-virtual {v11}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->init()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_2

    #@31
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@32
    monitor-exit v15

    #@33
    .line 1895
    return-void

    #@34
    .line 1898
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    #@36
    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    .line 1902
    move-object/from16 v0, p0

    #@3d
    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@3f
    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v14

    #@43
    .line 1903
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_4

    #@49
    .line 1904
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v13

    #@4d
    check-cast v13, Lcom/android/server/audio/PlayerRecord;

    #@4f
    .line 1905
    .local v13, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@52
    move-result-object v4

    #@53
    if-eqz v4, :cond_3

    #@55
    .line 1907
    :try_start_6
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@58
    move-result-object v4

    #@59
    move-object/from16 v0, p1

    #@5b
    move/from16 v1, p2

    #@5d
    move/from16 v2, p3

    #@5f
    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@62
    goto :goto_0

    #@63
    .line 1908
    :catch_0
    move-exception v12

    #@64
    .line 1909
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v4, "MediaFocusControl"

    #@67
    const-string/jumbo v5, "Error connecting RCD to client: "

    #@6a
    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 1886
    .end local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v4

    #@6f
    :try_start_8
    monitor-exit v16

    #@70
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@71
    .line 1885
    :catchall_1
    move-exception v4

    #@72
    monitor-exit v15

    #@73
    throw v4

    #@74
    .line 1917
    .restart local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    #@76
    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@78
    const/16 v5, 0x9

    #@7a
    const/4 v6, 0x2

    #@7b
    .line 1919
    const/4 v10, 0x0

    #@7c
    move/from16 v7, p2

    #@7e
    move/from16 v8, p3

    #@80
    move-object/from16 v9, p1

    #@82
    .line 1917
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@85
    :try_start_a
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@86
    monitor-exit v15

    #@87
    .line 1883
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    #@0
    .prologue
    .line 497
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_2

    #@8
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@a
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 500
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@18
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@1e
    .line 501
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    #@21
    .line 502
    if-eqz p3, :cond_0

    #@23
    .line 503
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@26
    move-result-object v0

    #@27
    .line 504
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    #@2a
    .line 505
    const/4 v3, 0x0

    #@2b
    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    #@2e
    .line 507
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    if-eqz p2, :cond_1

    #@30
    .line 509
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    #@33
    .line 495
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    return-void

    #@34
    .line 516
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@36
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v2

    #@3a
    .line 517
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_1

    #@40
    .line 518
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@46
    .line 519
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_3

    #@4c
    .line 520
    const-string/jumbo v3, "MediaFocusControl"

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 522
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@69
    .line 523
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    #@6c
    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 536
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    .line 537
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@a
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    #@13
    move-result v1

    #@14
    .line 540
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@16
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v2

    #@1a
    .line 541
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 542
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@26
    .line 543
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 544
    const-string/jumbo v3, "MediaFocusControl"

    #@2f
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 545
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@49
    goto :goto_1

    #@4a
    .line 536
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1
    const/4 v1, 0x0

    #@4b
    .local v1, "isTopOfStackForClientToRemove":Z
    goto :goto_0

    #@4c
    .line 549
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_2
    if-eqz v1, :cond_3

    #@4e
    .line 552
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    #@51
    .line 534
    :cond_3
    return-void
.end method

.method private removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1363
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v1, v3, -0x1

    #@8
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 1364
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    #@12
    .line 1365
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1366
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->destroy()V

    #@1b
    .line 1368
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@1d
    invoke-virtual {v3, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 1361
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    return-void

    #@21
    .line 1363
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0

    #@24
    .line 1372
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    #@25
    .line 1374
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v3, "MediaFocusControl"

    #@28
    const-string/jumbo v4, "Wrong index accessing media button stack, lock error? "

    #@2b
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    #@0
    .prologue
    .line 350
    if-nez p2, :cond_1

    #@2
    .line 351
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@5
    .line 356
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    int-to-long v2, p6

    #@a
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@d
    .line 348
    return-void

    #@e
    .line 352
    :cond_1
    const/4 v0, 0x1

    #@f
    if-ne p2, v0, :cond_0

    #@11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 353
    return-void
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    .line 1047
    const/4 v1, 0x0

    #@1
    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@4
    move-result-object v0

    #@5
    .line 1048
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    #@8
    .line 1050
    const/4 v1, 0x1

    #@9
    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@c
    move-result-object v0

    #@d
    .line 1051
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    #@10
    .line 1045
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 8
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 2136
    if-nez p2, :cond_0

    #@2
    .line 2138
    return-void

    #@3
    .line 2140
    :cond_0
    const/4 v4, 0x0

    #@4
    .line 2141
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@6
    monitor-enter v6

    #@7
    .line 2146
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@9
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    #@c
    move-result v5

    #@d
    add-int/lit8 v2, v5, -0x1

    #@f
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    #@11
    .line 2147
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@13
    invoke-virtual {v5, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    #@19
    .line 2149
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    #@1c
    move-result v5

    #@1d
    if-ne v5, p1, :cond_3

    #@1f
    .line 2150
    iget-object v4, v3, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .end local v2    # "index":I
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_1
    :goto_1
    monitor-exit v6

    #@22
    .line 2159
    if-eqz v4, :cond_2

    #@24
    .line 2161
    const/4 v5, -0x1

    #@25
    :try_start_1
    invoke-interface {v4, p2, v5}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@28
    .line 2134
    :cond_2
    :goto_2
    return-void

    #@29
    .line 2146
    .restart local v2    # "index":I
    .restart local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2154
    .end local v2    # "index":I
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v1

    #@2d
    .line 2156
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    const-string/jumbo v5, "MediaFocusControl"

    #@30
    const-string/jumbo v7, "Wrong index accessing media button stack, lock error? "

    #@33
    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    goto :goto_1

    #@37
    .line 2141
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    #@38
    monitor-exit v6

    #@39
    throw v5

    #@3a
    .line 2162
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catch_1
    move-exception v0

    #@3b
    .line 2163
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "MediaFocusControl"

    #@3e
    const-string/jumbo v6, "Error dispatching relative volume update"

    #@41
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    goto :goto_2
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 5
    .param p1, "newClientGeneration"    # I

    #@0
    .prologue
    .line 1421
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .line 1422
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 1423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    #@12
    .line 1424
    .local v1, "se":Lcom/android/server/audio/PlayerRecord;
    if-eqz v1, :cond_0

    #@14
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@17
    move-result-object v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 1426
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    goto :goto_0

    #@22
    .line 1427
    :catch_0
    move-exception v0

    #@23
    .line 1428
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    #@26
    const-string/jumbo v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    #@29
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 1429
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@2f
    .line 1430
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    #@32
    goto :goto_0

    #@33
    .line 1418
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 6
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    #@0
    .prologue
    .line 1397
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v4

    #@3
    .line 1398
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    if-lez v3, :cond_0

    #@b
    .line 1399
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .line 1400
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 1401
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1403
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 1405
    :catch_0
    move-exception v2

    #@26
    .line 1406
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "MediaFocusControl"

    #@29
    const-string/jumbo v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    #@2c
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 1407
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    #@32
    .line 1408
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1397
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@37
    monitor-exit v4

    #@38
    throw v3

    #@39
    :cond_0
    monitor-exit v4

    #@3a
    .line 1396
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    #@0
    .prologue
    .line 1447
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    #@3
    .line 1449
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    #@6
    .line 1445
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 11
    .param p1, "needWakeLock"    # Z

    #@0
    .prologue
    .line 1080
    const/4 v7, 0x0

    #@1
    .line 1085
    .local v7, "voiceIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v9, "power"

    #@6
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v6

    #@a
    check-cast v6, Landroid/os/PowerManager;

    #@c
    .line 1086
    .local v6, "pm":Landroid/os/PowerManager;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@e
    if-eqz v8, :cond_3

    #@10
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@12
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    #@15
    move-result v3

    #@16
    .line 1087
    :goto_0
    if-nez v3, :cond_4

    #@18
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    #@1b
    move-result v8

    #@1c
    if-eqz v8, :cond_4

    #@1e
    .line 1088
    new-instance v7, Landroid/content/Intent;

    #@20
    .end local v7    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v8, "android.speech.action.WEB_SEARCH"

    #@23
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@26
    .line 1089
    .local v7, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v8, "MediaFocusControl"

    #@29
    const-string/jumbo v9, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    #@2c
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1105
    :goto_1
    if-eqz p1, :cond_0

    #@31
    .line 1106
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@33
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@36
    .line 1108
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@39
    move-result-wide v4

    #@3a
    .line 1110
    .local v4, "identity":J
    if-eqz v7, :cond_1

    #@3c
    .line 1111
    const/high16 v8, 0x10800000

    #@3e
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@41
    .line 1113
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@43
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@45
    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 1118
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 1119
    if-eqz p1, :cond_2

    #@4d
    .line 1120
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4f
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    #@52
    .line 1079
    :cond_2
    :goto_2
    return-void

    #@53
    .line 1086
    .end local v4    # "identity":J
    .local v7, "voiceIntent":Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x0

    #@54
    .local v3, "isLocked":Z
    goto :goto_0

    #@55
    .line 1092
    .end local v3    # "isLocked":Z
    :cond_4
    const-string/jumbo v8, "deviceidle"

    #@58
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@5b
    move-result-object v8

    #@5c
    .line 1091
    invoke-static {v8}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@5f
    move-result-object v0

    #@60
    .line 1093
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_5

    #@62
    .line 1095
    :try_start_1
    const-string/jumbo v8, "voice-search"

    #@65
    invoke-interface {v0, v8}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@68
    .line 1099
    :cond_5
    :goto_3
    new-instance v7, Landroid/content/Intent;

    #@6a
    .end local v7    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v8, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@6d
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@70
    .line 1100
    .local v7, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v9, "android.speech.extras.EXTRA_SECURE"

    #@73
    .line 1101
    if-eqz v3, :cond_6

    #@75
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@77
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    #@7a
    move-result v8

    #@7b
    .line 1100
    :goto_4
    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@7e
    .line 1102
    const-string/jumbo v8, "MediaFocusControl"

    #@81
    const-string/jumbo v9, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    #@84
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    goto :goto_1

    #@88
    .line 1101
    :cond_6
    const/4 v8, 0x0

    #@89
    goto :goto_4

    #@8a
    .line 1115
    .end local v0    # "dic":Landroid/os/IDeviceIdleController;
    .restart local v4    # "identity":J
    :catch_0
    move-exception v1

    #@8b
    .line 1116
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string/jumbo v8, "MediaFocusControl"

    #@8e
    new-instance v9, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v10, "No activity for search: "

    #@96
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v9

    #@a2
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a5
    .line 1118
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a8
    .line 1119
    if-eqz p1, :cond_2

    #@aa
    .line 1120
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@ac
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    #@af
    goto :goto_2

    #@b0
    .line 1117
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v8

    #@b1
    .line 1118
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b4
    .line 1119
    if-eqz p1, :cond_7

    #@b6
    .line 1120
    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b8
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    #@bb
    .line 1117
    :cond_7
    throw v8

    #@bc
    .line 1096
    .end local v4    # "identity":J
    .restart local v0    # "dic":Landroid/os/IDeviceIdleController;
    .local v7, "voiceIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    #@bd
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method private updateRemoteControlDisplay_syncPrs(I)V
    .locals 6
    .param p1, "infoChangedFlags"    # I

    #@0
    .prologue
    .line 1553
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    #@8
    .line 1554
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    move v0, p1

    #@9
    .line 1557
    .local v0, "infoFlagsAboutToBeUsed":I
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@c
    move-result-object v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 1559
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    #@12
    .line 1560
    return-void

    #@13
    .line 1562
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    #@15
    monitor-enter v3

    #@16
    .line 1563
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@19
    move-result-object v2

    #@1a
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    #@1c
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_1

    #@22
    .line 1565
    const/16 v0, 0xf

    #@24
    .line 1567
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    #@2a
    .line 1568
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v3

    #@31
    .line 1571
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@33
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@35
    const/4 v4, 0x2

    #@36
    .line 1572
    const/4 v5, 0x0

    #@37
    .line 1571
    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    #@3e
    .line 1552
    return-void

    #@3f
    .line 1562
    :catchall_0
    move-exception v2

    #@40
    monitor-exit v3

    #@41
    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 844
    const-string/jumbo v1, "MediaFocusControl"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, " AudioFocus  abandonAudioFocus() from "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 847
    :try_start_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@1d
    monitor-enter v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 848
    const/4 v2, 0x1

    #@1f
    const/4 v3, 0x1

    #@20
    :try_start_1
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :try_start_2
    monitor-exit v1

    #@24
    .line 858
    :goto_0
    return v4

    #@25
    .line 847
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v1

    #@27
    throw v2
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    #@28
    .line 850
    :catch_0
    move-exception v0

    #@29
    .line 854
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string/jumbo v1, "MediaFocusControl"

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 855
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    #@46
    goto :goto_0
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 647
    if-nez p1, :cond_0

    #@2
    .line 648
    return-void

    #@3
    .line 650
    :cond_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 651
    const/4 v0, 0x0

    #@7
    .line 652
    .local v0, "found":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@19
    .line 653
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 654
    const/4 v0, 0x1

    #@28
    .line 658
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    if-eqz v0, :cond_3

    #@2a
    monitor-exit v4

    #@2b
    .line 659
    return-void

    #@2c
    .line 661
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v4

    #@35
    .line 646
    return-void

    #@36
    .line 650
    .end local v2    # "pcb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@37
    monitor-exit v4

    #@38
    throw v3
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .locals 9
    .param p1, "streamType"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2083
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@4
    monitor-enter v4

    #@5
    .line 2086
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@7
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    #@a
    move-result v3

    #@b
    add-int/lit8 v1, v3, -0x1

    #@d
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    #@f
    .line 2087
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@11
    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    #@17
    .line 2088
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    iget v3, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    #@19
    if-ne v3, v8, :cond_1

    #@1b
    .line 2089
    iget-object v3, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    #@1d
    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    #@1f
    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->isPlaystateActive(I)Z

    #@22
    move-result v3

    #@23
    .line 2088
    if-eqz v3, :cond_1

    #@25
    .line 2090
    iget v3, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackStream:I

    #@27
    if-ne v3, p1, :cond_1

    #@29
    .line 2093
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@2b
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2c
    .line 2094
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@2e
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    #@31
    move-result v6

    #@32
    iput v6, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    #@34
    .line 2095
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@36
    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    #@38
    iput v6, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    #@3a
    .line 2096
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@3c
    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    #@3e
    iput v6, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    #@40
    .line 2097
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@42
    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    #@44
    iput v6, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    #@46
    .line 2098
    const/4 v3, 0x1

    #@47
    iput-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4a
    monitor-exit v4

    #@4b
    .line 2100
    return v8

    #@4c
    .line 2093
    :catchall_0
    move-exception v3

    #@4d
    :try_start_3
    monitor-exit v5

    #@4e
    throw v3
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4f
    .line 2103
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    #@50
    .line 2105
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    const-string/jumbo v3, "MediaFocusControl"

    #@53
    const-string/jumbo v5, "Wrong index accessing RC stack, lock error? "

    #@56
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@59
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    monitor-exit v4

    #@5a
    .line 2108
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@5c
    monitor-enter v3

    #@5d
    .line 2109
    const/4 v4, 0x0

    #@5e
    :try_start_5
    iput-boolean v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@60
    monitor-exit v3

    #@61
    .line 2111
    return v7

    #@62
    .line 2086
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@64
    goto :goto_0

    #@65
    .line 2083
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catchall_1
    move-exception v3

    #@66
    monitor-exit v4

    #@67
    throw v3

    #@68
    .line 2108
    :catchall_2
    move-exception v4

    #@69
    monitor-exit v3

    #@6a
    throw v4
.end method

.method protected discardAudioFocusOwner()V
    .locals 3

    #@0
    .prologue
    .line 434
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@5
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 437
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@d
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@13
    .line 438
    .local v0, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v1, -0x1

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    #@17
    .line 439
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .end local v0    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_0
    monitor-exit v2

    #@1b
    .line 433
    return-void

    #@1c
    .line 434
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 878
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    #@4
    .line 877
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 887
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    #@4
    .line 886
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "\nMediaFocusControl dump time: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 132
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    #@f
    move-result-object v1

    #@10
    new-instance v2, Ljava/util/Date;

    #@12
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    #@15
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    #@27
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    #@2a
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    #@2d
    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    #@30
    .line 130
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    #@0
    .prologue
    .line 738
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@5
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 740
    const/4 v0, 0x0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 742
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@10
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@16
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v0

    #@1a
    monitor-exit v1

    #@1b
    return v0

    #@1c
    .line 738
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method protected getRemoteStreamMaxVolume()I
    .locals 3

    #@0
    .prologue
    .line 2169
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@2
    monitor-enter v1

    #@3
    .line 2170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@5
    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v0, v2, :cond_0

    #@a
    .line 2171
    const/4 v0, 0x0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 2173
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@f
    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit v1

    #@12
    return v0

    #@13
    .line 2169
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .locals 3

    #@0
    .prologue
    .line 2178
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@2
    monitor-enter v1

    #@3
    .line 2179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@5
    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v0, v2, :cond_0

    #@a
    .line 2180
    const/4 v0, 0x0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 2182
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@f
    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit v1

    #@12
    return v0

    #@13
    .line 2178
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    #@0
    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    #@2
    return v0
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 685
    move-object v0, p1

    #@1
    .line 686
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$3;

    #@3
    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    #@6
    .line 704
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@9
    .line 684
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    #@0
    .prologue
    .line 711
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@12
    .line 714
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 715
    :catch_0
    move-exception v0

    #@17
    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 717
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@29
    move-result-object v5

    #@2a
    .line 716
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0

    #@36
    .line 710
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    #@0
    .prologue
    .line 726
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@12
    .line 729
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 730
    :catch_0
    move-exception v0

    #@17
    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 732
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@29
    move-result-object v5

    #@2a
    .line 731
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0

    #@36
    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1133
    const/16 v0, 0x7bc

    #@2
    if-ne p3, v0, :cond_0

    #@4
    .line 1134
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@9
    .line 1132
    :cond_0
    return-void
.end method

.method protected postReevaluateRemote()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2229
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@3
    const/4 v1, 0x3

    #@4
    const/4 v2, 0x2

    #@5
    const/4 v5, 0x0

    #@6
    move v4, v3

    #@7
    move v6, v3

    #@8
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@b
    .line 2228
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "c"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1645
    const-string/jumbo v0, "MediaFocusControl"

    #@e
    const-string/jumbo v1, "Invalid permissions to register media button receiver for calls"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1646
    return-void

    #@15
    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@17
    monitor-enter v0

    #@18
    .line 1649
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v0

    #@1b
    .line 1642
    return-void

    #@1c
    .line 1648
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v0

    #@1e
    throw v1
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1604
    const-string/jumbo v0, "MediaFocusControl"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "  Remote Control   registerMediaButtonIntent() for "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1606
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@1c
    monitor-enter v1

    #@1d
    .line 1607
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 1609
    const/16 v0, 0xf

    #@25
    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_0
    monitor-exit v1

    #@29
    .line 1603
    return-void

    #@2a
    .line 1606
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1677
    const/4 v3, -0x1

    #@1
    .line 1678
    .local v3, "rccId":I
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@3
    monitor-enter v5

    #@4
    .line 1681
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@6
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    #@9
    move-result v4

    #@a
    add-int/lit8 v1, v4, -0x1

    #@c
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    #@e
    .line 1682
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@10
    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    #@16
    .line 1683
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_3

    #@1c
    .line 1685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v4

    #@20
    .line 1684
    invoke-virtual {v2, p2, p3, v4}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1687
    if-nez p2, :cond_2

    #@25
    .line 1708
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 1709
    const/16 v4, 0xf

    #@2d
    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :cond_1
    monitor-exit v5

    #@31
    .line 1712
    return v3

    #@32
    .line 1691
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    #@35
    move-result v3

    #@36
    .line 1695
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v4

    #@3c
    if-lez v4, :cond_0

    #@3e
    .line 1696
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@41
    move-result-object v4

    #@42
    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_1

    #@46
    .line 1701
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    #@47
    .line 1703
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string/jumbo v4, "MediaFocusControl"

    #@4a
    const-string/jumbo v6, "Wrong index accessing RC stack, lock error? "

    #@4d
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    goto :goto_1

    #@51
    .line 1678
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    #@52
    monitor-exit v5

    #@53
    throw v4

    #@54
    .line 1681
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@56
    goto :goto_0
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 234
    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    #@5
    move-result v0

    #@6
    .line 235
    .local v0, "reg":I
    if-eqz v0, :cond_0

    #@8
    .line 236
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    #@b
    .line 237
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 239
    :cond_0
    const-string/jumbo v1, "MediaFocusControl"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Access denied to process: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1f
    move-result v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 240
    const-string/jumbo v3, ", must have permission "

    #@27
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 240
    const-string/jumbo v3, "android.permission.MEDIA_CONTENT_CONTROL"

    #@2e
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 241
    const-string/jumbo v3, " to register IRemoteControlDisplay"

    #@35
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 242
    return v4
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 221
    invoke-direct {p0, p4}, Lcom/android/server/audio/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    #@4
    move-result v0

    #@5
    .line 222
    .local v0, "reg":I
    if-eqz v0, :cond_0

    #@7
    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    #@a
    .line 224
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 226
    :cond_0
    const-string/jumbo v1, "MediaFocusControl"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Access denied to process: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 227
    const-string/jumbo v3, ", must have permission "

    #@26
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 227
    const-string/jumbo v3, "android.permission.MEDIA_CONTENT_CONTROL"

    #@2d
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 228
    const-string/jumbo v3, " or be an enabled NotificationListenerService for registerRemoteController"

    #@34
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 229
    return v4
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 1978
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v7

    #@3
    .line 1979
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .line 1980
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    #@a
    .line 1981
    .local v0, "artworkSizeUpdate":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_1

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1991
    :cond_1
    if-eqz v0, :cond_5

    #@14
    .line 1994
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@16
    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v5

    #@1a
    .line 1995
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_5

    #@20
    .line 1996
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    #@26
    .line 1997
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v6

    #@2a
    if-eqz v6, :cond_2

    #@2c
    .line 1999
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@2f
    move-result-object v6

    #@30
    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_1

    #@34
    .line 2000
    :catch_0
    move-exception v3

    #@35
    .line 2001
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "MediaFocusControl"

    #@38
    const-string/jumbo v8, "Error setting bitmap size for RCD on RCC: "

    #@3b
    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    goto :goto_1

    #@3f
    .line 1978
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    #@40
    monitor-exit v7

    #@41
    throw v6

    #@42
    .line 1982
    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_3
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    check-cast v1, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@48
    .line 1983
    .local v1, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@4b
    move-result-object v6

    #@4c
    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@4f
    move-result-object v6

    #@50
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_0

    #@5a
    .line 1984
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    #@5d
    move-result v6

    #@5e
    if-ne v6, p2, :cond_4

    #@60
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    #@63
    move-result v6

    #@64
    if-eq v6, p3, :cond_0

    #@66
    .line 1985
    :cond_4
    invoke-static {v1, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I

    #@69
    .line 1986
    invoke-static {v1, p3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    .line 1987
    const/4 v0, 0x1

    #@6d
    goto :goto_0

    #@6e
    .end local v1    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_5
    monitor-exit v7

    #@6f
    .line 1977
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    #@0
    .prologue
    .line 2023
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v7

    #@3
    .line 2024
    const/4 v4, 0x0

    #@4
    .line 2027
    .local v4, "rcdRegistered":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .line 2028
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_1

    #@10
    .line 2029
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@16
    .line 2030
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@19
    move-result-object v6

    #@1a
    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v6

    #@1e
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_0

    #@28
    .line 2031
    invoke-static {v0, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 2032
    const/4 v4, 0x1

    #@2c
    .line 2036
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    if-nez v4, :cond_2

    #@2e
    monitor-exit v7

    #@2f
    .line 2037
    return-void

    #@30
    .line 2041
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@32
    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v5

    #@36
    .line 2042
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_4

    #@3c
    .line 2043
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    #@42
    .line 2044
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    move-result-object v6

    #@46
    if-eqz v6, :cond_3

    #@48
    .line 2046
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@4b
    move-result-object v6

    #@4c
    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 2047
    :catch_0
    move-exception v2

    #@51
    .line 2048
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v6, "MediaFocusControl"

    #@54
    const-string/jumbo v8, "Error setting position sync flag for RCD on RCC: "

    #@57
    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 2023
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    #@5c
    monitor-exit v7

    #@5d
    throw v6

    #@5e
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    monitor-exit v7

    #@5f
    .line 2022
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 668
    if-nez p1, :cond_0

    #@2
    .line 669
    return-void

    #@3
    .line 671
    :cond_0
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 672
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "pcb$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@18
    .line 673
    .local v0, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 674
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .end local v0    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    monitor-exit v3

    #@2c
    .line 667
    return-void

    #@2d
    .line 671
    .end local v1    # "pcb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I

    #@0
    .prologue
    .line 750
    const-string/jumbo v3, "MediaFocusControl"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, " AudioFocus  requestAudioFocus() from "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    move-object/from16 v0, p5

    #@11
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    const-string/jumbo v5, " req="

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    move/from16 v0, p2

    #@1e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 751
    const-string/jumbo v5, "flags=0x"

    #@25
    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    .line 751
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 753
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_0

    #@3e
    .line 754
    const-string/jumbo v3, "MediaFocusControl"

    #@41
    const-string/jumbo v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    #@44
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 755
    const/4 v3, 0x0

    #@48
    return v3

    #@49
    .line 758
    :cond_0
    move-object/from16 v0, p0

    #@4b
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    #@4d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@50
    move-result v4

    #@51
    const/16 v5, 0x20

    #@53
    move-object/from16 v0, p6

    #@55
    invoke-virtual {v3, v5, v4, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_1

    #@5b
    .line 760
    const/4 v3, 0x0

    #@5c
    return v3

    #@5d
    .line 763
    :cond_1
    sget-object v17, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@5f
    monitor-enter v17

    #@60
    .line 764
    const/4 v14, 0x0

    #@61
    .line 765
    .local v14, "focusGrantDelayed":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    move-result v3

    #@65
    if-nez v3, :cond_3

    #@67
    .line 766
    and-int/lit8 v3, p7, 0x1

    #@69
    if-nez v3, :cond_2

    #@6b
    .line 767
    const/4 v3, 0x0

    #@6c
    monitor-exit v17

    #@6d
    return v3

    #@6e
    .line 772
    :cond_2
    const/4 v14, 0x1

    #@6f
    .line 779
    :cond_3
    :try_start_1
    new-instance v9, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    #@71
    move-object/from16 v0, p0

    #@73
    move-object/from16 v1, p3

    #@75
    invoke-direct {v9, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    .line 781
    .local v9, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    #@79
    :try_start_2
    move-object/from16 v0, p3

    #@7b
    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7e
    .line 788
    :try_start_3
    move-object/from16 v0, p0

    #@80
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@82
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    #@85
    move-result v3

    #@86
    if-nez v3, :cond_5

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@8c
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@8f
    move-result-object v3

    #@90
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    #@92
    move-object/from16 v0, p5

    #@94
    invoke-virtual {v3, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    #@97
    move-result v3

    #@98
    if-eqz v3, :cond_5

    #@9a
    .line 791
    move-object/from16 v0, p0

    #@9c
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@9e
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@a1
    move-result-object v15

    #@a2
    check-cast v15, Lcom/android/server/audio/FocusRequester;

    #@a4
    .line 792
    .local v15, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    #@a7
    move-result v3

    #@a8
    move/from16 v0, p2

    #@aa
    if-ne v3, v0, :cond_4

    #@ac
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    #@af
    move-result v3

    #@b0
    move/from16 v0, p7

    #@b2
    if-ne v3, v0, :cond_4

    #@b4
    .line 795
    const/4 v3, 0x0

    #@b5
    move-object/from16 v0, p3

    #@b7
    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@ba
    .line 796
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@bd
    move-result-object v3

    #@be
    .line 797
    const/4 v4, 0x1

    #@bf
    .line 796
    move-object/from16 v0, p0

    #@c1
    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c4
    .line 798
    const/4 v3, 0x1

    #@c5
    monitor-exit v17

    #@c6
    return v3

    #@c7
    .line 782
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :catch_0
    move-exception v13

    #@c8
    .line 784
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v3, "MediaFocusControl"

    #@cb
    new-instance v4, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v5, "AudioFocus  requestAudioFocus() could not link to "

    #@d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    move-object/from16 v0, p3

    #@d9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    const-string/jumbo v5, " binder death"

    #@e0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v4

    #@e8
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@eb
    .line 785
    const/4 v3, 0x0

    #@ec
    monitor-exit v17

    #@ed
    return v3

    #@ee
    .line 802
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_4
    if-nez v14, :cond_5

    #@f0
    .line 803
    :try_start_5
    move-object/from16 v0, p0

    #@f2
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@f4
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@f7
    .line 805
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->release()V

    #@fa
    .line 810
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_5
    const/4 v3, 0x0

    #@fb
    const/4 v4, 0x0

    #@fc
    move-object/from16 v0, p0

    #@fe
    move-object/from16 v1, p5

    #@100
    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    #@103
    .line 812
    new-instance v2, Lcom/android/server/audio/FocusRequester;

    #@105
    .line 813
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@108
    move-result v11

    #@109
    move-object/from16 v3, p1

    #@10b
    move/from16 v4, p2

    #@10d
    move/from16 v5, p7

    #@10f
    move-object/from16 v6, p4

    #@111
    move-object/from16 v7, p3

    #@113
    move-object/from16 v8, p5

    #@115
    move-object/from16 v10, p6

    #@117
    move-object/from16 v12, p0

    #@119
    .line 812
    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    #@11c
    .line 814
    .local v2, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v14, :cond_7

    #@11e
    .line 817
    move-object/from16 v0, p0

    #@120
    invoke-direct {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    #@123
    move-result v16

    #@124
    .line 818
    .local v16, "requestResult":I
    if-eqz v16, :cond_6

    #@126
    .line 819
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@129
    move-result-object v3

    #@12a
    move-object/from16 v0, p0

    #@12c
    move/from16 v1, v16

    #@12e
    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@131
    :cond_6
    monitor-exit v17

    #@132
    .line 821
    return v16

    #@133
    .line 824
    .end local v16    # "requestResult":I
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    #@135
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@137
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    #@13a
    move-result v3

    #@13b
    if-nez v3, :cond_8

    #@13d
    .line 825
    move-object/from16 v0, p0

    #@13f
    move/from16 v1, p2

    #@141
    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    #@144
    .line 829
    :cond_8
    move-object/from16 v0, p0

    #@146
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@148
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@14b
    .line 831
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@14e
    move-result-object v3

    #@14f
    .line 832
    const/4 v4, 0x1

    #@150
    .line 831
    move-object/from16 v0, p0

    #@152
    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@155
    monitor-exit v17

    #@156
    .line 836
    const/4 v3, 0x1

    #@157
    return v3

    #@158
    .line 763
    .end local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v9    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :catchall_0
    move-exception v3

    #@159
    monitor-exit v17

    #@15a
    throw v3
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    #@0
    .prologue
    .line 639
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    #@5
    .line 638
    return-void

    #@6
    .line 639
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method protected setRemoteStreamVolume(I)V
    .locals 9
    .param p1, "vol"    # I

    #@0
    .prologue
    .line 2188
    const/4 v4, -0x1

    #@1
    .line 2189
    .local v4, "rccId":I
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@3
    monitor-enter v7

    #@4
    .line 2190
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@6
    iget v6, v6, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    const/4 v8, -0x1

    #@9
    if-ne v6, v8, :cond_0

    #@b
    monitor-exit v7

    #@c
    .line 2191
    return-void

    #@d
    .line 2193
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    #@f
    iget v4, v6, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit v7

    #@12
    .line 2195
    const/4 v5, 0x0

    #@13
    .line 2196
    .local v5, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@15
    monitor-enter v7

    #@16
    .line 2201
    :try_start_2
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@18
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    #@1b
    move-result v6

    #@1c
    add-int/lit8 v2, v6, -0x1

    #@1e
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    #@20
    .line 2202
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@22
    invoke-virtual {v6, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    #@28
    .line 2204
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    #@2b
    move-result v6

    #@2c
    if-ne v6, v4, :cond_3

    #@2e
    .line 2205
    iget-object v5, v3, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .end local v2    # "index":I
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_1
    :goto_1
    monitor-exit v7

    #@31
    .line 2214
    if-eqz v5, :cond_2

    #@33
    .line 2216
    const/4 v6, 0x0

    #@34
    :try_start_3
    invoke-interface {v5, v6, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@37
    .line 2186
    :cond_2
    :goto_2
    return-void

    #@38
    .line 2189
    :catchall_0
    move-exception v6

    #@39
    monitor-exit v7

    #@3a
    throw v6

    #@3b
    .line 2201
    .restart local v2    # "index":I
    .restart local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2209
    .end local v2    # "index":I
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v1

    #@3f
    .line 2211
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    const-string/jumbo v6, "MediaFocusControl"

    #@42
    const-string/jumbo v8, "Wrong index accessing media button stack, lock error? "

    #@45
    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@48
    goto :goto_1

    #@49
    .line 2196
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_1
    move-exception v6

    #@4a
    monitor-exit v7

    #@4b
    throw v6

    #@4c
    .line 2217
    .end local v5    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catch_1
    move-exception v0

    #@4d
    .line 2218
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MediaFocusControl"

    #@50
    const-string/jumbo v7, "Error dispatching absolute volume update"

    #@53
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    goto :goto_2
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 863
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 864
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    .line 862
    return-void

    #@a
    .line 863
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    #@0
    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1659
    const-string/jumbo v0, "MediaFocusControl"

    #@e
    const-string/jumbo v1, "Invalid permissions to unregister media button receiver for calls"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1660
    return-void

    #@15
    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@17
    monitor-enter v0

    #@18
    .line 1663
    const/4 v1, 0x0

    #@19
    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v0

    #@1c
    .line 1656
    return-void

    #@1d
    .line 1662
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v0

    #@1f
    throw v1
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1620
    const-string/jumbo v1, "MediaFocusControl"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "  Remote Control   unregisterMediaButtonIntent() for "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1622
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@1c
    monitor-enter v2

    #@1d
    .line 1623
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    #@20
    move-result v0

    #@21
    .line 1624
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V

    #@24
    .line 1625
    if-eqz v0, :cond_0

    #@26
    .line 1627
    const/16 v1, 0xf

    #@28
    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :cond_0
    monitor-exit v2

    #@2c
    .line 1618
    return-void

    #@2d
    .line 1622
    .end local v0    # "topOfStackWillChange":Z
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method protected unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1633
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@3
    .line 1634
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@5
    const/16 v2, 0xb

    #@7
    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    .line 1633
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 1632
    return-void
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    #@0
    .prologue
    .line 1722
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v5

    #@3
    .line 1723
    const/4 v3, 0x0

    #@4
    .line 1725
    .local v3, "topRccChange":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@6
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    #@9
    move-result v4

    #@a
    add-int/lit8 v1, v4, -0x1

    #@c
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    #@e
    .line 1726
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@10
    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    #@16
    .line 1727
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_3

    #@1c
    .line 1728
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    .line 1727
    if-eqz v4, :cond_3

    #@26
    .line 1730
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForNoRcc()V

    #@29
    .line 1731
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2b
    invoke-virtual {v4}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result v4

    #@2f
    add-int/lit8 v4, v4, -0x1

    #@31
    if-ne v1, v4, :cond_2

    #@33
    const/4 v3, 0x1

    #@34
    .line 1740
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    #@36
    .line 1742
    const/16 v4, 0xf

    #@38
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    :cond_1
    monitor-exit v5

    #@3c
    .line 1720
    return-void

    #@3d
    .line 1731
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    const/4 v3, 0x0

    #@3e
    goto :goto_1

    #@3f
    .line 1725
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@41
    goto :goto_0

    #@42
    .line 1736
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    #@43
    .line 1738
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    const-string/jumbo v4, "MediaFocusControl"

    #@46
    const-string/jumbo v6, "Wrong index accessing RC stack, lock error? "

    #@49
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    .line 1722
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    #@4e
    monitor-exit v5

    #@4f
    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    #@0
    .prologue
    .line 1932
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@2
    monitor-enter v7

    #@3
    .line 1933
    if-nez p1, :cond_0

    #@5
    monitor-exit v7

    #@6
    .line 1934
    return-void

    #@7
    .line 1937
    :cond_0
    const/4 v2, 0x0

    #@8
    .line 1938
    .local v2, "displayWasPluggedIn":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .line 1939
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_2

    #@14
    if-eqz v2, :cond_4

    #@16
    .line 1948
    :cond_2
    if-eqz v2, :cond_5

    #@18
    .line 1951
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    #@1a
    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v5

    #@1e
    .line 1952
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_5

    #@24
    .line 1953
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    #@2a
    .line 1954
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v6

    #@2e
    if-eqz v6, :cond_3

    #@30
    .line 1956
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    #@33
    move-result-object v6

    #@34
    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_1

    #@38
    .line 1957
    :catch_0
    move-exception v3

    #@39
    .line 1958
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "MediaFocusControl"

    #@3c
    const-string/jumbo v8, "Error disconnecting remote control display to client: "

    #@3f
    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    goto :goto_1

    #@43
    .line 1932
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    #@44
    monitor-exit v7

    #@45
    throw v6

    #@46
    .line 1940
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_4
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@4c
    .line 1941
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    #@4f
    move-result-object v6

    #@50
    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@53
    move-result-object v6

    #@54
    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_1

    #@5e
    .line 1942
    const/4 v2, 0x1

    #@5f
    .line 1943
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    #@62
    .line 1944
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    goto :goto_0

    #@66
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_5
    monitor-exit v7

    #@67
    .line 1930
    return-void
.end method
