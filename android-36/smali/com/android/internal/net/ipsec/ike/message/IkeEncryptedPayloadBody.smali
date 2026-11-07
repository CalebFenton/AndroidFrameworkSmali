.class final Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;
.super Ljava/lang/Object;
.source "IkeEncryptedPayloadBody.java"


# static fields
.field private static final blacklist PAD_LEN_LEN:I = 0x1


# instance fields
.field private final blacklist mEncryptedAndPaddedData:[B

.field private final blacklist mIntegrityChecksum:[B

.field private final blacklist mIv:[B

.field private final blacklist mUnencryptedData:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .registers 20
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "firstPayloadType"    # I
    .param p3, "skfHeaderBytes"    # [B
    .param p4, "unencryptedPayloads"    # [B
    .param p5, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p6, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p7, "integrityKey"    # [B
    .param p8, "encryptionKey"    # [B

    .line 133
    nop

    .line 142
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->generateIv()[B

    move-result-object v9

    array-length v0, p4

    .line 143
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getBlockSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->calculatePadding(II)[B

    move-result-object v10

    .line 133
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B[B[B)V

    .line 144
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B[B[B)V
    .registers 21
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "firstPayloadType"    # I
    .param p3, "skfHeaderBytes"    # [B
    .param p4, "unencryptedPayloads"    # [B
    .param p5, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p6, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p7, "integrityKey"    # [B
    .param p8, "encryptionKey"    # [B
    .param p9, "iv"    # [B
    .param p10, "padding"    # [B

    .line 158
    move-object/from16 v6, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mUnencryptedData:[B

    .line 161
    iput-object v6, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIv:[B

    .line 162
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->isAead()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 163
    move-object/from16 v0, p6

    check-cast v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;

    .line 164
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p8

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->combinedModeEncrypt(Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[B[B[B[B)[B

    move-result-object v0

    .line 174
    .local v0, "paddedDataWithChecksum":[B
    move-object/from16 v1, p6

    check-cast v1, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getChecksumLen()I

    move-result v1

    .line 175
    .local v1, "checkSumLen":I
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    .line 176
    array-length v2, v0

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    .line 178
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 179
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 181
    .end local v0    # "paddedDataWithChecksum":[B
    .end local v1    # "checkSumLen":I
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v8, p8

    move-object/from16 v9, p10

    goto :goto_61

    .line 183
    :cond_44
    move-object/from16 v0, p6

    check-cast v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;

    .line 184
    move-object/from16 v8, p8

    move-object/from16 v9, p10

    invoke-static {p4, v0, v8, v6, v9}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->normalModeEncrypt([BLcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;[B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    .line 191
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    .line 192
    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, v6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->generateOutboundChecksum(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;[B[B[B)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    .line 201
    :goto_61
    return-void
.end method

.method constructor blacklist <init>([BILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .registers 24
    .param p1, "message"    # [B
    .param p2, "encryptedBodyOffset"    # I
    .param p3, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p4, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p5, "integrityKey"    # [B
    .param p6, "decryptionKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 77
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 81
    .local v5, "inputBuffer":Ljava/nio/ByteBuffer;
    new-array v6, v2, [B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getIvLen()I

    move-result v6

    .line 85
    .local v6, "expectedIvLen":I
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIv:[B

    .line 87
    invoke-direct {v0, v3, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getChecksum(Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;)I

    move-result v7

    .line 88
    .local v7, "checksumLen":I
    array-length v8, v1

    add-int v9, v2, v6

    add-int/2addr v9, v7

    sub-int/2addr v8, v9

    .line 90
    .local v8, "encryptedDataLen":I
    new-array v9, v8, [B

    iput-object v9, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    .line 92
    new-array v9, v7, [B

    iput-object v9, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    .line 93
    iget-object v9, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIv:[B

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->isAead()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_61

    .line 96
    invoke-static {v1, v10, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 97
    .local v14, "dataToAuthenticate":[B
    move-object v11, v4

    check-cast v11, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;

    iget-object v12, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    iget-object v13, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    iget-object v9, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIv:[B

    .line 98
    move-object/from16 v15, p6

    move-object/from16 v16, v9

    invoke-static/range {v11 .. v16}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->combinedModeDecrypt(Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;[B[B[B[B[B)[B

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mUnencryptedData:[B

    .line 105
    .end local v14    # "dataToAuthenticate":[B
    move-object/from16 v11, p5

    goto :goto_7d

    .line 106
    :cond_61
    array-length v9, v1

    sub-int/2addr v9, v7

    .line 107
    invoke-static {v1, v10, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 109
    .local v9, "dataToAuthenticate":[B
    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    move-object/from16 v11, p5

    invoke-static {v9, v3, v11, v10}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->validateInboundChecksumOrThrow([BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;[B[B)V

    .line 111
    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    move-object v12, v4

    check-cast v12, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;

    iget-object v13, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIv:[B

    .line 112
    move-object/from16 v15, p6

    invoke-static {v10, v12, v15, v13}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->normalModeDecrypt([BLcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;[B[B)[B

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mUnencryptedData:[B

    .line 118
    .end local v9    # "dataToAuthenticate":[B
    :goto_7d
    return-void
.end method

.method static blacklist calculatePadding(II)[B
    .registers 6
    .param p0, "dataToEncryptLength"    # I
    .param p1, "blockSize"    # I

    .line 347
    add-int/lit8 v0, p0, 0x1

    .line 348
    .local v0, "unpaddedLen":I
    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, p1

    mul-int/2addr v1, p1

    sub-int/2addr v1, v0

    .line 349
    .local v1, "padLength":I
    new-array v2, v1, [B

    .line 352
    .local v2, "padding":[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 354
    return-object v2
.end method

.method static blacklist combinedModeDecrypt(Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;[B[B[B[B[B)[B
    .registers 9
    .param p0, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;
    .param p1, "encryptedData"    # [B
    .param p2, "checksum"    # [B
    .param p3, "dataToAuthenticate"    # [B
    .param p4, "decryptionKey"    # [B
    .param p5, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 330
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    .line 331
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 332
    .local v0, "dataWithChecksumBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 333
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 334
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 336
    nop

    .line 338
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 337
    invoke-virtual {p0, v1, p3, p4, p5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->decrypt([B[B[B[B)[B

    move-result-object v1

    .line 340
    .local v1, "paddedPlaintext":[B
    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->stripPadding([B)[B

    move-result-object v2

    return-object v2
.end method

.method static blacklist combinedModeEncrypt(Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[B[B[B[B)[B
    .registers 13
    .param p0, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "firstPayloadType"    # I
    .param p3, "skfHeaderBytes"    # [B
    .param p4, "dataToEncrypt"    # [B
    .param p5, "encryptionKey"    # [B
    .param p6, "iv"    # [B
    .param p7, "padding"    # [B

    .line 298
    array-length v0, p3

    add-int/lit8 v0, v0, 0x20

    .line 302
    .local v0, "dataToAuthenticateLength":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 304
    .local v1, "authenticatedSectionBuffer":Ljava/nio/ByteBuffer;
    invoke-static {p4, p7}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getPaddedData([B[B)[B

    move-result-object v2

    .line 305
    .local v2, "paddedData":[B
    array-length v3, p3

    add-int/lit8 v3, v3, 0x4

    array-length v4, p6

    add-int/2addr v3, v4

    array-length v4, v2

    add-int/2addr v3, v4

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getChecksumLen()I

    move-result v4

    add-int/2addr v3, v4

    .line 311
    .local v3, "encryptedPayloadLength":I
    invoke-virtual {p1, v1, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->encodeToByteBuffer(Ljava/nio/ByteBuffer;I)V

    .line 312
    invoke-static {p2, v3, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 314
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 316
    nop

    .line 317
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 316
    invoke-virtual {p0, v2, v4, p5, p6}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->encrypt([B[B[B[B)[B

    move-result-object v4

    return-object v4
.end method

.method static blacklist generateOutboundChecksum(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;[B[B[B)[B
    .registers 12
    .param p0, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p1, "firstPayloadType"    # I
    .param p2, "skfHeaderBytes"    # [B
    .param p3, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p4, "iv"    # [B
    .param p5, "encryptedAndPaddedData"    # [B
    .param p6, "integrityKey"    # [B

    .line 222
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    array-length v1, p4

    add-int/2addr v0, v1

    array-length v1, p5

    add-int/2addr v0, v1

    .line 229
    .local v0, "encryptedPayloadHeaderToPadLen":I
    add-int/lit8 v1, v0, 0x1c

    .line 230
    .local v1, "dataToAuthenticateLength":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 233
    .local v2, "authenticatedSectionBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getChecksumLen()I

    move-result v3

    add-int/2addr v3, v0

    .line 234
    .local v3, "encryptedPayloadLength":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->encodeToByteBuffer(Ljava/nio/ByteBuffer;I)V

    .line 235
    invoke-static {p1, v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 237
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p3, p6, v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->generateChecksum([B[B)[B

    move-result-object v4

    return-object v4
.end method

.method private blacklist getChecksum(Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;)I
    .registers 4
    .param p1, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p2, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    .line 204
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->isAead()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 205
    move-object v0, p2

    check-cast v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;->getChecksumLen()I

    move-result v0

    return v0

    .line 207
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getChecksumLen()I

    move-result v0

    return v0
.end method

.method private static blacklist getPaddedData([B[B)[B
    .registers 7
    .param p0, "data"    # [B
    .param p1, "padding"    # [B

    .line 358
    array-length v0, p1

    .line 359
    .local v0, "padLength":I
    array-length v1, p0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 360
    .local v1, "paddedDataLength":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 361
    .local v2, "padBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    int-to-byte v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method static blacklist normalModeDecrypt([BLcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;[B[B)[B
    .registers 6
    .param p0, "encryptedData"    # [B
    .param p1, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;
    .param p2, "decryptionKey"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 282
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->decrypt([B[B[B)[B

    move-result-object v0

    .line 284
    .local v0, "paddedPlaintext":[B
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->stripPadding([B)[B

    move-result-object v1

    return-object v1
.end method

.method static blacklist normalModeEncrypt([BLcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;[B[B[B)[B
    .registers 7
    .param p0, "dataToEncrypt"    # [B
    .param p1, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;
    .param p2, "encryptionKey"    # [B
    .param p3, "iv"    # [B
    .param p4, "padding"    # [B

    .line 268
    invoke-static {p0, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getPaddedData([B[B)[B

    move-result-object v0

    .line 271
    .local v0, "paddedData":[B
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;->encrypt([B[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist stripPadding([B)[B
    .registers 4
    .param p0, "paddedPlaintext"    # [B

    .line 368
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 369
    .local v0, "padLength":I
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 371
    .local v1, "decryptedDataLen":I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method static blacklist validateInboundChecksumOrThrow([BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;[B[B)V
    .registers 8
    .param p0, "dataToAuthenticate"    # [B
    .param p1, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p2, "integrityKey"    # [B
    .param p3, "integrityChecksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 252
    array-length v0, p3

    .line 253
    .local v0, "checkSumLen":I
    invoke-virtual {p1, p2, p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->generateChecksum([B[B)[B

    move-result-object v1

    .line 255
    .local v1, "calculatedChecksum":[B
    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 258
    return-void

    .line 256
    :cond_c
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Message authentication failed."

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method blacklist encode()[B
    .registers 4

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 387
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIv:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 388
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method blacklist getLength()I
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIv:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mEncryptedAndPaddedData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mIntegrityChecksum:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist getUnencryptedData()[B
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->mUnencryptedData:[B

    return-object v0
.end method
