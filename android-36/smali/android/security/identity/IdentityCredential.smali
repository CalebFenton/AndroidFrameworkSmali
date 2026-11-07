.class public abstract Landroid/security/identity/IdentityCredential;
.super Ljava/lang/Object;
.source "IdentityCredential.java"


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist createEphemeralKeyPair()Ljava/security/KeyPair;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist decryptMessageFromReader([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/MessageDecryptionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist delete([B)[B
    .registers 3
    .param p1, "challenge"    # [B

    .line 500
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist encryptMessageToReader([B)[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getAuthKeysNeedingCertification()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getAuthenticationDataUsageCount()[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getAuthenticationKeyMetadata()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/identity/AuthenticationKeyMetadata;",
            ">;"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist getCredentialKeyCertificateChain()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getCredstoreOperationHandle()J
.end method

.method public abstract whitelist getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;[B[B)",
            "Landroid/security/identity/ResultData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/SessionTranscriptMismatchException;,
            Landroid/security/identity/NoAuthenticationKeyAvailableException;,
            Landroid/security/identity/InvalidReaderSignatureException;,
            Landroid/security/identity/EphemeralPublicKeyNotFoundException;,
            Landroid/security/identity/InvalidRequestMessageException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist proveOwnership([B)[B
    .registers 3
    .param p1, "challenge"    # [B

    .line 468
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist setAllowUsingExhaustedKeys(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setAllowUsingExpiredKeys(Z)V
    .registers 3
    .param p1, "allowUsingExpiredKeys"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist setAvailableAuthenticationKeys(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setAvailableAuthenticationKeys(IIJ)V
    .registers 6
    .param p1, "keyCount"    # I
    .param p2, "maxUsesPerKey"    # I
    .param p3, "minValidTimeMillis"    # J

    .line 555
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setIncrementKeyUsageCount(Z)V
    .registers 3
    .param p1, "incrementKeyUsageCount"    # Z

    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;Ljava/time/Instant;[B)V
    .registers 5
    .param p1, "authenticationKey"    # Ljava/security/cert/X509Certificate;
    .param p2, "expirationDate"    # Ljava/time/Instant;
    .param p3, "staticAuthData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist update(Landroid/security/identity/PersonalizationData;)[B
    .registers 3
    .param p1, "personalizationData"    # Landroid/security/identity/PersonalizationData;

    .line 526
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
