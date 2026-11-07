.class Lcom/android/internal/telephony/data/DataSettingsManager$4;
.super Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;
.source "DataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataSettingsManager;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataSettingsManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;)V
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

    .line 339
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$4;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDefaultDataSubscriptionChanged(I)V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$4;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$4;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;)I

    move-result v2

    if-ne p1, v2, :cond_12

    const-string p1, "Became"

    goto :goto_14

    :cond_12
    const-string p1, "Not"

    :goto_14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " default data sub, reevaluating mobile data policies"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$4;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mupdateDataEnabledAndNotify(Lcom/android/internal/telephony/data/DataSettingsManager;I)V

    return-void
.end method
