.class Lcom/android/internal/telephony/data/DataNetworkController$6;
.super Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;->onRegisterAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V
    .registers 3
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

    .line 1042
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$6;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onPreferredTransportChanged(IZ)V
    .registers 7

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$6;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    .line 1047
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 1048
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController$6;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferredTransportChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " preferred on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2e

    .line 1051
    const-string v0, "forceReconnect:true"

    goto :goto_30

    :cond_2e
    const-string v0, ""

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1048
    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$6;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monEvaluatePreferredTransport(Lcom/android/internal/telephony/data/DataNetworkController;IZ)V

    .line 1054
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$6;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_54

    .line 1055
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$6;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->PREFERRED_TRANSPORT_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1058
    :cond_54
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$6;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const-string p1, "onPreferredTransportChanged: Skipped evaluating unsatisfied network requests because another evaluation was already scheduled."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    return-void
.end method
