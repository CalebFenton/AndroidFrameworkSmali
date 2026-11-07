.class Lcom/android/internal/telephony/ServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 549
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 552
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 553
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 554
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string p2, "ACTION_LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 556
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 559
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    return-void

    .line 560
    :cond_1e
    const-string v0, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 561
    const-string p1, "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 563
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$fgetmLastKnownNetworkCountry(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 564
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    :cond_3d
    return-void
.end method
