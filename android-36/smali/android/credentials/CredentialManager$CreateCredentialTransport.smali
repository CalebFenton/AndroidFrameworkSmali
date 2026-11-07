.class Landroid/credentials/CredentialManager$CreateCredentialTransport;
.super Landroid/credentials/ICreateCredentialCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateCredentialTransport"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$5mhD1tkv7KX2IWpzYNaveajQR1A(Landroid/credentials/CredentialManager$CreateCredentialTransport;Landroid/credentials/CreateCredentialResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onResponse$1(Landroid/credentials/CreateCredentialResponse;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yety3gNDS1nKzZpnR4497vHlH6s(Landroid/credentials/CredentialManager$CreateCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jCNHHuA-6MgGFlxspTStn37ZebE(Landroid/credentials/CredentialManager$CreateCredentialTransport;)V
    .registers 1

    invoke-direct {p0}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onPendingIntent$0()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 838
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/CreateCredentialResponse;Landroid/credentials/CreateCredentialException;>;"
    invoke-direct {p0}, Landroid/credentials/ICreateCredentialCallback$Stub;-><init>()V

    .line 839
    iput-object p1, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mContext:Landroid/content/Context;

    .line 840
    iput-object p2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 841
    iput-object p3, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    .line 842
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/credentials/CredentialManager$CreateCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 879
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/CreateCredentialException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPendingIntent$0()V
    .registers 4

    .line 856
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/CreateCredentialException;

    const-string v2, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    invoke-direct {v1, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$1(Landroid/credentials/CreateCredentialResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/credentials/CreateCredentialResponse;

    .line 868
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 878
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 881
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    nop

    .line 883
    return-void

    .line 881
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    throw v2
.end method

.method public blacklist onPendingIntent(Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 847
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-static {}, Landroid/credentials/CredentialManager;->-$$Nest$sfgetOPTIONS_SENDER_BAL_OPTIN()Landroid/os/Bundle;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_11} :catch_12

    .line 861
    goto :goto_43

    .line 849
    :catch_12
    move-exception v0

    move-object v1, v0

    .line 850
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentSender() failed for intent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 852
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    const-string v2, "CredentialManager"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 856
    .local v2, "identity":J
    :try_start_35
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda2;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_44

    .line 859
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    nop

    .line 862
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v2    # "identity":J
    :goto_43
    return-void

    .line 859
    .restart local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    .restart local v2    # "identity":J
    :catchall_44
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    throw v0
.end method

.method public blacklist onResponse(Landroid/credentials/CreateCredentialResponse;)V
    .registers 6
    .param p1, "response"    # Landroid/credentials/CreateCredentialResponse;

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 868
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;Landroid/credentials/CreateCredentialResponse;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    nop

    .line 872
    return-void

    .line 870
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    throw v2
.end method
