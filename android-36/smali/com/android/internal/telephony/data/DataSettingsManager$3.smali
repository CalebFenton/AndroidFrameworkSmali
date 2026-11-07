.class Lcom/android/internal/telephony/data/DataSettingsManager$3;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
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

.field final synthetic blacklist val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/Phone;)V
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

    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$3;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager$3;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onUserDataEnabledChanged(ZLjava/lang/String;)V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$3;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$3;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " onUserDataEnabledChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reevaluating mobile data policies"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$3;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mupdateDataEnabledAndNotify(Lcom/android/internal/telephony/data/DataSettingsManager;I)V

    return-void
.end method
