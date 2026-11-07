.class Landroid/telephony/NetworkService$INetworkServiceWrapper;
.super Landroid/telephony/INetworkService$Stub;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INetworkServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/NetworkService;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/NetworkService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0}, Landroid/telephony/INetworkService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/NetworkService;Landroid/telephony/NetworkService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$INetworkServiceWrapper;-><init>(Landroid/telephony/NetworkService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o createNetworkServiceProvider(I)V
    .registers 6
    .param p1, "slotIndex"    # I

    .line 280
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 282
    return-void
.end method

.method public blacklist registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 300
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 302
    return-void
.end method

.method public greylist-max-o removeNetworkServiceProvider(I)V
    .registers 6
    .param p1, "slotIndex"    # I

    .line 286
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void
.end method

.method public blacklist requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "domain"    # I
    .param p3, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 293
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 295
    return-void
.end method

.method public blacklist unregisterForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 307
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void
.end method
