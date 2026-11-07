.class Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
.super Ljava/lang/Object;
.source "NetworkRegistrationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegManagerDeathRecipient"
.end annotation


# instance fields
.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for transport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/NetworkRegistrationManager;)I

    move-result p0

    .line 166
    invoke-static {p0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " died."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    return-void
.end method
