.class Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;
.super Landroid/os/Handler;
.source "CellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;-><init>(Lcom/android/internal/telephony/CellularNetworkService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

.field final synthetic blacklist val$this$0:Lcom/android/internal/telephony/CellularNetworkService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/CellularNetworkService;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    iput-object p3, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->val$this$0:Lcom/android/internal/telephony/CellularNetworkService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->-$$Nest$fgetmCallbackMap(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkServiceCallback;

    .line 135
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1e

    if-eq v1, v2, :cond_1e

    const/4 p1, 0x3

    if-eq v1, p1, :cond_18

    goto :goto_53

    .line 167
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    invoke-virtual {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->notifyNetworkRegistrationInfoChanged()V

    return-void

    :cond_1e
    if-nez v0, :cond_21

    goto :goto_53

    .line 139
    :cond_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-ne v1, v3, :cond_28

    move v2, v3

    .line 144
    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 145
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->-$$Nest$mgetRegistrationStateFromResult(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    .line 148
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_39

    if-nez p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p1, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p1, 0x5

    .line 160
    :goto_3a
    :try_start_3a
    invoke-virtual {v0, p1, p0}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    :goto_53
    return-void
.end method
