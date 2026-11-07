.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$CallFilteringCompletionInfo;,
        Landroid/telecom/Connection$RttModifyStatus;,
        Landroid/telecom/Connection$RttTextStream;,
        Landroid/telecom/Connection$AudioCodec;,
        Landroid/telecom/Connection$VerificationStatus;,
        Landroid/telecom/Connection$ConnectionState;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CODEC_AMR:I = 0x1

.field public static final whitelist AUDIO_CODEC_AMR_WB:I = 0x2

.field public static final whitelist AUDIO_CODEC_EVRC:I = 0x4

.field public static final whitelist AUDIO_CODEC_EVRC_B:I = 0x5

.field public static final whitelist AUDIO_CODEC_EVRC_NW:I = 0x7

.field public static final whitelist AUDIO_CODEC_EVRC_WB:I = 0x6

.field public static final whitelist AUDIO_CODEC_EVS_FB:I = 0x14

.field public static final whitelist AUDIO_CODEC_EVS_NB:I = 0x11

.field public static final whitelist AUDIO_CODEC_EVS_SWB:I = 0x13

.field public static final whitelist AUDIO_CODEC_EVS_WB:I = 0x12

.field public static final whitelist AUDIO_CODEC_G711A:I = 0xd

.field public static final whitelist AUDIO_CODEC_G711AB:I = 0xf

.field public static final whitelist AUDIO_CODEC_G711U:I = 0xb

.field public static final whitelist AUDIO_CODEC_G722:I = 0xe

.field public static final whitelist AUDIO_CODEC_G723:I = 0xc

.field public static final whitelist AUDIO_CODEC_G729:I = 0x10

.field public static final whitelist AUDIO_CODEC_GSM_EFR:I = 0x8

.field public static final whitelist AUDIO_CODEC_GSM_FR:I = 0x9

.field public static final whitelist AUDIO_CODEC_GSM_HR:I = 0xa

.field public static final whitelist AUDIO_CODEC_NONE:I = 0x0

.field public static final whitelist AUDIO_CODEC_QCELP13K:I = 0x3

.field public static final whitelist CAPABILITY_ADD_PARTICIPANT:I = 0x4000000

.field public static final whitelist CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final whitelist CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final whitelist CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final whitelist CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final whitelist CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final whitelist CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final whitelist CAPABILITY_HOLD:I = 0x1

.field public static final whitelist CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final whitelist CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final whitelist CAPABILITY_MUTE:I = 0x40

.field public static final whitelist CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT:I = 0x20000000

.field public static final whitelist CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final whitelist CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final whitelist CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final whitelist CAPABILITY_SUPPORT_DEFLECT:I = 0x2000000

.field public static final whitelist CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final whitelist CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final blacklist CAPABILITY_TRANSFER:I = 0x8000000

.field public static final blacklist CAPABILITY_TRANSFER_CONSULTATIVE:I = 0x10000000

.field public static final greylist-max-o CAPABILITY_UNUSED:I = 0x10

.field public static final greylist-max-o CAPABILITY_UNUSED_2:I = 0x4000

.field public static final greylist-max-o CAPABILITY_UNUSED_3:I = 0x8000

.field public static final greylist-max-o CAPABILITY_UNUSED_4:I = 0x10000

.field public static final greylist-max-o CAPABILITY_UNUSED_5:I = 0x20000

.field public static final whitelist EVENT_CALL_HOLD_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_HOLD_FAILED"

.field public static final whitelist EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final whitelist EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final blacklist EVENT_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.event.CALL_QUALITY_REPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final whitelist EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final blacklist EVENT_CALL_RESUME_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_RESUME_FAILED"

.field public static final whitelist EVENT_CALL_SWITCH_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_SWITCH_FAILED"

.field public static final whitelist EVENT_DEVICE_TO_DEVICE_MESSAGE:Ljava/lang/String; = "android.telecom.event.DEVICE_TO_DEVICE_MESSAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_MERGE_COMPLETE:Ljava/lang/String; = "android.telecom.event.MERGE_COMPLETE"

.field public static final whitelist EVENT_MERGE_START:Ljava/lang/String; = "android.telecom.event.MERGE_START"

.field public static final whitelist EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final whitelist EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final whitelist EVENT_RTT_AUDIO_INDICATION_CHANGED:Ljava/lang/String; = "android.telecom.event.RTT_AUDIO_INDICATION_CHANGED"

.field public static final blacklist EXTRA_ADD_TO_CONFERENCE_ID:Ljava/lang/String; = "android.telecom.extra.ADD_TO_CONFERENCE_ID"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL_APP_NAME:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL_APP_NAME"

.field public static final whitelist EXTRA_AUDIO_CODEC:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC"

.field public static final whitelist EXTRA_AUDIO_CODEC_BANDWIDTH_KHZ:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BANDWIDTH_KHZ"

.field public static final whitelist EXTRA_AUDIO_CODEC_BITRATE_KBPS:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BITRATE_KBPS"

.field public static final blacklist EXTRA_CALLER_NUMBER_VERIFICATION_STATUS:Ljava/lang/String; = "android.telecom.extra.CALLER_NUMBER_VERIFICATION_STATUS"

.field public static final blacklist EXTRA_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.extra.CALL_QUALITY_REPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_TYPE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_VALUE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_VALUE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE:Ljava/lang/String; = "android.telecom.extra.IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE"

.field public static final whitelist EXTRA_IS_RTT_AUDIO_PRESENT:Ljava/lang/String; = "android.telecom.extra.IS_RTT_AUDIO_PRESENT"

.field public static final blacklist EXTRA_KEY_QUERY_LOCATION:Ljava/lang/String; = "android.telecom.extra.KEY_QUERY_LOCATION"

.field public static final whitelist EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final whitelist EXTRA_LAST_KNOWN_CELL_IDENTITY:Ljava/lang/String; = "android.telecom.extra.LAST_KNOWN_CELL_IDENTITY"

.field public static final greylist-max-o EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field public static final blacklist EXTRA_REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

.field public static final blacklist EXTRA_REMOTE_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_SIP_INVITE:Ljava/lang/String; = "android.telecom.extra.SIP_INVITE"

.field private static final greylist-max-o PII_DEBUG:Z

.field public static final whitelist PROPERTY_ASSISTED_DIALING:I = 0x200

.field public static final whitelist PROPERTY_CROSS_SIM:I = 0x2000

.field public static final whitelist PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_GENERIC_CONFERENCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final whitelist PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final whitelist PROPERTY_IS_ADHOC_CONFERENCE:I = 0x1000

.field public static final whitelist PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final whitelist PROPERTY_IS_RTT:I = 0x100

.field public static final whitelist PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL:I = 0x400

.field public static final whitelist PROPERTY_REMOTELY_HOSTED:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_SELF_MANAGED:I = 0x80

.field public static final whitelist PROPERTY_WIFI:I = 0x8

.field public static final whitelist STATE_ACTIVE:I = 0x4

.field public static final whitelist STATE_DIALING:I = 0x3

.field public static final whitelist STATE_DISCONNECTED:I = 0x6

.field public static final whitelist STATE_HOLDING:I = 0x5

.field public static final whitelist STATE_INITIALIZING:I = 0x0

.field public static final whitelist STATE_NEW:I = 0x1

.field public static final whitelist STATE_PULLING_CALL:I = 0x7

.field public static final whitelist STATE_RINGING:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_FAILED:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_NOT_VERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATUS_PASSED:I = 0x1


# instance fields
.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mAddressPresentation:I

.field private greylist-max-o mAudioModeIsVoip:Z

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private blacklist mCallEndpoint:Landroid/telecom/CallEndpoint;

.field private greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private greylist-max-o mCallerDisplayNamePresentation:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private greylist-max-o mConference:Landroid/telecom/Conference;

.field private final greylist-max-o mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectElapsedTimeMillis:J

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionService:Landroid/telecom/ConnectionService;

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private greylist-max-o mVideoState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$JahkKOxFKkY-gacugt0mnHTRRBk(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRemoteRttRequest$3(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZnUXAsXgeKGu05i3oqkSpsFyedw(Landroid/telecom/Connection;ILandroid/telecom/Connection$Listener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/Connection;->lambda$sendRttInitiationFailure$1(ILandroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_bl6hDpVI8EEHWuYBg2ktuMWrCQ(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/telecom/Connection;->lambda$queryLocationForEmergency$4(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oHNs3vcdZZ_zqap02juDe8xqVkY(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRttInitiationSuccess$0(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vj11ZMjrmOJeXCaLqOrL35Bzc-g(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRttSessionRemotelyTerminated$2(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConferenceables(Landroid/telecom/Connection;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Connection;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1056
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 2221
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 2144
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 2153
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 2167
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 2169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 2170
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 2171
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 2177
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 2181
    const/4 v0, 0x3

    iput v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 2184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2187
    const/16 v0, 0x1f

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2191
    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    .line 2198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    .line 2203
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    .line 2221
    return-void
.end method

.method public static whitelist capabilitiesToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "capabilities"    # I

    .line 1065
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .registers 5
    .param p0, "capabilities"    # I
    .param p1, "isLong"    # Z

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    if-eqz p1, :cond_11

    .line 1084
    const-string v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    :cond_11
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 1088
    if-eqz p1, :cond_1b

    const-string v1, " CAPABILITY_HOLD"

    goto :goto_1d

    :cond_1b
    const-string v1, " hld"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    :cond_20
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 1091
    if-eqz p1, :cond_2a

    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    goto :goto_2c

    :cond_2a
    const-string v1, " sup_hld"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    .line 1094
    if-eqz p1, :cond_39

    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    goto :goto_3b

    :cond_39
    const-string v1, " mrg_cnf"

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    :cond_3e
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4e

    .line 1097
    if-eqz p1, :cond_49

    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    goto :goto_4b

    :cond_49
    const-string v1, " swp_cnf"

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    :cond_4e
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5e

    .line 1100
    if-eqz p1, :cond_59

    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    goto :goto_5b

    :cond_59
    const-string v1, " txt"

    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    :cond_5e
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6e

    .line 1103
    if-eqz p1, :cond_69

    const-string v1, " CAPABILITY_MUTE"

    goto :goto_6b

    :cond_69
    const-string v1, " mut"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_6e
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7e

    .line 1106
    if-eqz p1, :cond_79

    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    goto :goto_7b

    :cond_79
    const-string v1, " mng_cnf"

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    :cond_7e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8e

    .line 1109
    if-eqz p1, :cond_89

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    goto :goto_8b

    :cond_89
    const-string v1, " VTlrx"

    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_8e
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9e

    .line 1112
    if-eqz p1, :cond_99

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    goto :goto_9b

    :cond_99
    const-string v1, " VTltx"

    :goto_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :cond_9e
    and-int/lit16 v1, p0, 0x300

    const/16 v2, 0x300

    if-ne v1, v2, :cond_ae

    .line 1116
    if-eqz p1, :cond_a9

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    goto :goto_ab

    :cond_a9
    const-string v1, " VTlbi"

    :goto_ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_ae
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_be

    .line 1119
    if-eqz p1, :cond_b9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    goto :goto_bb

    :cond_b9
    const-string v1, " VTrrx"

    :goto_bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :cond_be
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_ce

    .line 1122
    if-eqz p1, :cond_c9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    goto :goto_cb

    :cond_c9
    const-string v1, " VTrtx"

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :cond_ce
    and-int/lit16 v1, p0, 0xc00

    const/16 v2, 0xc00

    if-ne v1, v2, :cond_de

    .line 1126
    if-eqz p1, :cond_d9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    goto :goto_db

    :cond_d9
    const-string v1, " VTrbi"

    :goto_db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    :cond_de
    const/high16 v1, 0x800000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_ee

    .line 1130
    if-eqz p1, :cond_e9

    const-string v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    goto :goto_eb

    :cond_e9
    const-string v1, " !v2a"

    :goto_eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :cond_ee
    const/high16 v1, 0x40000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_fe

    .line 1133
    if-eqz p1, :cond_f9

    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    goto :goto_fb

    :cond_f9
    const-string v1, " spd_aud"

    :goto_fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :cond_fe
    const/high16 v1, 0x80000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_10e

    .line 1136
    if-eqz p1, :cond_109

    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    goto :goto_10b

    :cond_109
    const-string v1, " a2v"

    :goto_10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    :cond_10e
    const/high16 v1, 0x100000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_11e

    .line 1139
    if-eqz p1, :cond_119

    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    goto :goto_11b

    :cond_119
    const-string v1, " paus_VT"

    :goto_11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_11e
    const/high16 v1, 0x200000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_12e

    .line 1143
    if-eqz p1, :cond_129

    const-string v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    goto :goto_12b

    :cond_129
    const-string v1, " 1p_cnf"

    :goto_12b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_12e
    const/high16 v1, 0x400000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_13e

    .line 1147
    if-eqz p1, :cond_139

    const-string v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    goto :goto_13b

    :cond_139
    const-string v1, " rsp_by_con"

    :goto_13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_13e
    const/high16 v1, 0x1000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_14e

    .line 1150
    if-eqz p1, :cond_149

    const-string v1, " CAPABILITY_CAN_PULL_CALL"

    goto :goto_14b

    :cond_149
    const-string v1, " pull"

    :goto_14b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    :cond_14e
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_15e

    .line 1153
    if-eqz p1, :cond_159

    const-string v1, " CAPABILITY_SUPPORT_DEFLECT"

    goto :goto_15b

    :cond_159
    const-string v1, " sup_def"

    :goto_15b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    :cond_15e
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_16e

    .line 1156
    if-eqz p1, :cond_169

    const-string v1, " CAPABILITY_ADD_PARTICIPANT"

    goto :goto_16b

    :cond_169
    const-string v1, " add_participant"

    :goto_16b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    :cond_16e
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    const/high16 v2, 0x8000000

    if-ne v1, v2, :cond_17f

    .line 1159
    if-eqz p1, :cond_17a

    const-string v1, " CAPABILITY_TRANSFER"

    goto :goto_17c

    :cond_17a
    const-string v1, " sup_trans"

    :goto_17c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    :cond_17f
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    const/high16 v2, 0x10000000

    if-ne v1, v2, :cond_190

    .line 1163
    if-eqz p1, :cond_18b

    const-string v1, " CAPABILITY_TRANSFER_CONSULTATIVE"

    goto :goto_18d

    :cond_18b
    const-string v1, " sup_cTrans"

    :goto_18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :cond_190
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    const/high16 v2, 0x20000000

    if-ne v1, v2, :cond_1a1

    .line 1167
    if-eqz p1, :cond_19c

    const-string v1, " CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT"

    goto :goto_19e

    :cond_19c
    const-string v1, " sup_rtt"

    :goto_19e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :cond_1a1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o capabilitiesToStringShort(I)Ljava/lang/String;
    .registers 2
    .param p0, "capabilities"    # I

    .line 1077
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final greylist-max-o clearConferenceableList()V
    .registers 5

    .line 3919
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 3920
    .local v1, "c":Landroid/telecom/Conferenceable;
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_1f

    .line 3921
    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    .line 3922
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .end local v2    # "connection":Landroid/telecom/Connection;
    goto :goto_2c

    .line 3923
    :cond_1f
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_2c

    .line 3924
    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    .line 3925
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_2d

    .line 3923
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2c
    :goto_2c
    nop

    .line 3927
    .end local v1    # "c":Landroid/telecom/Conferenceable;
    :goto_2d
    goto :goto_6

    .line 3928
    :cond_2e
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3929
    return-void
.end method

.method public static whitelist createCanceledConnection()Landroid/telecom/Connection;
    .registers 3

    .line 3903
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static whitelist createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .registers 2
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 3879
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final greylist-max-o fireConferenceChanged()V
    .registers 4

    .line 3913
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3914
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    .line 3915
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3916
    :cond_18
    return-void
.end method

.method private final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .registers 4

    .line 3907
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3908
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    .line 3909
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3910
    :cond_1a
    return-void
.end method

.method private synthetic blacklist lambda$queryLocationForEmergency$4(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V
    .registers 14
    .param p1, "timeoutMillis"    # J
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/os/OutcomeReceiver;
    .param p6, "l"    # Landroid/telecom/Connection$Listener;

    .line 3275
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v0, p6

    .end local p1    # "timeoutMillis":J
    .end local p3    # "provider":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/os/OutcomeReceiver;
    .end local p6    # "l":Landroid/telecom/Connection$Listener;
    .local v0, "l":Landroid/telecom/Connection$Listener;
    .local v2, "timeoutMillis":J
    .local v4, "provider":Ljava/lang/String;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Landroid/os/OutcomeReceiver;
    invoke-virtual/range {v0 .. v6}, Landroid/telecom/Connection$Listener;->onQueryLocation(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRemoteRttRequest$3(Landroid/telecom/Connection$Listener;)V
    .registers 2
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3245
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRemoteRttRequest(Landroid/telecom/Connection;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttInitiationFailure$1(ILandroid/telecom/Connection$Listener;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "l"    # Landroid/telecom/Connection$Listener;

    .line 3229
    invoke-virtual {p2, p0, p1}, Landroid/telecom/Connection$Listener;->onRttInitiationFailure(Landroid/telecom/Connection;I)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttInitiationSuccess$0(Landroid/telecom/Connection$Listener;)V
    .registers 2
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3218
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttInitiationSuccess(Landroid/telecom/Connection;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttSessionRemotelyTerminated$2(Landroid/telecom/Connection$Listener;)V
    .registers 2
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3237
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V

    return-void
.end method

.method public static whitelist propertiesToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "properties"    # I

    .line 1180
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o propertiesToStringInternal(IZ)Ljava/lang/String;
    .registers 5
    .param p0, "properties"    # I
    .param p1, "isLong"    # Z

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    if-eqz p1, :cond_11

    .line 1198
    const-string v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :cond_11
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_21

    .line 1202
    if-eqz p1, :cond_1c

    const-string v1, " PROPERTY_SELF_MANAGED"

    goto :goto_1e

    :cond_1c
    const-string v1, " self_mng"

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    :cond_21
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 1206
    if-eqz p1, :cond_2b

    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    goto :goto_2d

    :cond_2b
    const-string v1, " ecbm"

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :cond_30
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3f

    .line 1210
    if-eqz p1, :cond_3a

    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    goto :goto_3c

    :cond_3a
    const-string v1, " HD"

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    :cond_3f
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4f

    .line 1214
    if-eqz p1, :cond_4a

    const-string v1, " PROPERTY_WIFI"

    goto :goto_4c

    :cond_4a
    const-string v1, " wifi"

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    :cond_4f
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    .line 1218
    if-eqz p1, :cond_59

    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    goto :goto_5b

    :cond_59
    const-string v1, " gen_conf"

    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_5e
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6e

    .line 1222
    if-eqz p1, :cond_69

    const-string v1, " PROPERTY_IS_EXTERNAL_CALL"

    goto :goto_6b

    :cond_69
    const-string v1, " xtrnl"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    :cond_6e
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7e

    .line 1226
    if-eqz p1, :cond_79

    const-string v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    goto :goto_7b

    :cond_79
    const-string v1, " priv"

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_7e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8e

    .line 1230
    if-eqz p1, :cond_89

    const-string v1, " PROPERTY_IS_RTT"

    goto :goto_8b

    :cond_89
    const-string v1, " rtt"

    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    :cond_8e
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9e

    .line 1235
    if-eqz p1, :cond_99

    const-string v1, " PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL"

    goto :goto_9b

    :cond_99
    const-string v1, " ecall"

    :goto_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    :cond_9e
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_ae

    .line 1239
    if-eqz p1, :cond_a9

    const-string v1, " PROPERTY_REMOTELY_HOSTED"

    goto :goto_ab

    :cond_a9
    const-string v1, " remote_hst"

    :goto_ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :cond_ae
    and-int/lit16 v1, p0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_be

    .line 1243
    if-eqz p1, :cond_b9

    const-string v1, " PROPERTY_IS_ADHOC_CONFERENCE"

    goto :goto_bb

    :cond_b9
    const-string v1, " adhoc_conf"

    :goto_bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    :cond_be
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_ce

    .line 1247
    if-eqz p1, :cond_c9

    const-string v1, " PROPERTY_IS_DOWNGRADED_CONFERENCE"

    goto :goto_cb

    :cond_c9
    const-string v1, " dngrd_conf"

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_ce
    and-int/lit16 v1, p0, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_de

    .line 1251
    if-eqz p1, :cond_d9

    const-string v1, " PROPERTY_CROSS_SIM"

    goto :goto_db

    :cond_d9
    const-string v1, " xsim"

    :goto_db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_de
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o propertiesToStringShort(I)Ljava/lang/String;
    .registers 2
    .param p0, "properties"    # I

    .line 1191
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o setState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 3838
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3839
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    if-eq v0, p1, :cond_15

    .line 3840
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Connection already DISCONNECTED; cannot transition out of this state."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3841
    return-void

    .line 3843
    :cond_15
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    if-eq v0, p1, :cond_42

    .line 3844
    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3845
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 3846
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 3847
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3848
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    .line 3849
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_32

    .line 3851
    :cond_42
    return-void
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 2520
    packed-switch p0, :pswitch_data_2e

    .line 2538
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/telecom/Connection;

    const-string v2, "Unknown state %d"

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2539
    const-string v0, "UNKNOWN"

    return-object v0

    .line 2530
    :pswitch_15
    const-string v0, "PULLING_CALL"

    return-object v0

    .line 2536
    :pswitch_18
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 2534
    :pswitch_1b
    const-string v0, "HOLDING"

    return-object v0

    .line 2532
    :pswitch_1e
    const-string v0, "ACTIVE"

    return-object v0

    .line 2528
    :pswitch_21
    const-string v0, "DIALING"

    return-object v0

    .line 2526
    :pswitch_24
    const-string v0, "RINGING"

    return-object v0

    .line 2524
    :pswitch_27
    const-string v0, "NEW"

    return-object v0

    .line 2522
    :pswitch_2a
    const-string v0, "INITIALIZING"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method static greylist-max-o toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .line 3814
    if-nez p0, :cond_5

    .line 3815
    const-string v0, ""

    return-object v0

    .line 3818
    :cond_5
    sget-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v0, :cond_a

    .line 3820
    return-object p0

    .line 3825
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3826
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 3827
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3828
    .local v2, "c":C
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_27

    goto :goto_2d

    .line 3831
    :cond_27
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 3829
    :cond_2d
    :goto_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3826
    .end local v2    # "c":C
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3834
    .end local v1    # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method final greylist-max-o addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .registers 3
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 2422
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2423
    return-object p0
.end method

.method public greylist-max-o checkImmutable()V
    .registers 1

    .line 3889
    return-void
.end method

.method public final whitelist destroy()V
    .registers 3

    .line 2826
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2827
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    .line 2828
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 2829
    :cond_16
    return-void
.end method

.method public final whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 2242
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final whitelist getAddressPresentation()I
    .registers 2

    .line 2250
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioModeIsVoip()Z
    .registers 2

    .line 2337
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2298
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_6

    .line 2299
    const/4 v0, 0x0

    return-object v0

    .line 2301
    :cond_6
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2314
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final blacklist getCallDirection()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4053
    iget v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    return v0
.end method

.method public final whitelist getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 2257
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getCallerDisplayNamePresentation()I
    .registers 2

    .line 2265
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getCallerNumberVerificationStatus()I
    .registers 2

    .line 4076
    iget v0, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public final whitelist getConference()Landroid/telecom/Conference;
    .registers 2

    .line 2322
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final whitelist getConferenceables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    .line 2967
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2355
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .registers 2

    .line 2547
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .registers 2

    .line 2554
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2379
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getCurrentCallEndpoint()Landroid/telecom/CallEndpoint;
    .registers 2

    .line 3209
    iget-object v0, p0, Landroid/telecom/Connection;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    return-object v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 2445
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .registers 5

    .line 2404
    const/4 v0, 0x0

    .line 2405
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2406
    :try_start_4
    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_10

    .line 2407
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 2409
    :cond_10
    monitor-exit v1

    .line 2410
    return-object v0

    .line 2409
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3999
    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final whitelist getState()I
    .registers 2

    .line 2272
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 2386
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final greylist-max-o getSupportedAudioRoutes()I
    .registers 2

    .line 2563
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2235
    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 2

    .line 2704
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final whitelist getVideoState()I
    .registers 2

    .line 2285
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3938
    const/4 v0, 0x0

    .line 3939
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3940
    :try_start_4
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 3941
    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_12

    .line 3942
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 3944
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 3945
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 3946
    return-void

    .line 3944
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2
.end method

.method public whitelist handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 3679
    return-void
.end method

.method public final whitelist isRingbackRequested()Z
    .registers 2

    .line 2330
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method public final whitelist notifyConferenceMergeFailed()V
    .registers 3

    .line 3953
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3954
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    .line 3955
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3956
    :cond_16
    return-void
.end method

.method public greylist-max-o notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V
    .registers 4
    .param p1, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 3965
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3966
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V

    .line 3967
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3968
    :cond_16
    return-void
.end method

.method public whitelist onAbort()V
    .registers 1

    .line 3381
    return-void
.end method

.method public whitelist onAddConferenceParticipants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3376
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public whitelist onAnswer()V
    .registers 2

    .line 3437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 3438
    return-void
.end method

.method public whitelist onAnswer(I)V
    .registers 2
    .param p1, "videoState"    # I

    .line 3416
    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3287
    return-void
.end method

.method public whitelist onAvailableCallEndpointsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 3312
    .local p1, "availableEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3298
    return-void
.end method

.method public whitelist onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
    .registers 2
    .param p1, "callEndpoint"    # Landroid/telecom/CallEndpoint;

    .line 3305
    return-void
.end method

.method public whitelist onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3556
    return-void
.end method

.method public whitelist onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .registers 2
    .param p1, "callFilteringCompletionInfo"    # Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3810
    return-void
.end method

.method public whitelist onDeflect(Landroid/net/Uri;)V
    .registers 2
    .param p1, "address"    # Landroid/net/Uri;

    .line 3444
    return-void
.end method

.method public whitelist onDisconnect()V
    .registers 1

    .line 3364
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3577
    return-void
.end method

.method public whitelist onHandoverComplete()V
    .registers 1

    .line 3565
    return-void
.end method

.method public whitelist onHold()V
    .registers 1

    .line 3390
    return-void
.end method

.method public whitelist onMuteStateChanged(Z)V
    .registers 2
    .param p1, "isMuted"    # Z

    .line 3319
    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .registers 2
    .param p1, "c"    # C

    .line 3354
    return-void
.end method

.method public whitelist onPostDialContinue(Z)V
    .registers 2
    .param p1, "proceed"    # Z

    .line 3525
    return-void
.end method

.method public whitelist onPullExternalCall()V
    .registers 1

    .line 3538
    return-void
.end method

.method public whitelist onReject()V
    .registers 1

    .line 3464
    return-void
.end method

.method public whitelist onReject(I)V
    .registers 2
    .param p1, "rejectReason"    # I

    .line 3475
    return-void
.end method

.method public whitelist onReject(Ljava/lang/String;)V
    .registers 2
    .param p1, "replyMessage"    # Ljava/lang/String;

    .line 3481
    return-void
.end method

.method public whitelist onSeparate()V
    .registers 1

    .line 3369
    return-void
.end method

.method public whitelist onShowIncomingCallUi()V
    .registers 1

    .line 3653
    return-void
.end method

.method public whitelist onSilence()V
    .registers 1

    .line 3520
    return-void
.end method

.method public whitelist onStartRtt(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 3663
    return-void
.end method

.method public whitelist onStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 3347
    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .registers 1

    .line 3359
    return-void
.end method

.method public whitelist onStopRtt()V
    .registers 1

    .line 3669
    return-void
.end method

.method public whitelist onTrackedByNonUiService(Z)V
    .registers 2
    .param p1, "isTracked"    # Z

    .line 3339
    return-void
.end method

.method public blacklist onTransfer(Landroid/net/Uri;Z)V
    .registers 3
    .param p1, "number"    # Landroid/net/Uri;
    .param p2, "isConfirmationRequired"    # Z

    .line 3494
    return-void
.end method

.method public blacklist onTransfer(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "otherConnection"    # Landroid/telecom/Connection;

    .line 3501
    return-void
.end method

.method public whitelist onUnhold()V
    .registers 1

    .line 3395
    return-void
.end method

.method public whitelist onUsingAlternativeUi(Z)V
    .registers 2
    .param p1, "isUsingAlternativeUi"    # Z

    .line 3330
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3083
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3084
    if-nez p1, :cond_6

    .line 3085
    return-void

    .line 3090
    :cond_6
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3091
    :try_start_9
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_14

    .line 3092
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 3094
    :cond_14
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3095
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3096
    .local v1, "listenerExtras":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_3d

    .line 3097
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    .line 3100
    .local v2, "l":Landroid/telecom/Connection$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    .line 3101
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_27

    .line 3102
    :cond_3c
    return-void

    .line 3096
    .end local v1    # "listenerExtras":Landroid/os/Bundle;
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public final whitelist queryLocationForEmergency(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 14
    .param p1, "timeoutMillis"    # J
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/location/Location;",
            "Landroid/telecom/QueryLocationException;",
            ">;)V"
        }
    .end annotation

    .line 3268
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    if-eqz p3, :cond_2e

    if-eqz p4, :cond_2e

    if-eqz p5, :cond_2e

    .line 3271
    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    if-ltz v0, :cond_22

    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-gtz v0, :cond_22

    .line 3274
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "timeoutMillis":J
    .end local p3    # "provider":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    .local v3, "timeoutMillis":J
    .local v5, "provider":Ljava/lang/String;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    invoke-direct/range {v1 .. v7}, Landroid/telecom/Connection$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3276
    return-void

    .line 3271
    .end local v3    # "timeoutMillis":J
    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    .restart local p1    # "timeoutMillis":J
    .restart local p3    # "provider":Ljava/lang/String;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    :cond_22
    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 3272
    .end local p1    # "timeoutMillis":J
    .end local p3    # "provider":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    .restart local v3    # "timeoutMillis":J
    .restart local v5    # "provider":Ljava/lang/String;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The timeoutMillis should be min 100, max 5000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3268
    .end local v3    # "timeoutMillis":J
    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    .restart local p1    # "timeoutMillis":J
    .restart local p3    # "provider":Ljava/lang/String;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    :cond_2e
    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 3269
    .end local p1    # "timeoutMillis":J
    .end local p3    # "provider":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    .restart local v3    # "timeoutMillis":J
    .restart local v5    # "provider":Ljava/lang/String;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There are arguments that must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final greylist-max-o removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .registers 3
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 2435
    if-eqz p1, :cond_7

    .line 2436
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2438
    :cond_7
    return-object p0
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3110
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3111
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1d

    .line 3112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3113
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3114
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_b

    .line 3116
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_39

    .line 3117
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3118
    .local v0, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    .line 3119
    .local v2, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v2, p0, v0}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    .line 3120
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_28

    .line 3121
    :cond_38
    return-void

    .line 3116
    .end local v0    # "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .registers 3
    .param p1, "keys"    # [Ljava/lang/String;

    .line 3129
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 3130
    return-void
.end method

.method public whitelist requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3172
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3173
    .local v1, "l":Landroid/telecom/Connection$Listener;
    nop

    .line 3174
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 3173
    const/4 v3, 0x2

    invoke-virtual {v1, p0, v3, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    .line 3175
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3176
    :cond_1c
    return-void
.end method

.method public final whitelist requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "endpoint"    # Landroid/telecom/CallEndpoint;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    .line 3197
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/telecom/CallEndpointException;>;"
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3198
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/telecom/Connection$Listener;->onEndpointChanged(Landroid/telecom/Connection;Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3199
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3200
    :cond_16
    return-void
.end method

.method public final greylist-max-o resetConference()V
    .registers 3

    .line 3021
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_12

    .line 3022
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Conference reset"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3023
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 3024
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 3026
    :cond_12
    return-void
.end method

.method public final whitelist resetConnectionTime()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2958
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2959
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConnectionTimeReset(Landroid/telecom/Connection;)V

    .line 2960
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 2961
    :cond_16
    return-void
.end method

.method public whitelist sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4040
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 4041
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4042
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 4043
    :cond_16
    return-void
.end method

.method public final whitelist sendRemoteRttRequest()V
    .registers 3

    .line 3245
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3246
    return-void
.end method

.method public final whitelist sendRttInitiationFailure(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 3229
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/telecom/Connection$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/Connection;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3230
    return-void
.end method

.method public final whitelist sendRttInitiationSuccess()V
    .registers 3

    .line 3218
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3219
    return-void
.end method

.method public final whitelist sendRttSessionRemotelyTerminated()V
    .registers 3

    .line 3237
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3238
    return-void
.end method

.method public final whitelist setActive()V
    .registers 2

    .line 2632
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 2634
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2635
    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .registers 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .line 2574
    const-string/jumbo v0, "setAddress %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2575
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 2576
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 2577
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2578
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    .line 2579
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_14

    .line 2580
    :cond_24
    return-void
.end method

.method public final whitelist setAudioModeIsVoip(Z)V
    .registers 4
    .param p1, "isVoip"    # Z

    .line 2837
    if-nez p1, :cond_13

    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    .line 2838
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setAudioModeIsVoip: Ignored request to set a self-managed connection\'s audioModeIsVoip to false. Doing so can cause unwanted behavior."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2841
    return-void

    .line 2843
    :cond_13
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2844
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 2845
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2846
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    .line 2847
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_1e

    .line 2848
    :cond_2e
    return-void
.end method

.method public final whitelist setAudioRoute(I)V
    .registers 5
    .param p1, "route"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3149
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3150
    .local v1, "l":Landroid/telecom/Connection$Listener;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    .line 3151
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3152
    :cond_17
    return-void
.end method

.method final blacklist setAvailableCallEndpoints(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 2498
    .local p1, "availableEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2499
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setAvailableCallEndpoints"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2500
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 2501
    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 2471
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2472
    const-string/jumbo v0, "setAudioState %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2473
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 2474
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 2475
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 2476
    return-void
.end method

.method public whitelist setCallDirection(I)V
    .registers 2
    .param p1, "callDirection"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4067
    iput p1, p0, Landroid/telecom/Connection;->mCallDirection:I

    .line 4068
    return-void
.end method

.method final blacklist setCallEndpoint(Landroid/telecom/CallEndpoint;)V
    .registers 4
    .param p1, "endpoint"    # Landroid/telecom/CallEndpoint;

    .line 2485
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2486
    const-string/jumbo v0, "setCallEndpoint %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2487
    iput-object p1, p0, Landroid/telecom/Connection;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    .line 2488
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 2489
    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .registers 9
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .line 2590
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2591
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2592
    .local v0, "nameChanged":Z
    iget v2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    if-eq v2, p2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 2593
    .local v1, "presentationChanged":Z
    :goto_11
    if-eqz v0, :cond_15

    .line 2596
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 2598
    :cond_15
    if-eqz v1, :cond_19

    .line 2599
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 2601
    :cond_19
    if-nez v0, :cond_1d

    if-eqz v1, :cond_37

    .line 2602
    :cond_1d
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection$Listener;

    .line 2603
    .local v3, "l":Landroid/telecom/Connection$Listener;
    iget-object v4, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    iget v5, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    invoke-virtual {v3, p0, v4, v5}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    .line 2605
    .end local v3    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_23

    .line 2607
    :cond_37
    return-void
.end method

.method public final whitelist setCallerNumberVerificationStatus(I)V
    .registers 2
    .param p1, "callerNumberVerificationStatus"    # I

    .line 4089
    iput p1, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    .line 4090
    return-void
.end method

.method public final greylist-max-o setConference(Landroid/telecom/Conference;)Z
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3004
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3006
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1a

    .line 3007
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 3008
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3009
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 3011
    :cond_18
    const/4 v0, 0x1

    return v0

    .line 3013
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist setConferenceableConnections(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 2912
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2913
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2914
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 2917
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2918
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2919
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2921
    .end local v1    # "c":Landroid/telecom/Connection;
    :cond_28
    goto :goto_a

    .line 2922
    :cond_29
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2923
    return-void
.end method

.method public final whitelist setConferenceables(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 2932
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2933
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 2936
    .local v1, "c":Landroid/telecom/Conferenceable;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 2937
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_28

    .line 2938
    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    .line 2939
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .end local v2    # "connection":Landroid/telecom/Connection;
    goto :goto_35

    .line 2940
    :cond_28
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_35

    .line 2941
    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    .line 2942
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_36

    .line 2940
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_35
    :goto_35
    nop

    .line 2944
    :goto_36
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2946
    .end local v1    # "c":Landroid/telecom/Conferenceable;
    :cond_3b
    goto :goto_7

    .line 2947
    :cond_3c
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2948
    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .registers 3
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2867
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2868
    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .registers 5
    .param p1, "connectionCapabilities"    # I

    .line 2776
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2777
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_21

    .line 2778
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 2779
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2780
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    .line 2781
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_f

    .line 2783
    :cond_21
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .registers 5
    .param p1, "connectionProperties"    # I

    .line 2791
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2792
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v0, p1, :cond_21

    .line 2793
    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    .line 2794
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2795
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    .line 2796
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_f

    .line 2798
    :cond_21
    return-void
.end method

.method public final greylist-max-o setConnectionService(Landroid/telecom/ConnectionService;)V
    .registers 5
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .line 2974
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2975
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_15

    .line 2976
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 2979
    :cond_15
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    .line 2981
    :goto_17
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .registers 3
    .param p1, "connectElapsedTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2890
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    .line 2891
    return-void
.end method

.method public final whitelist setDialing()V
    .registers 2

    .line 2669
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2670
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2671
    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 2714
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2715
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 2716
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2717
    const-string v0, "Disconnected with cause %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2718
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2719
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    .line 2720
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_18

    .line 2721
    :cond_28
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3043
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3046
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 3050
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v0, :cond_36

    .line 3051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3052
    .local v0, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3053
    .local v2, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_29

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 3054
    :cond_29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3056
    .end local v2    # "oldKey":Ljava/lang/String;
    :cond_2c
    goto :goto_15

    .line 3057
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 3058
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 3064
    .end local v0    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_36
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v0, :cond_41

    .line 3065
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    .line 3067
    :cond_41
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3068
    if-eqz p1, :cond_51

    .line 3069
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3071
    :cond_51
    return-void
.end method

.method public final whitelist setInitialized()V
    .registers 2

    .line 2659
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2660
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2661
    return-void
.end method

.method public final whitelist setInitializing()V
    .registers 2

    .line 2651
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2652
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2653
    return-void
.end method

.method final blacklist setMuteState(Z)V
    .registers 4
    .param p1, "isMuted"    # Z

    .line 2510
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2511
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setMuteState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2512
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onMuteStateChanged(Z)V

    .line 2513
    return-void
.end method

.method public final whitelist setNextPostDialChar(C)V
    .registers 4
    .param p1, "nextChar"    # C

    .line 2748
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2749
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2750
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    .line 2751
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_9

    .line 2752
    :cond_19
    return-void
.end method

.method public final whitelist setOnHold()V
    .registers 2

    .line 2687
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2688
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2689
    return-void
.end method

.method public whitelist setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .registers 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3981
    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eq v0, p1, :cond_9

    .line 3982
    iput-object p1, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 3983
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V

    .line 3985
    :cond_9
    return-void
.end method

.method public final whitelist setPostDialWait(Ljava/lang/String;)V
    .registers 4
    .param p1, "remaining"    # Ljava/lang/String;

    .line 2734
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2735
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2736
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    .line 2737
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_9

    .line 2738
    :cond_19
    return-void
.end method

.method public final whitelist setPulling()V
    .registers 2

    .line 2679
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2680
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2681
    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .registers 4
    .param p1, "ringback"    # Z

    .line 2761
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2762
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v0, p1, :cond_1f

    .line 2763
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2764
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2765
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    .line 2766
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_f

    .line 2768
    :cond_1f
    return-void
.end method

.method public final whitelist setRinging()V
    .registers 2

    .line 2643
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2644
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2645
    return-void
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 4
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .line 2899
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2900
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 2901
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2902
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    .line 2903
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_b

    .line 2904
    :cond_1b
    return-void
.end method

.method public final greylist-max-o setSupportedAudioRoutes(I)V
    .registers 5
    .param p1, "supportedAudioRoutes"    # I

    .line 2808
    and-int/lit8 v0, p1, 0x9

    if-eqz v0, :cond_23

    .line 2814
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v0, p1, :cond_22

    .line 2815
    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2816
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2817
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    .line 2818
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_10

    .line 2820
    :cond_22
    return-void

    .line 2810
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "supported audio routes must include either speaker or earpiece"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTelecomCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2461
    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    .line 2462
    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .registers 4
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 2696
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2697
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 2698
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2699
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    .line 2700
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_b

    .line 2701
    :cond_1b
    return-void
.end method

.method public final whitelist setVideoState(I)V
    .registers 5
    .param p1, "videoState"    # I

    .line 2619
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2620
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setVideoState %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2621
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 2622
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2623
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    .line 2624
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_19

    .line 2625
    :cond_2b
    return-void
.end method

.method public final greylist-max-o unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .registers 5
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .line 2987
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_12

    .line 2988
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 2991
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    .line 2993
    :goto_15
    return-void
.end method
