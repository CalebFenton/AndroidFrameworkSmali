.class Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;
.super Landroid/app/sdksandbox/ILoadSdkCallback$Stub;
.source "SdkSandboxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/SdkSandboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadSdkReceiverProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            "Landroid/app/sdksandbox/LoadSdkException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mService:Landroid/app/sdksandbox/ISdkSandboxManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$FXw-azEGL4VUmZJn04YDyBZr8ak(Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;Landroid/app/sdksandbox/SandboxedSdk;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->lambda$onLoadSdkSuccess$0(Landroid/app/sdksandbox/SandboxedSdk;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xtgSbqSapHP6UbgCyhFfBu66F84(Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;Landroid/app/sdksandbox/LoadSdkException;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->lambda$onLoadSdkFailure$1(Landroid/app/sdksandbox/LoadSdkException;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/sdksandbox/ISdkSandboxManager;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "service"    # Landroid/app/sdksandbox/ISdkSandboxManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            "Landroid/app/sdksandbox/LoadSdkException;",
            ">;",
            "Landroid/app/sdksandbox/ISdkSandboxManager;",
            ")V"
        }
    .end annotation

    .line 863
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/sdksandbox/SandboxedSdk;Landroid/app/sdksandbox/LoadSdkException;>;"
    invoke-direct {p0}, Landroid/app/sdksandbox/ILoadSdkCallback$Stub;-><init>()V

    .line 864
    iput-object p1, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 865
    iput-object p2, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->mCallback:Landroid/os/OutcomeReceiver;

    .line 866
    iput-object p3, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    .line 867
    return-void
.end method

.method private synthetic blacklist lambda$onLoadSdkFailure$1(Landroid/app/sdksandbox/LoadSdkException;)V
    .registers 3
    .param p1, "exception"    # Landroid/app/sdksandbox/LoadSdkException;

    .line 881
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onLoadSdkSuccess$0(Landroid/app/sdksandbox/SandboxedSdk;)V
    .registers 3
    .param p1, "sandboxedSdk"    # Landroid/app/sdksandbox/SandboxedSdk;

    .line 873
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 5
    .param p1, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 885
    nop

    .line 886
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 885
    invoke-virtual {p1, v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppReceivedCallFromSystemServer(J)V

    .line 888
    :try_start_8
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    invoke-interface {v0, p1}, Landroid/app/sdksandbox/ISdkSandboxManager;->logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 895
    goto :goto_2b

    .line 889
    :catch_e
    move-exception v0

    .line 890
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while calling logSandboxApiLatency.Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 894
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 890
    const-string v2, "SdkSandboxManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method


# virtual methods
.method public blacklist onLoadSdkFailure(Landroid/app/sdksandbox/LoadSdkException;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 5
    .param p1, "exception"    # Landroid/app/sdksandbox/LoadSdkException;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 879
    invoke-static {p1}, Landroid/app/sdksandbox/SdkSandboxManager;->getResultCodeForLoadSdkException(Landroid/app/sdksandbox/LoadSdkException;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setResultCode(I)V

    .line 880
    invoke-direct {p0, p2}, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 881
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;-><init>(Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;Landroid/app/sdksandbox/LoadSdkException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method public blacklist onLoadSdkSuccess(Landroid/app/sdksandbox/SandboxedSdk;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 5
    .param p1, "sandboxedSdk"    # Landroid/app/sdksandbox/SandboxedSdk;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 872
    invoke-direct {p0, p2}, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 873
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;Landroid/app/sdksandbox/SandboxedSdk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 874
    return-void
.end method
