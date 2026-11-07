.class public abstract Landroid/security/keystore2/AndroidKeyStorePublicKey;
.super Landroid/security/keystore2/AndroidKeyStoreKey;
.source "AndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final blacklist mCertificate:[B

.field private final blacklist mCertificateChain:[B

.field private final blacklist mEncoded:[B


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 14
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/system/keystore2/KeyMetadata;
    .param p3, "x509EncodedForm"    # [B
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;

    .line 41
    iget-object v0, p2, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iget-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget-object v5, p2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p4    # "algorithm":Ljava/lang/String;
    .end local p5    # "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    .local v2, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v6, "algorithm":Ljava/lang/String;
    .local v7, "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {v1 .. v7}, Landroid/security/keystore2/AndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 42
    iget-object p1, p2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iput-object p1, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    .line 43
    iget-object p1, p2, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    iput-object p1, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    .line 44
    iput-object p3, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mEncoded:[B

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 90
    return v0

    .line 92
    :cond_4
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 93
    return v2

    .line 100
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    .line 102
    .local v1, "other":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    iget-object v4, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    iget-object v4, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0
.end method

.method public blacklist getCertificate()[B
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    return-object v0
.end method

.method public blacklist getCertificateChain()[B
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "X.509"

    return-object v0
.end method

.method abstract blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 77
    const/16 v0, 0x1f

    .line 78
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 80
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 81
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 82
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 84
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
