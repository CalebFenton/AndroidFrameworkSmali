.class public Landroid/security/keystore/recovery/RecoverySession;
.super Ljava/lang/Object;
.source "RecoverySession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o SESSION_ID_LENGTH_BYTES:I = 0x10

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoverySession"


# instance fields
.field private final greylist-max-o mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

.field private final greylist-max-o mSessionId:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/lang/String;)V
    .registers 3
    .param p1, "recoveryController"    # Landroid/security/keystore/recovery/RecoveryController;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 58
    iput-object p2, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private greylist-max-o getKeysFromGrants(Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 170
    .local p1, "grantAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 171
    .local v0, "keysByAlias":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/Key;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    .local v2, "alias":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "grantAlias":Ljava/lang/String;
    :try_start_23
    iget-object v4, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v4, v3}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4
    :try_end_29
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_23 .. :try_end_29} :catch_2e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_23 .. :try_end_29} :catch_2e

    .line 183
    .local v4, "key":Ljava/security/Key;
    nop

    .line 184
    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "grantAlias":Ljava/lang/String;
    .end local v4    # "key":Ljava/security/Key;
    goto :goto_11

    .line 176
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "grantAlias":Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 177
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v6

    .line 178
    const-string v7, "Failed to get key \'%s\' from grant \'%s\'"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 186
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "grantAlias":Ljava/lang/String;
    :cond_41
    return-object v0
.end method

.method static greylist-max-o newInstance(Landroid/security/keystore/recovery/RecoveryController;)Landroid/security/keystore/recovery/RecoverySession;
    .registers 3
    .param p0, "recoveryController"    # Landroid/security/keystore/recovery/RecoveryController;

    .line 66
    new-instance v0, Landroid/security/keystore/recovery/RecoverySession;

    invoke-static {}, Landroid/security/keystore/recovery/RecoverySession;->newSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/keystore/recovery/RecoverySession;-><init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/lang/String;)V

    return-object v0
.end method

.method private static greylist-max-o newSessionId()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 74
    .local v0, "secureRandom":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 75
    .local v1, "sessionId":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 76
    const/4 v2, 0x0

    invoke-static {v1, v2}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->closeSession(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    .line 208
    goto :goto_14

    .line 206
    :catch_c
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecoverySession"

    const-string v2, "Unexpected error trying to close session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    return-void
.end method

.method greylist-max-o getSessionId()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist recoverKeyChainSnapshot([BLjava/util/List;)Ljava/util/Map;
    .registers 6
    .param p1, "recoveryKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/SessionExpiredException;,
            Landroid/security/keystore/recovery/DecryptionFailedException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 150
    .local p2, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 151
    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    .line 152
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 153
    .local v0, "grantAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Landroid/security/keystore/recovery/RecoverySession;->getKeysFromGrants(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_39
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 156
    .end local v0    # "grantAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_11
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_2f

    .line 160
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_28

    .line 161
    new-instance v1, Landroid/security/keystore/recovery/SessionExpiredException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/SessionExpiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_28
    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v1, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 158
    :cond_2f
    new-instance v1, Landroid/security/keystore/recovery/DecryptionFailedException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/DecryptionFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_39
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist start(Ljava/lang/String;Ljava/security/cert/CertPath;[B[BLjava/util/List;)[B
    .registers 13
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "verifierCertPath"    # Ljava/security/cert/CertPath;
    .param p3, "vaultParams"    # [B
    .param p4, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/cert/CertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 110
    .local p5, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    nop

    .line 111
    invoke-static {p2}, Landroid/security/keystore/recovery/RecoveryCertPath;->createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v3

    .line 113
    .local v3, "recoveryCertPath":Landroid/security/keystore/recovery/RecoveryCertPath;
    :try_start_5
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 114
    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_3e
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_d} :catch_1c

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "rootCertificateAlias":Ljava/lang/String;
    .end local p3    # "vaultParams":[B
    .end local p4    # "vaultChallenge":[B
    .end local p5    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    .local v2, "rootCertificateAlias":Ljava/lang/String;
    .local v4, "vaultParams":[B
    .local v5, "vaultChallenge":[B
    .local v6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    :try_start_11
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/widget/ILockSettings;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_15} :catch_16

    .line 121
    .local p1, "recoveryClaim":[B
    return-object p1

    .line 124
    .end local p1    # "recoveryClaim":[B
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .line 122
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_44

    .line 124
    .end local v2    # "rootCertificateAlias":Ljava/lang/String;
    .end local v4    # "vaultParams":[B
    .end local v5    # "vaultChallenge":[B
    .end local v6    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    .local p1, "rootCertificateAlias":Ljava/lang/String;
    .restart local p3    # "vaultParams":[B
    .restart local p4    # "vaultChallenge":[B
    .restart local p5    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    :catch_1c
    move-exception v0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 125
    .end local p3    # "vaultParams":[B
    .end local p4    # "vaultChallenge":[B
    .end local p5    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    .restart local v2    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v4    # "vaultParams":[B
    .restart local v5    # "vaultChallenge":[B
    .restart local v6    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_22
    iget p3, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p4, 0x19

    if-eq p3, p4, :cond_36

    iget p3, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p4, 0x1c

    if-ne p3, p4, :cond_2f

    goto :goto_36

    .line 129
    :cond_2f
    iget-object p3, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {p3, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p3

    throw p3

    .line 127
    :cond_36
    :goto_36
    new-instance p3, Ljava/security/cert/CertificateException;

    const-string p4, "Invalid certificate for recovery session"

    invoke-direct {p3, p4, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 122
    .end local v2    # "rootCertificateAlias":Ljava/lang/String;
    .end local v4    # "vaultParams":[B
    .end local v5    # "vaultChallenge":[B
    .end local v6    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    .local p1, "rootCertificateAlias":Ljava/lang/String;
    .restart local p3    # "vaultParams":[B
    .restart local p4    # "vaultChallenge":[B
    .restart local p5    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    :catch_3e
    move-exception v0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 123
    .end local p3    # "vaultParams":[B
    .end local p4    # "vaultChallenge":[B
    .end local p5    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    .restart local v2    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v4    # "vaultParams":[B
    .restart local v5    # "vaultChallenge":[B
    .restart local v6    # "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    .local p1, "e":Landroid/os/RemoteException;
    :goto_44
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method
