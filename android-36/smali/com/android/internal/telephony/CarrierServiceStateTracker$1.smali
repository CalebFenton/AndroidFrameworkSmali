.class Lcom/android/internal/telephony/CarrierServiceStateTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Looper;)V
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

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPreviousSubId(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I

    move-result v1

    if-eq v1, v0, :cond_33

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fputmPreviousSubId(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 158
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fputmTelephonyManager(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/telephony/TelephonyManager;)V

    .line 160
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$mregisterAllowedNetworkTypesListener(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    :cond_33
    return-void
.end method
