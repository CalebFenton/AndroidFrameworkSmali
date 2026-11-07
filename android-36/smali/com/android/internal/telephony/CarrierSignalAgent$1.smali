.class Lcom/android/internal/telephony/CarrierSignalAgent$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CarrierSignalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CarrierSignalAgent;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierSignalAgent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 5

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->-$$Nest$fgetmDefaultNetworkAvail(Lcom/android/internal/telephony/CarrierSignalAgent;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->-$$Nest$mlog(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V

    .line 165
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.telephony.action.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v0, "android.telephony.extra.DEFAULT_NETWORK_AVAILABLE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->-$$Nest$fputmDefaultNetworkAvail(Lcom/android/internal/telephony/CarrierSignalAgent;Z)V

    :cond_35
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->-$$Nest$mlog(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V

    .line 176
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.telephony.action.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v0, "android.telephony.extra.DEFAULT_NETWORK_AVAILABLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 181
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->-$$Nest$fputmDefaultNetworkAvail(Lcom/android/internal/telephony/CarrierSignalAgent;Z)V

    return-void
.end method
