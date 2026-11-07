.class Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;
.super Ljava/lang/Object;
.source "DataServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceManagerDeathRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataServiceManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/telephony/data/DataServiceManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmLastBoundPackageName(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for transport type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/data/DataServiceManager;)I

    move-result v1

    .line 121
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 123
    const-string v1, "fc1956de-c080-45de-8431-a1faab687110"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v2

    .line 123
    invoke-static {v1, v0, v2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    goto :goto_54

    .line 130
    :cond_67
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fputmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/List;)V

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmDataCallListChangedRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    new-instance v0, Landroid/os/AsyncResult;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
