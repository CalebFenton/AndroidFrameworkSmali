.class Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;
.super Landroid/telephony/INetworkServiceCallback$Stub;
.source "NetworkRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRegStateCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Landroid/telephony/INetworkServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onNetworkStateChanged()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const-string v1, "onNetworkStateChanged"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmRegStateChangeRegistrants(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    .registers 6

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestNetworkRegistrationInfoComplete result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmCallbackTable(Lcom/android/internal/telephony/NetworkRegistrationManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_41

    .line 206
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 207
    new-instance p0, Landroid/os/AsyncResult;

    iget-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v1, p2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 211
    :cond_41
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const-string p1, "onCompleteMessage is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$mloge(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    return-void
.end method
