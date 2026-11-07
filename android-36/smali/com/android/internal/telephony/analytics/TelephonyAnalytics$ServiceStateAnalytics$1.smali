.class Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 632
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$1;->this$1:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 635
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$1;->this$1:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    invoke-virtual {p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->getTimeMillis()J

    .line 636
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 637
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 638
    const-string p1, "android.telephony.extra.SIM_STATE"

    const/4 v0, 0x0

    .line 639
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_27

    .line 643
    const-string p1, "AnkitSimAbsent"

    const-string p2, "Sim is Absent"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$1;->this$1:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    invoke-static {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->-$$Nest$mlogSimAbsentState(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;)V

    :cond_27
    return-void
.end method
