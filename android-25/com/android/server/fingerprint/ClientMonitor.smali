.class public abstract Lcom/android/server/fingerprint/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final DEBUG:Z = true

.field protected static final ERROR_ESRCH:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupId:I

.field private mHalDeviceId:J

.field private mIsRestricted:Z

.field private mOwner:Ljava/lang/String;

.field private mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .locals 4
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    #@5
    .line 63
    iput-wide p2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    #@7
    .line 64
    iput-object p4, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    #@9
    .line 65
    iput-object p5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@b
    .line 66
    iput p6, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    #@d
    .line 67
    iput p7, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    #@f
    .line 68
    iput-boolean p8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    #@11
    .line 69
    iput-object p9, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    #@13
    .line 71
    const/4 v1, 0x0

    #@14
    :try_start_0
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 61
    :goto_0
    return-void

    #@18
    .line 72
    :catch_0
    move-exception v0

    #@19
    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@1c
    const-string/jumbo v2, "caught remote exception in linkToDeath: "

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 163
    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    #@3
    .line 164
    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@5
    .line 165
    const/4 v0, 0x1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/ClientMonitor;->onError(I)Z

    #@9
    .line 162
    return-void
.end method

.method public destroy()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 149
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 156
    :goto_0
    iput-object v5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    #@d
    .line 158
    :cond_0
    iput-object v5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@f
    .line 148
    return-void

    #@10
    .line 152
    :catch_0
    move-exception v0

    #@11
    .line 154
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "FingerprintService"

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "destroy(): "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ":"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    new-instance v3, Ljava/lang/Exception;

    #@31
    const-string/jumbo v4, "here"

    #@34
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@37
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 172
    const-string/jumbo v0, "FingerprintService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "removing leaked reference: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 173
    const/4 v0, 0x1

    #@21
    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/ClientMonitor;->onError(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 176
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@27
    .line 169
    return-void

    #@28
    .line 175
    :catchall_0
    move-exception v0

    #@29
    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@2c
    .line 175
    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public abstract getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
.end method

.method public final getGroupId()I
    .locals 1

    #@0
    .prologue
    .line 205
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    #@2
    return v0
.end method

.method public final getHalDeviceId()J
    .locals 2

    #@0
    .prologue
    .line 185
    iget-wide v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    #@2
    return-wide v0
.end method

.method public final getIsRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    #@2
    return v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@2
    return-object v0
.end method

.method public final getTargetUserId()I
    .locals 1

    #@0
    .prologue
    .line 201
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    #@2
    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(I)Z
    .locals 6
    .param p1, "acquiredInfo"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 115
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 116
    return v5

    #@7
    .line 118
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@9
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    #@c
    move-result-wide v2

    #@d
    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 125
    if-nez p1, :cond_1

    #@12
    .line 126
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    #@15
    .line 119
    :cond_1
    return v4

    #@16
    .line 120
    :catch_0
    move-exception v0

    #@17
    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    #@1a
    const-string/jumbo v2, "Failed to invoke sendAcquired:"

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 125
    if-nez p1, :cond_2

    #@22
    .line 126
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    #@25
    .line 122
    :cond_2
    return v5

    #@26
    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@27
    .line 125
    if-nez p1, :cond_3

    #@29
    .line 126
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    #@2c
    .line 123
    :cond_3
    throw v1
.end method

.method public abstract onAuthenticated(II)Z
.end method

.method public abstract onEnrollResult(III)Z
.end method

.method public abstract onEnumerationResult(II)Z
.end method

.method public onError(I)Z
    .locals 4
    .param p1, "error"    # I

    #@0
    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@6
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    #@9
    move-result-wide v2

    #@a
    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 145
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 141
    :catch_0
    move-exception v0

    #@10
    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@13
    const-string/jumbo v2, "Failed to invoke sendError:"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method public abstract onRemoved(II)Z
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method
