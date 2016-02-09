.class public Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;
.super Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 47
    const/16 v0, 0x20

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;-><init>(II)V

    #@7
    .line 46
    return-void
.end method


# virtual methods
.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@3
    .line 54
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    #@5
    const/16 v1, 0x80

    #@7
    if-eq v0, v1, :cond_0

    #@9
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    #@b
    const/16 v1, 0xc0

    #@d
    if-eq v0, v1, :cond_0

    #@f
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    #@11
    const/16 v1, 0x100

    #@13
    if-eq v0, v1, :cond_0

    #@15
    .line 55
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@17
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Unsupported key size: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 57
    const-string/jumbo v2, ". Supported: 128, 192, 256."

    #@2c
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 55
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 52
    :cond_0
    return-void
.end method
