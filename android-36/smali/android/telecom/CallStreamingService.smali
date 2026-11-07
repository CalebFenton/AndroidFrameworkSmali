.class public abstract Landroid/telecom/CallStreamingService;
.super Landroid/app/Service;
.source "CallStreamingService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;,
        Landroid/telecom/CallStreamingService$StreamingFailedReason;
    }
.end annotation


# static fields
.field private static final blacklist MSG_CALL_STREAMING_STARTED:I = 0x2

.field private static final blacklist MSG_CALL_STREAMING_STATE_CHANGED:I = 0x4

.field private static final blacklist MSG_CALL_STREAMING_STOPPED:I = 0x3

.field private static final blacklist MSG_SET_STREAMING_CALL_ADAPTER:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallStreamingService"

.field public static final whitelist STREAMING_FAILED_ALREADY_STREAMING:I = 0x1

.field public static final whitelist STREAMING_FAILED_NO_SENDER:I = 0x2

.field public static final whitelist STREAMING_FAILED_SENDER_BINDING_ERROR:I = 0x3

.field public static final whitelist STREAMING_FAILED_UNKNOWN:I


# instance fields
.field private blacklist mCall:Landroid/telecom/StreamingCall;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mStreamingCallAdapter:Landroid/telecom/StreamingCallAdapter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallStreamingService;->mCall:Landroid/telecom/StreamingCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallStreamingService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallStreamingService;->mStreamingCallAdapter:Landroid/telecom/StreamingCallAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCall(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCall;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallStreamingService;->mCall:Landroid/telecom/StreamingCall;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStreamingCallAdapter(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCallAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallStreamingService;->mStreamingCallAdapter:Landroid/telecom/StreamingCallAdapter;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Landroid/telecom/CallStreamingService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallStreamingService$1;-><init>(Landroid/telecom/CallStreamingService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/CallStreamingService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 116
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onBind"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;-><init>(Landroid/telecom/CallStreamingService;Landroid/telecom/CallStreamingService-IA;)V

    return-object v0
.end method

.method public whitelist onCallStreamingStarted(Landroid/telecom/StreamingCall;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/StreamingCall;

    .line 203
    return-void
.end method

.method public whitelist onCallStreamingStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 219
    return-void
.end method

.method public whitelist onCallStreamingStopped()V
    .registers 1

    .line 211
    return-void
.end method
