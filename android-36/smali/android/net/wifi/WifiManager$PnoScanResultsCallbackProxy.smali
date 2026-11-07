.class Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;
.super Landroid/net/wifi/IPnoScanResultsCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanResultsCallbackProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/WifiManager$PnoScanResultsCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$9Ocx8lOnh5wR7dOEsqGgJcfJRoM(Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->lambda$onRemoved$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IB2nIa7j_HWqYSAZdkKJBrCqpPw(Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->lambda$onRegisterFailed$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jueqUQmPQB6vT9e6mhJmYkGzbT0(Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->lambda$onRegisterSuccess$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x_GijIkuAlWfvX2XRPpOPqxErPc(Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->lambda$onScanResultsAvailable$0(Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$PnoScanResultsCallback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$PnoScanResultsCallback;
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

    .line 10689
    iput-object p1, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/IPnoScanResultsCallback$Stub;-><init>()V

    .line 10690
    iput-object p2, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 10691
    iput-object p3, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$PnoScanResultsCallback;

    .line 10692
    return-void
.end method

.method private synthetic blacklist lambda$onRegisterFailed$2(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 10718
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$PnoScanResultsCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallback;->onRegisterFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegisterSuccess$1()V
    .registers 2

    .line 10709
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$PnoScanResultsCallback;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$PnoScanResultsCallback;->onRegisterSuccess()V

    return-void
.end method

.method private synthetic blacklist lambda$onRemoved$3(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 10727
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$PnoScanResultsCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallback;->onRemoved(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onScanResultsAvailable$0(Ljava/util/List;)V
    .registers 3
    .param p1, "scanResults"    # Ljava/util/List;

    .line 10700
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$PnoScanResultsCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallback;->onScanResultsAvailable(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onRegisterFailed(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 10714
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 10715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PnoScanResultsCallback: onRegisterFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10717
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10718
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10719
    return-void
.end method

.method public blacklist onRegisterSuccess()V
    .registers 3

    .line 10705
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10706
    const-string v0, "WifiManager"

    const-string v1, "PnoScanResultsCallback: onRegisterSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10708
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10709
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10710
    return-void
.end method

.method public blacklist onRemoved(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 10723
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10724
    const-string v0, "WifiManager"

    const-string v1, "PnoScanResultsCallback: onRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10726
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10727
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10728
    return-void
.end method

.method public blacklist onScanResultsAvailable(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 10696
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10697
    const-string v0, "WifiManager"

    const-string v1, "PnoScanResultsCallback: onScanResultsAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10699
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10700
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10701
    return-void
.end method
