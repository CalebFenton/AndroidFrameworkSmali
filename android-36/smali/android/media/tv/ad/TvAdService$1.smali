.class Landroid/media/tv/ad/TvAdService$1;
.super Landroid/media/tv/ad/ITvAdService$Stub;
.source "TvAdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$1;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSession(Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "cb"    # Landroid/media/tv/ad/ITvAdSessionCallback;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .line 115
    if-nez p2, :cond_3

    .line 116
    return-void

    .line 118
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 119
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 120
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 121
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 122
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$1;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/ad/TvAdService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void
.end method

.method public blacklist registerCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/tv/ad/ITvAdServiceCallback;

    .line 100
    if-eqz p1, :cond_b

    .line 101
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$1;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/ad/TvAdService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 103
    :cond_b
    return-void
.end method

.method public blacklist sendAppLinkCommand(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "command"    # Landroid/os/Bundle;

    .line 129
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$1;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdService;->onAppLinkCommand(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/tv/ad/ITvAdServiceCallback;

    .line 107
    if-eqz p1, :cond_b

    .line 108
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$1;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/ad/TvAdService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 110
    :cond_b
    return-void
.end method
