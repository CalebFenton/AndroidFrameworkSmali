.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionService$1;,
        Landroid/telecom/ConnectionService$2;,
        Landroid/telecom/ConnectionService$3;,
        Landroid/telecom/ConnectionService$4;
    }
.end annotation


# static fields
.field private static final MSG_ABORT:I = 0x3

.field private static final MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final MSG_ANSWER:I = 0x4

.field private static final MSG_ANSWER_VIDEO:I = 0x11

.field private static final MSG_CONFERENCE:I = 0xc

.field private static final MSG_CREATE_CONNECTION:I = 0x2

.field private static final MSG_DISCONNECT:I = 0x6

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_MERGE_CONFERENCE:I = 0x12

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final MSG_ON_EXTRAS_CHANGED:I = 0x18

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_PULL_EXTERNAL_CALL:I = 0x16

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REJECT_WITH_MESSAGE:I = 0x14

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final MSG_SEND_CALL_EVENT:I = 0x17

.field private static final MSG_SILENCE:I = 0x15

.field private static final MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final MSG_STOP_DTMF_TONE:I = 0xb

.field private static final MSG_SWAP_CONFERENCE:I = 0x13

.field private static final MSG_UNHOLD:I = 0x8

.field private static final PII_DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private mAreAccountsInitialized:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private mId:I

.field private final mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdSyncRoot:Ljava/lang/Object;

.field private final mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private sNullConference:Landroid/telecom/Conference;


# direct methods
.method static synthetic -get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/ConnectionService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/ConnectionService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "connections"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "conferenceables"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/telecom/ConnectionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/telecom/ConnectionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->pullExternalCall(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap20(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->silence(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@4
    move-result v0

    #@5
    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    #@7
    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@4
    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@b
    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@10
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@12
    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@17
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@19
    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@20
    .line 117
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    #@22
    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    #@25
    .line 116
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@27
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    #@29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    #@2e
    .line 119
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    #@30
    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    #@33
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@35
    .line 121
    iput-boolean v1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    #@37
    .line 123
    new-instance v0, Ljava/lang/Object;

    #@39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    #@3e
    .line 124
    iput v1, p0, Landroid/telecom/ConnectionService;->mId:I

    #@40
    .line 126
    new-instance v0, Landroid/telecom/ConnectionService$1;

    #@42
    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    #@45
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    #@47
    .line 275
    new-instance v0, Landroid/telecom/ConnectionService$2;

    #@49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@4c
    move-result-object v1

    #@4d
    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    #@50
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    #@52
    .line 443
    new-instance v0, Landroid/telecom/ConnectionService$3;

    #@54
    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    #@57
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    #@59
    .line 547
    new-instance v0, Landroid/telecom/ConnectionService$4;

    #@5b
    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    #@5e
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    #@60
    .line 76
    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 796
    const-string/jumbo v0, "abort %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 797
    const-string/jumbo v0, "abort"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    #@16
    .line 795
    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 5
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1381
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@3
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1382
    const-string/jumbo v1, "Re-adding an existing conference: %s."

    #@c
    const/4 v2, 0x1

    #@d
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    const/4 v3, 0x0

    #@10
    aput-object p1, v2, v3

    #@12
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 1394
    :cond_0
    return-object v4

    #@16
    .line 1383
    :cond_1
    if-eqz p1, :cond_0

    #@18
    .line 1387
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1388
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@22
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 1389
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@27
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 1390
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    #@2c
    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@2f
    .line 1391
    return-object v0
.end method

.method private addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1361
    invoke-virtual {p2, p1}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    #@3
    .line 1362
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 1363
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@a
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1364
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    #@f
    invoke-virtual {p2, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@12
    .line 1365
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    #@15
    .line 1360
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 3
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1347
    if-nez p1, :cond_0

    #@2
    .line 1350
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1356
    .local v0, "id":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    #@d
    .line 1357
    return-object v0

    #@e
    .line 1354
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "@"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNextCallId()I

    #@29
    move-result v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method private answer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 806
    const-string/jumbo v0, "answer %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 807
    const-string/jumbo v0, "answer"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    #@16
    .line 805
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    #@0
    .prologue
    .line 801
    const-string/jumbo v0, "answerVideo %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 802
    const-string/jumbo v0, "answer"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    #@16
    .line 800
    return-void
.end method

.method private conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 882
    const-string/jumbo v4, "conference %s, %s"

    #@5
    const/4 v5, 0x2

    #@6
    new-array v5, v5, [Ljava/lang/Object;

    #@8
    aput-object p1, v5, v6

    #@a
    aput-object p2, v5, v7

    #@c
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    .line 885
    const-string/jumbo v4, "conference"

    #@12
    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@15
    move-result-object v3

    #@16
    .line 886
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@19
    move-result-object v1

    #@1a
    .line 887
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@1d
    move-result-object v4

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    .line 888
    const-string/jumbo v4, "conference"

    #@23
    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@26
    move-result-object v1

    #@27
    .line 889
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@2a
    move-result-object v4

    #@2b
    if-ne v1, v4, :cond_0

    #@2d
    .line 890
    const-string/jumbo v4, "Connection2 or Conference2 missing in conference request %s."

    #@30
    new-array v5, v7, [Ljava/lang/Object;

    #@32
    .line 891
    aput-object p2, v5, v6

    #@34
    .line 890
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@37
    .line 892
    return-void

    #@38
    .line 897
    :cond_0
    const-string/jumbo v4, "conference"

    #@3b
    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@3e
    move-result-object v2

    #@3f
    .line 898
    .local v2, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@42
    move-result-object v4

    #@43
    if-ne v2, v4, :cond_3

    #@45
    .line 899
    const-string/jumbo v4, "addConnection"

    #@48
    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@4b
    move-result-object v0

    #@4c
    .line 900
    .local v0, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@4f
    move-result-object v4

    #@50
    if-ne v0, v4, :cond_1

    #@52
    .line 902
    const-string/jumbo v4, "Connection1 or Conference1 missing in conference request %s."

    #@55
    .line 901
    new-array v5, v7, [Ljava/lang/Object;

    #@57
    .line 903
    aput-object p1, v5, v6

    #@59
    .line 901
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5c
    .line 881
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :goto_0
    return-void

    #@5d
    .line 906
    .restart local v0    # "conference1":Landroid/telecom/Conference;
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@60
    move-result-object v4

    #@61
    if-eq v3, v4, :cond_2

    #@63
    .line 908
    invoke-virtual {v0, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    #@66
    goto :goto_0

    #@67
    .line 911
    :cond_2
    const-string/jumbo v4, "There can only be one conference and an attempt was made to merge two conferences."

    #@6a
    new-array v5, v6, [Ljava/lang/Object;

    #@6c
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6f
    .line 913
    return-void

    #@70
    .line 918
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@73
    move-result-object v4

    #@74
    if-eq v1, v4, :cond_4

    #@76
    .line 920
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    #@79
    goto :goto_0

    #@7a
    .line 923
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    #@7d
    goto :goto_0
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 27
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    #@0
    .prologue
    .line 740
    const-string/jumbo v5, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b"

    #@3
    const/4 v6, 0x5

    #@4
    new-array v6, v6, [Ljava/lang/Object;

    #@6
    .line 741
    const/4 v7, 0x0

    #@7
    aput-object p1, v6, v7

    #@9
    const/4 v7, 0x1

    #@a
    aput-object p2, v6, v7

    #@c
    const/4 v7, 0x2

    #@d
    aput-object p3, v6, v7

    #@f
    .line 742
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v7

    #@13
    const/4 v8, 0x3

    #@14
    aput-object v7, v6, v8

    #@16
    .line 743
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v7

    #@1a
    const/4 v8, 0x4

    #@1b
    aput-object v7, v6, v8

    #@1d
    .line 740
    move-object/from16 v0, p0

    #@1f
    invoke-static {v0, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@22
    .line 745
    if-eqz p5, :cond_3

    #@24
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, p1

    #@28
    move-object/from16 v2, p3

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    #@2d
    move-result-object v24

    #@2e
    .line 748
    .local v24, "connection":Landroid/telecom/Connection;
    :goto_0
    const-string/jumbo v5, "createConnection, connection: %s"

    #@31
    const/4 v6, 0x1

    #@32
    new-array v6, v6, [Ljava/lang/Object;

    #@34
    const/4 v7, 0x0

    #@35
    aput-object v24, v6, v7

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-static {v0, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3c
    .line 749
    if-nez v24, :cond_0

    #@3e
    .line 751
    new-instance v5, Landroid/telecom/DisconnectCause;

    #@40
    const/4 v6, 0x1

    #@41
    invoke-direct {v5, v6}, Landroid/telecom/DisconnectCause;-><init>(I)V

    #@44
    .line 750
    invoke-static {v5}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    #@47
    move-result-object v24

    #@48
    .line 754
    :cond_0
    move-object/from16 v0, v24

    #@4a
    move-object/from16 v1, p2

    #@4c
    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    #@4f
    .line 755
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    #@52
    move-result v5

    #@53
    const/4 v6, 0x6

    #@54
    if-eq v5, v6, :cond_1

    #@56
    .line 756
    move-object/from16 v0, p0

    #@58
    move-object/from16 v1, p2

    #@5a
    move-object/from16 v2, v24

    #@5c
    invoke-direct {v0, v1, v2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    #@5f
    .line 759
    :cond_1
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    #@62
    move-result-object v4

    #@63
    .line 760
    .local v4, "address":Landroid/net/Uri;
    if-nez v4, :cond_5

    #@65
    const-string/jumbo v25, "null"

    #@68
    .line 761
    .local v25, "number":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "createConnection, number: %s, state: %s, capabilities: %s, properties: %s"

    #@6b
    const/4 v6, 0x4

    #@6c
    new-array v6, v6, [Ljava/lang/Object;

    #@6e
    .line 762
    invoke-static/range {v25 .. v25}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    const/4 v8, 0x0

    #@73
    aput-object v7, v6, v8

    #@75
    .line 763
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    #@78
    move-result v7

    #@79
    invoke-static {v7}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    const/4 v8, 0x1

    #@7e
    aput-object v7, v6, v8

    #@80
    .line 764
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    #@83
    move-result v7

    #@84
    invoke-static {v7}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    #@87
    move-result-object v7

    #@88
    const/4 v8, 0x2

    #@89
    aput-object v7, v6, v8

    #@8b
    .line 765
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectionProperties()I

    #@8e
    move-result v7

    #@8f
    invoke-static {v7}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    #@92
    move-result-object v7

    #@93
    const/4 v8, 0x3

    #@94
    aput-object v7, v6, v8

    #@96
    .line 761
    move-object/from16 v0, p0

    #@98
    invoke-static {v0, v5, v6}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9b
    .line 767
    const-string/jumbo v5, "createConnection, calling handleCreateConnectionSuccessful %s"

    #@9e
    const/4 v6, 0x1

    #@9f
    new-array v6, v6, [Ljava/lang/Object;

    #@a1
    const/4 v7, 0x0

    #@a2
    aput-object p2, v6, v7

    #@a4
    move-object/from16 v0, p0

    #@a6
    invoke-static {v0, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@a9
    .line 768
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@ad
    move-object/from16 v26, v0

    #@af
    .line 771
    new-instance v5, Landroid/telecom/ParcelableConnection;

    #@b1
    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@b4
    move-result-object v6

    #@b5
    .line 773
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    #@b8
    move-result v7

    #@b9
    .line 774
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    #@bc
    move-result v8

    #@bd
    .line 775
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectionProperties()I

    #@c0
    move-result v9

    #@c1
    .line 776
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    #@c4
    move-result-object v10

    #@c5
    .line 777
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddressPresentation()I

    #@c8
    move-result v11

    #@c9
    .line 778
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    #@cc
    move-result-object v12

    #@cd
    .line 779
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    #@d0
    move-result v13

    #@d1
    .line 780
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@d4
    move-result-object v14

    #@d5
    if-nez v14, :cond_6

    #@d7
    .line 781
    const/4 v14, 0x0

    #@d8
    .line 782
    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoState()I

    #@db
    move-result v15

    #@dc
    .line 783
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->isRingbackRequested()Z

    #@df
    move-result v16

    #@e0
    .line 784
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    #@e3
    move-result v17

    #@e4
    .line 785
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    #@e7
    move-result-wide v18

    #@e8
    .line 786
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    #@eb
    move-result-object v20

    #@ec
    .line 787
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@ef
    move-result-object v21

    #@f0
    .line 788
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    #@f3
    move-result-object v22

    #@f4
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, v22

    #@f8
    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    #@fb
    move-result-object v22

    #@fc
    .line 789
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    #@ff
    move-result-object v23

    #@100
    .line 771
    invoke-direct/range {v5 .. v23}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    #@103
    .line 768
    move-object/from16 v0, v26

    #@105
    move-object/from16 v1, p2

    #@107
    move-object/from16 v2, p3

    #@109
    invoke-virtual {v0, v1, v2, v5}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    #@10c
    .line 790
    if-eqz p5, :cond_2

    #@10e
    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ConnectionService;->triggerConferenceRecalculate()V

    #@111
    .line 739
    :cond_2
    return-void

    #@112
    .line 746
    .end local v4    # "address":Landroid/net/Uri;
    .end local v24    # "connection":Landroid/telecom/Connection;
    .end local v25    # "number":Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_4

    #@114
    move-object/from16 v0, p0

    #@116
    move-object/from16 v1, p1

    #@118
    move-object/from16 v2, p3

    #@11a
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    #@11d
    move-result-object v24

    #@11e
    .restart local v24    # "connection":Landroid/telecom/Connection;
    goto/16 :goto_0

    #@120
    .line 747
    .end local v24    # "connection":Landroid/telecom/Connection;
    :cond_4
    move-object/from16 v0, p0

    #@122
    move-object/from16 v1, p1

    #@124
    move-object/from16 v2, p3

    #@126
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    #@129
    move-result-object v24

    #@12a
    .restart local v24    # "connection":Landroid/telecom/Connection;
    goto/16 :goto_0

    #@12c
    .line 760
    .restart local v4    # "address":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@12f
    move-result-object v25

    #@130
    .restart local v25    # "number":Ljava/lang/String;
    goto/16 :goto_1

    #@132
    .line 781
    :cond_6
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@135
    move-result-object v14

    #@136
    invoke-virtual {v14}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    #@139
    move-result-object v14

    #@13a
    goto :goto_2
.end method

.method private createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1432
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1433
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/telecom/Connection;

    #@15
    .line 1434
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@17
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 1435
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@1f
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/String;

    #@25
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 1438
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@2c
    .line 1439
    return-object v2
.end method

.method private createIdList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1450
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1451
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_2

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/telecom/Conferenceable;

    #@15
    .line 1453
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v5, v0, Landroid/telecom/Connection;

    #@17
    if-eqz v5, :cond_1

    #@19
    move-object v3, v0

    #@1a
    .line 1454
    check-cast v3, Landroid/telecom/Connection;

    #@1c
    .line 1455
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@1e
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 1456
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@26
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    check-cast v5, Ljava/lang/String;

    #@2c
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 1458
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v5, v0, Landroid/telecom/Conference;

    #@32
    if-eqz v5, :cond_0

    #@34
    move-object v2, v0

    #@35
    .line 1459
    check-cast v2, Landroid/telecom/Conference;

    #@37
    .line 1460
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@39
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_0

    #@3f
    .line 1461
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@41
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v5

    #@45
    check-cast v5, Ljava/lang/String;

    #@47
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_0

    #@4b
    .line 1465
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@4e
    .line 1466
    return-object v4
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 826
    const-string/jumbo v0, "disconnect %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 827
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 828
    const-string/jumbo v0, "disconnect"

    #@17
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    #@1e
    .line 825
    :goto_0
    return-void

    #@1f
    .line 830
    :cond_0
    const-string/jumbo v0, "disconnect"

    #@22
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    #@29
    goto :goto_0
.end method

.method private endAllConnections()V
    .locals 5

    #@0
    .prologue
    .line 1478
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@2
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v4

    #@6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/telecom/Connection;

    #@16
    .line 1480
    .local v2, "connection":Landroid/telecom/Connection;
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    #@19
    move-result-object v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 1481
    invoke-virtual {v2}, Landroid/telecom/Connection;->onDisconnect()V

    #@1f
    goto :goto_0

    #@20
    .line 1484
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@22
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@25
    move-result-object v4

    #@26
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .local v1, "conference$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_2

    #@30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/telecom/Conference;

    #@36
    .line 1485
    .local v0, "conference":Landroid/telecom/Conference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    #@39
    goto :goto_1

    #@3a
    .line 1476
    .end local v0    # "conference":Landroid/telecom/Conference;
    :cond_2
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1424
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1425
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/telecom/Conference;

    #@10
    return-object v0

    #@11
    .line 1427
    :cond_0
    const-string/jumbo v0, "%s - Cannot find conference %s"

    #@14
    const/4 v1, 0x2

    #@15
    new-array v1, v1, [Ljava/lang/Object;

    #@17
    const/4 v2, 0x0

    #@18
    aput-object p2, v1, v2

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object p1, v1, v2

    #@1d
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@20
    .line 1428
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1409
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1410
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/telecom/Connection;

    #@10
    return-object v0

    #@11
    .line 1412
    :cond_0
    const-string/jumbo v0, "%s - Cannot find Connection %s"

    #@14
    const/4 v1, 0x2

    #@15
    new-array v1, v1, [Ljava/lang/Object;

    #@17
    const/4 v2, 0x0

    #@18
    aput-object p2, v1, v2

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object p1, v1, v2

    #@1d
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@20
    .line 1413
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method private getNextCallId()I
    .locals 2

    #@0
    .prologue
    .line 1495
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1496
    :try_start_0
    iget v0, p0, Landroid/telecom/ConnectionService;->mId:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Landroid/telecom/ConnectionService;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 1495
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1470
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1471
    new-instance v0, Landroid/telecom/ConnectionService$7;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    #@a
    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    #@c
    .line 1473
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    #@e
    return-object v0
.end method

.method static declared-synchronized getNullConnection()Landroid/telecom/Connection;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid/telecom/ConnectionService;

    #@2
    monitor-enter v1

    #@3
    .line 1417
    :try_start_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1418
    new-instance v0, Landroid/telecom/ConnectionService$6;

    #@9
    invoke-direct {v0}, Landroid/telecom/ConnectionService$6;-><init>()V

    #@c
    sput-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    #@e
    .line 1420
    :cond_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1005
    const-string/jumbo v0, "handleExtrasChanged(%s, %s)"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    const/4 v2, 0x1

    #@a
    aput-object p2, v1, v2

    #@c
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    .line 1006
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@11
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 1007
    const-string/jumbo v0, "handleExtrasChanged"

    #@1a
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->handleExtrasChanged(Landroid/os/Bundle;)V

    #@21
    .line 1004
    :cond_0
    :goto_0
    return-void

    #@22
    .line 1008
    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@24
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 1009
    const-string/jumbo v0, "handleExtrasChanged"

    #@2d
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->handleExtrasChanged(Landroid/os/Bundle;)V

    #@34
    goto :goto_0
.end method

.method private hold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 835
    const-string/jumbo v0, "hold %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 836
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 837
    const-string/jumbo v0, "hold"

    #@17
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    #@1e
    .line 834
    :goto_0
    return-void

    #@1f
    .line 839
    :cond_0
    const-string/jumbo v0, "hold"

    #@22
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    #@29
    goto :goto_0
.end method

.method private mergeConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 944
    const-string/jumbo v1, "mergeConference(%s)"

    #@3
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    aput-object p1, v2, v3

    #@9
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 945
    const-string/jumbo v1, "mergeConference"

    #@f
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@12
    move-result-object v0

    #@13
    .line 946
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    #@15
    .line 947
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    #@18
    .line 943
    :cond_0
    return-void
.end method

.method private onAccountsInitialized()V
    .locals 3

    #@0
    .prologue
    .line 1331
    const/4 v2, 0x1

    #@1
    iput-boolean v2, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    #@3
    .line 1332
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/Runnable;

    #@15
    .line 1333
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@18
    goto :goto_0

    #@19
    .line 1335
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    #@1b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1e
    .line 1330
    return-void
.end method

.method private onAdapterAttached()V
    .locals 2

    #@0
    .prologue
    .line 1019
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1021
    return-void

    #@5
    .line 1024
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@7
    new-instance v1, Landroid/telecom/ConnectionService$5;

    #@9
    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    #@f
    .line 1018
    return-void
.end method

.method private onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 853
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    const/4 v2, 0x1

    #@a
    aput-object p2, v1, v2

    #@c
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    .line 854
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@11
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 855
    const-string/jumbo v0, "onCallAudioStateChanged"

    #@1a
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    #@21
    .line 852
    :goto_0
    return-void

    #@22
    .line 858
    :cond_0
    const-string/jumbo v0, "onCallAudioStateChanged"

    #@25
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    #@2c
    goto :goto_0
.end method

.method private onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    #@0
    .prologue
    .line 1014
    const-string/jumbo v0, "onPostDialContinue(%s)"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 1015
    const-string/jumbo v0, "stopDtmfTone"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    #@16
    .line 1013
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    #@0
    .prologue
    .line 864
    const-string/jumbo v0, "playDtmfTone %s %c"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x1

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@13
    .line 865
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@15
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 866
    const-string/jumbo v0, "playDtmfTone"

    #@1e
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    #@25
    .line 863
    :goto_0
    return-void

    #@26
    .line 868
    :cond_0
    const-string/jumbo v0, "playDtmfTone"

    #@29
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    #@30
    goto :goto_0
.end method

.method private pullExternalCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 967
    const-string/jumbo v1, "pullExternalCall(%s)"

    #@3
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    aput-object p1, v2, v3

    #@9
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 968
    const-string/jumbo v1, "pullExternalCall"

    #@f
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    .line 969
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    #@15
    .line 970
    invoke-virtual {v0}, Landroid/telecom/Connection;->onPullExternalCall()V

    #@18
    .line 966
    :cond_0
    return-void
.end method

.method private reject(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 811
    const-string/jumbo v0, "reject %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 812
    const-string/jumbo v0, "reject"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    #@16
    .line 810
    return-void
.end method

.method private reject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 816
    const-string/jumbo v0, "reject %s with message"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 817
    const-string/jumbo v0, "reject"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onReject(Ljava/lang/String;)V

    #@16
    .line 815
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 1398
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1399
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    #@a
    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@d
    .line 1401
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@f
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 1402
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@17
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 1403
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@1c
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1404
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@21
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    #@24
    .line 1397
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 984
    const-string/jumbo v1, "sendCallEvent(%s, %s)"

    #@3
    const/4 v2, 0x2

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    aput-object p1, v2, v3

    #@9
    const/4 v3, 0x1

    #@a
    aput-object p2, v2, v3

    #@c
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    .line 985
    const-string/jumbo v1, "sendCallEvent"

    #@12
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@15
    move-result-object v0

    #@16
    .line 986
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    #@18
    .line 987
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Connection;->onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1b
    .line 983
    :cond_0
    return-void
.end method

.method private silence(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 821
    const-string/jumbo v0, "silence %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 822
    const-string/jumbo v0, "silence"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/telecom/Connection;->onSilence()V

    #@16
    .line 820
    return-void
.end method

.method private splitFromConference(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 929
    const-string/jumbo v2, "splitFromConference(%s)"

    #@5
    new-array v3, v5, [Ljava/lang/Object;

    #@7
    aput-object p1, v3, v4

    #@9
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 931
    const-string/jumbo v2, "splitFromConference"

    #@f
    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v1

    #@13
    .line 932
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@16
    move-result-object v2

    #@17
    if-ne v1, v2, :cond_0

    #@19
    .line 933
    const-string/jumbo v2, "Connection missing in conference request %s."

    #@1c
    new-array v3, v5, [Ljava/lang/Object;

    #@1e
    aput-object p1, v3, v4

    #@20
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@23
    .line 934
    return-void

    #@24
    .line 937
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    #@27
    move-result-object v0

    #@28
    .line 938
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_1

    #@2a
    .line 939
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    #@2d
    .line 928
    :cond_1
    return-void
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 873
    const-string/jumbo v0, "stopDtmfTone %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 874
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 875
    const-string/jumbo v0, "stopDtmfTone"

    #@17
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    #@1e
    .line 872
    :goto_0
    return-void

    #@1f
    .line 877
    :cond_0
    const-string/jumbo v0, "stopDtmfTone"

    #@22
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    #@29
    goto :goto_0
.end method

.method private swapConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 952
    const-string/jumbo v1, "swapConference(%s)"

    #@3
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    aput-object p1, v2, v3

    #@9
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 953
    const-string/jumbo v1, "swapConference"

    #@f
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@12
    move-result-object v0

    #@13
    .line 954
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    #@15
    .line 955
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    #@18
    .line 951
    :cond_0
    return-void
.end method

.method private unhold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 844
    const-string/jumbo v0, "unhold %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 845
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 846
    const-string/jumbo v0, "unhold"

    #@17
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    #@1e
    .line 843
    :goto_0
    return-void

    #@1f
    .line 848
    :cond_0
    const-string/jumbo v0, "unhold"

    #@22
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    #@29
    goto :goto_0
.end method


# virtual methods
.method public final addConference(Landroid/telecom/Conference;)V
    .locals 18
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 1118
    const-string/jumbo v3, "addConference: conference=%s"

    #@3
    const/4 v4, 0x1

    #@4
    new-array v4, v4, [Ljava/lang/Object;

    #@6
    const/4 v5, 0x0

    #@7
    aput-object p1, v4, v5

    #@9
    move-object/from16 v0, p0

    #@b
    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e
    .line 1120
    invoke-direct/range {p0 .. p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    #@11
    move-result-object v17

    #@12
    .line 1121
    .local v17, "id":Ljava/lang/String;
    if-eqz v17, :cond_4

    #@14
    .line 1122
    new-instance v7, Ljava/util/ArrayList;

    #@16
    const/4 v3, 0x2

    #@17
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    .line 1123
    .local v7, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v15

    #@22
    .local v15, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v14

    #@2c
    check-cast v14, Landroid/telecom/Connection;

    #@2e
    .line 1124
    .local v14, "connection":Landroid/telecom/Connection;
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@32
    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_0

    #@38
    .line 1125
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@3c
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Ljava/lang/String;

    #@42
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_0

    #@46
    .line 1128
    .end local v14    # "connection":Landroid/telecom/Connection;
    :cond_1
    move-object/from16 v0, p1

    #@48
    move-object/from16 v1, v17

    #@4a
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    #@4d
    .line 1129
    new-instance v2, Landroid/telecom/ParcelableConference;

    #@4f
    .line 1130
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@52
    move-result-object v3

    #@53
    .line 1131
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getState()I

    #@56
    move-result v4

    #@57
    .line 1132
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    #@5a
    move-result v5

    #@5b
    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionProperties()I

    #@5e
    move-result v6

    #@5f
    .line 1135
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@62
    move-result-object v8

    #@63
    if-nez v8, :cond_3

    #@65
    .line 1136
    const/4 v8, 0x0

    #@66
    .line 1137
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    #@69
    move-result v9

    #@6a
    .line 1138
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    #@6d
    move-result-wide v10

    #@6e
    .line 1139
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    #@71
    move-result-object v12

    #@72
    .line 1140
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    #@75
    move-result-object v13

    #@76
    .line 1129
    invoke-direct/range {v2 .. v13}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    #@79
    .line 1142
    .local v2, "parcelableConference":Landroid/telecom/ParcelableConference;
    move-object/from16 v0, p0

    #@7b
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@7d
    move-object/from16 v0, v17

    #@7f
    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    #@82
    .line 1143
    move-object/from16 v0, p0

    #@84
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@86
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@89
    move-result-object v4

    #@8a
    move-object/from16 v0, v17

    #@8c
    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    #@8f
    .line 1144
    move-object/from16 v0, p0

    #@91
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@93
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    #@96
    move-result v4

    #@97
    move-object/from16 v0, v17

    #@99
    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    #@9c
    .line 1147
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    #@9f
    move-result-object v3

    #@a0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a3
    move-result-object v15

    #@a4
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@a7
    move-result v3

    #@a8
    if-eqz v3, :cond_4

    #@aa
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ad
    move-result-object v14

    #@ae
    check-cast v14, Landroid/telecom/Connection;

    #@b0
    .line 1148
    .restart local v14    # "connection":Landroid/telecom/Connection;
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@b4
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    move-result-object v16

    #@b8
    check-cast v16, Ljava/lang/String;

    #@ba
    .line 1149
    .local v16, "connectionId":Ljava/lang/String;
    if-eqz v16, :cond_2

    #@bc
    .line 1150
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@c0
    move-object/from16 v0, v16

    #@c2
    move-object/from16 v1, v17

    #@c4
    invoke-virtual {v3, v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    #@c7
    goto :goto_2

    #@c8
    .line 1136
    .end local v2    # "parcelableConference":Landroid/telecom/ParcelableConference;
    .end local v14    # "connection":Landroid/telecom/Connection;
    .end local v16    # "connectionId":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@cb
    move-result-object v8

    #@cc
    invoke-virtual {v8}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    #@cf
    move-result-object v8

    #@d0
    goto :goto_1

    #@d1
    .line 1117
    .end local v7    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "connection$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 22
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1166
    invoke-direct/range {p0 .. p2}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1167
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@6
    .line 1168
    new-instance v20, Ljava/util/ArrayList;

    #@8
    const/4 v4, 0x0

    #@9
    move-object/from16 v0, v20

    #@b
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 1170
    .local v20, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/telecom/ParcelableConnection;

    #@10
    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    #@13
    move-result v5

    #@14
    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    #@17
    move-result v6

    #@18
    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionProperties()I

    #@1b
    move-result v7

    #@1c
    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    #@1f
    move-result-object v8

    #@20
    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    #@23
    move-result v9

    #@24
    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    #@2b
    move-result v11

    #@2c
    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@2f
    move-result-object v4

    #@30
    if-nez v4, :cond_1

    #@32
    .line 1180
    const/4 v12, 0x0

    #@33
    .line 1181
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    #@36
    move-result v13

    #@37
    .line 1182
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    #@3a
    move-result v14

    #@3b
    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    #@3e
    move-result v15

    #@3f
    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    #@42
    move-result-wide v16

    #@43
    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    #@46
    move-result-object v18

    #@47
    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@4a
    move-result-object v19

    #@4b
    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    #@4e
    move-result-object v21

    #@4f
    move-object/from16 v4, p1

    #@51
    .line 1170
    invoke-direct/range {v3 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    #@54
    .line 1189
    .local v3, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    move-object/from16 v0, p0

    #@56
    iget-object v4, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@58
    invoke-virtual {v4, v2, v3}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    #@5b
    .line 1164
    .end local v3    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v20    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    #@5c
    .line 1180
    .restart local v20    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    #@63
    move-result-object v12

    #@64
    goto :goto_0
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 1322
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    #@3
    .line 1321
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 1327
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    #@3
    .line 1326
    return-void
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 1106
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    #@5
    .line 1105
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 1317
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    #@0
    .prologue
    .line 1070
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@2
    .line 1071
    const/4 v1, 0x1

    #@3
    .line 1070
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    #@0
    .prologue
    .line 1089
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@2
    .line 1090
    const/4 v1, 0x0

    #@3
    .line 1089
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final getAllConferences()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1210
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1200
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 719
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1293
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    #@0
    .prologue
    .line 1226
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    #@0
    .prologue
    .line 1265
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    #@0
    .prologue
    .line 1282
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 1305
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 1311
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 725
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    #@3
    .line 726
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1370
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    #@3
    .line 1371
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    #@5
    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@8
    .line 1372
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@a
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    .line 1373
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    .line 1374
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@14
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1375
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@19
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1376
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@1e
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    #@21
    .line 1369
    :cond_0
    return-void
.end method

.method public triggerConferenceRecalculate()V
    .locals 0

    #@0
    .prologue
    .line 1236
    return-void
.end method
