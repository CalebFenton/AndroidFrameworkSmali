.class Lcom/android/internal/telephony/data/DataNetworkController$2;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
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

    .line 931
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .registers 5

    .line 940
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataEnabledChanged: enabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 941
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    if-eqz p1, :cond_1c

    const/4 p1, 0x5

    goto :goto_1e

    :cond_1c
    const/16 p1, 0x10

    .line 943
    :goto_1e
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 941
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onDataEnabledOverrideChanged(ZI)V
    .registers 5

    .line 954
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledOverrideChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 955
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    if-eqz p1, :cond_1c

    const/4 p1, 0x5

    goto :goto_1e

    :cond_1c
    const/16 p1, 0x10

    .line 957
    :goto_1e
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_OVERRIDE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 955
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onDataRoamingEnabledChanged(Z)V
    .registers 5

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataRoamingEnabledChanged: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 967
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    if-eqz p1, :cond_1c

    const/4 p1, 0x5

    goto :goto_1e

    :cond_1c
    const/16 p1, 0x10

    .line 969
    :goto_1e
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->ROAMING_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 967
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
