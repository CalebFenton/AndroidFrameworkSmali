.class Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "SatelliteOptimizedApplicationsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 110
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    const-string p2, "new user added"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mloge(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
