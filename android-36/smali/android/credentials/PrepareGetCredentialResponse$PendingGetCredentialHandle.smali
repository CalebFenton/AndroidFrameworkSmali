.class public final Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/PrepareGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingGetCredentialHandle"
.end annotation


# instance fields
.field private final blacklist mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor blacklist <init>(Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "transport"    # Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    .line 72
    iput-object p2, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mPendingIntent:Landroid/app/PendingIntent;

    .line 73
    return-void
.end method

.method static synthetic blacklist lambda$show$0(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 80
    new-instance v0, Landroid/credentials/GetCredentialException;

    const-string v1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$show$1(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 115
    new-instance v0, Landroid/credentials/GetCredentialException;

    const-string v1, "android.credentials.GetCredentialException.TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method blacklist show(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_d

    .line 80
    new-instance v0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void

    .line 85
    :cond_d
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    new-instance v1, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1;

    invoke-direct {v1, p0, p1, p3, p4}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1;-><init>(Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0, v1}, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->setCallback(Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;)V

    .line 111
    :try_start_17
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {}, Landroid/credentials/PrepareGetCredentialResponse;->-$$Nest$sfgetOPTIONS_SENDER_BAL_OPTIN()Landroid/os/Bundle;

    move-result-object v7
    :try_end_21
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_21} :catch_2d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    :try_start_26
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_29
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 117
    goto :goto_40

    .line 113
    :catch_2a
    move-exception v0

    move-object p1, v0

    goto :goto_30

    .end local v1    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_2d
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 114
    .restart local v1    # "context":Landroid/content/Context;
    .local p1, "e":Landroid/content/IntentSender$SendIntentException;
    :goto_30
    const-string v0, "CredentialManager"

    const-string/jumbo v2, "startIntentSender() failed for intent for show()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance v0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    .end local p1    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_40
    return-void
.end method
