.class Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;
.super Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$Dfj7sgyD-5HdZ9FWZwlcVXlCpGM(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$getRegistrationTechnology$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Nj7rFvtwYgoAPgcQqPUknT1UxfI(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$removeEmergencyRegistrationCallback$3(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j2fVJOK-txsKGyNQQR2gpj3cTcI(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$triggerDeregistration$8(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k1WjUkDP1Xo4DXepsPpBdUTTcBc(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$removeRegistrationCallback$4(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$o5Nb0_kFiRBd_t8U0mriTlu9wK0(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$triggerSipDelegateDeregistration$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$py5Q3MbzCwqdjAJ8E_DVUSImELw(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$triggerFullNetworkRegistration$5(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$scKJRD0nOoaCrcH9Wr13Pm3PHKQ(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$addEmergencyRegistrationCallback$2(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v3mZNfHfncHDQGJHXZQv1x9GMKg(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$triggerUpdateSipDelegateRegistration$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x48VI2Awwnxu1u4xM1ToQxG3GWU(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$addRegistrationCallback$1(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;-><init>()V

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

    .line 296
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_14

    .line 302
    nop

    .line 303
    return-void

    .line 298
    :catch_14
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsRegistrationImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
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

    .line 317
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 320
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 321
    :catch_14
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsRegistrationImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 323
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string v3, "ImsRegistrationImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 307
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_13

    .line 312
    goto :goto_3a

    .line 309
    :catch_13
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsRegistrationImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3a
    return-void
.end method

.method private synthetic blacklist lambda$addEmergencyRegistrationCallback$2(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$maddEmergencyRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 245
    goto :goto_a

    .line 243
    :catch_6
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method private synthetic blacklist lambda$addRegistrationCallback$1(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$maddRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 228
    goto :goto_a

    .line 226
    :catch_6
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$9(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 297
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$11(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 318
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncNoException$10(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 308
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$getRegistrationTechnology$0()Ljava/lang/Integer;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmRegistrationAttributes(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    if-nez v0, :cond_a

    .line 216
    const/4 v0, -0x1

    goto :goto_14

    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmRegistrationAttributes(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v0

    .line 215
    :goto_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$removeEmergencyRegistrationCallback$3(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 257
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$mremoveEmergencyRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$removeRegistrationCallback$4(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 263
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$mremoveRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$triggerDeregistration$8(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 288
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 289
    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->triggerDeregistration(I)V

    .line 288
    return-void
.end method

.method private synthetic blacklist lambda$triggerFullNetworkRegistration$5(ILjava/lang/String;)V
    .registers 4
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 270
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->triggerFullNetworkRegistration(ILjava/lang/String;)V

    .line 269
    return-void
.end method

.method private synthetic blacklist lambda$triggerSipDelegateDeregistration$7()V
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 283
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->triggerSipDelegateDeregistration()V

    .line 282
    return-void
.end method

.method private synthetic blacklist lambda$triggerUpdateSipDelegateRegistration$6()V
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 277
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateSipDelegateRegistration()V

    .line 276
    return-void
.end method


# virtual methods
.method public blacklist addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 240
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addEmergencyRegistrationCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 251
    return-void

    .line 249
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 223
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addRegistrationCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 234
    return-void

    .line 232
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist getRegistrationTechnology()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V

    const-string v1, "getRegistrationTechnology"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    const-string/jumbo v1, "removeEmergencyRegistrationCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public blacklist removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    const-string/jumbo v1, "removeRegistrationCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public blacklist triggerDeregistration(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 288
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;I)V

    const-string/jumbo v1, "triggerDeregistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public blacklist triggerFullNetworkRegistration(ILjava/lang/String;)V
    .registers 5
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 269
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;ILjava/lang/String;)V

    const-string/jumbo v1, "triggerFullNetworkRegistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public blacklist triggerSipDelegateDeregistration()V
    .registers 3

    .line 282
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V

    const-string/jumbo v1, "triggerSipDelegateDeregistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public blacklist triggerUpdateSipDelegateRegistration()V
    .registers 3

    .line 276
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V

    const-string/jumbo v1, "triggerUpdateSipDelegateRegistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 278
    return-void
.end method
