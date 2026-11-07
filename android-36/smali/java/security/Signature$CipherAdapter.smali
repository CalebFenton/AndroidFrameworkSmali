.class Ljava/security/Signature$CipherAdapter;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CipherAdapter"
.end annotation


# instance fields
.field private final greylist-max-o cipher:Ljavax/crypto/Cipher;

.field private greylist-max-o data:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor greylist-max-o <init>(Ljavax/crypto/Cipher;)V
    .registers 2
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 1487
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 1488
    iput-object p1, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    .line 1489
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 1563
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1503
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1504
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    .line 1505
    return-void
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1509
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1510
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    .line 1511
    return-void
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1493
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1494
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_14

    .line 1495
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    goto :goto_19

    .line 1497
    :cond_14
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1499
    :goto_19
    return-void
.end method

.method protected whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 1558
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSign()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1532
    const-string v0, "doFinal() failed"

    :try_start_2
    iget-object v1, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0
    :try_end_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_8} :catch_10
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 1535
    :catch_9
    move-exception v1

    .line 1536
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1533
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_10
    move-exception v1

    .line 1534
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 5
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1514
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Ljava/security/Signature$CipherAdapter;->engineUpdate([BII)V

    .line 1515
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_a

    .line 1520
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1521
    return-void

    .line 1523
    :cond_a
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    .line 1524
    .local v0, "out":[B
    if-eqz v0, :cond_1e

    array-length v1, v0

    if-nez v1, :cond_16

    goto :goto_1e

    .line 1525
    :cond_16
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Cipher unexpectedly returned data"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1528
    :cond_1e
    :goto_1e
    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .registers 5
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1543
    :try_start_0
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 1544
    .local v0, "out":[B
    iget-object v1, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1545
    .local v1, "dataBytes":[B
    iget-object v2, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1546
    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v2
    :try_end_15
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_15} :catch_16

    return v2

    .line 1551
    .end local v0    # "out":[B
    .end local v1    # "dataBytes":[B
    :catch_16
    move-exception v0

    .line 1552
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "doFinal() failed"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1547
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1f
    move-exception v0

    .line 1550
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    const/4 v1, 0x0

    return v1
.end method
