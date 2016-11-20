.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# instance fields
.field private mOpId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "targetUserId"    # I
    .param p7, "groupId"    # I
    .param p8, "opId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;

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
    move/from16 v8, p6

    #@9
    move/from16 v9, p7

    #@b
    move/from16 v10, p10

    #@d
    move-object/from16 v11, p11

    #@f
    .line 44
    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    #@12
    .line 45
    move-wide/from16 v0, p8

    #@14
    iput-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    #@16
    .line 43
    return-void
.end method


# virtual methods
.method public abstract handleFailedAttempt()Z
.end method

.method public onAuthenticated(II)Z
    .locals 11
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 50
    const/4 v10, 0x0

    #@1
    .line 51
    .local v10, "result":Z
    if-eqz p1, :cond_2

    #@3
    const/4 v6, 0x1

    #@4
    .line 53
    .local v6, "authenticated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@7
    move-result-object v9

    #@8
    .line 54
    .local v9, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v9, :cond_5

    #@a
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0xfc

    #@10
    invoke-static {v1, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    #@13
    .line 58
    if-nez v6, :cond_3

    #@15
    .line 59
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    #@18
    move-result-wide v2

    #@19
    invoke-interface {v9, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 77
    :goto_1
    if-nez v6, :cond_6

    #@1e
    .line 78
    if-eqz v9, :cond_0

    #@20
    .line 79
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    #@23
    move-result-object v1

    #@24
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    #@27
    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()Z

    #@2a
    move-result v8

    #@2b
    .line 84
    .local v8, "inLockoutMode":Z
    if-eqz v8, :cond_1

    #@2d
    .line 86
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    #@30
    const-string/jumbo v2, "Forcing lockout (fp driver code should do this!)"

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 87
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    #@39
    move-result-wide v2

    #@3a
    .line 88
    const/4 v1, 0x7

    #@3b
    .line 87
    invoke-interface {v9, v2, v3, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3e
    .line 93
    :cond_1
    :goto_2
    or-int/2addr v10, v8

    #@3f
    .line 101
    .end local v8    # "inLockoutMode":Z
    .local v10, "result":Z
    :goto_3
    return v10

    #@40
    .line 51
    .end local v6    # "authenticated":Z
    .end local v9    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .local v10, "result":Z
    :cond_2
    const/4 v6, 0x0

    #@41
    .restart local v6    # "authenticated":Z
    goto :goto_0

    #@42
    .line 62
    .restart local v9    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :cond_3
    :try_start_2
    const-string/jumbo v1, "FingerprintService"

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "onAuthenticated(owner="

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    .line 63
    const-string/jumbo v3, ", id="

    #@5c
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    .line 63
    const-string/jumbo v3, ", gp="

    #@67
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    .line 63
    const-string/jumbo v3, ")"

    #@72
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 65
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    #@80
    move-result v1

    #@81
    if-nez v1, :cond_4

    #@83
    .line 66
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    #@85
    const-string/jumbo v1, ""

    #@88
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    #@8b
    move-result-wide v4

    #@8c
    move v2, p2

    #@8d
    move v3, p1

    #@8e
    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    #@91
    .line 68
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    #@94
    move-result-wide v2

    #@95
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    #@98
    move-result v1

    #@99
    invoke-interface {v9, v2, v3, v0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@9c
    goto :goto_1

    #@9d
    .line 70
    :catch_0
    move-exception v7

    #@9e
    .line 71
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@a1
    const-string/jumbo v2, "Failed to notify Authenticated:"

    #@a4
    invoke-static {v1, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a7
    .line 72
    const/4 v10, 0x1

    #@a8
    goto/16 :goto_1

    #@aa
    .line 67
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v0, 0x0

    #@ab
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_4

    #@ac
    .line 75
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_5
    const/4 v10, 0x1

    #@ad
    goto/16 :goto_1

    #@af
    .line 89
    .restart local v8    # "inLockoutMode":Z
    :catch_1
    move-exception v7

    #@b0
    .line 90
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@b3
    const-string/jumbo v2, "Failed to notify lockout:"

    #@b6
    invoke-static {v1, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b9
    goto :goto_2

    #@ba
    .line 95
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "inLockoutMode":Z
    :cond_6
    if-eqz v9, :cond_7

    #@bc
    .line 96
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    #@bf
    move-result-object v1

    #@c0
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    #@c3
    .line 98
    :cond_7
    const/4 v1, 0x1

    #@c4
    or-int/2addr v10, v1

    #@c5
    .line 99
    .local v10, "result":Z
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    #@c8
    goto/16 :goto_3
.end method

.method public onEnrollResult(III)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "rem"    # I

    #@0
    .prologue
    .line 153
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 154
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
    .line 165
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 166
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public onRemoved(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 159
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onRemoved() called for authenticate!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 160
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public start()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 109
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@5
    move-result-object v0

    #@6
    .line 110
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    #@8
    .line 111
    const-string/jumbo v3, "FingerprintService"

    #@b
    const-string/jumbo v4, "start authentication: no fingeprintd!"

    #@e
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 112
    return v7

    #@12
    .line 115
    :cond_0
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    #@14
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    #@17
    move-result v3

    #@18
    invoke-interface {v0, v4, v5, v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    #@1b
    move-result v2

    #@1c
    .line 116
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@1e
    .line 117
    const-string/jumbo v3, "FingerprintService"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "startAuthentication failed, result="

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
    .line 118
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v4, "fingeprintd_auth_start_error"

    #@3f
    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@42
    .line 119
    const/4 v3, 0x1

    #@43
    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(I)Z

    #@46
    .line 120
    return v2

    #@47
    .line 122
    :cond_1
    const-string/jumbo v3, "FingerprintService"

    #@4a
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v5, "client "

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    const-string/jumbo v5, " is authenticating..."

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 127
    return v6

    #@6d
    .line 123
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    #@6e
    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    #@71
    const-string/jumbo v4, "startAuthentication failed"

    #@74
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@77
    .line 125
    return v7
.end method

.method public stop(Z)I
    .locals 8
    .param p1, "initiatedByClient"    # Z

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 132
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@5
    move-result-object v0

    #@6
    .line 133
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    #@8
    .line 134
    const-string/jumbo v3, "FingerprintService"

    #@b
    const-string/jumbo v4, "stopAuthentication: no fingeprintd!"

    #@e
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 135
    return v7

    #@12
    .line 138
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    #@15
    move-result v2

    #@16
    .line 139
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@18
    .line 140
    const-string/jumbo v3, "FingerprintService"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "stopAuthentication failed, result="

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

    #@32
    .line 141
    return v2

    #@33
    .line 143
    :cond_1
    const-string/jumbo v3, "FingerprintService"

    #@36
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v5, "client "

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    const-string/jumbo v5, " is no longer authenticating"

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 148
    return v6

    #@59
    .line 144
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    #@5a
    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    #@5d
    const-string/jumbo v4, "stopAuthentication failed"

    #@60
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    .line 146
    return v7
.end method
