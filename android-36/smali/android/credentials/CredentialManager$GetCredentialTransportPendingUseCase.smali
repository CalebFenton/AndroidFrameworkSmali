.class public Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;
.super Landroid/credentials/IGetCredentialCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GetCredentialTransportPendingUseCase"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 682
    invoke-direct {p0}, Landroid/credentials/IGetCredentialCallback$Stub;-><init>()V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    .line 682
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/credentials/CredentialManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 718
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_17

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 721
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v2, p1, p2}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    nop

    .line 725
    .end local v0    # "identity":J
    goto :goto_1e

    .line 723
    .restart local v0    # "identity":J
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    throw v2

    .line 726
    .end local v0    # "identity":J
    :cond_17
    const-string v0, "CredentialManager"

    const-string v1, "Unexpected onError call before the show invocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_1e
    return-void
.end method

.method public blacklist onPendingIntent(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 695
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_a

    .line 696
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v0, p1}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onPendingIntent(Landroid/app/PendingIntent;)V

    goto :goto_11

    .line 698
    :cond_a
    const-string v0, "CredentialManager"

    const-string v1, "Unexpected onPendingIntent call before the show invocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_11
    return-void
.end method

.method public blacklist onResponse(Landroid/credentials/GetCredentialResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/credentials/GetCredentialResponse;

    .line 704
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_17

    .line 705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 707
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v2, p1}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onResponse(Landroid/credentials/GetCredentialResponse;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    .line 709
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    nop

    .line 711
    .end local v0    # "identity":J
    goto :goto_1e

    .line 709
    .restart local v0    # "identity":J
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    throw v2

    .line 712
    .end local v0    # "identity":J
    :cond_17
    const-string v0, "CredentialManager"

    const-string v1, "Unexpected onResponse call before the show invocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_1e
    return-void
.end method

.method public blacklist setCallback(Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    .line 686
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-nez v0, :cond_7

    .line 687
    iput-object p1, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    .line 691
    return-void

    .line 689
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback has already been set once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
