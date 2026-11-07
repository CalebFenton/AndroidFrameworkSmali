.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtEncrData"
.end annotation


# static fields
.field private static final blacklist CIPHER_ALGORITHM:Ljava/lang/String; = "AES_128/CBC/NoPadding"

.field public static final blacklist CIPHER_BLOCK_LENGTH:I = 0x10


# instance fields
.field public final blacklist encrData:[B


# direct methods
.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1260
    const/16 v0, 0x82

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(IILjava/nio/ByteBuffer;)V

    .line 1261
    add-int/lit8 v0, p1, -0x4

    .line 1262
    .local v0, "encrDataLength":I
    rem-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_15

    .line 1266
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;->encrData:[B

    .line 1267
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;->encrData:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1268
    return-void

    .line 1263
    :cond_15
    new-instance v1, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v2, "encrData len needs to be multiple of 16B"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>([B[B[B)V
    .registers 6
    .param p1, "plainData"    # [B
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1272
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x82

    invoke-direct {p0, v1, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(II)V

    .line 1273
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_15

    .line 1277
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;->doCipherOperation([B[B[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;->encrData:[B

    .line 1278
    return-void

    .line 1274
    :cond_15
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "encrData len needs to be multiple of 16B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist doCipherOperation([B[B[BI)[B
    .registers 11
    .param p1, "inputBytes"    # [B
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .param p4, "opmode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1304
    const-string v0, "AES_128/CBC/NoPadding"

    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_6} :catch_2e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_6} :catch_2e

    .line 1308
    .local v1, "cipherAlgorithm":Ljavax/crypto/Cipher;
    nop

    .line 1310
    :try_start_7
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1311
    .local v2, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1312
    .local v0, "ivParam":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1, p4, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1313
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1314
    .local v3, "inputBuffer":Ljava/nio/ByteBuffer;
    array-length v4, p1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1315
    .local v4, "outputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v3, v4}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1316
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5
    :try_end_24
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_24} :catch_25
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_24} :catch_25
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_24} :catch_25
    .catch Ljavax/crypto/ShortBufferException; {:try_start_7 .. :try_end_24} :catch_25
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_24} :catch_25

    return-object v5

    .line 1317
    .end local v0    # "ivParam":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "outputBuffer":Ljava/nio/ByteBuffer;
    :catch_25
    move-exception v0

    .line 1322
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v3, "Failed to decrypt data: "

    invoke-direct {v2, v3, v0}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1305
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v1    # "cipherAlgorithm":Ljavax/crypto/Cipher;
    :catch_2e
    move-exception v0

    .line 1306
    .restart local v0    # "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v2, "Failed to construct Cihper for EAP SIMAKA"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1282
    invoke-super {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 1284
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;->encrData:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1285
    return-void
.end method

.method public blacklist getDecryptedData([B[B)[B
    .registers 5
    .param p1, "key"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;->encrData:[B

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;->doCipherOperation([B[B[BI)[B

    move-result-object v0

    .line 1297
    .local v0, "decryptedEncr":[B
    return-object v0
.end method
