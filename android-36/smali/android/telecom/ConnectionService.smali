.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# static fields
.field public static final greylist-max-o EXTRA_IS_HANDOVER:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER"

.field private static final greylist-max-o MSG_ABORT:I = 0x3

.field private static final greylist-max-o MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final blacklist MSG_ADD_PARTICIPANT:I = 0x27

.field private static final greylist-max-o MSG_ANSWER:I = 0x4

.field private static final greylist-max-o MSG_ANSWER_VIDEO:I = 0x11

.field private static final greylist-max-o MSG_CONFERENCE:I = 0xc

.field private static final greylist-max-o MSG_CONNECTION_SERVICE_FOCUS_GAINED:I = 0x1f

.field private static final greylist-max-o MSG_CONNECTION_SERVICE_FOCUS_LOST:I = 0x1e

.field private static final blacklist MSG_CREATE_CONFERENCE:I = 0x23

.field private static final blacklist MSG_CREATE_CONFERENCE_COMPLETE:I = 0x24

.field private static final blacklist MSG_CREATE_CONFERENCE_FAILED:I = 0x25

.field private static final greylist-max-o MSG_CREATE_CONNECTION:I = 0x2

.field private static final greylist-max-o MSG_CREATE_CONNECTION_COMPLETE:I = 0x1d

.field private static final greylist-max-o MSG_CREATE_CONNECTION_FAILED:I = 0x19

.field private static final greylist-max-o MSG_DEFLECT:I = 0x22

.field private static final greylist-max-o MSG_DISCONNECT:I = 0x6

.field private static final blacklist MSG_EXPLICIT_CALL_TRANSFER:I = 0x28

.field private static final blacklist MSG_EXPLICIT_CALL_TRANSFER_CONSULTATIVE:I = 0x29

.field private static final greylist-max-o MSG_HANDOVER_COMPLETE:I = 0x21

.field private static final greylist-max-o MSG_HANDOVER_FAILED:I = 0x20

.field private static final greylist-max-o MSG_HOLD:I = 0x7

.field private static final greylist-max-o MSG_MERGE_CONFERENCE:I = 0x12

.field private static final blacklist MSG_ON_AVAILABLE_CALL_ENDPOINTS_CHANGED:I = 0x2e

.field private static final greylist-max-o MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final blacklist MSG_ON_CALL_ENDPOINT_CHANGED:I = 0x2d

.field private static final blacklist MSG_ON_CALL_FILTERING_COMPLETED:I = 0x2a

.field private static final greylist-max-o MSG_ON_EXTRAS_CHANGED:I = 0x18

.field private static final blacklist MSG_ON_MUTE_STATE_CHANGED:I = 0x2f

.field private static final greylist-max-o MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final greylist-max-o MSG_ON_START_RTT:I = 0x1a

.field private static final greylist-max-o MSG_ON_STOP_RTT:I = 0x1b

.field private static final blacklist MSG_ON_TRACKED_BY_NON_UI_SERVICE:I = 0x2c

.field private static final blacklist MSG_ON_USING_ALTERNATIVE_UI:I = 0x2b

.field private static final greylist-max-o MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final greylist-max-o MSG_PULL_EXTERNAL_CALL:I = 0x16

.field private static final greylist-max-o MSG_REJECT:I = 0x5

.field private static final greylist-max-o MSG_REJECT_WITH_MESSAGE:I = 0x14

.field private static final blacklist MSG_REJECT_WITH_REASON:I = 0x26

.field private static final greylist-max-o MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final greylist-max-o MSG_RTT_UPGRADE_RESPONSE:I = 0x1c

.field private static final greylist-max-o MSG_SEND_CALL_EVENT:I = 0x17

.field private static final greylist-max-o MSG_SILENCE:I = 0x15

.field private static final greylist-max-o MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final greylist-max-o MSG_STOP_DTMF_TONE:I = 0xb

.field private static final greylist-max-o MSG_SWAP_CONFERENCE:I = 0x13

.field private static final greylist-max-o MSG_UNHOLD:I = 0x8

.field private static final greylist-max-o PII_DEBUG:Z

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static final greylist-max-o SESSION_ABORT:Ljava/lang/String; = "CS.ab"

.field private static final greylist-max-o SESSION_ADD_CS_ADAPTER:Ljava/lang/String; = "CS.aCSA"

.field private static final blacklist SESSION_ADD_PARTICIPANT:Ljava/lang/String; = "CS.aP"

.field private static final greylist-max-o SESSION_ANSWER:Ljava/lang/String; = "CS.an"

.field private static final greylist-max-o SESSION_ANSWER_VIDEO:Ljava/lang/String; = "CS.anV"

.field private static final blacklist SESSION_AVAILABLE_CALL_ENDPOINTS_CHANGED:Ljava/lang/String; = "CS.oACEC"

.field private static final greylist-max-o SESSION_CALL_AUDIO_SC:Ljava/lang/String; = "CS.cASC"

.field private static final blacklist SESSION_CALL_ENDPOINT_CHANGED:Ljava/lang/String; = "CS.oCEC"

.field private static final blacklist SESSION_CALL_FILTERING_COMPLETED:Ljava/lang/String; = "CS.oCFC"

.field private static final greylist-max-o SESSION_CONFERENCE:Ljava/lang/String; = "CS.c"

.field private static final greylist-max-o SESSION_CONNECTION_SERVICE_FOCUS_GAINED:Ljava/lang/String; = "CS.cSFG"

.field private static final greylist-max-o SESSION_CONNECTION_SERVICE_FOCUS_LOST:Ljava/lang/String; = "CS.cSFL"

.field private static final blacklist SESSION_CONSULTATIVE_TRANSFER:Ljava/lang/String; = "CS.cTrans"

.field private static final blacklist SESSION_CREATE_CONF:Ljava/lang/String; = "CS.crConf"

.field private static final blacklist SESSION_CREATE_CONF_COMPLETE:Ljava/lang/String; = "CS.crConfC"

.field private static final blacklist SESSION_CREATE_CONF_FAILED:Ljava/lang/String; = "CS.crConfF"

.field private static final greylist-max-o SESSION_CREATE_CONN:Ljava/lang/String; = "CS.crCo"

.field private static final greylist-max-o SESSION_CREATE_CONN_COMPLETE:Ljava/lang/String; = "CS.crCoC"

.field private static final greylist-max-o SESSION_CREATE_CONN_FAILED:Ljava/lang/String; = "CS.crCoF"

.field private static final greylist-max-o SESSION_DEFLECT:Ljava/lang/String; = "CS.def"

.field private static final greylist-max-o SESSION_DISCONNECT:Ljava/lang/String; = "CS.d"

.field private static final greylist-max-o SESSION_EXTRAS_CHANGED:Ljava/lang/String; = "CS.oEC"

.field private static final greylist-max-o SESSION_HANDLER:Ljava/lang/String; = "H."

.field private static final greylist-max-o SESSION_HANDOVER_COMPLETE:Ljava/lang/String; = "CS.hC"

.field private static final greylist-max-o SESSION_HANDOVER_FAILED:Ljava/lang/String; = "CS.haF"

.field private static final greylist-max-o SESSION_HOLD:Ljava/lang/String; = "CS.h"

.field private static final greylist-max-o SESSION_MERGE_CONFERENCE:Ljava/lang/String; = "CS.mC"

.field private static final blacklist SESSION_MUTE_STATE_CHANGED:Ljava/lang/String; = "CS.oMSC"

.field private static final greylist-max-o SESSION_PLAY_DTMF:Ljava/lang/String; = "CS.pDT"

.field private static final greylist-max-o SESSION_POST_DIAL_CONT:Ljava/lang/String; = "CS.oPDC"

.field private static final greylist-max-o SESSION_PULL_EXTERNAL_CALL:Ljava/lang/String; = "CS.pEC"

.field private static final greylist-max-o SESSION_REJECT:Ljava/lang/String; = "CS.r"

.field private static final greylist-max-o SESSION_REJECT_MESSAGE:Ljava/lang/String; = "CS.rWM"

.field private static final greylist-max-o SESSION_REMOVE_CS_ADAPTER:Ljava/lang/String; = "CS.rCSA"

.field private static final greylist-max-o SESSION_RTT_UPGRADE_RESPONSE:Ljava/lang/String; = "CS.rTRUR"

.field private static final greylist-max-o SESSION_SEND_CALL_EVENT:Ljava/lang/String; = "CS.sCE"

.field private static final greylist-max-o SESSION_SILENCE:Ljava/lang/String; = "CS.s"

.field private static final greylist-max-o SESSION_SPLIT_CONFERENCE:Ljava/lang/String; = "CS.sFC"

.field private static final greylist-max-o SESSION_START_RTT:Ljava/lang/String; = "CS.+RTT"

.field private static final greylist-max-o SESSION_STOP_DTMF:Ljava/lang/String; = "CS.sDT"

.field private static final greylist-max-o SESSION_STOP_RTT:Ljava/lang/String; = "CS.-RTT"

.field private static final greylist-max-o SESSION_SWAP_CONFERENCE:Ljava/lang/String; = "CS.sC"

.field private static final blacklist SESSION_TRACKED_BY_NON_UI_SERVICE:Ljava/lang/String; = "CS.tBNUS"

.field private static final blacklist SESSION_TRANSFER:Ljava/lang/String; = "CS.trans"

.field private static final greylist-max-o SESSION_UNHOLD:Ljava/lang/String; = "CS.u"

.field private static final greylist-max-o SESSION_UPDATE_RTT_PIPES:Ljava/lang/String; = "CS.uRTT"

.field private static final blacklist SESSION_USING_ALTERNATIVE_UI:Ljava/lang/String; = "CS.uAU"

.field private static greylist-max-o sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final greylist-max-o mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private greylist-max-o mAreAccountsInitialized:Z

.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field private final greylist-max-o mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mId:I

.field private final greylist-max-o mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIdSyncRoot:Ljava/lang/Object;

.field private final greylist-max-o mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private greylist-max-o sNullConference:Landroid/telecom/Conference;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdByConnection(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteConnectionManager(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAreAccountsInitialized(Landroid/telecom/ConnectionService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mabort(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddConferenceParticipants(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manswer(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manswerVideo(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconference(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconsultativeTransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConferenceFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/ConnectionService;->createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnection(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnectionFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/ConnectionService;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnectionIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeflect(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->deflect(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdisconnect(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleExtrasChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRttUpgradeResponse(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleRttUpgradeResponse(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandoverFailed(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmergeConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCreateConferenceComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyCreateConferenceComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCreateConnectionComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyCreateConnectionComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyHandoverComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyHandoverComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAccountsInitialized(Landroid/telecom/ConnectionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAdapterAttached(Landroid/telecom/ConnectionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAvailableCallEndpointsChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCallAudioStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCallEndpointChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCallFilteringCompleted(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMuteStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onMuteStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPostDialContinue(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTrackedByNonUiService(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onTrackedByNonUiService(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUsingAlternativeUi(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onUsingAlternativeUi(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplayDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpullExternalCall(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->pullExternalCall(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveConference(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendCallEvent(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msilence(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->silence(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplitFromConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->startRtt(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopRtt(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mswapConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->transfer(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 347
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 321
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 447
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 448
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 449
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 450
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 451
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 454
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 458
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    .line 459
    iput v0, p0, Landroid/telecom/ConnectionService;->mId:I

    .line 461
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 1138
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 1856
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 2014
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    return-void
.end method

.method private greylist-max-o abort(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2554
    const-string v0, "abort %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2555
    const-string v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 2556
    return-void
.end method

.method private greylist-max-o addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .registers 5
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3701
    const/4 v0, 0x0

    .line 3702
    .local v0, "originalId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3703
    const-string v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3704
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3705
    nop

    .line 3706
    invoke-virtual {p1}, Landroid/telecom/Conference;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 3705
    const-string v2, "addConferenceInternal: conf %s reusing original id %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3709
    :cond_29
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3710
    const-string v1, "Re-adding an existing conference: %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_59

    .line 3711
    :cond_3b
    if-eqz p1, :cond_59

    .line 3715
    if-nez v0, :cond_48

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_48
    move-object v1, v0

    .line 3716
    .local v1, "id":Ljava/lang/String;
    :goto_49
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3717
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v2}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 3719
    return-object v1

    .line 3722
    .end local v1    # "id":Ljava/lang/String;
    :cond_59
    :goto_59
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2798
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string v0, "addConferenceParticipants(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2799
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "addConferenceParticipants"

    if-eqz v0, :cond_1b

    .line 2800
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2801
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAddConferenceParticipants(Ljava/util/List;)V

    goto :goto_22

    .line 2803
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 2804
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onAddConferenceParticipants(Ljava/util/List;)V

    .line 2806
    :goto_22
    return-void
.end method

.method private greylist-max-o addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V
    .registers 5
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "connection"    # Landroid/telecom/Connection;

    .line 3678
    invoke-virtual {p3, p2}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 3679
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3681
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p3, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 3682
    invoke-virtual {p3, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 3683
    invoke-virtual {p3, p1}, Landroid/telecom/Connection;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V

    .line 3684
    invoke-virtual {p0, p3}, Landroid/telecom/ConnectionService;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 3685
    return-void
.end method

.method private greylist-max-o addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;
    .registers 6
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 3659
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3660
    const-string v1, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3661
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3662
    .local v0, "id":Ljava/lang/String;
    nop

    .line 3663
    invoke-virtual {p2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 3662
    const-string v2, "addExistingConnectionInternal - conn %s reusing original id %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_57

    .line 3664
    .end local v0    # "id":Ljava/lang/String;
    :cond_29
    if-nez p1, :cond_34

    .line 3667
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_57

    .line 3671
    .end local v0    # "id":Ljava/lang/String;
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNextCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3673
    .restart local v0    # "id":Ljava/lang/String;
    :goto_57
    invoke-direct {p0, p1, v0, p2}, Landroid/telecom/ConnectionService;->addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 3674
    return-object v0
.end method

.method private greylist-max-o answer(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2568
    const-string v0, "answer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2569
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "answer"

    if-eqz v0, :cond_1b

    .line 2570
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    goto :goto_22

    .line 2572
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onAnswer()V

    .line 2574
    :goto_22
    return-void
.end method

.method private greylist-max-o answerVideo(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 2559
    const-string v0, "answerVideo %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2560
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "answer"

    if-eqz v0, :cond_1b

    .line 2561
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    goto :goto_22

    .line 2563
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onAnswer(I)V

    .line 2565
    :goto_22
    return-void
.end method

.method private greylist-max-o conference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .line 2720
    const-string v0, "conference %s, %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2723
    const-string v0, "conference"

    invoke-direct {p0, p2, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 2724
    .local v1, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v2

    .line 2725
    .local v2, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v3

    if-ne v1, v3, :cond_2d

    .line 2726
    invoke-direct {p0, p2, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v2

    .line 2727
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v3

    if-ne v2, v3, :cond_2d

    .line 2728
    const-string v0, "Connection2 or Conference2 missing in conference request %s."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v0, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2730
    return-void

    .line 2735
    :cond_2d
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2736
    .local v0, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v3

    if-ne v0, v3, :cond_60

    .line 2737
    const-string v3, "addConnection"

    invoke-direct {p0, p1, v3}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v3

    .line 2738
    .local v3, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v3, v4, :cond_4d

    .line 2739
    const-string v4, "Connection1 or Conference1 missing in conference request %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_56

    .line 2744
    :cond_4d
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-eq v1, v4, :cond_57

    .line 2746
    invoke-virtual {v3, v1}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    .line 2754
    .end local v3    # "conference1":Landroid/telecom/Conference;
    :goto_56
    goto :goto_6d

    .line 2749
    .restart local v3    # "conference1":Landroid/telecom/Conference;
    :cond_57
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "There can only be one conference and an attempt was made to merge two conferences."

    invoke-static {p0, v5, v4}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2751
    return-void

    .line 2756
    .end local v3    # "conference1":Landroid/telecom/Conference;
    :cond_60
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v3

    if-eq v2, v3, :cond_6a

    .line 2758
    invoke-virtual {v2, v0}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_6d

    .line 2761
    :cond_6a
    invoke-virtual {p0, v0, v1}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    .line 2764
    :goto_6d
    return-void
.end method

.method private blacklist consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .line 2606
    const-string v0, "consultativeTransfer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2607
    const-string v0, "consultativeTransfer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2608
    .local v0, "connection1":Landroid/telecom/Connection;
    const-string v1, " consultativeTransfer"

    invoke-direct {p0, p2, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 2609
    .local v1, "connection2":Landroid/telecom/Connection;
    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->onTransfer(Landroid/telecom/Connection;)V

    .line 2610
    return-void
.end method

.method private blacklist createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 14
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .line 2295
    const/4 v0, 0x0

    .line 2296
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz p4, :cond_8

    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;

    move-result-object v1

    goto :goto_c

    .line 2297
    :cond_8
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;

    move-result-object v1

    :goto_c
    nop

    .line 2299
    .end local v0    # "conference":Landroid/telecom/Conference;
    .local v1, "conference":Landroid/telecom/Conference;
    const-string v0, "createConference, conference: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2300
    if-nez v1, :cond_30

    .line 2301
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "createConference, implementation returned null conference."

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2302
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x1

    const-string v3, "IMPL_RETURNED_NULL_CONFERENCE"

    invoke-direct {v0, v2, v3}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 2304
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 2302
    invoke-static {v0, v2}, Landroid/telecom/Conference;->createFailedConference(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Conference;

    move-result-object v1

    .line 2307
    :cond_30
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2308
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2309
    .local v2, "newExtras":Landroid/os/Bundle;
    const-string v3, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    if-eqz v0, :cond_5a

    .line 2314
    const-string v3, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 2315
    nop

    .line 2317
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2315
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    nop

    .line 2320
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 2319
    const-string v4, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2323
    :cond_5a
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 2325
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v3}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 2329
    new-instance v3, Landroid/telecom/ParcelableConference$Builder;

    .line 2330
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telecom/Conference;->getState()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/telecom/ParcelableConference$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;I)V

    .line 2331
    invoke-virtual {v1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2332
    invoke-virtual {v1}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2333
    invoke-virtual {v1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    if-nez v4, :cond_91

    .line 2334
    const/4 v4, 0x0

    goto :goto_99

    :cond_91
    invoke-virtual {v1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v4

    .line 2335
    :goto_99
    invoke-virtual {v1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v5

    .line 2333
    invoke-virtual {v3, v4, v5}, Landroid/telecom/ParcelableConference$Builder;->setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2336
    invoke-virtual {v1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v4

    .line 2337
    invoke-virtual {v1}, Landroid/telecom/Conference;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v6

    .line 2336
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/telecom/ParcelableConference$Builder;->setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2338
    invoke-virtual {v1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2339
    invoke-virtual {v1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2340
    invoke-virtual {v1}, Landroid/telecom/Conference;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telecom/Conference;->getAddressPresentation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/telecom/ParcelableConference$Builder;->setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2341
    invoke-virtual {v1}, Landroid/telecom/Conference;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 2342
    invoke-virtual {v1}, Landroid/telecom/Conference;->getCallerDisplayNamePresentation()I

    move-result v5

    .line 2341
    invoke-virtual {v3, v4, v5}, Landroid/telecom/ParcelableConference$Builder;->setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2343
    invoke-virtual {v1}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2344
    invoke-virtual {v1}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v3

    .line 2345
    invoke-virtual {v3}, Landroid/telecom/ParcelableConference$Builder;->build()Landroid/telecom/ParcelableConference;

    move-result-object v3

    .line 2346
    .local v3, "parcelableConference":Landroid/telecom/ParcelableConference;
    invoke-virtual {v1}, Landroid/telecom/Conference;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_108

    .line 2347
    invoke-virtual {v1, p2}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 2348
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 2349
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 2350
    invoke-virtual {p0, v1}, Landroid/telecom/ConnectionService;->onConferenceAdded(Landroid/telecom/Conference;)V

    .line 2353
    :cond_108
    const-string v4, "createConference, calling handleCreateConferenceSuccessful %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2354
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v4, p2, p3, v3}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V

    .line 2358
    return-void
.end method

.method private blacklist createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .registers 7
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z

    .line 2503
    const-string v0, "createConferenceFailed %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2504
    if-eqz p4, :cond_f

    .line 2505
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    goto :goto_12

    .line 2507
    :cond_f
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    .line 2509
    :goto_12
    return-void
.end method

.method private greylist-max-o createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 44
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .line 2371
    move-object/from16 v1, p0

    const-string v0, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1a

    .line 2372
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.telecom.extra.IS_HANDOVER"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v10

    goto :goto_1b

    :cond_1a
    move v2, v11

    :goto_1b
    move v12, v2

    .line 2373
    .local v12, "isLegacyHandover":Z
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.telecom.extra.IS_HANDOVER_CONNECTION"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v10

    goto :goto_31

    :cond_30
    move v2, v11

    :goto_31
    move v13, v2

    .line 2375
    .local v13, "isHandover":Z
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.telecom.extra.ADD_SELF_MANAGED_CALLS_TO_INCALLSERVICE"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_46

    move v2, v10

    goto :goto_47

    :cond_46
    move v2, v11

    :goto_47
    move v14, v2

    .line 2377
    .local v14, "addSelfManaged":Z
    nop

    .line 2379
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2380
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v5

    .line 2377
    const-string v6, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b, isLegacyHandover: %b, isHandover: %b,  addSelfManaged: %b"

    invoke-static {v1, v6, v5}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2382
    const/4 v5, 0x0

    .line 2383
    .local v5, "connection":Landroid/telecom/Connection;
    if-eqz v13, :cond_92

    .line 2384
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_84

    .line 2385
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "android.telecom.extra.HANDOVER_FROM_PHONE_ACCOUNT"

    const-class v9, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    goto :goto_85

    .line 2386
    :cond_84
    const/4 v7, 0x0

    :goto_85
    nop

    .line 2387
    .local v7, "fromPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez p4, :cond_8d

    .line 2388
    invoke-virtual {v1, v7, v4}, Landroid/telecom/ConnectionService;->onCreateOutgoingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v5

    goto :goto_91

    .line 2390
    :cond_8d
    invoke-virtual {v1, v7, v4}, Landroid/telecom/ConnectionService;->onCreateIncomingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v5

    .line 2392
    .end local v7    # "fromPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_91
    goto :goto_a5

    .line 2393
    :cond_92
    if-eqz p5, :cond_99

    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v7

    goto :goto_a4

    .line 2394
    :cond_99
    if-eqz p4, :cond_a0

    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v7

    goto :goto_a4

    .line 2395
    :cond_a0
    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v7

    :goto_a4
    move-object v5, v7

    .line 2397
    :goto_a5
    const-string v7, "createConnection, connection: %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v7, v8}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2398
    if-nez v5, :cond_c3

    .line 2399
    const-string v0, "createConnection, implementation returned null connection."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1, v0, v7}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2400
    new-instance v0, Landroid/telecom/DisconnectCause;

    const-string v7, "IMPL_RETURNED_NULL_CONNECTION"

    invoke-direct {v0, v10, v7}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v5

    goto :goto_ea

    .line 2404
    :cond_c3
    :try_start_c3
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 2405
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_e8

    .line 2409
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e8

    .line 2411
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2412
    .local v8, "newExtras":Landroid/os/Bundle;
    nop

    .line 2414
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2412
    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    const-string v0, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    .line 2418
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    .line 2417
    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2419
    invoke-virtual {v5, v8}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V
    :try_end_e8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c3 .. :try_end_e8} :catch_e9

    .line 2425
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v8    # "newExtras":Landroid/os/Bundle;
    :cond_e8
    goto :goto_ea

    .line 2422
    :catch_e9
    move-exception v0

    .line 2428
    :goto_ea
    nop

    .line 2429
    invoke-virtual {v5}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v0

    const/16 v7, 0x80

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_f5

    move v11, v10

    .line 2433
    .local v11, "isSelfManaged":Z
    :cond_f5
    if-eqz v11, :cond_fa

    .line 2434
    invoke-virtual {v5, v10}, Landroid/telecom/Connection;->setAudioModeIsVoip(Z)V

    .line 2436
    :cond_fa
    invoke-virtual {v5, v3}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {v5}, Landroid/telecom/Connection;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_108

    .line 2438
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_10c

    :cond_108
    invoke-virtual {v5}, Landroid/telecom/Connection;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 2439
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_10c
    invoke-virtual {v5}, Landroid/telecom/Connection;->getState()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_116

    .line 2440
    invoke-direct {v1, v0, v3, v5}, Landroid/telecom/ConnectionService;->addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 2443
    :cond_116
    invoke-virtual {v5}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v7

    .line 2444
    .local v7, "address":Landroid/net/Uri;
    if-nez v7, :cond_120

    const-string/jumbo v8, "null"

    goto :goto_124

    :cond_120
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 2445
    .local v8, "number":Ljava/lang/String;
    :goto_124
    nop

    .line 2446
    invoke-static {v8}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2447
    invoke-virtual {v5}, Landroid/telecom/Connection;->getState()I

    move-result v10

    invoke-static {v10}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v10

    .line 2448
    invoke-virtual {v5}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v15

    invoke-static {v15}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v15

    .line 2449
    invoke-virtual {v5}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v9, v10, v15, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 2445
    const-string v9, "createConnection, number: %s, state: %s, capabilities: %s, properties: %s"

    invoke-static {v1, v9, v6}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2451
    const-string v6, "createConnection, calling handleCreateConnectionSuccessful %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1, v6, v9}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2452
    iget-object v6, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v15, Landroid/telecom/ParcelableConnection;

    .line 2457
    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/telecom/Connection;->getState()I

    move-result v17

    .line 2458
    invoke-virtual {v5}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v18

    .line 2459
    invoke-virtual {v5}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v19

    .line 2460
    invoke-virtual {v5}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v20

    .line 2461
    invoke-virtual {v5}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v21

    .line 2462
    invoke-virtual {v5}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v22

    .line 2463
    invoke-virtual {v5}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v23

    .line 2464
    invoke-virtual {v5}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v24

    .line 2465
    invoke-virtual {v5}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v10

    if-nez v10, :cond_17f

    .line 2466
    goto :goto_187

    :cond_17f
    invoke-virtual {v5}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v9

    :goto_187
    move-object/from16 v25, v9

    .line 2467
    invoke-virtual {v5}, Landroid/telecom/Connection;->getVideoState()I

    move-result v26

    .line 2468
    invoke-virtual {v5}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v27

    .line 2469
    invoke-virtual {v5}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v28

    .line 2470
    invoke-virtual {v5}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v29

    .line 2471
    invoke-virtual {v5}, Landroid/telecom/Connection;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v31

    .line 2472
    invoke-virtual {v5}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v33

    .line 2473
    invoke-virtual {v5}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v34

    .line 2474
    invoke-virtual {v5}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    .line 2475
    invoke-virtual {v5}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v36

    .line 2476
    invoke-virtual {v5}, Landroid/telecom/Connection;->getCallerNumberVerificationStatus()I

    move-result v37

    move-object/from16 v16, v0

    .end local v0    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .local v16, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-direct/range {v15 .. v37}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;I)V

    .line 2452
    invoke-virtual {v6, v3, v4, v15}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 2478
    if-eqz p4, :cond_1ca

    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->shouldShowIncomingCallUi()Z

    move-result v0

    if-eqz v0, :cond_1ca

    if-eqz v11, :cond_1ca

    .line 2480
    invoke-virtual {v5}, Landroid/telecom/Connection;->onShowIncomingCallUi()V

    .line 2482
    :cond_1ca
    if-eqz p5, :cond_1cf

    .line 2483
    invoke-virtual {v1}, Landroid/telecom/ConnectionService;->triggerConferenceRecalculate()V

    .line 2485
    :cond_1cf
    return-void
.end method

.method private greylist-max-o createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .registers 7
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z

    .line 2491
    const-string v0, "createConnectionFailed %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2492
    if-eqz p4, :cond_f

    .line 2493
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    goto :goto_12

    .line 2495
    :cond_f
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    .line 2497
    :goto_12
    return-void
.end method

.method private greylist-max-o createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3762
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3763
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 3764
    .local v2, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3765
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3767
    .end local v2    # "c":Landroid/telecom/Connection;
    :cond_28
    goto :goto_9

    .line 3768
    :cond_29
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3769
    return-object v0
.end method

.method private greylist-max-o createIdList(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3780
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3781
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conferenceable;

    .line 3783
    .local v2, "c":Landroid/telecom/Conferenceable;
    instance-of v3, v2, Landroid/telecom/Connection;

    if-eqz v3, :cond_30

    .line 3784
    move-object v3, v2

    check-cast v3, Landroid/telecom/Connection;

    .line 3785
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3786
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 3788
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_30
    instance-of v3, v2, Landroid/telecom/Conference;

    if-eqz v3, :cond_4b

    .line 3789
    move-object v3, v2

    check-cast v3, Landroid/telecom/Conference;

    .line 3790
    .local v3, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 3791
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 3788
    .end local v3    # "conference":Landroid/telecom/Conference;
    :cond_4b
    :goto_4b
    nop

    .line 3794
    .end local v2    # "c":Landroid/telecom/Conferenceable;
    :cond_4c
    :goto_4c
    goto :goto_9

    .line 3795
    :cond_4d
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3796
    return-object v0
.end method

.method private greylist-max-o deflect(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;

    .line 2577
    const-string v0, "deflect %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2578
    const-string v0, "deflect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onDeflect(Landroid/net/Uri;)V

    .line 2579
    return-void
.end method

.method private greylist-max-o disconnect(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2618
    const-string v0, "disconnect %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2619
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "disconnect"

    if-eqz v0, :cond_1b

    .line 2620
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_22

    .line 2622
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    .line 2624
    :goto_22
    return-void
.end method

.method private greylist-max-o endAllConnections()V
    .registers 4

    .line 3808
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 3810
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 3811
    invoke-virtual {v1}, Landroid/telecom/Connection;->onDisconnect()V

    .line 3813
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_1f
    goto :goto_a

    .line 3814
    :cond_20
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference;

    .line 3815
    .local v1, "conference":Landroid/telecom/Conference;
    invoke-virtual {v1}, Landroid/telecom/Conference;->onDisconnect()V

    .line 3816
    .end local v1    # "conference":Landroid/telecom/Conference;
    goto :goto_2a

    .line 3817
    :cond_3a
    return-void
.end method

.method private greylist-max-o findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .registers 5
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 3754
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3755
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    return-object v0

    .line 3757
    :cond_11
    const-string v0, "%s - Cannot find conference %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3758
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 3739
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3740
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 3742
    :cond_13
    const-string v0, "%s - Cannot find Connection %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3743
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getNextCallId()I
    .registers 3

    .line 3825
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 3826
    :try_start_3
    iget v1, p0, Landroid/telecom/ConnectionService;->mId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/telecom/ConnectionService;->mId:I

    monitor-exit v0

    return v1

    .line 3827
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private greylist-max-o getNullConference()Landroid/telecom/Conference;
    .registers 3

    .line 3800
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_c

    .line 3801
    new-instance v0, Landroid/telecom/ConnectionService$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 3803
    :cond_c
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized greylist-max-o getNullConnection()Landroid/telecom/Connection;
    .registers 2

    const-class v0, Landroid/telecom/ConnectionService;

    monitor-enter v0

    .line 3747
    :try_start_3
    sget-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v1, :cond_e

    .line 3748
    new-instance v1, Landroid/telecom/ConnectionService$6;

    invoke-direct {v1}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 3750
    :cond_e
    sget-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 3746
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2875
    const-string/jumbo v0, "handleExtrasChanged(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2876
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "handleExtrasChanged"

    if-eqz v0, :cond_1d

    .line 2877
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->handleExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_2c

    .line 2878
    :cond_1d
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2879
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->handleExtrasChanged(Landroid/os/Bundle;)V

    .line 2881
    :cond_2c
    :goto_2c
    return-void
.end method

.method private greylist-max-o handleRttUpgradeResponse(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 2902
    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "handleRttUpgradeResponse(%s, %s)"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2903
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2904
    const-string/jumbo v0, "handleRttUpgradeResponse"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2905
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_37

    .line 2906
    :cond_27
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2907
    const-string/jumbo v1, "handleRttUpgradeResponse called on a conference."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2909
    :cond_37
    :goto_37
    return-void
.end method

.method private greylist-max-o handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "reason"    # I

    .line 2514
    const-string/jumbo v0, "handoverFailed %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2515
    invoke-virtual {p0, p2, p3}, Landroid/telecom/ConnectionService;->onHandoverFailed(Landroid/telecom/ConnectionRequest;I)V

    .line 2516
    return-void
.end method

.method private greylist-max-o hold(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2627
    const-string/jumbo v0, "hold %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2628
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "hold"

    if-eqz v0, :cond_1d

    .line 2629
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    goto :goto_24

    .line 2631
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    .line 2633
    :goto_24
    return-void
.end method

.method private greylist-max-o mergeConference(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2782
    const-string/jumbo v0, "mergeConference(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2783
    const-string/jumbo v0, "mergeConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 2784
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_16

    .line 2785
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 2787
    :cond_16
    return-void
.end method

.method private blacklist notifyCreateConferenceComplete(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2541
    const-string/jumbo v0, "notifyCreateConferenceComplete %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2542
    if-nez p1, :cond_16

    .line 2545
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "notifyCreateConferenceComplete: callId is null."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2546
    return-void

    .line 2548
    :cond_16
    const-string/jumbo v0, "notifyCreateConferenceComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->onCreateConferenceComplete(Landroid/telecom/Conference;)V

    .line 2550
    return-void
.end method

.method private greylist-max-o notifyCreateConnectionComplete(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2524
    const-string/jumbo v0, "notifyCreateConnectionComplete %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2525
    if-nez p1, :cond_16

    .line 2528
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "notifyCreateConnectionComplete: callId is null."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2529
    return-void

    .line 2531
    :cond_16
    const-string/jumbo v0, "notifyCreateConnectionComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->onCreateConnectionComplete(Landroid/telecom/Connection;)V

    .line 2533
    return-void
.end method

.method private greylist-max-o notifyHandoverComplete(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2855
    const-string/jumbo v0, "notifyHandoverComplete(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2856
    const-string/jumbo v0, "notifyHandoverComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2857
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_16

    .line 2858
    invoke-virtual {v0}, Landroid/telecom/Connection;->onHandoverComplete()V

    .line 2860
    :cond_16
    return-void
.end method

.method private greylist-max-o onAccountsInitialized()V
    .registers 3

    .line 3642
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 3643
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3644
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3645
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_9

    .line 3646
    :cond_19
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3647
    return-void
.end method

.method private greylist-max-o onAdapterAttached()V
    .registers 4

    .line 2917
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_5

    .line 2919
    return-void

    .line 2922
    :cond_5
    invoke-virtual {p0}, Landroid/telecom/ConnectionService;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2924
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v2, Landroid/telecom/ConnectionService$5;

    invoke-direct {v2, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v1, v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;)V

    .line 2953
    return-void
.end method

.method private blacklist onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 2666
    .local p2, "availableCallEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    const-string/jumbo v0, "onAvailableCallEndpointsChanged %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2667
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onAvailableCallEndpointsChanged"

    if-eqz v0, :cond_1d

    .line 2668
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2669
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setAvailableCallEndpoints(Ljava/util/List;)V

    goto :goto_24

    .line 2671
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 2672
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setAvailableCallEndpoints(Ljava/util/List;)V

    .line 2674
    :goto_24
    return-void
.end method

.method private greylist-max-o onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 2645
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2646
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onCallAudioStateChanged"

    if-eqz v0, :cond_1d

    .line 2647
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_24

    .line 2650
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 2653
    :goto_24
    return-void
.end method

.method private blacklist onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callEndpoint"    # Landroid/telecom/CallEndpoint;

    .line 2656
    const-string/jumbo v0, "onCallEndpointChanged %s %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2657
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onCallEndpointChanged"

    if-eqz v0, :cond_1d

    .line 2658
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallEndpoint(Landroid/telecom/CallEndpoint;)V

    goto :goto_24

    .line 2660
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallEndpoint(Landroid/telecom/CallEndpoint;)V

    .line 2662
    :goto_24
    return-void
.end method

.method private blacklist onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callFilteringCompletionInfo"    # Landroid/telecom/Connection$CallFilteringCompletionInfo;

    .line 2842
    const-string/jumbo v0, "onCallFilteringCompleted(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2843
    const-string/jumbo v0, "onCallFilteringCompleted"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2844
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_16

    .line 2845
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V

    .line 2847
    :cond_16
    return-void
.end method

.method private blacklist onMuteStateChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isMuted"    # Z

    .line 2677
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onMuteStateChanged %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2678
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onMuteStateChanged"

    if-eqz v0, :cond_21

    .line 2679
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setMuteState(Z)V

    goto :goto_28

    .line 2681
    :cond_21
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setMuteState(Z)V

    .line 2683
    :goto_28
    return-void
.end method

.method private greylist-max-o onPostDialContinue(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .line 2912
    const-string/jumbo v0, "onPostDialContinue(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2913
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 2914
    return-void
.end method

.method private blacklist onTrackedByNonUiService(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isTracked"    # Z

    .line 2694
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onTrackedByNonUiService %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2695
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2696
    const-string/jumbo v0, "onTrackedByNonUiService"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2697
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onTrackedByNonUiService(Z)V

    .line 2699
    :cond_20
    return-void
.end method

.method private blacklist onUsingAlternativeUi(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUsingAlternativeUi"    # Z

    .line 2686
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onUsingAlternativeUi %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2687
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2688
    const-string/jumbo v0, "onUsingAlternativeUi"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2689
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onUsingAlternativeUi(Z)V

    .line 2691
    :cond_20
    return-void
.end method

.method private greylist-max-o playDtmfTone(Ljava/lang/String;C)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .line 2702
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "playDtmfTone %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2703
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "playDtmfTone"

    if-eqz v0, :cond_25

    .line 2704
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    goto :goto_2c

    .line 2706
    :cond_25
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    .line 2708
    :goto_2c
    return-void
.end method

.method private greylist-max-o pullExternalCall(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2816
    const-string/jumbo v0, "pullExternalCall(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2817
    const-string/jumbo v0, "pullExternalCall"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2818
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_16

    .line 2819
    invoke-virtual {v0}, Landroid/telecom/Connection;->onPullExternalCall()V

    .line 2821
    :cond_16
    return-void
.end method

.method private greylist-max-o reject(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2582
    const-string/jumbo v0, "reject %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2583
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "reject"

    if-eqz v0, :cond_1d

    .line 2584
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    goto :goto_24

    .line 2586
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onReject()V

    .line 2588
    :goto_24
    return-void
.end method

.method private blacklist reject(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectReason"    # I

    .line 2596
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "reject %s with reason %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2597
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onReject(I)V

    .line 2598
    return-void
.end method

.method private greylist-max-o reject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Ljava/lang/String;

    .line 2591
    const-string/jumbo v0, "reject %s with message"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2592
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onReject(Ljava/lang/String;)V

    .line 2593
    return-void
.end method

.method private greylist-max-o removeConference(Landroid/telecom/Conference;)V
    .registers 4
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3726
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3727
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 3729
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3730
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3731
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3732
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 3734
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceRemoved(Landroid/telecom/Conference;)V

    .line 3736
    .end local v0    # "id":Ljava/lang/String;
    :cond_27
    return-void
.end method

.method private greylist-max-o sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2833
    const-string/jumbo v0, "sendCallEvent(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2834
    const-string/jumbo v0, "sendCallEvent"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2835
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_16

    .line 2836
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Connection;->onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2838
    :cond_16
    return-void
.end method

.method private greylist-max-o silence(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2613
    const-string/jumbo v0, "silence %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2614
    const-string/jumbo v0, "silence"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onSilence()V

    .line 2615
    return-void
.end method

.method private greylist-max-o splitFromConference(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 2767
    const-string/jumbo v0, "splitFromConference(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2769
    const-string/jumbo v0, "splitFromConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2770
    .local v0, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v1

    if-ne v0, v1, :cond_21

    .line 2771
    const-string v1, "Connection missing in conference request %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2772
    return-void

    .line 2775
    :cond_21
    invoke-virtual {v0}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 2776
    .local v1, "conference":Landroid/telecom/Conference;
    if-eqz v1, :cond_2a

    .line 2777
    invoke-virtual {v1, v0}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    .line 2779
    :cond_2a
    return-void
.end method

.method private greylist-max-o startRtt(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 2884
    const-string/jumbo v0, "startRtt(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2885
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2886
    const-string/jumbo v0, "startRtt"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onStartRtt(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_2e

    .line 2887
    :cond_1d
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2888
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "startRtt called on a conference."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2890
    :cond_2e
    :goto_2e
    return-void
.end method

.method private greylist-max-o stopDtmfTone(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2711
    const-string/jumbo v0, "stopDtmfTone %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2712
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "stopDtmfTone"

    if-eqz v0, :cond_1d

    .line 2713
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    goto :goto_24

    .line 2715
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    .line 2717
    :goto_24
    return-void
.end method

.method private greylist-max-o stopRtt(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2893
    const-string/jumbo v0, "stopRtt(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2894
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2895
    const-string/jumbo v0, "stopRtt"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopRtt()V

    goto :goto_2e

    .line 2896
    :cond_1d
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2897
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "stopRtt called on a conference."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2899
    :cond_2e
    :goto_2e
    return-void
.end method

.method private greylist-max-o swapConference(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2790
    const-string/jumbo v0, "swapConference(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2791
    const-string/jumbo v0, "swapConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 2792
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_16

    .line 2793
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    .line 2795
    :cond_16
    return-void
.end method

.method private blacklist transfer(Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "number"    # Landroid/net/Uri;
    .param p3, "isConfirmationRequired"    # Z

    .line 2601
    const-string/jumbo v0, "transfer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2602
    const-string/jumbo v0, "transfer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/Connection;->onTransfer(Landroid/net/Uri;Z)V

    .line 2603
    return-void
.end method

.method private greylist-max-o unhold(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2636
    const-string/jumbo v0, "unhold %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2637
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "unhold"

    if-eqz v0, :cond_1d

    .line 2638
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    goto :goto_24

    .line 2640
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    .line 2642
    :goto_24
    return-void
.end method


# virtual methods
.method public final whitelist addConference(Landroid/telecom/Conference;)V
    .registers 9
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3054
    const-string v0, "addConference: conference=%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3056
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v0

    .line 3057
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_116

    .line 3058
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3059
    .local v1, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 3060
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3061
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3063
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_3c
    goto :goto_1d

    .line 3064
    :cond_3d
    invoke-virtual {p1, v0}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 3065
    new-instance v2, Landroid/telecom/ParcelableConference$Builder;

    .line 3066
    invoke-virtual {p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Conference;->getState()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;I)V

    .line 3067
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3068
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3069
    invoke-virtual {v2, v1}, Landroid/telecom/ParcelableConference$Builder;->setConnectionIds(Ljava/util/List;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3070
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_69

    .line 3071
    const/4 v3, 0x0

    goto :goto_71

    :cond_69
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v3

    .line 3072
    :goto_71
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v4

    .line 3070
    invoke-virtual {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3073
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v3

    .line 3074
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v5

    .line 3073
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/telecom/ParcelableConference$Builder;->setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3075
    invoke-virtual {p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3076
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3077
    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddressPresentation()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3078
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 3079
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayNamePresentation()I

    move-result v4

    .line 3078
    invoke-virtual {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3080
    invoke-virtual {p1}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3081
    invoke-virtual {p1}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3082
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setCallDirection(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3083
    invoke-virtual {v2}, Landroid/telecom/ParcelableConference$Builder;->build()Landroid/telecom/ParcelableConference;

    move-result-object v2

    .line 3085
    .local v2, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 3086
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 3087
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 3090
    invoke-virtual {p1}, Landroid/telecom/Conference;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_ef

    .line 3091
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->isMultiparty()Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;Z)V

    .line 3095
    :cond_ef
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_113

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Connection;

    .line 3096
    .local v4, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3097
    .local v5, "connectionId":Ljava/lang/String;
    if-eqz v5, :cond_112

    .line 3098
    iget-object v6, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v6, v5, v0}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    .end local v4    # "connection":Landroid/telecom/Connection;
    .end local v5    # "connectionId":Ljava/lang/String;
    :cond_112
    goto :goto_f7

    .line 3101
    :cond_113
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceAdded(Landroid/telecom/Conference;)V

    .line 3103
    .end local v1    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "parcelableConference":Landroid/telecom/ParcelableConference;
    :cond_116
    return-void
.end method

.method public final whitelist addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .registers 4
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 3114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telecom/ConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    .line 3115
    return-void
.end method

.method public final whitelist addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .registers 34
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;
    .param p3, "conference"    # Landroid/telecom/Conference;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3149
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p2}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 3150
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_86

    .line 3151
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v25, v3

    .line 3152
    .local v25, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3153
    .local v3, "conferenceId":Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 3154
    iget-object v4, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    move-object/from16 v27, v3

    goto :goto_23

    .line 3153
    :cond_21
    move-object/from16 v27, v3

    .line 3157
    .end local v3    # "conferenceId":Ljava/lang/String;
    .local v27, "conferenceId":Ljava/lang/String;
    :goto_23
    new-instance v5, Landroid/telecom/ParcelableConnection;

    .line 3159
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v7

    .line 3160
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v8

    .line 3161
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v9

    .line 3162
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v10

    .line 3163
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v11

    .line 3164
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v12

    .line 3165
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v13

    .line 3166
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v14

    .line 3167
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_4d

    .line 3168
    const/4 v3, 0x0

    goto :goto_55

    :cond_4d
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v3

    :goto_55
    move-object v15, v3

    .line 3169
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v16

    .line 3170
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v17

    .line 3171
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v18

    .line 3172
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v19

    .line 3173
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v21

    .line 3174
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v23

    .line 3175
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v24

    .line 3177
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    .line 3179
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallDirection()I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v29}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;II)V

    .line 3181
    .local v5, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v3, v2, v5}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 3183
    .end local v5    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v25    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "conferenceId":Ljava/lang/String;
    :cond_86
    return-void
.end method

.method greylist-max-o addRemoteConference(Landroid/telecom/RemoteConference;)V
    .registers 2
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .line 3633
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 3634
    return-void
.end method

.method greylist-max-o addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .line 3638
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 3639
    return-void
.end method

.method public final whitelist conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .registers 4
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .line 3042
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 3043
    return-void
.end method

.method public final whitelist connectionServiceFocusReleased()V
    .registers 2

    .line 3128
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v0}, Landroid/telecom/ConnectionServiceAdapter;->onConnectionServiceFocusReleased()V

    .line 3129
    return-void
.end method

.method public greylist-max-o containsConference(Landroid/telecom/Conference;)Z
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3628
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist createRemoteIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConference;
    .registers 5
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3007
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .registers 5
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2970
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createRemoteOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConference;
    .registers 5
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3025
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .registers 5
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2989
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAllConferences()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation

    .line 3202
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAllConnections()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 3192
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 3836
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2263
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onBindClient(Landroid/content/Intent;)V

    .line 2264
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist onBindClient(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2280
    return-void
.end method

.method public whitelist onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .registers 3
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .line 3566
    return-void
.end method

.method public greylist-max-o onConferenceAdded(Landroid/telecom/Conference;)V
    .registers 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3584
    return-void
.end method

.method public greylist-max-o onConferenceRemoved(Landroid/telecom/Conference;)V
    .registers 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3590
    return-void
.end method

.method public greylist-max-o onConnectionAdded(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 3572
    return-void
.end method

.method public greylist-max-o onConnectionRemoved(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 3578
    return-void
.end method

.method public whitelist onConnectionServiceFocusGained()V
    .registers 1

    .line 3622
    return-void
.end method

.method public whitelist onConnectionServiceFocusLost()V
    .registers 1

    .line 3616
    return-void
.end method

.method public blacklist onCreateConferenceComplete(Landroid/telecom/Conference;)V
    .registers 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3261
    return-void
.end method

.method public greylist-max-o onCreateConnectionComplete(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 3249
    return-void
.end method

.method public whitelist onCreateIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;
    .registers 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3236
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateIncomingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .registers 3
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3320
    return-void
.end method

.method public whitelist onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3218
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .registers 3
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3281
    return-void
.end method

.method public whitelist onCreateIncomingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 4
    .param p1, "fromPhoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3510
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;
    .registers 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3411
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateOutgoingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .registers 3
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3340
    return-void
.end method

.method public whitelist onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3379
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .registers 3
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3300
    return-void
.end method

.method public whitelist onCreateOutgoingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 4
    .param p1, "fromPhoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3463
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3555
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onHandoverFailed(Landroid/telecom/ConnectionRequest;I)V
    .registers 3
    .param p1, "request"    # Landroid/telecom/ConnectionRequest;
    .param p2, "error"    # I

    .line 3525
    return-void
.end method

.method public whitelist onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .registers 2
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .line 3602
    return-void
.end method

.method public whitelist onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 3608
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2270
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 2271
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o removeConnection(Landroid/telecom/Connection;)V
    .registers 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 3689
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 3690
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 3691
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3692
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_24

    .line 3693
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3694
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3695
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConnectionRemoved(Landroid/telecom/Connection;)V

    .line 3698
    :cond_24
    return-void
.end method

.method public blacklist setReadyForTest()V
    .registers 2

    .line 3845
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 3846
    return-void
.end method

.method public greylist-max-o triggerConferenceRecalculate()V
    .registers 1

    .line 3351
    return-void
.end method
