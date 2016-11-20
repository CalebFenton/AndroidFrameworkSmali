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
.field private final cipher:Ljavax/crypto/Cipher;

.field private data:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    #@0
    .prologue
    .line 1322
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 1323
    iput-object p1, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    #@5
    .line 1322
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 1398
    new-instance v0, Ljava/security/InvalidParameterException;

    #@2
    const-string/jumbo v1, "Parameters not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1338
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@6
    .line 1339
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@9
    .line 1337
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1344
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@6
    .line 1345
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@9
    .line 1343
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1328
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@6
    .line 1329
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1330
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@c
    const/16 v1, 0x80

    #@e
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@11
    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@13
    .line 1327
    :goto_0
    return-void

    #@14
    .line 1332
    :cond_0
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@19
    goto :goto_0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 1393
    new-instance v0, Ljava/security/InvalidParameterException;

    #@2
    const-string/jumbo v1, "Parameters not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineSign()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1367
    :try_start_0
    iget-object v2, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    #@2
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v2

    #@6
    return-object v2

    #@7
    .line 1370
    :catch_0
    move-exception v0

    #@8
    .line 1371
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/SignatureException;

    #@a
    const-string/jumbo v3, "doFinal() failed"

    #@d
    invoke-direct {v2, v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v2

    #@11
    .line 1368
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    #@12
    .line 1369
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/security/SignatureException;

    #@14
    const-string/jumbo v3, "doFinal() failed"

    #@17
    invoke-direct {v2, v3, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1349
    new-array v0, v2, [B

    #@4
    aput-byte p1, v0, v1

    #@6
    invoke-virtual {p0, v0, v1, v2}, Ljava/security/Signature$CipherAdapter;->engineUpdate([BII)V

    #@9
    .line 1348
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1354
    iget-object v1, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1355
    iget-object v1, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@6
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@9
    .line 1356
    return-void

    #@a
    .line 1358
    :cond_0
    iget-object v1, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    #@c
    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    #@f
    move-result-object v0

    #@10
    .line 1359
    .local v0, "out":[B
    if-eqz v0, :cond_1

    #@12
    array-length v1, v0

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1360
    new-instance v1, Ljava/security/SignatureException;

    #@17
    .line 1361
    const-string/jumbo v2, "Cipher unexpectedly returned data"

    #@1a
    .line 1360
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 1353
    :cond_1
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1378
    :try_start_0
    iget-object v4, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    #@2
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@5
    move-result-object v3

    #@6
    .line 1379
    .local v3, "out":[B
    iget-object v4, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v0

    #@c
    .line 1380
    .local v0, "dataBytes":[B
    iget-object v4, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    #@e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@11
    .line 1381
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v4

    #@15
    return v4

    #@16
    .line 1386
    .end local v0    # "dataBytes":[B
    .end local v3    # "out":[B
    :catch_0
    move-exception v2

    #@17
    .line 1387
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/SignatureException;

    #@19
    const-string/jumbo v5, "doFinal() failed"

    #@1c
    invoke-direct {v4, v5, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v4

    #@20
    .line 1382
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v1

    #@21
    .line 1385
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const/4 v4, 0x0

    #@22
    return v4
.end method
