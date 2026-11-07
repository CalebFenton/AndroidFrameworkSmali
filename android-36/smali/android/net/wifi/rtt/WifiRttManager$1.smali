.class Landroid/net/wifi/rtt/WifiRttManager$1;
.super Landroid/net/wifi/rtt/IRttCallback$Stub;
.source "WifiRttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/rtt/WifiRttManager;->startRanging(Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/net/wifi/rtt/RangingResultCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/rtt/WifiRttManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/wifi/rtt/WifiRttManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 247
    iput-object p2, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$callback:Landroid/net/wifi/rtt/RangingResultCallback;

    invoke-direct {p0}, Landroid/net/wifi/rtt/IRttCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onRangingFailure$0(Landroid/net/wifi/rtt/RangingResultCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/net/wifi/rtt/RangingResultCallback;
    .param p1, "status"    # I

    .line 251
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResultCallback;->onRangingFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onRangingResults$1(Landroid/net/wifi/rtt/RangingResultCallback;Ljava/util/List;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/wifi/rtt/RangingResultCallback;
    .param p1, "results"    # Ljava/util/List;

    .line 258
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResultCallback;->onRangingResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onRangingFailure(I)V
    .registers 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-static {}, Landroid/net/wifi/rtt/WifiRttManager$1;->clearCallingIdentity()J

    .line 251
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$callback:Landroid/net/wifi/rtt/RangingResultCallback;

    new-instance v2, Landroid/net/wifi/rtt/WifiRttManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/rtt/WifiRttManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/rtt/RangingResultCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public blacklist onRangingResults(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    invoke-static {}, Landroid/net/wifi/rtt/WifiRttManager$1;->clearCallingIdentity()J

    .line 258
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$callback:Landroid/net/wifi/rtt/RangingResultCallback;

    new-instance v2, Landroid/net/wifi/rtt/WifiRttManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/rtt/WifiRttManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/rtt/RangingResultCallback;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method
