.class Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;
.super Landroid/credentials/IPrepareGetCredentialCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareGetCredentialTransport"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/PrepareGetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;


# direct methods
.method public static synthetic blacklist $r8$lambda$pb90C33y3fp-sd04OipgbeoGF9o(Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->lambda$onResponse$0(Landroid/credentials/PrepareGetCredentialResponseInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uUDsYsUSKk6xsEe9CusmCkvVkas(Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->lambda$onError$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "getCredentialTransport"    # Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/PrepareGetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;",
            "Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;",
            ")V"
        }
    .end annotation

    .line 647
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/PrepareGetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    invoke-direct {p0}, Landroid/credentials/IPrepareGetCredentialCallback$Stub;-><init>()V

    .line 648
    iput-object p1, p0, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 649
    iput-object p2, p0, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    .line 650
    iput-object p3, p0, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    .line 651
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/credentials/CredentialManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 669
    iget-object v0, p0, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/GetCredentialException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$0(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    .registers 5
    .param p1, "response"    # Landroid/credentials/PrepareGetCredentialResponseInternal;

    .line 657
    iget-object v0, p0, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/PrepareGetCredentialResponse;

    iget-object v2, p0, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    invoke-direct {v1, p1, v2}, Landroid/credentials/PrepareGetCredentialResponse;-><init>(Landroid/credentials/PrepareGetCredentialResponseInternal;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 668
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 671
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    nop

    .line 673
    return-void

    .line 671
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    throw v2
.end method

.method public blacklist onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    .registers 6
    .param p1, "response"    # Landroid/credentials/PrepareGetCredentialResponseInternal;

    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 657
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;Landroid/credentials/PrepareGetCredentialResponseInternal;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 660
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    nop

    .line 662
    return-void

    .line 660
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    throw v2
.end method
