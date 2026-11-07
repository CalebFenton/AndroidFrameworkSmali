.class Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;
.super Landroid/content/BroadcastReceiver;
.source "ControllerMetricsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mLastUpdatedTime:J

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 478
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    .line 479
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;->mLastUpdatedTime:J

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 484
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getElapsedRealtime()J

    move-result-wide v0

    .line 485
    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;->mLastUpdatedTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long p1, v2, v4

    if-lez p1, :cond_3e

    .line 486
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;->mLastUpdatedTime:J

    .line 487
    const-string p1, "status"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 489
    :goto_20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Battery is charged("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 490
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->-$$Nest$mupdateSatelliteBatteryChargeTime(Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;Z)V

    :cond_3e
    return-void
.end method
