.class Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DataConnectionStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 66
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)I

    move-result v1

    if-eq v1, v0, :cond_32

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    goto :goto_32

    .line 72
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$munregisterTelephonyListener(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)V

    .line 73
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$mregisterTelephonyListener(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V

    :cond_32
    :goto_32
    return-void
.end method
