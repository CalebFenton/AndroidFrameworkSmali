.class Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;
.super Landroid/credentials/ISetEnabledProvidersCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetEnabledProvidersTransport"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$9sDeDpd_wP_sQbhwBKXaAT-s2Ho(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$G-WHag0TyYL20_z5HbyUBNPNEHM(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;)V
    .registers 1

    invoke-direct {p0}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onResponse$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qn1to3LDs1GjFODhw-Tma77uPZQ(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/Void;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onResponse$0(Ljava/lang/Void;)V

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
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;)V"
        }
    .end annotation

    .line 928
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/credentials/SetEnabledProvidersException;>;"
    invoke-direct {p0}, Landroid/credentials/ISetEnabledProvidersCallback$Stub;-><init>()V

    .line 929
    iput-object p1, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 930
    iput-object p2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    .line 931
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 957
    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/SetEnabledProvidersException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/SetEnabledProvidersException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$0(Ljava/lang/Void;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Void;

    .line 936
    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$1()V
    .registers 3

    .line 946
    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 956
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 960
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 961
    nop

    .line 962
    return-void

    .line 960
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 961
    throw v2
.end method

.method public blacklist onResponse()V
    .registers 5

    .line 944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 946
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda2;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 948
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    nop

    .line 950
    return-void

    .line 948
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    throw v2
.end method

.method public blacklist onResponse(Ljava/lang/Void;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Void;

    .line 934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 936
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/Void;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 939
    nop

    .line 940
    return-void

    .line 938
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 939
    throw v2
.end method
