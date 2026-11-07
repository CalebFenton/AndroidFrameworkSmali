.class Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;
.super Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;
.source "SdkSandboxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/SdkSandboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestSurfacePackageReceiverProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mReceiver:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/Bundle;",
            "Landroid/app/sdksandbox/RequestSurfacePackageException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/app/sdksandbox/ISdkSandboxManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$r6OGWZ7uD2L0w49kshPdOY_JVf8(Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->lambda$onSurfacePackageError$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ybe8_QAe-QvowzAU31AzynFgppA(Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;Landroid/os/Bundle;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->lambda$onSurfacePackageReady$0(Landroid/os/Bundle;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

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
            "Landroid/os/Bundle;",
            "Landroid/app/sdksandbox/RequestSurfacePackageException;",
            ">;",
            "Landroid/app/sdksandbox/ISdkSandboxManager;",
            ")V"
        }
    .end annotation

    .line 909
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    invoke-direct {p0}, Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;-><init>()V

    .line 910
    iput-object p1, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 911
    iput-object p2, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->mReceiver:Landroid/os/OutcomeReceiver;

    .line 912
    iput-object p3, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    .line 913
    return-void
.end method

.method private synthetic blacklist lambda$onSurfacePackageError$1(ILjava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 935
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->mReceiver:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/app/sdksandbox/RequestSurfacePackageException;

    invoke-direct {v1, p1, p2}, Landroid/app/sdksandbox/RequestSurfacePackageException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSurfacePackageReady$0(Landroid/os/Bundle;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 924
    const-string v0, "android.app.sdksandbox.extra.SURFACE_PACKAGE"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 925
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->mReceiver:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 926
    return-void
.end method

.method private blacklist logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 5
    .param p1, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 940
    nop

    .line 941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 940
    invoke-virtual {p1, v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppReceivedCallFromSystemServer(J)V

    .line 943
    :try_start_8
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    invoke-interface {v0, p1}, Landroid/app/sdksandbox/ISdkSandboxManager;->logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 950
    goto :goto_2b

    .line 944
    :catch_e
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while calling logSandboxApiLatency.Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 945
    const-string v2, "SdkSandboxManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method


# virtual methods
.method public blacklist onSurfacePackageError(ILjava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 932
    invoke-direct {p0, p3}, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 933
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 937
    return-void
.end method

.method public blacklist onSurfacePackageReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;ILandroid/os/Bundle;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 7
    .param p1, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "surfacePackageId"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 921
    invoke-direct {p0, p4}, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 922
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p1}, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;-><init>(Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;Landroid/os/Bundle;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 927
    return-void
.end method
