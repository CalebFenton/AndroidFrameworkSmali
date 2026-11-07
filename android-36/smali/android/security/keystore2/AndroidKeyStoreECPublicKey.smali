.class public Landroid/security/keystore2/AndroidKeyStoreECPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# instance fields
.field private final blacklist mParams:Ljava/security/spec/ECParameterSpec;

.field private final blacklist mW:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/ECPublicKey;)V
    .registers 12
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/system/keystore2/KeyMetadata;
    .param p3, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;
    .param p4, "info"    # Ljava/security/interfaces/ECPublicKey;

    .line 54
    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .end local p3    # "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    .local v1, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v2, "metadata":Landroid/system/keystore2/KeyMetadata;
    .local v4, "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLandroid/security/KeyStoreSecurityLevel;Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V

    .line 55
    const-string p1, "X.509"

    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 59
    return-void

    .line 56
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported key export format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 57
    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLandroid/security/KeyStoreSecurityLevel;Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V
    .registers 13
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/system/keystore2/KeyMetadata;
    .param p3, "x509EncodedForm"    # [B
    .param p4, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;
    .param p5, "params"    # Ljava/security/spec/ECParameterSpec;
    .param p6, "w"    # Ljava/security/spec/ECPoint;

    .line 46
    const-string v4, "EC"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .end local p3    # "x509EncodedForm":[B
    .end local p4    # "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    .local v1, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v2, "metadata":Landroid/system/keystore2/KeyMetadata;
    .local v3, "x509EncodedForm":[B
    .local v5, "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 47
    iput-object p5, v0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    .line 48
    iput-object p6, v0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .registers 13

    .line 63
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    .line 64
    .local v1, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_4e

    aget-object v4, v0, v3

    .line 66
    .local v4, "a":Landroid/system/keystore2/Authorization;
    :try_start_c
    iget-object v5, v4, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v5, v5, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v6, 0x1000000a

    if-ne v5, v6, :cond_28

    .line 67
    iget-object v0, v4, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 68
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v0

    .line 67
    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getEcCurveFromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getCurveSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_2c

    move-object v1, v0

    .line 69
    move-object v11, v1

    goto :goto_4f

    .line 74
    :cond_28
    nop

    .line 64
    .end local v4    # "a":Landroid/system/keystore2/Authorization;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 71
    .restart local v4    # "a":Landroid/system/keystore2/Authorization;
    :catch_2c
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse EC curve "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 73
    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "a":Landroid/system/keystore2/Authorization;
    :cond_4e
    move-object v11, v1

    .line 76
    .end local v1    # "params":Ljava/security/spec/ECParameterSpec;
    .local v11, "params":Ljava/security/spec/ECParameterSpec;
    :goto_4f
    new-instance v5, Landroid/security/keystore2/AndroidKeyStoreECPrivateKey;

    .line 77
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-wide v7, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v9

    .line 78
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v10

    invoke-direct/range {v5 .. v11}, Landroid/security/keystore2/AndroidKeyStoreECPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Landroid/security/KeyStoreSecurityLevel;Ljava/security/spec/ECParameterSpec;)V

    .line 76
    return-object v5
.end method

.method public whitelist test-api getW()Ljava/security/spec/ECPoint;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    return-object v0
.end method
