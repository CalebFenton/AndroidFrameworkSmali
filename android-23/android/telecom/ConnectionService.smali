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

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

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

.method static synthetic -wrap10(Landroid/telecom/ConnectionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/telecom/ConnectionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

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

.method static synthetic -wrap20(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
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

.method static synthetic -wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

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
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@a
    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@11
    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@16
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@18
    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@1f
    .line 112
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    #@21
    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    #@24
    .line 111
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@26
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    #@2d
    .line 114
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    #@2f
    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    #@32
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@34
    .line 116
    const/4 v0, 0x0

    #@35
    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    #@37
    .line 119
    new-instance v0, Landroid/telecom/ConnectionService$1;

    #@39
    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    #@3c
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    #@3e
    .line 233
    new-instance v0, Landroid/telecom/ConnectionService$2;

    #@40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    #@47
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    #@49
    .line 362
    new-instance v0, Landroid/telecom/ConnectionService$3;

    #@4b
    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    #@4e
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    #@50
    .line 444
    new-instance v0, Landroid/telecom/ConnectionService$4;

    #@52
    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    #@55
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    #@57
    .line 76
    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 662
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
    .line 663
    const-string/jumbo v0, "abort"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    #@16
    .line 661
    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 5
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1147
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@3
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1148
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
    .line 1157
    :cond_0
    return-object v4

    #@16
    .line 1149
    :cond_1
    if-eqz p1, :cond_0

    #@18
    .line 1150
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1151
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@22
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 1152
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@27
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 1153
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    #@2c
    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@2f
    .line 1154
    return-object v0
.end method

.method private addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1130
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1131
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@7
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 1132
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    #@c
    invoke-virtual {p2, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@f
    .line 1133
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    #@12
    .line 1129
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1124
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1125
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    #@b
    .line 1126
    return-object v0
.end method

.method private answer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 672
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
    .line 673
    const-string/jumbo v0, "answer"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    #@16
    .line 671
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    #@0
    .prologue
    .line 667
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
    .line 668
    const-string/jumbo v0, "answer"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    #@16
    .line 666
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
    .line 738
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
    .line 741
    const-string/jumbo v4, "conference"

    #@12
    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@15
    move-result-object v3

    #@16
    .line 742
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@19
    move-result-object v1

    #@1a
    .line 743
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@1d
    move-result-object v4

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    .line 744
    const-string/jumbo v4, "conference"

    #@23
    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@26
    move-result-object v1

    #@27
    .line 745
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@2a
    move-result-object v4

    #@2b
    if-ne v1, v4, :cond_0

    #@2d
    .line 746
    const-string/jumbo v4, "Connection2 or Conference2 missing in conference request %s."

    #@30
    new-array v5, v7, [Ljava/lang/Object;

    #@32
    .line 747
    aput-object p2, v5, v6

    #@34
    .line 746
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@37
    .line 748
    return-void

    #@38
    .line 753
    :cond_0
    const-string/jumbo v4, "conference"

    #@3b
    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@3e
    move-result-object v2

    #@3f
    .line 754
    .local v2, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@42
    move-result-object v4

    #@43
    if-ne v2, v4, :cond_3

    #@45
    .line 755
    const-string/jumbo v4, "addConnection"

    #@48
    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@4b
    move-result-object v0

    #@4c
    .line 756
    .local v0, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@4f
    move-result-object v4

    #@50
    if-ne v0, v4, :cond_1

    #@52
    .line 758
    const-string/jumbo v4, "Connection1 or Conference1 missing in conference request %s."

    #@55
    .line 757
    new-array v5, v7, [Ljava/lang/Object;

    #@57
    .line 759
    aput-object p1, v5, v6

    #@59
    .line 757
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5c
    .line 737
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :goto_0
    return-void

    #@5d
    .line 762
    .restart local v0    # "conference1":Landroid/telecom/Conference;
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@60
    move-result-object v4

    #@61
    if-eq v3, v4, :cond_2

    #@63
    .line 764
    invoke-virtual {v0, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    #@66
    goto :goto_0

    #@67
    .line 767
    :cond_2
    const-string/jumbo v4, "There can only be one conference and an attempt was made to merge two conferences."

    #@6a
    new-array v5, v6, [Ljava/lang/Object;

    #@6c
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6f
    .line 769
    return-void

    #@70
    .line 774
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    #@73
    move-result-object v4

    #@74
    if-eq v1, v4, :cond_4

    #@76
    .line 776
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    #@79
    goto :goto_0

    #@7a
    .line 779
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    #@7d
    goto :goto_0
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 26
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    #@0
    .prologue
    .line 613
    const-string/jumbo v4, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b"

    #@3
    const/4 v5, 0x5

    #@4
    new-array v5, v5, [Ljava/lang/Object;

    #@6
    .line 614
    const/4 v6, 0x0

    #@7
    aput-object p1, v5, v6

    #@9
    const/4 v6, 0x1

    #@a
    aput-object p2, v5, v6

    #@c
    const/4 v6, 0x2

    #@d
    aput-object p3, v5, v6

    #@f
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v6

    #@13
    const/4 v7, 0x3

    #@14
    aput-object v6, v5, v7

    #@16
    .line 615
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v6

    #@1a
    const/4 v7, 0x4

    #@1b
    aput-object v6, v5, v7

    #@1d
    .line 613
    move-object/from16 v0, p0

    #@1f
    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@22
    .line 617
    if-eqz p5, :cond_2

    #@24
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, p1

    #@28
    move-object/from16 v2, p3

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    #@2d
    move-result-object v23

    #@2e
    .line 620
    .local v23, "connection":Landroid/telecom/Connection;
    :goto_0
    const-string/jumbo v4, "createConnection, connection: %s"

    #@31
    const/4 v5, 0x1

    #@32
    new-array v5, v5, [Ljava/lang/Object;

    #@34
    const/4 v6, 0x0

    #@35
    aput-object v23, v5, v6

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3c
    .line 621
    if-nez v23, :cond_0

    #@3e
    .line 623
    new-instance v4, Landroid/telecom/DisconnectCause;

    #@40
    const/4 v5, 0x1

    #@41
    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    #@44
    .line 622
    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    #@47
    move-result-object v23

    #@48
    .line 626
    :cond_0
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    #@4b
    move-result v4

    #@4c
    const/4 v5, 0x6

    #@4d
    if-eq v4, v5, :cond_1

    #@4f
    .line 627
    move-object/from16 v0, p0

    #@51
    move-object/from16 v1, p2

    #@53
    move-object/from16 v2, v23

    #@55
    invoke-direct {v0, v1, v2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    #@58
    .line 630
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    #@5b
    move-result-object v22

    #@5c
    .line 631
    .local v22, "address":Landroid/net/Uri;
    if-nez v22, :cond_4

    #@5e
    const-string/jumbo v24, "null"

    #@61
    .line 632
    .local v24, "number":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "createConnection, number: %s, state: %s, capabilities: %s"

    #@64
    const/4 v5, 0x3

    #@65
    new-array v5, v5, [Ljava/lang/Object;

    #@67
    .line 633
    invoke-static/range {v24 .. v24}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    const/4 v7, 0x0

    #@6c
    aput-object v6, v5, v7

    #@6e
    .line 634
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    #@71
    move-result v6

    #@72
    invoke-static {v6}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    const/4 v7, 0x1

    #@77
    aput-object v6, v5, v7

    #@79
    .line 635
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    #@7c
    move-result v6

    #@7d
    invoke-static {v6}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    const/4 v7, 0x2

    #@82
    aput-object v6, v5, v7

    #@84
    .line 632
    move-object/from16 v0, p0

    #@86
    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@89
    .line 637
    const-string/jumbo v4, "createConnection, calling handleCreateConnectionSuccessful %s"

    #@8c
    const/4 v5, 0x1

    #@8d
    new-array v5, v5, [Ljava/lang/Object;

    #@8f
    const/4 v6, 0x0

    #@90
    aput-object p2, v5, v6

    #@92
    move-object/from16 v0, p0

    #@94
    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@97
    .line 638
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@9b
    move-object/from16 v25, v0

    #@9d
    .line 641
    new-instance v4, Landroid/telecom/ParcelableConnection;

    #@9f
    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@a2
    move-result-object v5

    #@a3
    .line 643
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    #@a6
    move-result v6

    #@a7
    .line 644
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    #@aa
    move-result v7

    #@ab
    .line 645
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    #@ae
    move-result-object v8

    #@af
    .line 646
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddressPresentation()I

    #@b2
    move-result v9

    #@b3
    .line 647
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    #@b6
    move-result-object v10

    #@b7
    .line 648
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    #@ba
    move-result v11

    #@bb
    .line 649
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@be
    move-result-object v12

    #@bf
    if-nez v12, :cond_5

    #@c1
    .line 650
    const/4 v12, 0x0

    #@c2
    .line 651
    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoState()I

    #@c5
    move-result v13

    #@c6
    .line 652
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->isRingbackRequested()Z

    #@c9
    move-result v14

    #@ca
    .line 653
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    #@cd
    move-result v15

    #@ce
    .line 654
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    #@d1
    move-result-wide v16

    #@d2
    .line 655
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    #@d5
    move-result-object v18

    #@d6
    .line 656
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@d9
    move-result-object v19

    #@da
    .line 657
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    #@dd
    move-result-object v20

    #@de
    move-object/from16 v0, p0

    #@e0
    move-object/from16 v1, v20

    #@e2
    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    #@e5
    move-result-object v20

    #@e6
    .line 658
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    #@e9
    move-result-object v21

    #@ea
    .line 641
    invoke-direct/range {v4 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    #@ed
    .line 638
    move-object/from16 v0, v25

    #@ef
    move-object/from16 v1, p2

    #@f1
    move-object/from16 v2, p3

    #@f3
    invoke-virtual {v0, v1, v2, v4}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    #@f6
    .line 612
    return-void

    #@f7
    .line 618
    .end local v22    # "address":Landroid/net/Uri;
    .end local v23    # "connection":Landroid/telecom/Connection;
    .end local v24    # "number":Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_3

    #@f9
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, p1

    #@fd
    move-object/from16 v2, p3

    #@ff
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    #@102
    move-result-object v23

    #@103
    .restart local v23    # "connection":Landroid/telecom/Connection;
    goto/16 :goto_0

    #@105
    .line 619
    .end local v23    # "connection":Landroid/telecom/Connection;
    :cond_3
    move-object/from16 v0, p0

    #@107
    move-object/from16 v1, p1

    #@109
    move-object/from16 v2, p3

    #@10b
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    #@10e
    move-result-object v23

    #@10f
    .restart local v23    # "connection":Landroid/telecom/Connection;
    goto/16 :goto_0

    #@111
    .line 631
    .restart local v22    # "address":Landroid/net/Uri;
    :cond_4
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@114
    move-result-object v24

    #@115
    .restart local v24    # "number":Ljava/lang/String;
    goto/16 :goto_1

    #@117
    .line 650
    :cond_5
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@11a
    move-result-object v12

    #@11b
    invoke-virtual {v12}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    #@11e
    move-result-object v12

    #@11f
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
    .line 1195
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1196
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
    .line 1197
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@17
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 1198
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
    .line 1201
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@2c
    .line 1202
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
    .line 1213
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1214
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
    .line 1216
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v5, v0, Landroid/telecom/Connection;

    #@17
    if-eqz v5, :cond_1

    #@19
    move-object v3, v0

    #@1a
    .line 1217
    check-cast v3, Landroid/telecom/Connection;

    #@1c
    .line 1218
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@1e
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 1219
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
    .line 1221
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v5, v0, Landroid/telecom/Conference;

    #@32
    if-eqz v5, :cond_0

    #@34
    move-object v2, v0

    #@35
    .line 1222
    check-cast v2, Landroid/telecom/Conference;

    #@37
    .line 1223
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@39
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_0

    #@3f
    .line 1224
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
    .line 1228
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@4e
    .line 1229
    return-object v4
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 682
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
    .line 683
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 684
    const-string/jumbo v0, "disconnect"

    #@17
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    #@1e
    .line 681
    :goto_0
    return-void

    #@1f
    .line 686
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
    .line 1241
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
    .line 1243
    .local v2, "connection":Landroid/telecom/Connection;
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    #@19
    move-result-object v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 1244
    invoke-virtual {v2}, Landroid/telecom/Connection;->onDisconnect()V

    #@1f
    goto :goto_0

    #@20
    .line 1247
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
    .line 1248
    .local v0, "conference":Landroid/telecom/Conference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    #@39
    goto :goto_1

    #@3a
    .line 1239
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
    .line 1187
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1188
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
    .line 1190
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
    .line 1191
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
    .line 1172
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1173
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
    .line 1175
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
    .line 1176
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1233
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1234
    new-instance v0, Landroid/telecom/ConnectionService$7;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    #@a
    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    #@c
    .line 1236
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
    .line 1180
    :try_start_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1181
    new-instance v0, Landroid/telecom/ConnectionService$6;

    #@9
    invoke-direct {v0}, Landroid/telecom/ConnectionService$6;-><init>()V

    #@c
    sput-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    #@e
    .line 1183
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

.method private hold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 691
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
    .line 692
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 693
    const-string/jumbo v0, "hold"

    #@17
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    #@1e
    .line 690
    :goto_0
    return-void

    #@1f
    .line 695
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
    .line 800
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
    .line 801
    const-string/jumbo v1, "mergeConference"

    #@f
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@12
    move-result-object v0

    #@13
    .line 802
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    #@15
    .line 803
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    #@18
    .line 799
    :cond_0
    return-void
.end method

.method private onAccountsInitialized()V
    .locals 3

    #@0
    .prologue
    .line 1110
    const/4 v2, 0x1

    #@1
    iput-boolean v2, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    #@3
    .line 1111
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
    .line 1112
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@18
    goto :goto_0

    #@19
    .line 1114
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    #@1b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1e
    .line 1109
    return-void
.end method

.method private onAdapterAttached()V
    .locals 2

    #@0
    .prologue
    .line 821
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 823
    return-void

    #@5
    .line 826
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@7
    new-instance v1, Landroid/telecom/ConnectionService$5;

    #@9
    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    #@f
    .line 820
    return-void
.end method

.method private onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 709
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
    .line 710
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@11
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 711
    const-string/jumbo v0, "onCallAudioStateChanged"

    #@1a
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    #@21
    .line 708
    :goto_0
    return-void

    #@22
    .line 714
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
    .line 816
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
    .line 817
    const-string/jumbo v0, "stopDtmfTone"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    #@16
    .line 815
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    #@0
    .prologue
    .line 720
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
    .line 721
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@15
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 722
    const-string/jumbo v0, "playDtmfTone"

    #@1e
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    #@25
    .line 719
    :goto_0
    return-void

    #@26
    .line 724
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

.method private reject(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 677
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
    .line 678
    const-string/jumbo v0, "reject"

    #@f
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    #@16
    .line 676
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 1161
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1162
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    #@a
    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@d
    .line 1164
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@f
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 1165
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    #@17
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 1166
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    #@1c
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1167
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@21
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    #@24
    .line 1160
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
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
    .line 785
    const-string/jumbo v2, "splitFromConference(%s)"

    #@5
    new-array v3, v5, [Ljava/lang/Object;

    #@7
    aput-object p1, v3, v4

    #@9
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 787
    const-string/jumbo v2, "splitFromConference"

    #@f
    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@12
    move-result-object v1

    #@13
    .line 788
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    #@16
    move-result-object v2

    #@17
    if-ne v1, v2, :cond_0

    #@19
    .line 789
    const-string/jumbo v2, "Connection missing in conference request %s."

    #@1c
    new-array v3, v5, [Ljava/lang/Object;

    #@1e
    aput-object p1, v3, v4

    #@20
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@23
    .line 790
    return-void

    #@24
    .line 793
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    #@27
    move-result-object v0

    #@28
    .line 794
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_1

    #@2a
    .line 795
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    #@2d
    .line 784
    :cond_1
    return-void
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 729
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
    .line 730
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 731
    const-string/jumbo v0, "stopDtmfTone"

    #@17
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    #@1e
    .line 728
    :goto_0
    return-void

    #@1f
    .line 733
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
    .line 808
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
    .line 809
    const-string/jumbo v1, "swapConference"

    #@f
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    #@12
    move-result-object v0

    #@13
    .line 810
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    #@15
    .line 811
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    #@18
    .line 807
    :cond_0
    return-void
.end method

.method private unhold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 700
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
    .line 701
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 702
    const-string/jumbo v0, "unhold"

    #@17
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    #@1e
    .line 699
    :goto_0
    return-void

    #@1f
    .line 704
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
    .locals 15
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 920
    const-string/jumbo v2, "addConference: conference=%s"

    #@3
    const/4 v3, 0x1

    #@4
    new-array v3, v3, [Ljava/lang/Object;

    #@6
    const/4 v4, 0x0

    #@7
    aput-object p1, v3, v4

    #@9
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 922
    invoke-direct/range {p0 .. p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    #@f
    move-result-object v14

    #@10
    .line 923
    .local v14, "id":Ljava/lang/String;
    if-eqz v14, :cond_4

    #@12
    .line 924
    new-instance v5, Ljava/util/ArrayList;

    #@14
    const/4 v2, 0x2

    #@15
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 925
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v12

    #@20
    .local v12, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/telecom/Connection;

    #@2c
    .line 926
    .local v0, "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@2e
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_0

    #@34
    .line 927
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@36
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Ljava/lang/String;

    #@3c
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 930
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_1
    new-instance v1, Landroid/telecom/ParcelableConference;

    #@42
    .line 931
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@45
    move-result-object v2

    #@46
    .line 932
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getState()I

    #@49
    move-result v3

    #@4a
    .line 933
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    #@4d
    move-result v4

    #@4e
    .line 935
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@51
    move-result-object v6

    #@52
    if-nez v6, :cond_3

    #@54
    .line 936
    const/4 v6, 0x0

    #@55
    .line 937
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    #@58
    move-result v7

    #@59
    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    #@5c
    move-result-wide v8

    #@5d
    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    #@60
    move-result-object v10

    #@61
    .line 940
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    #@64
    move-result-object v11

    #@65
    .line 930
    invoke-direct/range {v1 .. v11}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    #@68
    .line 942
    .local v1, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@6a
    invoke-virtual {v2, v14, v1}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    #@6d
    .line 943
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@6f
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    #@76
    .line 944
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@78
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    #@7b
    move-result v3

    #@7c
    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    #@7f
    .line 947
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    #@82
    move-result-object v2

    #@83
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@86
    move-result-object v12

    #@87
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_4

    #@8d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@90
    move-result-object v0

    #@91
    check-cast v0, Landroid/telecom/Connection;

    #@93
    .line 948
    .restart local v0    # "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@95
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    move-result-object v13

    #@99
    check-cast v13, Ljava/lang/String;

    #@9b
    .line 949
    .local v13, "connectionId":Ljava/lang/String;
    if-eqz v13, :cond_2

    #@9d
    .line 950
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@9f
    invoke-virtual {v2, v13, v14}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    #@a2
    goto :goto_2

    #@a3
    .line 936
    .end local v0    # "connection":Landroid/telecom/Connection;
    .end local v1    # "parcelableConference":Landroid/telecom/ParcelableConference;
    .end local v13    # "connectionId":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    #@aa
    move-result-object v6

    #@ab
    goto :goto_1

    #@ac
    .line 919
    .end local v5    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "connection$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 21
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 966
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;

    #@7
    move-result-object v20

    #@8
    .line 967
    .local v20, "id":Ljava/lang/String;
    if-eqz v20, :cond_0

    #@a
    .line 968
    new-instance v18, Ljava/util/ArrayList;

    #@c
    const/4 v3, 0x0

    #@d
    move-object/from16 v0, v18

    #@f
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    .line 970
    .local v18, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/telecom/ParcelableConnection;

    #@14
    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    #@17
    move-result v4

    #@18
    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    #@1b
    move-result v5

    #@1c
    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    #@1f
    move-result-object v6

    #@20
    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    #@23
    move-result v7

    #@24
    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    #@2b
    move-result v9

    #@2c
    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@2f
    move-result-object v3

    #@30
    if-nez v3, :cond_1

    #@32
    .line 979
    const/4 v10, 0x0

    #@33
    .line 980
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    #@36
    move-result v11

    #@37
    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    #@3a
    move-result v12

    #@3b
    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    #@3e
    move-result v13

    #@3f
    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    #@42
    move-result-wide v14

    #@43
    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    #@46
    move-result-object v16

    #@47
    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@4a
    move-result-object v17

    #@4b
    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    #@4e
    move-result-object v19

    #@4f
    move-object/from16 v3, p1

    #@51
    .line 970
    invoke-direct/range {v2 .. v19}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    #@54
    .line 988
    .local v2, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@58
    move-object/from16 v0, v20

    #@5a
    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    #@5d
    .line 964
    .end local v2    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    #@5e
    .line 979
    .restart local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    #@65
    move-result-object v10

    #@66
    goto :goto_0
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 1101
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    #@3
    .line 1100
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 1106
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    #@3
    .line 1105
    return-void
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    #@5
    .line 907
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 1096
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
    .line 872
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@2
    .line 873
    const/4 v1, 0x1

    #@3
    .line 872
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
    .line 891
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    #@2
    .line 892
    const/4 v1, 0x0

    #@3
    .line 891
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    #@6
    move-result-object v0

    #@7
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
    .line 999
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
    .line 592
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
    .line 1072
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    #@0
    .prologue
    .line 1015
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
    .line 1044
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
    .line 1061
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 1084
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 1090
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 598
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    #@3
    .line 599
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1138
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 1139
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    #@b
    .line 1140
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    #@d
    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@10
    .line 1141
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    #@12
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@14
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 1142
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    #@1d
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 1143
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    #@22
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    #@25
    .line 1137
    return-void
.end method
