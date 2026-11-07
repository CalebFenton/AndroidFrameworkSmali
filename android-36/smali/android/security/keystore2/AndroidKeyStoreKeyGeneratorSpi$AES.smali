.class public Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;
.super Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 58
    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;-><init>(II)V

    .line 59
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 65
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_37

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    const/16 v1, 0xc0

    if-eq v0, v1, :cond_37

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_16

    goto :goto_37

    .line 66
    :cond_16
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: 128, 192, 256."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_37
    :goto_37
    return-void
.end method
