.class Lcom/android/internal/telephony/ServiceStateTracker$2;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
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

    .line 807
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onAnyDataNetworkExistingChanged(Z)V
    .registers 5

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnyDataNetworkExistingChanged: anyDataExisting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1f

    .line 812
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 p1, 0x31

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1f
    return-void
.end method
