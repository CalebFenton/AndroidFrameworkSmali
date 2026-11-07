.class Landroid/telephony/ims/feature/MmTelFeature$1;
.super Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/feature/MmTelFeature;


# direct methods
.method public static synthetic blacklist $r8$lambda$0lir_I0uOq50vFAzTfVEwSdYsBI(Landroid/telephony/ims/feature/MmTelFeature$1;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$acknowledgeSms$21(III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1VutX3tpF5MkOdfGZ6CzMxdjyN8(Landroid/telephony/ims/feature/MmTelFeature$1;III[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$acknowledgeSmsWithPdu$22(III[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$27wsn0_g8zlBoXPsYDq4izTXke4(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$setListener$0(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$34nXGSaJBwrxAl2YyVixv7p5XdY(Landroid/telephony/ims/feature/MmTelFeature$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$onMemoryAvailable$20(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6LeTbhj0UpyV5xNrSy6bAuBwXk0(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$changeCapabilitiesConfiguration$13(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8o2-0fq8R1e1x7tg52p1QWe-n5Q(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsEcbm;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$getEcbmInterface$7(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsEcbm;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8pKxQBkuQYuJwGmeEKh4K9xxAWA(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$changeOfferedRtpHeaderExtensionTypes$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AFVwgkRXvIzJAEahCsken9aOrTA(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$removeCapabilityCallback$12(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$B6ga8i0t6Nv5oss8BBDDoq4lxr4(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$addCapabilityCallback$11(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FNA6pjXcyD7ksI3zwJmD4ndWwss(Landroid/telephony/ims/feature/MmTelFeature$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$notifySrvccCanceled$30()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GY33gRdjznTA0FVwkVUmURhapUs(Landroid/telephony/ims/feature/MmTelFeature$1;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$acknowledgeSmsReport$23(III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Id_A6bv8gZGV2lguZzIq98em4Kw(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$createCallSession$4(Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JZs6Fyyj3ISFXzOKix9IkbjqHaY(Landroid/telephony/ims/feature/MmTelFeature$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$setMediaQualityThreshold$16(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MKi9E2AQkG68Jf7mAsA81E8czc8(Landroid/telephony/ims/feature/MmTelFeature$1;ILandroid/telephony/ims/MediaThreshold;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$setMediaQualityThreshold$15(ILandroid/telephony/ims/MediaThreshold;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MVx3tiMDiYc519UhOZ-cLasUuhU(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$setSmsListener$18(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R0XAGDgWCyYVdbVQ5qb56vWwOsk(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$notifySrvccStarted$27(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SwXhNgI0Rvzl_rhtALkbFJZklEI(Landroid/telephony/ims/feature/MmTelFeature$1;II)Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$createCallProfile$2(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$T-u16Mr3c4JdCL5GSTu1XH6zjgM(Landroid/telephony/ims/feature/MmTelFeature$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$notifySrvccCompleted$28()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Tba1QHfiI76hoawD7HATzb-oodo(Landroid/telephony/ims/feature/MmTelFeature$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$notifySrvccFailed$29()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VYHm_zpoFh1HitFcVC398jcfdbE(Landroid/telephony/ims/feature/MmTelFeature$1;ILandroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$setUiTtyMode$8(ILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WUGYZs5WPXPeOSnThQYzg23vSLM(Landroid/telephony/ims/feature/MmTelFeature$1;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$shouldProcessCall$5([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$b5s0Epwd4vka264fz03FUyguxP8(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsUt;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$getUtInterface$6(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsUt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$hhASksHvkNfFTYA95Fl5MRrE36I(Landroid/telephony/ims/feature/MmTelFeature$1;IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$sendSms$19(IILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iRqIpHJXRglniTtdUXquJ8sVY3g(Landroid/telephony/ims/feature/MmTelFeature$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$getFeatureState$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$jwoC_U3sJ3tf_oC_fozZE2DxnQs(Landroid/telephony/ims/feature/MmTelFeature$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$onSmsReady$25()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mjIKnxhCY_6yNwki8h7Ae-7Ba4k(Landroid/telephony/ims/feature/MmTelFeature$1;I)Landroid/telephony/ims/MediaQualityStatus;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$queryMediaQualityStatus$17(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$okVOb91dsW1tGO4AitdyofQ2OaE(Landroid/telephony/ims/feature/MmTelFeature$1;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$queryCapabilityConfiguration$14(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sA58G5Xhm8grB0OucXWCh30bgmw(Landroid/telephony/ims/feature/MmTelFeature$1;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$getSmsFormat$24()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$sZxVZcjgRQltQbsppGJXxr2P7AE(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$getMultiEndpointInterface$9(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vVFdCjF0LrWfFCpHq0Gqdef1TPM(Landroid/telephony/ims/feature/MmTelFeature$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$queryCapabilityStatus$10()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/feature/MmTelFeature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;-><init>()V

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda30;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_14

    .line 405
    nop

    .line 406
    return-void

    .line 401
    :catch_14
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeature Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 403
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    const-string v2, "MmTelFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 434
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 435
    :catch_14
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeature Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 437
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 436
    const-string v3, "MmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 444
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 447
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 448
    :catch_14
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeature Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 450
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    const-string v3, "MmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .registers 8
    .param p2, "errorLogName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 457
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda14;-><init>(Ljava/util/function/Supplier;)V

    invoke-static {v0, p3}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 460
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_9
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_d} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v1

    .line 461
    :catch_e
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeature Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 463
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    const-string v3, "MmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 410
    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda36;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_13

    .line 415
    goto :goto_3a

    .line 412
    :catch_13
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeature Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    const-string v2, "MmTelFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3a
    return-void
.end method

.method private blacklist executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 421
    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda33;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p3}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_c} :catch_d

    .line 426
    goto :goto_34

    .line 423
    :catch_d
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeature Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    const-string v2, "MmTelFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_34
    return-void
.end method

.method private synthetic blacklist lambda$acknowledgeSms$21(III)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 319
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 320
    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III)V

    .line 319
    return-void
.end method

.method private synthetic blacklist lambda$acknowledgeSmsReport$23(III)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 333
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 334
    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$macknowledgeSmsReport(Landroid/telephony/ims/feature/MmTelFeature;III)V

    .line 333
    return-void
.end method

.method private synthetic blacklist lambda$acknowledgeSmsWithPdu$22(III[B)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B

    .line 326
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 327
    invoke-static {v0, p1, p2, p3, p4}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III[B)V

    .line 326
    return-void
.end method

.method private synthetic blacklist lambda$addCapabilityCallback$11(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 252
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 253
    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 252
    return-void
.end method

.method private synthetic blacklist lambda$changeCapabilitiesConfiguration$13(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 265
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 266
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 265
    return-void
.end method

.method private synthetic blacklist lambda$changeOfferedRtpHeaderExtensionTypes$3(Ljava/util/List;)V
    .registers 4
    .param p1, "types"    # Ljava/util/List;

    .line 141
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic blacklist lambda$createCallProfile$2(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 4
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 134
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$createCallSession$4(Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 151
    :catch_7
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 153
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$executeMethodAsync$31(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 400
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$34(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 432
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResultNoException$35(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 445
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResultNoException$36(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 458
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncNoException$32(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 411
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncNoException$33(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 422
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$getEcbmInterface$7(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsEcbm;
    .registers 4
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 200
    :catch_7
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 202
    const/4 v1, 0x0

    return-object v1
.end method

.method private synthetic blacklist lambda$getFeatureState$1()Ljava/lang/Integer;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getMultiEndpointInterface$9(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 4
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 225
    :catch_7
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 227
    const/4 v1, 0x0

    return-object v1
.end method

.method private synthetic blacklist lambda$getSmsFormat$24()Ljava/lang/String;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 341
    invoke-static {v0}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$mgetSmsFormat(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/lang/String;

    move-result-object v0

    .line 340
    return-object v0
.end method

.method private synthetic blacklist lambda$getUtInterface$6(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsUt;
    .registers 4
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 181
    :catch_7
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 183
    const/4 v1, 0x0

    return-object v1
.end method

.method private synthetic blacklist lambda$notifySrvccCanceled$30()V
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->notifySrvccCanceled()V

    return-void
.end method

.method private synthetic blacklist lambda$notifySrvccCompleted$28()V
    .registers 2

    .line 367
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->notifySrvccCompleted()V

    return-void
.end method

.method private synthetic blacklist lambda$notifySrvccFailed$29()V
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->notifySrvccFailed()V

    return-void
.end method

.method static synthetic blacklist lambda$notifySrvccStarted$26(Landroid/telephony/ims/aidl/ISrvccStartedCallback;Ljava/util/List;)V
    .registers 5
    .param p0, "cb"    # Landroid/telephony/ims/aidl/ISrvccStartedCallback;
    .param p1, "profiles"    # Ljava/util/List;

    .line 356
    :try_start_0
    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/ISrvccStartedCallback;->onSrvccCallNotified(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 359
    goto :goto_1d

    .line 357
    :catch_4
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSrvccCallNotified e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MmTelFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method private synthetic blacklist lambda$notifySrvccStarted$27(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/telephony/ims/aidl/ISrvccStartedCallback;

    .line 353
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->notifySrvccStarted(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onMemoryAvailable$20(I)V
    .registers 3
    .param p1, "token"    # I

    .line 313
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 314
    invoke-static {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$monMemoryAvailable(Landroid/telephony/ims/feature/MmTelFeature;I)V

    .line 313
    return-void
.end method

.method private synthetic blacklist lambda$onSmsReady$25()V
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$monSmsReady(Landroid/telephony/ims/feature/MmTelFeature;)V

    return-void
.end method

.method private synthetic blacklist lambda$queryCapabilityConfiguration$14(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 273
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$queryCapabilityStatus$10()Ljava/lang/Integer;
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 241
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->mCapabilities:I

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryMediaQualityStatus$17(I)Landroid/telephony/ims/MediaQualityStatus;
    .registers 3
    .param p1, "sessionType"    # I

    .line 293
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$removeCapabilityCallback$12(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 258
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 259
    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 258
    return-void
.end method

.method private synthetic blacklist lambda$sendSms$19(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .param p6, "pdu"    # [B

    .line 306
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 307
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "retry":Z
    .end local p6    # "pdu":[B
    .local v1, "token":I
    .local v2, "messageRef":I
    .local v3, "format":Ljava/lang/String;
    .local v4, "smsc":Ljava/lang/String;
    .local v5, "retry":Z
    .local v6, "pdu":[B
    invoke-static/range {v0 .. v6}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msendSms(Landroid/telephony/ims/feature/MmTelFeature;IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 306
    return-void
.end method

.method private synthetic blacklist lambda$setListener$0(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .registers 3
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 122
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msetListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$setMediaQualityThreshold$15(ILandroid/telephony/ims/MediaThreshold;)V
    .registers 4
    .param p1, "sessionType"    # I
    .param p2, "mediaThreshold"    # Landroid/telephony/ims/MediaThreshold;

    .line 281
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V

    return-void
.end method

.method private synthetic blacklist lambda$setMediaQualityThreshold$16(I)V
    .registers 3
    .param p1, "sessionType"    # I

    .line 284
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->clearMediaThreshold(I)V

    return-void
.end method

.method private synthetic blacklist lambda$setSmsListener$18(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 3
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 299
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msetSmsListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$setUiTtyMode$8(ILandroid/os/Message;)V
    .registers 4
    .param p1, "uiTtyMode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 215
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$shouldProcessCall$5([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 167
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist acknowledgeSms(III)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 319
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;III)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 321
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 319
    const-string v2, "acknowledgeSms"

    invoke-direct {p0, v0, v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 322
    return-void
.end method

.method public blacklist acknowledgeSmsReport(III)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 333
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;III)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 335
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 333
    const-string v2, "acknowledgeSmsReport"

    invoke-direct {p0, v0, v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 336
    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(III[B)V
    .registers 11
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B

    .line 326
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "result":I
    .end local p4    # "pdu":[B
    .local v2, "token":I
    .local v3, "messageRef":I
    .local v4, "result":I
    .local v5, "pdu":[B
    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;III[B)V

    iget-object p1, v1, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 328
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 326
    const-string p2, "acknowledgeSms"

    invoke-direct {p0, v0, p2, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 329
    return-void
.end method

.method public blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 252
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "addCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public blacklist changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 265
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "changeCapabilitiesConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public blacklist changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/List;)V

    const-string v1, "changeOfferedRtpHeaderExtensionTypes"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public blacklist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 5
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;II)V

    const-string v1, "createCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 148
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "createCallSession"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsCallSession;

    .line 157
    .local v1, "result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 161
    return-object v1

    .line 158
    :cond_19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 197
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getEcbmInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsEcbm;

    .line 206
    .local v1, "result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 210
    return-object v1

    .line 207
    :cond_19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getFeatureState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string v1, "getFeatureState"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 222
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getMultiEndpointInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 231
    .local v1, "result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 235
    return-object v1

    .line 232
    :cond_19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getSmsFormat()Ljava/lang/String;
    .registers 4

    .line 340
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 341
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 340
    const-string v2, "getSmsFormat"

    invoke-direct {p0, v0, v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 178
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getUtInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsUt;

    .line 187
    .local v1, "result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 191
    return-object v1

    .line 188
    :cond_19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist notifySrvccCanceled()V
    .registers 3

    .line 378
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string v1, "notifySrvccCanceled"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public blacklist notifySrvccCompleted()V
    .registers 3

    .line 366
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string v1, "notifySrvccCompleted"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public blacklist notifySrvccFailed()V
    .registers 3

    .line 372
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string v1, "notifySrvccFailed"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public blacklist notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/telephony/ims/aidl/ISrvccStartedCallback;

    .line 352
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V

    const-string v1, "notifySrvccStarted"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public blacklist onMemoryAvailable(I)V
    .registers 5
    .param p1, "token"    # I

    .line 313
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;I)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 314
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 313
    const-string v2, "onMemoryAvailable"

    invoke-direct {p0, v0, v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 315
    return-void
.end method

.method public blacklist onSmsReady()V
    .registers 4

    .line 346
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 347
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 346
    const-string v2, "onSmsReady"

    invoke-direct {p0, v0, v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 348
    return-void
.end method

.method public blacklist queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 273
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "queryCapabilityConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public blacklist queryCapabilityStatus()I
    .registers 3

    .line 240
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string/jumbo v1, "queryCapabilityStatus"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 243
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_15

    .line 244
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 246
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;
    .registers 4
    .param p1, "sessionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;I)V

    const-string/jumbo v1, "queryMediaQualityStatus"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/MediaQualityStatus;

    return-object v0
.end method

.method public blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 258
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "removeCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public blacklist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 15
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .param p6, "pdu"    # [B

    .line 306
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda22;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "retry":Z
    .end local p6    # "pdu":[B
    .local v2, "token":I
    .local v3, "messageRef":I
    .local v4, "format":Ljava/lang/String;
    .local v5, "smsc":Ljava/lang/String;
    .local v6, "retry":Z
    .local v7, "pdu":[B
    invoke-direct/range {v0 .. v7}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;IILjava/lang/String;Ljava/lang/String;Z[B)V

    iget-object p1, v1, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 308
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 306
    const-string/jumbo p2, "sendSms"

    invoke-direct {p0, v0, p2, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 309
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .registers 4
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 122
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public blacklist setMediaQualityThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    .registers 5
    .param p1, "sessionType"    # I
    .param p2, "mediaThreshold"    # Landroid/telephony/ims/MediaThreshold;

    .line 280
    if-eqz p2, :cond_e

    .line 281
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;ILandroid/telephony/ims/MediaThreshold;)V

    const-string/jumbo v1, "setMediaQualityThreshold"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_18

    .line 284
    :cond_e
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;I)V

    const-string v1, "clearMediaQualityThreshold"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 287
    :goto_18
    return-void
.end method

.method public blacklist setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 5
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 299
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsSmsListener;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 300
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "setSmsListener"

    invoke-direct {p0, v0, v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 301
    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_5
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setTerminalBasedCallWaitingStatus(Z)V
    :try_end_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_f
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    .line 391
    nop

    .line 392
    :try_start_b
    monitor-exit v0

    .line 393
    return-void

    .line 392
    :catchall_d
    move-exception v1

    goto :goto_27

    .line 389
    :catch_f
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/ims/feature/MmTelFeature$1;
    .end local p1    # "enabled":Z
    throw v2

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/telephony/ims/feature/MmTelFeature$1;
    .restart local p1    # "enabled":Z
    :catch_1a
    move-exception v1

    .line 388
    .local v1, "se":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/os/ServiceSpecificException;

    iget v3, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/ims/feature/MmTelFeature$1;
    .end local p1    # "enabled":Z
    throw v2

    .line 392
    .end local v1    # "se":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/telephony/ims/feature/MmTelFeature$1;
    .restart local p1    # "enabled":Z
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_d

    throw v1
.end method

.method public blacklist setUiTtyMode(ILandroid/os/Message;)V
    .registers 5
    .param p1, "uiTtyMode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;ILandroid/os/Message;)V

    const-string/jumbo v1, "setUiTtyMode"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public blacklist shouldProcessCall([Ljava/lang/String;)I
    .registers 4
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 166
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;[Ljava/lang/String;)V

    const-string/jumbo v1, "shouldProcessCall"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 168
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_15

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 171
    :cond_15
    const/4 v1, 0x1

    return v1
.end method
