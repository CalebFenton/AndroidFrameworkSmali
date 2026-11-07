.class Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;
.super Landroid/credentials/IGetCandidateCredentialsCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetCandidateCredentialsTransport"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCandidateCredentialsResponse;",
            "Landroid/credentials/GetCandidateCredentialsException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$2sZmWKAY0sdfxvAhDpyhljRZIeA(Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->lambda$onError$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M-94CRU_STODezHdtFf99RzEq4s(Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;Landroid/credentials/GetCandidateCredentialsResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->lambda$onResponse$0(Landroid/credentials/GetCandidateCredentialsResponse;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCandidateCredentialsResponse;",
            "Landroid/credentials/GetCandidateCredentialsException;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCandidateCredentialsResponse;Landroid/credentials/GetCandidateCredentialsException;>;"
    invoke-direct {p0}, Landroid/credentials/IGetCandidateCredentialsCallback$Stub;-><init>()V

    .line 742
    iput-object p1, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 743
    iput-object p2, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->mCallback:Landroid/os/OutcomeReceiver;

    .line 744
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 761
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/GetCandidateCredentialsException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/GetCandidateCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$0(Landroid/credentials/GetCandidateCredentialsResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/credentials/GetCandidateCredentialsResponse;

    .line 750
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 760
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 764
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    nop

    .line 766
    return-void

    .line 764
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    throw v2
.end method

.method public blacklist onResponse(Landroid/credentials/GetCandidateCredentialsResponse;)V
    .registers 6
    .param p1, "response"    # Landroid/credentials/GetCandidateCredentialsResponse;

    .line 748
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 750
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;Landroid/credentials/GetCandidateCredentialsResponse;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 752
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    nop

    .line 754
    return-void

    .line 752
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    throw v2
.end method
