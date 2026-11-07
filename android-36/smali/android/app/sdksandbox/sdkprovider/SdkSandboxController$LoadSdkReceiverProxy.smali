.class Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;
.super Landroid/app/sdksandbox/ILoadSdkCallback$Stub;
.source "SdkSandboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic blacklist this$0:Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;


# direct methods
.method public static synthetic blacklist $r8$lambda$-xME0xbmCoGau3W3rrTT3TASGTY(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;Landroid/app/sdksandbox/LoadSdkException;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->lambda$onLoadSdkFailure$1(Landroid/app/sdksandbox/LoadSdkException;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4hcrI2WB3Jyz7P05rrjgITwG6NY(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;Landroid/app/sdksandbox/SandboxedSdk;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->lambda$onLoadSdkSuccess$0(Landroid/app/sdksandbox/SandboxedSdk;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            "Landroid/app/sdksandbox/LoadSdkException;",
            ">;)V"
        }
    .end annotation

    .line 398
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/sdksandbox/SandboxedSdk;Landroid/app/sdksandbox/LoadSdkException;>;"
    iput-object p1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->this$0:Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    invoke-direct {p0}, Landroid/app/sdksandbox/ILoadSdkCallback$Stub;-><init>()V

    .line 399
    iput-object p2, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 400
    iput-object p3, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->mCallback:Landroid/os/OutcomeReceiver;

    .line 401
    return-void
.end method

.method private synthetic blacklist lambda$onLoadSdkFailure$1(Landroid/app/sdksandbox/LoadSdkException;)V
    .registers 3
    .param p1, "exception"    # Landroid/app/sdksandbox/LoadSdkException;

    .line 415
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onLoadSdkSuccess$0(Landroid/app/sdksandbox/SandboxedSdk;)V
    .registers 3
    .param p1, "sandboxedSdk"    # Landroid/app/sdksandbox/SandboxedSdk;

    .line 407
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onLoadSdkFailure(Landroid/app/sdksandbox/LoadSdkException;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 5
    .param p1, "exception"    # Landroid/app/sdksandbox/LoadSdkException;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 413
    invoke-static {p1}, Landroid/app/sdksandbox/SdkSandboxManager;->getResultCodeForLoadSdkException(Landroid/app/sdksandbox/LoadSdkException;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setResultCode(I)V

    .line 414
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->this$0:Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    invoke-static {v0, p2}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->-$$Nest$mlogLatenciesFromSandbox(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 415
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;Landroid/app/sdksandbox/LoadSdkException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method public blacklist onLoadSdkSuccess(Landroid/app/sdksandbox/SandboxedSdk;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 5
    .param p1, "sandboxedSdk"    # Landroid/app/sdksandbox/SandboxedSdk;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 406
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->this$0:Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    invoke-static {v0, p2}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->-$$Nest$mlogLatenciesFromSandbox(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 407
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;-><init>(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;Landroid/app/sdksandbox/SandboxedSdk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method
