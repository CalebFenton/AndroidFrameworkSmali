.class final Landroid/telecom/VideoCallbackServant;
.super Ljava/lang/Object;
.source "VideoCallbackServant.java"


# static fields
.field private static final greylist-max-o MSG_CHANGE_CALL_DATA_USAGE:I = 0x4

.field private static final greylist-max-o MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x5

.field private static final greylist-max-o MSG_CHANGE_PEER_DIMENSIONS:I = 0x3

.field private static final greylist-max-o MSG_CHANGE_VIDEO_QUALITY:I = 0x6

.field private static final greylist-max-o MSG_HANDLE_CALL_SESSION_EVENT:I = 0x2

.field private static final greylist-max-o MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x0

.field private static final greylist-max-o MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x1


# instance fields
.field private final greylist-max-o mDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mStub:Lcom/android/internal/telecom/IVideoCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDelegate(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;
    .registers 1

    iget-object p0, p0, Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/telecom/IVideoCallback;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/internal/telecom/IVideoCallback;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/telecom/VideoCallbackServant$1;

    invoke-direct {v0, p0}, Landroid/telecom/VideoCallbackServant$1;-><init>(Landroid/telecom/VideoCallbackServant;)V

    iput-object v0, p0, Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/telecom/VideoCallbackServant$2;

    invoke-direct {v0, p0}, Landroid/telecom/VideoCallbackServant$2;-><init>(Landroid/telecom/VideoCallbackServant;)V

    iput-object v0, p0, Landroid/telecom/VideoCallbackServant;->mStub:Lcom/android/internal/telecom/IVideoCallback;

    .line 165
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 166
    return-void
.end method


# virtual methods
.method public greylist-max-o getStub()Lcom/android/internal/telecom/IVideoCallback;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant;->mStub:Lcom/android/internal/telecom/IVideoCallback;

    return-object v0
.end method
