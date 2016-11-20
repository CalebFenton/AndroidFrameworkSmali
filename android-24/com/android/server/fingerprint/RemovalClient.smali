.class public abstract Lcom/android/server/fingerprint/RemovalClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "RemovalClient.java"


# instance fields
.field private mFingerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "fingerId"    # I
    .param p7, "groupId"    # I
    .param p8, "userId"    # I
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;

    #@0
    .prologue
    move-object v2, p0

    #@1
    move-object v3, p1

    #@2
    move-wide v4, p2

    #@3
    move-object/from16 v6, p4

    #@5
    move-object/from16 v7, p5

    #@7
    move/from16 v8, p8

    #@9
    move/from16 v9, p7

    #@b
    move/from16 v10, p9

    #@d
    move-object/from16 v11, p10

    #@f
    .line 37
    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    #@12
    .line 38
    move/from16 v0, p6

    #@14
    iput v0, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    #@16
    .line 36
    return-void
.end method

.method private sendRemoved(II)Z
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 72
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@4
    move-result-object v1

    #@5
    .line 74
    .local v1, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v1, :cond_0

    #@7
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getHalDeviceId()J

    #@a
    move-result-wide v4

    #@b
    invoke-interface {v1, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 80
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    #@10
    const/4 v2, 0x1

    #@11
    :cond_1
    return v2

    #@12
    .line 77
    :catch_0
    move-exception v0

    #@13
    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    #@16
    const-string/jumbo v4, "Failed to notify Removed:"

    #@19
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 100
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onAuthenticated() called for remove!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 101
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "rem"    # I

    #@0
    .prologue
    .line 94
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onEnrollResult() called for remove!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 95
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public onEnumerationResult(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onEnumerationResult() called for remove!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 107
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public onRemoved(II)Z
    .locals 3
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 85
    if-eqz p1, :cond_0

    #@2
    .line 86
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    .line 87
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getTargetUserId()I

    #@d
    move-result v2

    #@e
    .line 86
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    #@11
    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    #@14
    move-result v0

    #@15
    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/RemovalClient;->sendRemoved(II)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public start()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 43
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@4
    move-result-object v0

    #@5
    .line 46
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_start_0
    iget v3, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    #@7
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    #@a
    move-result v4

    #@b
    invoke-interface {v0, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    #@e
    move-result v2

    #@f
    .line 47
    .local v2, "result":I
    if-eqz v2, :cond_0

    #@11
    .line 48
    const-string/jumbo v3, "FingerprintService"

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "startRemove with id = "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    iget v5, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " failed, result="

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 49
    const/4 v3, 0x1

    #@39
    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/RemovalClient;->onError(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 50
    return v2

    #@3d
    .line 52
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    #@3e
    .line 53
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    #@41
    const-string/jumbo v4, "startRemove failed"

    #@44
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 55
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v6
.end method

.method public stop(Z)I
    .locals 1
    .param p1, "initiatedByClient"    # Z

    #@0
    .prologue
    .line 62
    if-eqz p1, :cond_0

    #@2
    .line 63
    const/4 v0, 0x5

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/RemovalClient;->onError(I)Z

    #@6
    .line 65
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0
.end method
