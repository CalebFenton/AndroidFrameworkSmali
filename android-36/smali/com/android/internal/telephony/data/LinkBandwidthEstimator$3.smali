.class Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 292
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 3

    .line 296
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
