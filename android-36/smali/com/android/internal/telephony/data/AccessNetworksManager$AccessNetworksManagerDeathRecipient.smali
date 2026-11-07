.class Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;
.super Ljava/lang/Object;
.source "AccessNetworksManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessNetworksManagerDeathRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Qualified network service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmLastBoundPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmApnTypeToQnsChangeNetworkCounter(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 194
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAnomalyUUID(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/UUID;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {v1, v0, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method
