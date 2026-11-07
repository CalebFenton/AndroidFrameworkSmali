.class Lcom/android/internal/telephony/ServiceStateTracker$3;
.super Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/util/concurrent/Executor;)V
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

    .line 817
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onPreferredTransportChanged(IZ)V
    .registers 5

    .line 821
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isAnyApnOnIwlan()Z

    move-result p1

    .line 822
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isIwlanPreferred()Z

    move-result p2

    if-eq p2, p1, :cond_3c

    .line 823
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferredTransportChanged: IwlanPreferred is changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 825
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->setIwlanPreferred(Z)V

    .line 826
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_3c
    return-void
.end method
