.class public abstract Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DirectRSA"
.end annotation


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 2
    .param p1, "padding"    # I

    .line 386
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 387
    return-void
.end method


# virtual methods
.method blacklist doCryptoOperation([B[B)I
    .registers 6
    .param p1, "tmpBuf"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 393
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->encrypting:Z

    if-eqz v0, :cond_24

    .line 394
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v0, :cond_16

    .line 395
    array-length v0, p1

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 396
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 395
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v0

    .local v0, "resultSize":I
    goto :goto_44

    .line 398
    .end local v0    # "resultSize":I
    :cond_16
    array-length v0, p1

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 399
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 398
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v0

    .restart local v0    # "resultSize":I
    goto :goto_44

    .line 403
    .end local v0    # "resultSize":I
    :cond_24
    :try_start_24
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v0, :cond_36

    .line 404
    array-length v0, p1

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 405
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 404
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v0

    .restart local v0    # "resultSize":I
    goto :goto_43

    .line 407
    .end local v0    # "resultSize":I
    :cond_36
    array-length v0, p1

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 408
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 407
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v0
    :try_end_43
    .catch Ljava/security/SignatureException; {:try_start_24 .. :try_end_43} :catch_45

    .line 414
    .restart local v0    # "resultSize":I
    :goto_43
    nop

    .line 416
    :goto_44
    return v0

    .line 410
    .end local v0    # "resultSize":I
    :catch_45
    move-exception v0

    .line 411
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 412
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 413
    throw v1
.end method
