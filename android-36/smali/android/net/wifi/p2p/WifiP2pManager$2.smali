.class Landroid/net/wifi/p2p/WifiP2pManager$2;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pManager;->requestDirInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/p2p/WifiP2pManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/wifi/p2p/WifiP2pManager;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4016
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDirInfoReceived$0(Landroid/os/OutcomeReceiver;Landroid/net/wifi/p2p/WifiP2pDirInfo;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Landroid/net/wifi/p2p/WifiP2pDirInfo;

    .line 4021
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 4022
    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "reason"    # I

    .line 4029
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->-$$Nest$smreasonCodeToException(I)Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 4030
    return-void
.end method


# virtual methods
.method public blacklist onDirInfoReceived(Landroid/net/wifi/p2p/WifiP2pDirInfo;)V
    .registers 5
    .param p1, "result"    # Landroid/net/wifi/p2p/WifiP2pDirInfo;

    .line 4019
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4020
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/net/wifi/p2p/WifiP2pDirInfo;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4023
    return-void
.end method

.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 4027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4028
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4031
    return-void
.end method
