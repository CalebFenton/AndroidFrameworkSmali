.class public abstract Lcom/android/server/fingerprint/EnumerateClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnumerateClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct/range {p0 .. p9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    #@3
    .line 33
    return-void
.end method


# virtual methods
.method public onEnumerationResult(II)Z
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 82
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@5
    move-result-object v1

    #@6
    .line 83
    .local v1, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-nez v1, :cond_0

    #@8
    .line 84
    return v2

    #@9
    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getHalDeviceId()J

    #@c
    move-result-wide v4

    #@d
    invoke-interface {v1, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 90
    :goto_0
    if-nez p1, :cond_1

    #@12
    :goto_1
    return v2

    #@13
    .line 87
    :catch_0
    move-exception v0

    #@14
    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    #@17
    const-string/jumbo v5, "Failed to notify enumerated:"

    #@1a
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0

    #@1e
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    move v2, v3

    #@1f
    .line 90
    goto :goto_1
.end method

.method public start()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 39
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@4
    move-result-object v0

    #@5
    .line 42
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enumerate()I

    #@8
    move-result v2

    #@9
    .line 43
    .local v2, "result":I
    if-eqz v2, :cond_0

    #@b
    .line 44
    const-string/jumbo v3, "FingerprintService"

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "start enumerate for user "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getTargetUserId()I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 45
    const-string/jumbo v5, " failed, result="

    #@25
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 46
    const/4 v3, 0x1

    #@35
    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/EnumerateClient;->onError(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 47
    return v2

    #@39
    .line 49
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    #@3a
    .line 50
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    #@3d
    const-string/jumbo v4, "startRemove failed"

    #@40
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    .line 52
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v6
.end method

.method public stop(Z)I
    .locals 7
    .param p1, "initiatedByClient"    # Z

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    .line 57
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@5
    move-result-object v0

    #@6
    .line 58
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    #@8
    .line 59
    const-string/jumbo v3, "FingerprintService"

    #@b
    const-string/jumbo v4, "stopAuthentication: no fingeprintd!"

    #@e
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 60
    return v6

    #@12
    .line 63
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnumeration()I

    #@15
    move-result v2

    #@16
    .line 64
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@18
    .line 65
    const-string/jumbo v3, "FingerprintService"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "stop enumeration failed, result="

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 66
    return v2

    #@33
    .line 68
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    #@34
    .line 69
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    #@37
    const-string/jumbo v4, "stop enumeration failed"

    #@3a
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 70
    return v6

    #@3e
    .line 74
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "result":I
    :cond_1
    if-eqz p1, :cond_2

    #@40
    .line 75
    const/4 v3, 0x5

    #@41
    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/EnumerateClient;->onError(I)Z

    #@44
    .line 77
    :cond_2
    return v4
.end method
