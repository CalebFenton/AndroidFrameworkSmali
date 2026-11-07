.class public abstract Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;
.super Lcom/android/org/conscrypt/OpenSSLAeadCipher;
.source "OpenSSLAeadCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM_SIV;,
        Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM;
    }
.end annotation


# static fields
.field private static final blacklist AES_BLOCK_SIZE:I = 0x10


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 2
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 36
    return-void
.end method


# virtual methods
.method blacklist checkSupportedKeySize(I)V
    .registers 5
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 40
    sparse-switch p1, :sswitch_data_24

    .line 45
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (must be 16 or 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :sswitch_22
    return-void

    nop

    :sswitch_data_24
    .sparse-switch
        0x10 -> :sswitch_22
        0x20 -> :sswitch_22
    .end sparse-switch
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;->iv:[B

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 77
    return-object v1

    .line 80
    :cond_6
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;->tagLengthInBytes:I

    mul-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;->iv:[B

    invoke-static {v0, v2}, Lcom/android/org/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 82
    .local v0, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    if-nez v0, :cond_17

    .line 86
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    return-object v1

    .line 90
    :cond_17
    :try_start_17
    const-string v2, "GCM"

    invoke-static {v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 91
    .local v2, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_20} :catch_23
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_17 .. :try_end_20} :catch_21

    .line 92
    return-object v2

    .line 96
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_21
    move-exception v2

    .line 98
    .local v2, "e":Ljava/security/spec/InvalidParameterSpecException;
    return-object v1

    .line 93
    .end local v2    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_23
    move-exception v1

    .line 95
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "GCM not supported"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Error;

    throw v2
.end method

.method blacklist getBaseCipherName()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "AES"

    return-object v0
.end method

.method blacklist getCipherBlockSize()I
    .registers 2

    .line 57
    const/16 v0, 0x10

    return v0
.end method

.method blacklist getOutputSizeForFinal(I)I
    .registers 4
    .param p1, "inputLen"    # I

    .line 107
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;->bufCount:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;->tagLengthInBytes:I

    add-int/2addr v0, v1

    return v0

    .line 110
    :cond_d
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;->bufCount:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;->tagLengthInBytes:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected blacklist getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 63
    if-eqz p1, :cond_e

    .line 64
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->fromGCMParameters(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 65
    .local v0, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz v0, :cond_9

    .line 66
    return-object v0

    .line 68
    :cond_9
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 70
    .end local v0    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method
