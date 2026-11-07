.class Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;
.super Landroid/net/wifi/ITrafficStateCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficStateCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/wifi/WifiManager$TrafficStateCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$vOD3LaVFDswH8Z7Zmrpsn2dfEdg(Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->lambda$onStateChanged$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$TrafficStateCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 8999
    iput-object p1, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/ITrafficStateCallback$Stub;-><init>()V

    .line 9000
    iput-object p2, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9001
    iput-object p3, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$TrafficStateCallback;

    .line 9002
    return-void
.end method

.method private synthetic blacklist lambda$onStateChanged$0(I)V
    .registers 3
    .param p1, "state"    # I

    .line 9011
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$TrafficStateCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$TrafficStateCallback;->onStateChanged(I)V

    .line 9012
    return-void
.end method


# virtual methods
.method public blacklist onStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 9006
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 9007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficStateCallbackProxy: onStateChanged state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9009
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9010
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9013
    return-void
.end method
