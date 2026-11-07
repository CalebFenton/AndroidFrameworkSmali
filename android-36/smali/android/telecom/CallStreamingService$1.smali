.class Landroid/telecom/CallStreamingService$1;
.super Landroid/os/Handler;
.source "CallStreamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallStreamingService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallStreamingService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telecom/CallStreamingService;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 75
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    .line 76
    const-string/jumbo v0, "handleMessage: null adapter!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void

    .line 80
    :cond_17
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_99

    .line 101
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    .local v0, "state":I
    iget-object v1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 103
    iget-object v1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/StreamingCall;->requestStreamingState(I)V

    .line 104
    iget-object v1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-virtual {v1, v0}, Landroid/telecom/CallStreamingService;->onCallStreamingStateChanged(I)V

    goto :goto_99

    .line 95
    .end local v0    # "state":I
    :pswitch_3d
    const-string v0, "MSG_CALL_STREAMING_STOPPED"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmCall(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCall;)V

    .line 97
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0, v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmStreamingCallAdapter(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCallAdapter;)V

    .line 98
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-virtual {v0}, Landroid/telecom/CallStreamingService;->onCallStreamingStopped()V

    .line 99
    goto :goto_99

    .line 89
    :pswitch_55
    const-string v0, "MSG_CALL_STREAMING_STARTED"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/StreamingCall;

    invoke-static {v0, v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmCall(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCall;)V

    .line 91
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/StreamingCall;->setAdapter(Landroid/telecom/StreamingCallAdapter;)V

    .line 92
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    iget-object v1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/CallStreamingService;->onCallStreamingStarted(Landroid/telecom/StreamingCall;)V

    .line 93
    goto :goto_99

    .line 82
    :pswitch_80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_99

    .line 83
    const-string v0, "MSG_SET_STREAMING_CALL_ADAPTER"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    new-instance v1, Landroid/telecom/StreamingCallAdapter;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IStreamingCallAdapter;

    invoke-direct {v1, v2}, Landroid/telecom/StreamingCallAdapter;-><init>(Lcom/android/internal/telecom/IStreamingCallAdapter;)V

    invoke-static {v0, v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmStreamingCallAdapter(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCallAdapter;)V

    .line 110
    :cond_99
    :goto_99
    return-void

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_80
        :pswitch_55
        :pswitch_3d
        :pswitch_1e
    .end packed-switch
.end method
