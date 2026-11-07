.class Landroid/credentials/CredentialManager$ClearCredentialStateTransport;
.super Landroid/credentials/IClearCredentialStateCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCredentialStateTransport"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/ClearCredentialStateException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$s3PzQrCJfMrUO_8_ka0IB5J22aA(Landroid/credentials/CredentialManager$ClearCredentialStateTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;->lambda$onError$0(Ljava/lang/String;Ljava/lang/String;)V

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
            "Landroid/credentials/ClearCredentialStateException;",
            ">;)V"
        }
    .end annotation

    .line 893
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/credentials/ClearCredentialStateException;>;"
    invoke-direct {p0}, Landroid/credentials/IClearCredentialStateCallback$Stub;-><init>()V

    .line 894
    iput-object p1, p0, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 895
    iput-object p2, p0, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;->mCallback:Landroid/os/OutcomeReceiver;

    .line 896
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 913
    iget-object v0, p0, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/ClearCredentialStateException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/ClearCredentialStateException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 910
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 912
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$ClearCredentialStateTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$ClearCredentialStateTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$ClearCredentialStateTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 916
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    nop

    .line 918
    return-void

    .line 916
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    throw v2
.end method

.method public blacklist onSuccess()V
    .registers 5

    .line 900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 902
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;->mCallback:Landroid/os/OutcomeReceiver;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    .line 904
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    nop

    .line 906
    return-void

    .line 904
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    throw v2
.end method
