.class Lcom/android/internal/telephony/subscription/SubscriptionManagerService$6;
.super Landroid/os/CountDownTimer;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->startEsimBootstrapTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1680
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$6;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public whitelist onFinish()V
    .registers 3

    .line 1688
    const-string v0, "40587b0f-27c9-4b39-b94d-71fc9771f354"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "eSim bootstrap has been active for too long."

    invoke-static {v0, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$6;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const-string v1, "bootstrapProvisioningTimer: timer finished esim was not disabled."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mlog(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    .line 1692
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$6;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mcancelEsimBootstrapTimer(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    return-void
.end method

.method public whitelist onTick(J)V
    .registers 3

    .line 0
    return-void
.end method
