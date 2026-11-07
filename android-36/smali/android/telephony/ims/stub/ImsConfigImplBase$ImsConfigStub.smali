.class public Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
.super Landroid/telephony/ims/aidl/IImsConfig$Stub;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsConfigImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsConfigStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/stub/ImsConfigImplBase;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-o mProvisionedIntValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProvisionedStringValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-Mx3zXashXOuNkxV3bkC7C6XlLI(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$setConfigInt$4(IILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$0Z8ona2dK4v9WzpCemVy_4PMdUQ(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$addRcsConfigCallback$9(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CgQ8IfTmF1GBDKFHLEO7WNbgP8E(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$setConfigString$5(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$G4MhBbE58l-I4VZ_8ofM_6C--hg(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyIntImsConfigChanged$13(IILjava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LbMfnvOi1uAfnnvmU5XCdunHRZo(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$addImsConfigCallback$0(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RYdTjamFc2Nf85khtPsnIK9_9lk(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;[BZLjava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyRcsAutoConfigurationReceived$7([BZLjava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$StKGJ0oFnsZi7NFMhrlzQtA6kLo(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$updateImsCarrierConfigs$6(Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VqA3p0l4u7HWk4wl645nThOxbLw(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$removeImsConfigCallback$1(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ah31-O5PQ7H6rY_AOYc5uZNOVow(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$setRcsClientConfiguration$12(Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cBCyiOMBtebiVTrWc6bsLNd0jyI(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$removeRcsConfigCallback$10(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fRkG3Q-ktpppoNNVvDmxNj5UUVc(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyStringImsConfigChanged$14(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gLFABTmwutW5UAFkWeJQb3UQKFw(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$triggerRcsReconfiguration$11(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tLSF7tc1HZFkOnktjSS5PHaLQ2Q(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$getConfigString$3(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xeRe4cXnR8uz2Gsuiu2v5Sjr24c(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$getConfigInt$2(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xsVOBLsk-ZJ4cjui-PhILQ1_kiU(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyRcsAutoConfigurationRemoved$8(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "imsConfigImplBase"    # Landroid/telephony/ims/stub/ImsConfigImplBase;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 98
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    .line 99
    iput-object p2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    .line 102
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

    .line 500
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_e} :catch_10

    .line 506
    nop

    .line 507
    return-void

    .line 502
    :catch_10
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsConfigImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    const-string v2, "ImsConfigImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
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

    .line 511
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 514
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_b
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_f} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_f} :catch_10

    return-object v1

    .line 515
    :catch_10
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsConfigImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 517
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    const-string v3, "ImsConfigImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    .line 320
    .local v0, "ref":Landroid/telephony/ims/stub/ImsConfigImplBase;
    if-eqz v0, :cond_b

    .line 323
    return-object v0

    .line 321
    :cond_b
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Fail to get ImsConfigImpl"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic blacklist lambda$addImsConfigCallback$0(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$maddImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 112
    goto :goto_c

    .line 110
    :catch_8
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private synthetic blacklist lambda$addRcsConfigCallback$9(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 388
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$maddRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 391
    goto :goto_c

    .line 389
    :catch_8
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$15(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 501
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$16(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 512
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getConfigInt$2(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .registers 8
    .param p1, "item"    # I
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 151
    const/4 v0, -0x1

    .line 152
    .local v0, "returnVal":I
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 154
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_48

    return-object v2

    .line 157
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getConfigInt(I)I

    move-result v2

    move v0, v2

    .line 158
    const/4 v2, -0x1

    if-eq v0, v2, :cond_37

    .line 159
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_37} :catch_3e
    .catchall {:try_start_1e .. :try_end_37} :catchall_48

    .line 164
    :cond_37
    nop

    .line 166
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_48

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 161
    :catch_3e
    move-exception v2

    .line 162
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 166
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_48

    throw v2
.end method

.method private synthetic blacklist lambda$getConfigString$3(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;
    .registers 7
    .param p1, "item"    # I
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 193
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_3b

    move-object v0, v2

    .end local v0    # "returnVal":Ljava/lang/String;
    .local v2, "returnVal":Ljava/lang/String;
    goto :goto_33

    .line 196
    .end local v2    # "returnVal":Ljava/lang/String;
    .restart local v0    # "returnVal":Ljava/lang/String;
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getConfigString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 197
    if-eqz v0, :cond_32

    .line 198
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_32} :catch_35
    .catchall {:try_start_1e .. :try_end_32} :catchall_3b

    .line 203
    :cond_32
    nop

    .line 205
    :goto_33
    :try_start_33
    monitor-exit v1

    .line 206
    return-object v0

    .line 200
    :catch_35
    move-exception v2

    .line 201
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 202
    monitor-exit v1

    return-object v0

    .line 205
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method private synthetic blacklist lambda$notifyIntImsConfigChanged$13(IILjava/util/concurrent/atomic/AtomicReference;)V
    .registers 5
    .param p1, "item"    # I
    .param p2, "value"    # I
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 456
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 459
    goto :goto_8

    .line 457
    :catch_4
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    return-void
.end method

.method private synthetic blacklist lambda$notifyRcsAutoConfigurationReceived$7([BZLjava/util/concurrent/atomic/AtomicReference;)V
    .registers 5
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 333
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$monNotifyRcsAutoConfigurationReceived(Landroid/telephony/ims/stub/ImsConfigImplBase;[BZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 336
    goto :goto_c

    .line 334
    :catch_8
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private synthetic blacklist lambda$notifyRcsAutoConfigurationRemoved$8(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 351
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$monNotifyRcsAutoConfigurationRemoved(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 354
    goto :goto_c

    .line 352
    :catch_8
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 355
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private synthetic blacklist lambda$notifyStringImsConfigChanged$14(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 473
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 476
    goto :goto_8

    .line 474
    :catch_4
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 477
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    return-void
.end method

.method private synthetic blacklist lambda$removeImsConfigCallback$1(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mremoveImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 129
    goto :goto_c

    .line 127
    :catch_8
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private synthetic blacklist lambda$removeRcsConfigCallback$10(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 405
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mremoveRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 408
    goto :goto_c

    .line 406
    :catch_8
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private synthetic blacklist lambda$setConfigInt$4(IILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .registers 9
    .param p1, "item"    # I
    .param p2, "value"    # I
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 232
    const/4 v0, -0x1

    .line 234
    .local v0, "returnVal":I
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5e

    .line 235
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setConfig(II)I

    move-result v2

    move v0, v2

    .line 237
    if-nez v0, :cond_26

    .line 238
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 240
    :cond_26
    const-string v2, "ImsConfigImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set provision value of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed with error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_5b

    .line 244
    :try_start_53
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5a} :catch_5e

    return-object v1

    .line 243
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    .end local v0    # "returnVal":I
    .end local p0    # "this":Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    .end local p1    # "item":I
    .end local p2    # "value":I
    .end local p3    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;
    :try_start_5d
    throw v2
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_5e} :catch_5e

    .line 246
    .restart local v0    # "returnVal":I
    .restart local p0    # "this":Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    .restart local p1    # "item":I
    .restart local p2    # "value":I
    .restart local p3    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;
    :catch_5e
    move-exception v1

    .line 247
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private synthetic blacklist lambda$setConfigString$5(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .registers 8
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 276
    const/4 v0, -0x1

    .line 278
    .local v0, "returnVal":I
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_2d

    .line 279
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setConfig(ILjava/lang/String;)I

    move-result v2

    move v0, v2

    .line 281
    if-nez v0, :cond_21

    .line 282
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2a

    .line 285
    :try_start_22
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2d

    return-object v1

    .line 284
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .end local v0    # "returnVal":I
    .end local p0    # "this":Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    .end local p1    # "item":I
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;
    :try_start_2c
    throw v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2d} :catch_2d

    .line 287
    .restart local v0    # "returnVal":I
    .restart local p0    # "this":Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    .restart local p1    # "item":I
    .restart local p2    # "value":Ljava/lang/String;
    .restart local p3    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;
    :catch_2d
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private synthetic blacklist lambda$setRcsClientConfiguration$12(Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 439
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 442
    goto :goto_c

    .line 440
    :catch_8
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private synthetic blacklist lambda$triggerRcsReconfiguration$11(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 422
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->triggerAutoConfiguration()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 425
    goto :goto_c

    .line 423
    :catch_8
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 426
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private synthetic blacklist lambda$updateImsCarrierConfigs$6(Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 306
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 309
    goto :goto_c

    .line 307
    :catch_8
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private greylist-max-o notifyImsConfigChanged(II)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V

    .line 365
    return-void
.end method

.method private greylist-max-o notifyImsConfigChanged(ILjava/lang/String;)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V

    .line 369
    return-void
.end method


# virtual methods
.method public greylist-max-o addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 107
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addImsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 119
    return-void

    .line 116
    :cond_16
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception addImsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 386
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addRcsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 398
    return-void

    .line 395
    :cond_16
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception addRcsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist clearCachedValue()V
    .registers 3

    .line 489
    const-string v0, "ImsConfigImplBase"

    const-string v1, "clearCachedValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_a
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 492
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v1
.end method

.method public greylist-max-o getConfigInt(I)I
    .registers 6
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 150
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getConfigInt"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 170
    .local v1, "retVal":I
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 175
    return v1

    .line 171
    :cond_1d
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception getConfigString"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public greylist-max-o getConfigString(I)Ljava/lang/String;
    .registers 6
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 189
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getConfigString"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    .local v1, "retVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 214
    return-object v1

    .line 210
    :cond_19
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception getConfigString"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist notifyIntImsConfigChanged(II)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 454
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "notifyIntImsConfigChanged"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 466
    return-void

    .line 463
    :cond_16
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyIntImsConfigChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyRcsAutoConfigurationReceived([BZ)V
    .registers 6
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 331
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;[BZLjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "notifyRcsAutoConfigurationReceived"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 343
    return-void

    .line 340
    :cond_16
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyRcsAutoConfigurationReceived"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyRcsAutoConfigurationRemoved()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 349
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "notifyRcsAutoConfigurationRemoved"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 361
    return-void

    .line 358
    :cond_16
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyRcsAutoConfigurationRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyStringImsConfigChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 471
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "notifyStringImsConfigChanged"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 483
    return-void

    .line 480
    :cond_16
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyStringImsConfigChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public greylist-max-o removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 124
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "removeImsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 136
    return-void

    .line 133
    :cond_17
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception removeImsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 403
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "removeRcsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 415
    return-void

    .line 412
    :cond_17
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception removeRcsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public greylist-max-o setConfigInt(II)I
    .registers 7
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 231
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setConfigInt"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 252
    .local v1, "retVal":I
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 257
    return v1

    .line 253
    :cond_1e
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception setConfigInt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public greylist-max-o setConfigString(ILjava/lang/String;)I
    .registers 7
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 275
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setConfigString"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 293
    .local v1, "retVal":I
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 298
    return v1

    .line 294
    :cond_1e
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception setConfigInt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .registers 5
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 437
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setRcsClientConfiguration"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 449
    return-void

    .line 446
    :cond_17
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception setRcsClientConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist triggerRcsReconfiguration()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 420
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "triggerRcsReconfiguration"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 432
    return-void

    .line 429
    :cond_17
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception triggerRcsReconfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method protected blacklist updateCachedValue(II)V
    .registers 7
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 372
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected blacklist updateCachedValue(ILjava/lang/String;)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 304
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "updateImsCarrierConfigs"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 316
    return-void

    .line 313
    :cond_17
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception updateImsCarrierConfigs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method
