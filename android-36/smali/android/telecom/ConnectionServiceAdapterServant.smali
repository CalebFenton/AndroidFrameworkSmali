.class final Landroid/telecom/ConnectionServiceAdapterServant;
.super Ljava/lang/Object;
.source "ConnectionServiceAdapterServant.java"


# static fields
.field private static final greylist-max-o MSG_ADD_CONFERENCE_CALL:I = 0xa

.field private static final greylist-max-o MSG_ADD_EXISTING_CONNECTION:I = 0x15

.field private static final greylist-max-o MSG_CONNECTION_SERVICE_FOCUS_RELEASED:I = 0x23

.field private static final blacklist MSG_HANDLE_CREATE_CONFERENCE_COMPLETE:I = 0x25

.field private static final greylist-max-o MSG_HANDLE_CREATE_CONNECTION_COMPLETE:I = 0x1

.field private static final greylist-max-o MSG_ON_CONNECTION_EVENT:I = 0x1a

.field private static final greylist-max-o MSG_ON_POST_DIAL_CHAR:I = 0x16

.field private static final greylist-max-o MSG_ON_POST_DIAL_WAIT:I = 0xc

.field private static final greylist-max-o MSG_ON_RTT_INITIATION_FAILURE:I = 0x1f

.field private static final greylist-max-o MSG_ON_RTT_INITIATION_SUCCESS:I = 0x1e

.field private static final greylist-max-o MSG_ON_RTT_REMOTELY_TERMINATED:I = 0x20

.field private static final greylist-max-o MSG_ON_RTT_UPGRADE_REQUEST:I = 0x21

.field private static final greylist-max-o MSG_PUT_EXTRAS:I = 0x18

.field private static final blacklist MSG_QUERY_LOCATION:I = 0x27

.field private static final greylist-max-o MSG_QUERY_REMOTE_CALL_SERVICES:I = 0xd

.field private static final greylist-max-o MSG_REMOVE_CALL:I = 0xb

.field private static final greylist-max-o MSG_REMOVE_EXTRAS:I = 0x19

.field private static final greylist-max-o MSG_SET_ACTIVE:I = 0x2

.field private static final greylist-max-o MSG_SET_ADDRESS:I = 0x12

.field private static final greylist-max-o MSG_SET_AUDIO_ROUTE:I = 0x1d

.field private static final greylist-max-o MSG_SET_CALLER_DISPLAY_NAME:I = 0x13

.field private static final blacklist MSG_SET_CALL_DIRECTION:I = 0x26

.field private static final greylist-max-o MSG_SET_CONFERENCEABLE_CONNECTIONS:I = 0x14

.field private static final greylist-max-o MSG_SET_CONFERENCE_MERGE_FAILED:I = 0x17

.field private static final blacklist MSG_SET_CONFERENCE_STATE:I = 0x24

.field private static final greylist-max-o MSG_SET_CONNECTION_CAPABILITIES:I = 0x8

.field private static final greylist-max-o MSG_SET_CONNECTION_PROPERTIES:I = 0x1b

.field private static final greylist-max-o MSG_SET_DIALING:I = 0x4

.field private static final greylist-max-o MSG_SET_DISCONNECTED:I = 0x5

.field private static final greylist-max-o MSG_SET_IS_CONFERENCED:I = 0x9

.field private static final greylist-max-o MSG_SET_IS_VOIP_AUDIO_MODE:I = 0x10

.field private static final greylist-max-o MSG_SET_ON_HOLD:I = 0x6

.field private static final greylist-max-o MSG_SET_PHONE_ACCOUNT_CHANGED:I = 0x22

.field private static final greylist-max-o MSG_SET_PULLING:I = 0x1c

.field private static final greylist-max-o MSG_SET_RINGBACK_REQUESTED:I = 0x7

.field private static final greylist-max-o MSG_SET_RINGING:I = 0x3

.field private static final greylist-max-o MSG_SET_STATUS_HINTS:I = 0x11

.field private static final greylist-max-o MSG_SET_VIDEO_CALL_PROVIDER:I = 0xf

.field private static final greylist-max-o MSG_SET_VIDEO_STATE:I = 0xe


# instance fields
.field private final greylist-max-o mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mStub:Lcom/android/internal/telecom/IConnectionServiceAdapter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/telecom/ConnectionServiceAdapterServant$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionServiceAdapterServant$1;-><init>(Landroid/telecom/ConnectionServiceAdapterServant;)V

    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;

    .line 394
    new-instance v0, Landroid/telecom/ConnectionServiceAdapterServant$2;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionServiceAdapterServant$2;-><init>(Landroid/telecom/ConnectionServiceAdapterServant;)V

    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mStub:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 730
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 731
    return-void
.end method


# virtual methods
.method public greylist-max-o getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .registers 2

    .line 734
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mStub:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    return-object v0
.end method
