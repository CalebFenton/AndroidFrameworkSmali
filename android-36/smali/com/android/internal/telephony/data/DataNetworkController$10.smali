.class Lcom/android/internal/telephony/data/DataNetworkController$10;
.super Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;->onRegisterAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V
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

    .line 1131
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$10;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataActivityChanged(I)V
    .registers 2

    .line 1134
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$10;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mupdateDataActivity(Lcom/android/internal/telephony/data/DataNetworkController;)V

    return-void
.end method
