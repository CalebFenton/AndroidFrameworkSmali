.class final Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;
.super Lcom/android/internal/telecom/ICallStreamingService$Stub;
.source "CallStreamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallStreamingServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallStreamingService;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/CallStreamingService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallStreamingService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallStreamingService;Landroid/telecom/CallStreamingService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;-><init>(Landroid/telecom/CallStreamingService;)V

    return-void
.end method


# virtual methods
.method public blacklist onCallStreamingStarted(Landroid/telecom/StreamingCall;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/StreamingCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onCallStreamingStarted"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void
.end method

.method public blacklist onCallStreamingStateChanged(I)V
    .registers 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public blacklist onCallStreamingStopped()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public blacklist setStreamingCallAdapter(Lcom/android/internal/telecom/IStreamingCallAdapter;)V
    .registers 4
    .param p1, "streamingCallAdapter"    # Lcom/android/internal/telecom/IStreamingCallAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setCallStreamingAdapter"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method
