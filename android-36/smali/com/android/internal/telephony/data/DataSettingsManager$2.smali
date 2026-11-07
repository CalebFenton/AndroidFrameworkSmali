.class Lcom/android/internal/telephony/data/DataSettingsManager$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$2;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$2;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$2;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_63

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$2;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionsChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$2;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$2;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$2;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;I)V

    .line 316
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$2;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_63
    return-void
.end method
