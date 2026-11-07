.class Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$mgetSubId(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget v2, v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSubId:I

    if-eq v2, v0, :cond_43

    const/4 v3, -0x1

    if-eq v0, v3, :cond_43

    .line 95
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->stopAnalytics(I)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iput v0, v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSubId:I

    .line 97
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->startAnalytics(I)V

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started Listener, mSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget v2, v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "SlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method
