.class Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;
.super Lcom/android/internal/telephony/PackageChangeReceiver;
.source "SatelliteOptimizedApplicationsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatelliteApplicationPackageMonitor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/PackageChangeReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;-><init>(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)V

    return-void
.end method


# virtual methods
.method public blacklist onPackageAdded(Ljava/lang/String;)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onPackageModified(Ljava/lang/String;)V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageModified : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onPackageRemoved(Ljava/lang/String;)V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onPackageUpdateFinished(Ljava/lang/String;)V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageUpdateFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
