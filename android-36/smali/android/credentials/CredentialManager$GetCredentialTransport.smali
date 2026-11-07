.class Landroid/credentials/CredentialManager$GetCredentialTransport;
.super Landroid/credentials/IGetCredentialCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetCredentialTransport"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$E5Fc6kUXgetc1GZR4bhZqQETuzo(Landroid/credentials/CredentialManager$GetCredentialTransport;)V
    .registers 1

    invoke-direct {p0}, Landroid/credentials/CredentialManager$GetCredentialTransport;->lambda$onPendingIntent$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KZ8h0IzCqtZJ9s6sISPZis-rA-4(Landroid/credentials/CredentialManager$GetCredentialTransport;Landroid/credentials/GetCredentialResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$GetCredentialTransport;->lambda$onResponse$1(Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_rg2Q59c21DJrPoh5aAnwNR78wQ(Landroid/credentials/CredentialManager$GetCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$GetCredentialTransport;->lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V

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
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 779
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    invoke-direct {p0}, Landroid/credentials/IGetCredentialCallback$Stub;-><init>()V

    .line 780
    iput-object p1, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mContext:Landroid/content/Context;

    .line 781
    iput-object p2, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 782
    iput-object p3, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    .line 783
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/credentials/CredentialManager$GetCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 820
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/GetCredentialException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPendingIntent$0()V
    .registers 4

    .line 797
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/GetCredentialException;

    const-string v2, "android.credentials.GetCredentialException.TYPE_UNKNOWN"

    invoke-direct {v1, v2}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$1(Landroid/credentials/GetCredentialResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/credentials/GetCredentialResponse;

    .line 809
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 819
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$GetCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    nop

    .line 824
    return-void

    .line 822
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    throw v2
.end method

.method public blacklist onPendingIntent(Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 788
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mContext:Landroid/content/Context;

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

    .line 802
    goto :goto_43

    .line 790
    :catch_12
    move-exception v0

    move-object v1, v0

    .line 791
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentSender() failed for intent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 793
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    const-string v2, "CredentialManager"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 797
    .local v2, "identity":J
    :try_start_35
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;-><init>(Landroid/credentials/CredentialManager$GetCredentialTransport;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_44

    .line 800
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    nop

    .line 803
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v2    # "identity":J
    :goto_43
    return-void

    .line 800
    .restart local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    .restart local v2    # "identity":J
    :catchall_44
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    throw v0
.end method

.method public blacklist onResponse(Landroid/credentials/GetCredentialResponse;)V
    .registers 6
    .param p1, "response"    # Landroid/credentials/GetCredentialResponse;

    .line 807
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 809
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$GetCredentialTransport;Landroid/credentials/GetCredentialResponse;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 811
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    nop

    .line 813
    return-void

    .line 811
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    throw v2
.end method
