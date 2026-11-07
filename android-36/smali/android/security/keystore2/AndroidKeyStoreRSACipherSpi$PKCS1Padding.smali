.class public final Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$PKCS1Padding;
.super Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PKCS1Padding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 109
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;-><init>(I)V

    .line 110
    return-void
.end method


# virtual methods
.method protected blacklist adjustConfigForEncryptingWithPrivateKey()Z
    .registers 2

    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$PKCS1Padding;->setKeymasterPurposeOverride(I)V

    .line 117
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$PKCS1Padding;->setKeymasterPaddingOverride(I)V

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->finalize()V

    return-void
.end method

.method protected final blacklist getAdditionalEntropyAmountForBegin()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist getAdditionalEntropyAmountForFinish()I
    .registers 2

    .line 155
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$PKCS1Padding;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$PKCS1Padding;->getModulusSizeBytes()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method protected blacklist initAlgorithmSpecificParameters()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method protected blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .registers 5
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 137
    if-nez p1, :cond_3

    .line 141
    return-void

    .line 138
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". No parameters supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 127
    if-nez p1, :cond_3

    .line 131
    return-void

    .line 128
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". No parameters supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
