.class Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback$1;
.super Landroid/service/dreams/IDreamOverlayClientCallback$Stub;
.source "DreamOverlayConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;)V
    .registers 2
    .param p1, "this$1"    # Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback$1;->this$1:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDreamOverlayClient(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 4
    .param p1, "client"    # Landroid/service/dreams/IDreamOverlayClient;

    .line 176
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback$1;->this$1:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    iget-object v0, v0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-static {v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamOverlayConnectionHandler;)Landroid/os/Handler;

    move-result-object v0

    .line 177
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback$1;->this$1:Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;

    iget-object v1, v1, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-static {v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamOverlayConnectionHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method
